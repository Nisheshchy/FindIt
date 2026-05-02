<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Reports - FindIT</title>
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

    <section class="section">
        <h2>My Reports</h2>
        <p style="margin-bottom:10px;">All items you have reported as lost or found.</p>
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>ID</th><th>Item</th><th>Type</th><th>Status</th><th>Date</th><th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>R001</td><td>USB Drive</td><td>Lost</td><td>Active</td><td>30 Apr 2026</td>
                        <td><a href="item-detail.jsp" class="btn btn-small">View</a></td>
                    </tr>
                    <tr>
                        <td>R002</td><td>Calculator</td><td>Found</td><td>Verified</td><td>27 Apr 2026</td>
                        <td><a href="item-detail.jsp" class="btn btn-small">View</a></td>
                    </tr>
                    <tr>
                        <td>R003</td><td>Notebook</td><td>Lost</td><td>Resolved</td><td>20 Apr 2026</td>
                        <td><a href="item-detail.jsp" class="btn btn-small">View</a></td>
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
