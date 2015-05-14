/* checking if an element exists plugin 

// Usage
$('div.test').exists(function() {
  this.append('<p>I exist!</p>');
});

*/
$.fn.exists = function(callback) {
  var args = [].slice.call(arguments, 1);

  if (this.length) {
    callback.call(this, args);
  }

  return this;
};

/* to make a modal*/
function make_modal(data,id)
{
  var modal_html = [
    '<div class="modal fade">',
      '<div class="modal-dialog">',
        '<div class="modal-content">',
          '<div class="modal-body">',
          '</div>',
          '<div class="modal-footer">',
            '<button type="button" class="btn" data-dismiss="modal">&nbsp;Ok&nbsp;</button>',
          '</div>',
        '</div>',
      '</div>',
    '</div>'
  ].join('');
  modalId = "jiff-modal-"+id
	if ($('#'+modalId).length > 0)
	{ 
		var new_modal = $('#'+modalId);
		new_modal.find('.modal-body').html(data);
		return new_modal;
	}
	else
	{
		var new_modal = $(modal_html).clone().attr('id', modalId);
		new_modal.find('.modal-body').html(data);
		new_modal.appendTo('body');
		return new_modal;
	}
}