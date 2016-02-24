 $("#login-button").click(function(event){
		 event.preventDefault();
	 
	 //$('form').fadeOut(500);
	 //$('.wrapper').addClass('form-success');
	 
	 $('form').fadeOut(10);
	 $('.wrapper').addClass('form-success');
	 setTimeout(function(){window.location="index.jsp";} ,5000);
});