<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Categories - FindIT</title>
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
        <h2>Categories</h2>
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr><th>ID</th><th>Name</th><th>Items</th><th>Action</th></tr>
                </thead>
                <tbody>
                    <tr><td>1</td><td>Electronics</td><td>34</td>
                        <td><a href="CategoryServlet?id=1&action=delete" class="btn btn-small btn-danger">Delete</a></td></tr>
                    <tr><td>2</td><td>Books</td><td>20</td>
                        <td><a href="CategoryServlet?id=2&action=delete" class="btn btn-small btn-danger">Delete</a></td></tr>
                    <tr><td>3</td><td>ID Cards</td><td>15</td>
                        <td><a href="CategoryServlet?id=3&action=delete" class="btn btn-small btn-danger">Delete</a></td></tr>
                </tbody>
            </table>
        </div>
    </section>

    <!-- Add new category form -->
    <form class="form-box" action="CategoryServlet" method="post">
        <h2>Add Category</h2>
        <!-- <div class="msg msg-success">Category added.</div> -->
        <div class="form-group">
            <label for="catname">Category Name</label>
            <input type="text" id="catname" name="name" required>
        </div>
        <div class="form-actions">
            <a href="admin-dashboard.jsp">Back</a>
            <button type="submit" class="btn">Add Category</button>
        </div>
    </form>
</main>

<!-- ====== Footer (shared) ====== -->
<footer class="footer">
    &copy; 2026 FindIT - Lost &amp; Found Portal | Educational Project
</footer>

</body>
</html>
