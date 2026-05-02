<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Browse Items - FindIT</title>
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
            <li><a href="search-items.jsp" style="color:#7ed3d3;">Browse Items</a></li>
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

    <!-- Search/filter bar -->
    <section class="section">
        <h2>Search Items</h2>
        <form action="SearchServlet" method="get">
            <div style="display:flex; flex-wrap:wrap; gap:10px;">
                <input type="text" name="keyword" placeholder="Search by keyword"
                       style="flex:2 1 200px; padding:8px; border:1px solid #cfd4dc; border-radius:4px;">
                <select name="type" style="flex:1 1 120px; padding:8px; border:1px solid #cfd4dc; border-radius:4px;">
                    <option value="">All</option>
                    <option value="lost">Lost</option>
                    <option value="found">Found</option>
                </select>
                <select name="category" style="flex:1 1 120px; padding:8px; border:1px solid #cfd4dc; border-radius:4px;">
                    <option value="">All Categories</option>
                    <option>Electronics</option>
                    <option>Books</option>
                    <option>ID Cards</option>
                    <option>Bags</option>
                </select>
                <button type="submit" class="btn">Search</button>
            </div>
        </form>
    </section>

    <!-- Results -->
    <section class="section">
        <h2>Active Listings</h2>
        <div class="card-grid">
            <div class="card">
                <span class="tag tag-lost">Lost</span>
                <h3>Black Wallet</h3>
                <p class="meta">Library - 2 days ago</p>
                <p>Lost near the reading area on the second floor.</p>
                <a href="item-detail.jsp" class="btn btn-small">View Details</a>
            </div>
            <div class="card">
                <span class="tag tag-found">Found</span>
                <h3>Blue Water Bottle</h3>
                <p class="meta">Cafeteria - 1 day ago</p>
                <p>Found on a table near the entrance.</p>
                <a href="item-detail.jsp" class="btn btn-small">View Details</a>
            </div>
            <div class="card">
                <span class="tag tag-lost">Lost</span>
                <h3>Student ID Card</h3>
                <p class="meta">Block C - 3 days ago</p>
                <p>Name starts with "A".</p>
                <a href="item-detail.jsp" class="btn btn-small">View Details</a>
            </div>
            <div class="card">
                <span class="tag tag-found">Found</span>
                <h3>Scientific Calculator</h3>
                <p class="meta">Lab 4 - today</p>
                <p>Casio fx-991. Found on bench.</p>
                <a href="item-detail.jsp" class="btn btn-small">View Details</a>
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
