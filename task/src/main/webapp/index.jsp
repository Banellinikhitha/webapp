<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Form Validation</title>
<style>
.error {
  color: red;
}
</style>
</head>
<body>

<h2>Register</h2>

<form id="myForm" action="register" method="post" onsubmit="return validateForm()">
  <div>
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name" required>
  </div>
  <div>
    <label for="email">Email:</label><br>
    <input type="email" id="email" name="email" required>
    <span id="emailError" class="error"></span>
  </div>
  <div>
    <label for="age">Age:</label><br>
    <input type="number" id="age" name="age" required>
    <span id="ageError" class="error"></span>
  </div>
  <div>
    <label for="dob">Date of Birth:</label><br>
    <input type="date" id="dob" name="dob" required>
  </div>
  <div>
    <input type="submit" value="Submit">
  </div>
</form>

<script>
function validateForm() {
  var email = document.getElementById("email").value;
  var age = document.getElementById("age").value;

  var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  var ageRegex = /^\d+$/;

  var emailError = document.getElementById("emailError");
  var ageError = document.getElementById("ageError");

  var isValid = true;

  if (!emailRegex.test(email)) {
    emailError.textContent = "Please enter a valid email address";
    isValid = false;
  } else {
    emailError.textContent = "";
  }

  if (!ageRegex.test(age) || age <= 0) {
    ageError.textContent = "Please enter a valid positive integer for age";
    isValid = false;
  } else {
    ageError.textContent = "";
  }

  return isValid;
}
</script>

</body>
</html>
