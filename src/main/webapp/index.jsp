<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <script>
     $(document).ready(function() {
        $('#clickButton').click(function() {
            $.ajax({
                type: 'POST',
                url: 'signup', // Replace with your controller endpoint
                success: function(response) {
                	$('#responseData').html(response);
                	$('#clickButton').hide();
                	$('#clickView').hide();
                },
                error: function(xhr, status, error) {
                    alert('Error: ' + error);
                }
            });
        });
    });
     
     $(document).ready(function() {
    	
         $('#clickView').click(function() {
        	 $('#responseData').html('Loading...');
        	  $('#clickButton').hide();
              $('#clickView').hide();
             $.ajax({
                 type: 'POST',
                 url: 'retrive', // Replace with your controller endpoint
                 success: function(response) {
                	 $('#responseData').html(response); 
                	 $('#clickButton').hide();
                 	$('#clickView').hide();
                 },
                 error: function(xhr, status, error) {
                    
                 }
             });
         });
     }); 
</script>
</head>

<body style="padding-top:200px">
<center>
<button id="clickButton">AddNewStudent</button><br><br>
<div id="responseData" ></div>

<button id="clickView" >ViewAll</button>

</body>
</center>
</html>