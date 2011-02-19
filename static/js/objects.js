var Focal = Backbone.Model.extend({
  defaults: {
    height: 0,
    image: {
      height: 0,
      url: '',
      width: 0
    },
    masterpiece: null,
    text: '',
    title: '',
    width: 0,
    x: 0,
    y: 0
  }
});

var FocalCollection = Backbone.Collection.extend({
  model: Focal
});

var MasterpieceCollection = Backbone.Collection.extend({
  model: Masterpiece
});

var Masterpiece = Backbone.Model.extend({
  initialize: function() {
  },
  defaults: {
    focals: new FocalCollection,
    height: 0,
    text: '',
    title: '',
    url: '',
    miniurl: '',
    width: 0
  }
  
});


