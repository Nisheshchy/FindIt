<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - FindIT</title>
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

    <section class="hero">
        <h1>Admin Dashboard</h1>
        <p>Manage reports, users, categories and claims from one place.</p>
    </section>

    <div class="stats">
        <div class="stat-box"><h3>120</h3><p>Total Reports</p></div>
        <div class="stat-box"><h3>34</h3><p>Pending Verification</p></div>
        <div class="stat-box"><h3>56</h3><p>Active Claims</p></div>
        <div class="stat-box"><h3>210</h3><p>Registered Users</p></div>
    </div>

    <section class="section">
        <h2>Admin Actions</h2>
        <p>
            <a href="admin-items.jsp" class="btn">Verify Item Reports</a>
            <a href="admin-users.jsp" class="btn btn-secondary">Manage Users</a>
            <a href="admin-categories.jsp" class="btn btn-secondary">Manage Categories</a>
            <a href="admin-claims.jsp" class="btn btn-secondary">Manage Claims</a>
            <a href="admin-reports.jsp" class="btn btn-secondary">View Reports / Stats</a>
        </p>
    </section>
</main>

<!-- ====== Footer (shared) ====== -->
<footer class="footer">
    &copy; 2026 FindIT - Lost &amp; Found Portal | Educational Project
</footer>

</body>
</html>
