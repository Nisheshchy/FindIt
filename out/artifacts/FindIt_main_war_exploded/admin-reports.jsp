<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reports & Stats - FindIT</title>
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
        <h1>Reports &amp; Statistics</h1>
        <p>Overview of activity in the FindIT portal.</p>
    </section>

    <div class="stats">
        <div class="stat-box"><h3>120</h3><p>Total Reports</p></div>
        <div class="stat-box"><h3>72</h3><p>Lost Items</p></div>
        <div class="stat-box"><h3>48</h3><p>Found Items</p></div>
        <div class="stat-box"><h3>40</h3><p>Resolved Cases</p></div>
    </div>

    <section class="section">
        <h2>Category Wise Summary</h2>
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr><th>Category</th><th>Lost</th><th>Found</th><th>Resolved</th></tr>
                </thead>
                <tbody>
                    <tr><td>Electronics</td><td>20</td><td>14</td><td>10</td></tr>
                    <tr><td>Books</td><td>12</td><td>8</td><td>6</td></tr>
                    <tr><td>ID Cards</td><td>15</td><td>10</td><td>9</td></tr>
                    <tr><td>Bags</td><td>5</td><td>4</td><td>2</td></tr>
                    <tr><td>Other</td><td>20</td><td>12</td><td>13</td></tr>
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
