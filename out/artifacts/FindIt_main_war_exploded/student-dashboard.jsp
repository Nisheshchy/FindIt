<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - FindIT</title>
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

    <section class="hero">
        <h1>Hello, Student</h1>
        <p>Welcome back. Here is a quick overview of your activity.</p>
    </section>

    <!-- Quick stats -->
    <div class="stats">
        <div class="stat-box"><h3>3</h3><p>My Reports</p></div>
        <div class="stat-box"><h3>1</h3><p>My Claims</p></div>
        <div class="stat-box"><h3>2</h3><p>Active Listings</p></div>
        <div class="stat-box"><h3>1</h3><p>Resolved</p></div>
    </div>

    <!-- Quick actions -->
    <section class="section">
        <h2>Quick Actions</h2>
        <p>
            <a href="report-item.jsp" class="btn">Report Lost / Found Item</a>
            <a href="search-items.jsp" class="btn btn-secondary">Browse Items</a>
            <a href="my-reports.jsp" class="btn btn-secondary">My Reports</a>
            <a href="my-claims.jsp" class="btn btn-secondary">My Claims</a>
            <a href="profile.jsp" class="btn btn-secondary">Profile</a>
        </p>
    </section>

    <!-- Recent activity -->
    <section class="section">
        <h2>Recent Activity</h2>
        <div class="card-grid">
            <div class="card">
                <span class="tag tag-lost">Lost</span>
                <h3>USB Drive</h3>
                <p class="meta">Reported 2 days ago</p>
                <a href="item-detail.jsp" class="btn btn-small">View</a>
            </div>
            <div class="card">
                <span class="tag tag-found">Found</span>
                <h3>Calculator</h3>
                <p class="meta">Reported 5 days ago</p>
                <a href="item-detail.jsp" class="btn btn-small">View</a>
            </div>
        </div>
    </section>
</main>

<!-- ====== Footer (shared) ====== -->
<footer class="footer">
    &copy; 2026 FindIT - Lost &amp; Found Portal | Educational Project
</footer>

</body>
</html>
