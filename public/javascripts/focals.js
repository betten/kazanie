$(document).ready(function() {


$('#masterpiece img').load(function() {
  var masterpiece = {
    height: $('#masterpiece img').height(),
    width: $('#masterpiece img').width()
  };
  var actual = {
    height: $('#actual-height').val(),
    width: $('#actual-width').val()
  };
  $('#masterpiece').height(
    masterpiece.height
  );
  $('#masterpiece').width(
    masterpiece.width
  );
  var x = $('#focal_x').val(),
      y = $('#focal_y').val(),
      height = $('#focal_height').val(),
      width = $('#focal_width').val(),
      r = {
        h: masterpiece.height / actual.height,
        w: masterpiece.width / actual.width
      };
  if(x && y && height && width) {
    $('#focal').css({
      'top':    Math.floor(y * r.h) + 'px',
      'left':   Math.floor(x * r.w) + 'px',
      'height': Math.floor(height * r.h) + 'px',
      'width':  Math.floor(width * r.w) + 'px'
    });
  }
  else {
    $('#focal').css({
      'top':    Math.floor(masterpiece.height / 2) - 50 + 'px',
      'left':   Math.floor(masterpiece.width / 2) - 50 + 'px',
      'height': 100 + 'px',
      'width':  100 + 'px'
    });
  }
  var updateFocalVals = function() {
    var r = {
      h: actual.height / masterpiece.height,
      w: actual.width / masterpiece.width
    };
    $('#focal_x').val(
      Math.floor(
        $('#focal').position().left * r.w
      )
    );
    $('#focal_y').val(
      Math.floor(
        $('#focal').position().top * r.h
      )
    );
    $('#focal_height').val(
      Math.floor(
        $('#focal').height() * r.h
      )
    );
    $('#focal_width').val(
      Math.floor(
        $('#focal').width() * r.w
      )
    );
  };

  updateFocalVals();

  $('#focal')
    .draggable({
      drag: updateFocalVals,
      containment: 'parent'
    })
    .resizable({
      resize: updateFocalVals,
      containment: 'parent',
      handles: 'all'
    })
    .css({ opacity: 0.4 });
});


});
