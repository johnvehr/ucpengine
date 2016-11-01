
var Ucpengine = Ucpengine || {};

Ucpengine.Utils = {
  // Source: https://remysharp.com/2010/07/21/throttling-function-calls
  debounce: function(fn, delay) {
    var timer = null;
    return function () {
      var context = this, args = arguments;
      clearTimeout(timer);
      timer = setTimeout(function () {
        fn.apply(context, args);
      }, delay);
    };
  }
};

Ucpengine.LivePreview = {
  selectors: {
    textarea: 'form textarea',
    preview:  '#live-preview'
  },

  initialize: function() {
    $(document).on('keyup', this.selectors.textarea, Ucpengine.Utils.debounce(this.generatePreview.bind(this), 200));
  },

  generatePreview: function(event) {
    var preview = $(this.selectors.preview);
    var previewUrl = preview.attr('data-preview-url');

    $.ajax({
      type: 'POST',
      url: previewUrl,
      data: {
        text: event.target.value
      },

      success: function(data) {
        preview.html(data);
      }
    });
  }
};

Ucpengine.LivePreview.initialize();
