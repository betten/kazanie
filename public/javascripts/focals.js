$(document).ready(function() {

var isNumber = function(obj) {
  return !!(obj === 0 || (obj && obj.toExponential && obj.toFixed));
};

var Focal = function(masterpiece) {

    var focal = {};

    focal.el = $('#focal');

    focal.setDims = function(dims) {
      focal.el.css({
        'top':    dims.top + 'px',
        'left':   dims.left + 'px',
        'height': dims.height + 'px',
        'width':  dims.width + 'px'
      });
    };

    focal.defaultDims = function() {
      return {
        top:    Math.floor(masterpiece.height / 2) - 50,
        left:   Math.floor(masterpiece.width / 2) - 50,
        height: 100,
        width:  100
      };
    };

    focal.updateVals = function(vals) {
      if(vals && 
        isNumber(vals.left) &&
        isNumber(vals.top) &&
        isNumber(vals.height) &&
        isNumber(vals.width)) {

        $('#focal_x').val(vals.left);
        $('#focal_y').val(vals.top);
        $('#focal_width').val(vals.width);
        $('#focal_height').val(vals.height);

        return;
      }

      var r = {
        h: masterpiece.actual.height / masterpiece.height,
        w: masterpiece.actual.width / masterpiece.width
      };
      $('#focal_x').val(
        Math.floor(
          focal.el.position().left * r.w
        )
      );
      $('#focal_y').val(
        Math.floor(
          focal.el.position().top * r.h
        )
      );
      $('#focal_height').val(
        Math.floor(
          focal.el.height() * r.h
        )
      );
      $('#focal_width').val(
        Math.floor(
          focal.el.width() * r.w
        )
      );
    };

    focal.hide = function() {
      focal.el.hide();
      focal.updateVals({
        top:    0,
        left:   0,
        height: 0,
        width:  0
      });
    };

    focal.unhide = function() {
      focal.el.show();
      focal.setDims(
        focal.defaultDims()
      );
      focal.updateVals();
    };

    focal.blank = function() {
      var current = focal.currentVals();
      return !current.x && !current.y && !current.height && !current.width;
    };

    focal.currentVals = function() {
      return {
        x: $('#focal_x').val(),
        y: $('#focal_y').val(),
        height: $('#focal_height').val(),
        width: $('#focal_width').val(),
        r: {
          h: masterpiece.height / masterpiece.actual.height,
          w: masterpiece.width / masterpiece.actual.width
        }
      };
    };

    (function() {

      var current = focal.currentVals(); 

      if($('#hidden-focal').is(':checked')) {
        focal.hide();
      }
      else if(focal.blank()) {
        focal.setDims(
          focal.defaultDims()
        );
      }
      else {
        focal.setDims({
          top:    Math.floor(current.y * current.r.h),
          left:   Math.floor(current.x * current.r.w),
          height: Math.floor(current.height * current.r.h),
          width:  Math.floor(current.width * current.r.w)
        });
      }

      focal.updateVals();
  
      focal.el
        .draggable({
          drag: focal.updateVals,
          containment: 'parent'
        })
        .resizable({
          resize: focal.updateVals,
          containment: 'parent',
          handles: 'all'
        })
        .css({ opacity: 0.4 });

    })();

    return focal;

};

var Masterpiece = function() {

  var m = {};

  m.el = $('#masterpiece');

  m.height = $('#masterpiece img').height();
  m.width = $('#masterpiece img').width();
    
  m.actual = {
    height: $('#actual-height').val(),
    width: $('#actual-width').val()
  };

  (function() {

    m.el.width(
      m.width
    );

    m.el.height(
      m.height
    );
    
  })();

  return m;

};

$('#masterpiece img').load(function() {

  var masterpiece = new Masterpiece();

  var focal = new Focal(masterpiece);

  $('#hidden-focal').change(function() {
    if($(this).is(':checked')) {
      focal.hide();
    }
    else {
      focal.unhide();
    }
  });
});


});
