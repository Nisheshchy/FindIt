<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - FindIT</title>
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
            <li><a href="contact.jsp" style="color:#7ed3d3;">Contact</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="register.jsp">Register</a></li>
        </ul>
    </nav>
</header>

<main class="container">

    <section class="section">
        <h2>Contact Us</h2>
        <p>Have a question or suggestion? Send us a message below.</p>
        <p style="margin-top:10px;">
            <strong>Email:</strong> findit@college.edu<br>
            <strong>Office:</strong> Student Affairs, Block A
        </p>
    </section>

    <form class="form-box" action="ContactServlet" method="post">
        <h2>Send Inquiry</h2>
        <!-- <div class="msg msg-success">Message sent. We will reply soon.</div> -->
        <!-- <div class="msg msg-error">Please fill all required fields.</div> -->

        <div class="form-group">
            <label for="cname">Name</label>
            <input type="text" id="cname" name="name" required>
        </div>
        <div class="form-group">
            <label for="cemail">Email</label>
            <input type="email" id="cemail" name="email" required>
        </div>
        <div class="form-group">
            <label for="csubject">Subject</label>
            <input type="text" id="csubject" name="subject" required>
        </div>
        <div class="form-group">
            <label for="cmsg">Message</label>
            <textarea id="cmsg" name="message" required></textarea>
        </div>
        <div class="form-actions">
            <a href="index.jsp">Cancel</a>
            <button type="submit" class="btn">Send Message</button>
        </div>
    </form>
</main>

<!-- ====== Footer (shared) ====== -->
<footer class="footer">
    &copy; 2026 FindIT - Lost &amp; Found Portal | Educational Project
</footer>

</body>
</html>
