<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Users - FindIT</title>
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
            <li><a href="student-dashboard.jsp">Dashboard</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="register.jsp">Register</a></li>
        </ul>
    </nav>
</header>

<main class="container">

    <section class="section">
        <h2>User Management</h2>
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>ID</th><th>Name</th><th>Email</th><th>Role</th><th>Status</th><th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>U001</td><td>John Student</td><td>john@college.edu</td>
                        <td>Student</td><td>Active</td>
                        <td>
                            <a href="UserServlet?id=1&action=block" class="btn btn-small btn-danger">Block</a>
                        </td>
                    </tr>
                    <tr>
                        <td>U002</td><td>Mary K.</td><td>mary@college.edu</td>
                        <td>Student</td><td>Blocked</td>
                        <td>
                            <a href="UserServlet?id=2&action=unblock" class="btn btn-small">Unblock</a>
                        </td>
                    </tr>
                    <tr>
                        <td>U003</td><td>Admin User</td><td>admin@college.edu</td>
                        <td>Admin</td><td>Active</td>
                        <td>-</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
</main>

<!-- ====== Footer (shared) ====== -->
<footer class="footer">
    &copy; 2026 FindIT - Lost &amp; Found Portal | Educational Project
</footer>

</body>
</html>
