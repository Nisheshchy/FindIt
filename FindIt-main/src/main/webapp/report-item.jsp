<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report Item - FindIT</title>
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
            <li><a href="report-item.jsp" style="color:#7ed3d3;">Report Item</a></li>
            <li><a href="student-dashboard.jsp">Dashboard</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="register.jsp">Register</a></li>
        </ul>
    </nav>
</header>

<main class="container">

    <!-- Form posts to ReportItemServlet -->
    <form class="form-box" action="ReportItemServlet" method="post" enctype="multipart/form-data" style="max-width:600px;">
        <h2>Report an Item</h2>

        <!-- Example success message -->
        <!-- <div class="msg msg-success">Report submitted. Awaiting verification.</div> -->

        <div class="form-group">
            <label for="type">Report Type</label>
            <select id="type" name="type" required>
                <option value="">-- Select --</option>
                <option value="lost">Lost</option>
                <option value="found">Found</option>
            </select>
        </div>

        <div class="form-group">
            <label for="title">Item Name / Title</label>
            <input type="text" id="title" name="title" required>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <select id="category" name="category" required>
                <option value="">-- Select --</option>
                <option>Electronics</option>
                <option>Books</option>
                <option>ID Cards</option>
                <option>Bags</option>
                <option>Clothing</option>
                <option>Other</option>
            </select>
        </div>

        <div class="form-group">
            <label for="location">Location</label>
            <input type="text" id="location" name="location" placeholder="e.g. Library 2nd floor" required>
        </div>

        <div class="form-group">
            <label for="date">Date</label>
            <input type="date" id="date" name="date" required>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" required></textarea>
        </div>

        <div class="form-group">
            <label for="image">Upload Image (optional)</label>
            <input type="file" id="image" name="image" accept="image/*">
        </div>

        <div class="form-actions">
            <a href="student-dashboard.jsp">Cancel</a>
            <button type="submit" class="btn">Submit Report</button>
        </div>
    </form>
</main>

<!-- ====== Footer (shared) ====== -->
<footer class="footer">
    &copy; 2026 FindIT - Lost &amp; Found Portal | Educational Project
</footer>

</body>
</html>
