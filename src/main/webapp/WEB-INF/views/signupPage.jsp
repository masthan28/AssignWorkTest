<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function validateEmail() {
    var email = document.getElementById("email").value;
    var emailRegex = /^[a-zA-Z][a-zA-Z0-9._%+-]*@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    var errorSpan = document.getElementById("emailError");
    var submitButton = document.getElementById("submitBtn");

    if (!emailRegex.test(email)) {
        errorSpan.textContent = "Please enter a valid email address.";
        submitButton.disabled = true;
    } else {
        errorSpan.textContent = ""; // Clear the error message if email is valid
        submitButton.disabled = false;
    }
}
function validateAge() {
    var ageInput = document.getElementById("ageInput").value;
    var ageError = document.getElementById("ageError");

    if (ageInput >= 0) {
        ageError.textContent = ""; // Clear error message if age is valid
        return true; // Allow form submission
    } else {
        ageError.textContent = "Age must be a positive number."; // Display error message
        return false; // Prevent form submission
    }
}
</script>
</head>
<body>
<h1>SignUp</h1>
<form action="save" method="post" >
Name :-<input type="text" name="Name" >
<br>
<br>
 Email: <input type="text" id="email" name="Email" onblur="validateEmail()">
 <br>
        <span id="emailError" style="color: red;"></span><br>  
Age :-<input type="number" id="ageInput" min="0" name="Age"  oninput="validateAge()">
<br>
 <span id="ageError" style="color: red;"></span>
 <br>
Date of birth :-<input type="number" name="DateOfBirth" >
<br>
<br>
 <input type="submit" id="submitBtn" value="Submit" disabled>
</body>
</form>

</html>