$(function() {


var MasterpieceView = Backbone.View.extend({
  el: $('#masterpiece'),
  initialize: function() {
    var masterpiece = this;
    $(window)
      .unbind('resize.masterpiece-view')
      .bind('resize.masterpiece-view', function() {
        masterpiece.render();
      });
    this.render();
  },
  events: {
  },
  render: function() {
    this.adjustDims();
    this.el.html(ich['masterpiece-view'](this.model.toJSON()));

    this.$('.focal').remove();
    var masterpiece = this.model;
    masterpiece.get('focals').each(function(focal) {
      new FocalView({ model: focal, masterpiece: masterpiece }).render();
    });
  },
  adjustDims: function() {
    var model = this.model;
    model.set({
      'adjheight': model.get('height'),
      'adjwidth': model.get('width')
    });
    var height = model.get('height'),
        width = model.get('width');
    if(height > $(window).height()) {
      model.set({
        'adjheight': $(window).height(),
        'adjwidth': Math.floor($(window).height() / height * width)
      });
    }
    var adjheight = model.get('adjheight'),
        adjwidth = model.get('adjwidth');
    if(adjwidth > $(window).width()) {
      model.set({
        'adjwidth': $(window).width(),
        'adjheight': Math.floor($(window).width() / width * adjheight)
      });
    }
  }
});

var FocalView = Backbone.View.extend({
  className: 'focal',
  events: {

  },
  initialize: function(options) {
    this.masterpiece = options.masterpiece;
  },
  render: function() {
    $('#focals').append(this.el);
    var hratio = this.masterpiece.get('adjheight') / this.masterpiece.get('height');
    var wratio = this.masterpiece.get('adjwidth') / this.masterpiece.get('width');
    $(this.el).css({
      top: Math.round(hratio * this.model.get('y')) + 'px',
      height: Math.round(hratio * this.model.get('height')) + 'px',
      left: Math.round(wratio * this.model.get('x')) + 'px',
      width: Math.round(wratio * this.model.get('width')) + 'px',
      opacity: 0.2
    });
  }
});

var SiderView = Backbone.View.extend({
  el: $('#sider'),
  events: {
    'mouseenter': 'slideOut',
    'mouseleave': 'slideBack'
  },
  initialize: function() {
    this.el.css({ opacity: 0.5 });
    this.el.html(ich['sider-view'](this.model.toJSON()));
  },
  slideOut: function() {
    this.el.stop().animate({ opacity: 1.0, right: '0px' });
  },
  slideBack: function() {
    this.el.stop().animate({ opacity: 0.5, right: '-280px' });
  }
});

var SliderView = Backbone.View.extend({
  el: $('#slider'),
  events: {
    'mouseenter': 'slideUp',
    'mouseleave': 'slideDown',
    'click .button.left': 'slideLeft',
    'click .button.right': 'slideRight'
  },
  initialize: function(masterpieces) {
    this.el.css({ opacity: 0.5 });
    this.el.html(ich['slider-view']());
    masterpieces.each(function(masterpiece) {
      new MiniMasterpieceView({ model: masterpiece }).render();
    });
  },
  slideUp: function() {
    this.el.stop().animate({ opacity: 1.0, bottom: '0px' });
  },
  slideDown: function() {
    this.el.stop().animate({ opacity: 0.5, bottom: '-180px' });
  },
  jump: 400,
  slideLeft: function() {
    var left = this.el.position().left + this.jump;
    if(left > 0) left = 0;
    $('#minis').animate({ 'left': left + 'px' });
  },
  slideRight: function() {
    var left = this.el.position().left - this.jump;
    var max = this.$('#minis-wrapper').width() - this.$('#minis').width();
    if(left < max) left = max > 0 ? 0 : max;
    $('#minis').animate({ 'left': left + 'px' });
  }
});

var MiniMasterpieceView = Backbone.View.extend({
  className: 'mini',
  events: {
    'mouseenter': 'over',
    'mouseleave' : 'out',
    'click': 'click'
  },
  render: function() {
    $(this.el).html(ich['mini-masterpiece-view'](this.model.toJSON()));
    $('#minis').append(this.el);
  },
  over: function(event) {
    this.$('.title').fadeIn();
    $(this.el).animate({ opacity: 1.0 });
  },
  out: function() {
    this.$('.title').fadeOut();
    $(this.el).animate({ opacity: 0.5 });
  },
  click: function() {
    new MasterpieceView({ model: this.model});
    new SiderView({ model: this.model });
  }
});

var Kazanie = Backbone.View.extend({
  el: $('body'),
  initialize: function(masterpieces) {
    this.slider = new SliderView(masterpieces);
    //this.masterpiece = new Masterpiece();
    //this.sider = new SiderView();
  }
});

var FocalSlider = Backbone.View.extend({
  el: $('#focalslider'),
  initialize: function() {

  },
  render: function() {

  }
});


new Kazanie(masterpieces);


}); // end jquery wrapper
