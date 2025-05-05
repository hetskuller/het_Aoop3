<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Edit Student</title>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <div class="container">
    <form id="editForm">
      <label>Name *</label>
      <input type="text" id="editName" required />

      <label>Email *</label>
      <input type="email" id="editEmail" required />

      <button type="submit">UPDATE STUDENT</button>
      <a href="student.html"><button type="button">BACK TO LIST</button></a>
    </form>
  </div>

  <script>
    const student = JSON.parse(localStorage.getItem('student'));
    if (student) {
      document.getElementById('editName').value = student.name;
      document.getElementById('editEmail').value = student.email;
    }

    document.getElementById('editForm').addEventListener('submit', function (e) {
      e.preventDefault();
      const updatedStudent = {
        id: 3,
        name: document.getElementById('editName').value,
        email: document.getElementById('editEmail').value,
      };
      localStorage.setItem('student', JSON.stringify(updatedStudent));
      window.location.href = 'student.html';
    });
  </script>
</body>
</html>
