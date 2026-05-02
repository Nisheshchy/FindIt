<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - FindIT</title>
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
            <li><a href="about.jsp" style="color:#7ed3d3;">About</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="register.jsp">Register</a></li>
        </ul>
    </nav>
</header>

<main class="container">

    <section class="hero">
        <h1>About FindIT</h1>
        <p>A student-built Lost &amp; Found portal for our college campus.</p>
    </section>

    <section class="section">
        <h2>Our Goal</h2>
        <p>FindIT helps students and staff report and recover lost items quickly.
           Instead of relying on notice boards or word of mouth, anyone in the
           college can post a lost or found item and search through active listings.</p>
    </section>

    <section class="section">
        <h2>Team</h2>
        <div class="card-grid">
            <div class="card"><h3>Member 1</h3><p class="meta">Frontend (JSP / CSS)</p></div>
            <div class="card"><h3>Member 2</h3><p class="meta">Servlets / Backend</p></div>
            <div class="card"><h3>Member 3</h3><p class="meta">Database (MySQL)</p></div>
            <div class="card"><h3>Member 4</h3><p class="meta">Testing &amp; Documentation</p></div>
        </div>
    </section>

    <section class="section">
        <h2>Technology</h2>
        <p>JSP, Java Servlets, MySQL, MVC architecture, plain CSS with Flexbox.</p>
    </section>
</main>

<!-- ====== Footer (shared) ====== -->
<footer class="footer">
    &copy; 2026 FindIT - Lost &amp; Found Portal | Educational Project
</footer>

</body>
</html>
