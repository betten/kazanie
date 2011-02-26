(function(window) {
  var Kazanie = window.Kazanie || {};

  Kazanie.Models = {};
  Kazanie.Collections = {};

  Kazanie.Models.Focal = Backbone.Model.extend({
    defaults: {
      height: 0,
      url: '',
      masterpiece: null,
      text: '',
      title: '',
      width: 0,
      x: 0,
      y: 0
    }
  });

  Kazanie.Collections.Focals = Backbone.Collection.extend({
    model: Kazanie.Models.Focal
  });

  Kazanie.Models.Masterpiece = Backbone.Model.extend({
    initialize: function() {
    },
    defaults: {
      focals: new Kazanie.Collections.Focals,
      height: 0,
      text: '',
      title: '',
      url: '',
      miniurl: '',
      width: 0
    }
  });

  Kazanie.Collections.Masterpieces = Backbone.Collection.extend({
    model: Kazanie.Models.Masterpiece
  });

  window.Kazanie = Kazanie;

})(window);
