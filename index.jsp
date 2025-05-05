<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Student Form</title>
  <link rel="stylesheet" href="styles.css" />
  <link rel="stylesheet" href="edit.html"/>
</head>
<body>
  <div class="container">
    <h1>Add New Student</h1>
    <form id="studentForm">
      <input type="text" id="name" placeholder="Enter Name" required />
      <input type="email" id="email" placeholder="Enter Email" required />
      <button type="submit">Submit</button>
    </form>
  </div>

  <script>
    document.getElementById('studentForm').addEventListener('submit', function (e) {
      e.preventDefault();
      const name = document.getElementById('name').value;
      const email = document.getElementById('email').value;
      const student = {
        id: 3,
        name: name,
        email: email,
      };
      localStorage.setItem('student', JSON.stringify(student));
      window.location.href = 'student.html';
    });
  </script>
</body>
</html>
