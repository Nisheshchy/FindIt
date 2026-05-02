<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - FindIT</title>
    <!-- Common stylesheet for the whole portal -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- ====== Top navigation (shared across all pages) ====== -->
<header class="header">
    <nav class="nav">
        <div class="logo">Find<span>IT</span></div>
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="search-items.jsp">Browse Items</a></li>
            <li><a href="report-item.jsp">Report Item</a></li>
            <li><a href="student-dashboard.jsp" style="color:#7ed3d3;">Dashboard</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="register.jsp">Register</a></li>
        </ul>
    </nav>
</header>

<main class="container">

    <form class="form-box" action="ProfileServlet" method="post">
        <h2>My Profile</h2>
        <!-- <div class="msg msg-success">Profile updated successfully.</div> -->

        <div class="form-group">
            <label>Full Name</label>
            <input type="text" name="fullname" value="John Student">
        </div>

        <div class="form-group">
            <label>Student ID</label>
            <input type="text" name="studentId" value="STU1023" readonly>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" value="john@college.edu">
        </div>

        <div class="form-group">
            <label>Phone</label>
            <input type="text" name="phone" value="9876543210">
        </div>

        <div class="form-group">
            <label>New Password (optional)</label>
            <input type="password" name="password">
        </div>

        <div class="form-actions">
            <a href="student-dashboard.jsp">Back</a>
            <button type="submit" class="btn">Update Profile</button>
        </div>
    </form>
</main>

<!-- ====== Footer (shared) ====== -->
<footer class="footer">
    &copy; 2026 FindIT - Lost &amp; Found Portal | Educational Project
</footer>

</body>
</html>
