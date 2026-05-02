<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - FindIT</title>
    <!-- Common stylesheet for the whole portal -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- ====== Top navigation (shared across all pages) ====== -->
<header class="header">
    <nav class="nav">
        <div class="logo">Find<span>IT</span></div>
        <ul class="nav-links">
            <li><a href="index.jsp" style="color:#7ed3d3;">Home</a></li>
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

    <!-- Hero section -->
    <section class="hero">
        <h1>Welcome to FindIT</h1>
        <p>The official Lost &amp; Found portal for our college community.
           Lost something on campus? Found something that isn't yours?
           Report it here and help reunite items with their owners.</p>
        <a href="report-item.jsp" class="btn">Report an Item</a>
        <a href="search-items.jsp" class="btn btn-secondary">Browse Items</a>
    </section>

    <!-- How it works -->
    <section class="section">
        <h2>How it works</h2>
        <div class="card-grid">
            <div class="card">
                <h3>1. Report</h3>
                <p class="meta">Lost or found</p>
                <p>Submit a quick report with item details and location.</p>
            </div>
            <div class="card">
                <h3>2. Search</h3>
                <p class="meta">Browse listings</p>
                <p>Look through active items posted by other students.</p>
            </div>
            <div class="card">
                <h3>3. Claim</h3>
                <p class="meta">Verified by admin</p>
                <p>Submit a claim and collect your item once verified.</p>
            </div>
        </div>
    </section>

    <!-- Recent items preview -->
    <section class="section">
        <h2>Recent Items</h2>
        <div class="card-grid">
            <div class="card">
                <span class="tag tag-lost">Lost</span>
                <h3>Black Wallet</h3>
                <p class="meta">Library - 2 days ago</p>
                <p>Lost near the second floor reading area.</p>
                <a href="item-detail.jsp" class="btn btn-small">View</a>
            </div>
            <div class="card">
                <span class="tag tag-found">Found</span>
                <h3>Blue Water Bottle</h3>
                <p class="meta">Cafeteria - 1 day ago</p>
                <p>Found on table near the entrance.</p>
                <a href="item-detail.jsp" class="btn btn-small">View</a>
            </div>
            <div class="card">
                <span class="tag tag-lost">Lost</span>
                <h3>Student ID Card</h3>
                <p class="meta">Block C - 3 days ago</p>
                <p>Name starts with "A". Please report if found.</p>
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
