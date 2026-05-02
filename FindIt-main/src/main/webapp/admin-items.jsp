<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify Items - FindIT</title>
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
        <h2>Item Verification</h2>
        <p style="margin-bottom:10px;">Review and approve / reject reported items.</p>
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>ID</th><th>Item</th><th>Type</th><th>Reported By</th><th>Date</th><th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>R101</td><td>Wallet</td><td>Lost</td><td>STU1023</td><td>01 May 2026</td>
                        <td>
                            <a href="VerifyServlet?id=101&action=approve" class="btn btn-small">Approve</a>
                            <a href="VerifyServlet?id=101&action=reject"  class="btn btn-small btn-danger">Reject</a>
                        </td>
                    </tr>
                    <tr>
                        <td>R102</td><td>Headphones</td><td>Found</td><td>STU1099</td><td>30 Apr 2026</td>
                        <td>
                            <a href="VerifyServlet?id=102&action=approve" class="btn btn-small">Approve</a>
                            <a href="VerifyServlet?id=102&action=reject"  class="btn btn-small btn-danger">Reject</a>
                        </td>
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
