$(function() {

  Kazanie = window.Kazanie || {};
  Kazanie.Views = {};


  Kazanie.Views.Masterpiece = Backbone.View.extend({

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
        new Kazanie.Views.Focal({ model: focal, masterpiece: masterpiece }).render();
      });
      $('#masterpiece a.fancybox-group').fancybox({
        'onComplete': function() {
          $(this.orig).trigger('focus');
        },
        'onClosed': function() {
          $(this.orig).trigger('unfocus');
        }
      });
      Kazanie.Controller.saveLocation('masterpiece/' + this.model.get('id'));
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

  Kazanie.Views.Focal = Backbone.View.extend({

    tagName: 'a',

    className: 'focal fancybox-group',

    events: {
      'mouseenter': 'over',
      'mouseleave': 'out',
      'click': 'focus',
      'focus': 'focus',
      'unfocus': 'unfocus'
    },

    initialize: function(options) {
      this.masterpiece = options.masterpiece;

      var focal = this;
      this.model.bind('over', function() {
        focal.over();
      });
      this.model.bind('out', function() {
        focal.out();
      });
      this.model.bind('focus', function() {
        $(focal.el).click();
      });
    },
    
    render: function() {
      $(this.el)
        .attr('rel', 'focals')
        .attr('href', this.model.get('url') || '')
        .attr('title', this.model.get('text') || '');

      $('#focals').append(this.el);

      var hratio = this.masterpiece.get('adjheight') / this.masterpiece.get('height');
      var wratio = this.masterpiece.get('adjwidth') / this.masterpiece.get('width');

      var r = Math.round;
      $(this.el).css({
        top:      r(hratio * this.model.get('y')) + 'px',
        height:   r(hratio * this.model.get('height')) + 'px',
        left:     r(wratio * this.model.get('x')) + 'px',
        width:    r(wratio * this.model.get('width')) + 'px',
        opacity:  0.1
      });
    },

    over: function() {
      $(this.el).stop().animate({ opacity: 0.3 });
    },

    out: function() {
      $(this.el).stop().animate({ opacity: 0.1 });
    },

    focus: function() {
      Kazanie.Controller.saveLocation(
        'masterpiece/' + this.masterpiece.id + '/focal/' + this.model.id
      );
      return false;
    },

    unfocus: function() {
      Kazanie.Controller.saveLocation(
        'masterpiece/' + this.masterpiece.id
      );
    }

  });

  Kazanie.Views.Sider = Backbone.View.extend({

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

  Kazanie.Views.Slider = Backbone.View.extend({

    el: $('#slider'),

    events: {
      'mouseenter': 'slideUp',
      'mouseleave': 'slideDown',
      'click .button.left': 'slideLeft',
      'click .button.right': 'slideRight'
    },

    initialize: function(options) {
      this.masterpieces = this.options.masterpieces;
      this.render();
    },

    render: function() {
      this.el.css({ opacity: 0.3 });
      this.el.html(ich['slider-view']());
      this.masterpieces.each(function(masterpiece) {
        new Kazanie.Views.MiniMasterpiece({ model: masterpiece }).render();
      });
    },

    slideUp: function() {
      this.el.stop().animate({ opacity: 1.0, bottom: '0px' });
    },

    slideDown: function() {
      this.el.stop().animate({ opacity: 0.3, bottom: '-180px' });
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

  Kazanie.Views.MiniMasterpiece = Backbone.View.extend({

    className: 'mini',

    events: {
      'mouseenter': 'over',
      'mouseleave' : 'out',
      'click': 'select'
    },

    render: function() {
      $(this.el).html(ich['mini-masterpiece-view'](this.model.toJSON()));
      $('#minis').append(this.el);
      var mini = this;
      this.model.bind('select', function() {
        mini.select();
      });
    },
    
    over: function(event) {
      this.$('.title').fadeIn();
      $(this.el).animate({ opacity: 1.0 });
    },

    out: function() {
      this.$('.title').fadeOut();
      $(this.el).animate({ opacity: 0.5 });
    },

    select: function() {
      new Kazanie.Views.Masterpiece({ model: this.model});
      new Kazanie.Views.Sider({ model: this.model });
      new Kazanie.Views.Focalider({ model: this.model });
    }

  });

  Kazanie.Views.Focalider = Backbone.View.extend({

    el: $('#focalider'),

    events: {
      'mouseenter': 'over',
      'mouseleave': 'out'
    },

    initialize: function() {
      this.render();
    },

    render: function() {
      this.$('.title').text(this.model.get('title'));
      this.$('.focals').html('');
      this.model.get('focals').each(function(focal) {
        new Kazanie.Views.FocaliderEl({ model: focal });
      });
    },

    over: function() {
      var focals = this.$('.focals');
      focals.stop().animate({
        height: $(window).height() - focals.offset().top - 50 + 'px'
      });
    },

    out: function() {
      this.$('.focals').stop().animate({
        height: '0px'
      });
    }

  });

  Kazanie.Views.FocaliderEl = Backbone.View.extend({

    className: 'focal',

    events: {
      'mouseenter': 'over',
      'mouseleave': 'out',
      'click': 'focus'
    },

    initialize: function() {
      this.render();
    },

    render: function() {
      $(this.el).text(this.model.get('title'));
      $('#focalider .focals').append(this.el);
    },

    over: function() {
      this.model.trigger('over');
    },

    out: function() {
      this.model.trigger('out');
    },

    focus: function() {
      this.model.trigger('focus');
    }

  });

  Kazanie.Views.Project = Backbone.View.extend({

    el: $('body'),

    initialize: function(options) {
      this.masterpieces = this.options.masterpieces;
      new Kazanie.Views.Slider({ masterpieces: this.masterpieces });
      Backbone.history.start();
    }

  });

  Kazanie.Controller = new (function() {
    return Backbone.Controller.extend({
      routes: {
        '': 'root',
        'masterpiece/:id': 'masterpiece',
        'masterpiece/:masterpiece_id/focal/:id': 'focal'
      },

      root: function() {
        Kazanie.Masterpieces.first().trigger('select');
      },

      masterpiece: function(id) {
        (Kazanie.Masterpieces.get(id) || Kazanie.Masterpieces.first()).trigger('select');
      },

      focal: function(masterpiece_id, id) {
        var masterpiece = Kazanie.Masterpieces.get(masterpiece_id);
        if(!masterpiece) {
          Kazanie.Masterpieces.first().trigger('select');
          return;
        }
        masterpiece.trigger('select');
        var focal = masterpiece.get('focals').get(id);
        if(!focal) return;
        focal.trigger('focus');
      }

    });
  }());



  new Kazanie.Views.Project({ masterpieces: Kazanie.Masterpieces });


}); 
