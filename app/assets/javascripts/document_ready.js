$(document).ready(Application_Start);
$(document).on('page:load', Application_Start)

function Application_Start(){
	Remove_Fields();
	Add_Fields();
}

function Remove_Fields(){
	$('form').on('click', '.remove_fields', function(event){
		$(this).prev('input[type=hidden]').val('1');
		$(this).closest('tr').hide();
		event.preventDefault();
	});
}

function Add_Fields(){
	$('form').on('click', '.add_fields', function(event){
		time = new Date().getTime();
		regexp = new RegExp($(this).data('id'), 'g');
		if($(this).data('target')){			
			$($(this).data('target')).append($(this).data('fields').replace(regexp, time));
		}else{
			$(this).before($(this).data('fields').replace(regexp, time));
		}

		event.preventDefault();
	});
}