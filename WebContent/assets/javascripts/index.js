 $("#login-button").click(function(event){
		 event.preventDefault();
		validateForm();
			
});
 
 $("#login-button2").click(function(event){
	 event.preventDefault();
	
	 $('form').fadeOut(10);
	 $('.wrapper').addClass('form-success');
	 setTimeout(function(){window.location="index.jsp";} ,5000);

 
		
});
 function validateForm() {
		
	    var x = document.forms["login_form"]["username"].value;
	    var y = document.forms["login_form"]["password"].value;
	    if (x == null || x == "" || y == null || y == "" ) {
	        alert("Field must be filled");
	       
	        return false;
	    }
	    else {
	    	
	    		
	   		 $('form').fadeOut(10);
	   		 $('.wrapper').addClass('form-success');
	   		 setTimeout(function(){window.location="index.jsp";} ,5000);

	   	 
	   			
	    }
	    	
		 
		
	}
 
 