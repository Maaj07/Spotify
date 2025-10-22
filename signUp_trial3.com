<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Spotify Registration</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="style1.css">
</head>
<body>
  <div class="container">
    <h1>Register for Spotify</h1>
    <form action="index.html" method="post">
      <div class="item">
        <img src="item-11.png" alt="Spotify logo" class="logo">
      </div> 
      <!-- Email -->
      <label for="email">What's your email?</label>
      <input type="email" id="email" name="email" required>

      <!-- Confirm Email -->
      <label for="confirm-email">Confirm your email</label>
      <input type="email" id="confirm-email" name="confirm-email" required>

      <!-- Password -->
      <label for="password">Create a password</label>
      <input type="password" id="password" name="password" required>

      <!-- Username -->
      <label for="username">What should we call you?</label>
      <input type="text" id="username" name="username" required>

      <!-- Date of Birth -->
      <label for="dob">What's your date of birth?</label>
      <input type="date" id="dob" name="dob" required>

      <!-- Gender -->
      <label>What's your gender?</label>
      <div class="gender-options">
        <input type="radio" id="male" name="gender" value="male" required>
        <label for="male">Male</label>

        <input type="radio" id="female" name="gender" value="female" required>
        <label for="female">Female</label>

        <input type="radio" id="non-binary" name="gender" value="non-binary" required>
        <label for="non-binary">Non-binary</label>
      </div>

      <!-- Terms Checkbox -->
      <div class="checkbox">
        <input type="checkbox" id="terms" name="terms" required>
        <label for="terms">I agree to the <a href="#">Spotify Terms and Conditions</a>.</label>
      </div>

      <!-- Submit Button -->
      <button type="submit">Sign Up</button>
    </form>
  </div>
</body>
</html>
