<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Detail - FindIT</title>
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
        <h2>Item Details</h2>
        <div style="display:flex; flex-wrap:wrap; gap:20px;">
            <div style="flex:1 1 250px;">
                <!-- Placeholder image area -->
                <div style="background:#dde1e7; height:220px; display:flex;
                            align-items:center; justify-content:center; color:#666; border-radius:6px;">
                    Item Image
                </div>
            </div>
            <div style="flex:2 1 300px;">
                <span class="tag tag-found">Found</span>
                <h3 style="margin:8px 0; color:#0b2545;">Blue Water Bottle</h3>
                <p><strong>Category:</strong> Other</p>
                <p><strong>Location:</strong> Cafeteria</p>
                <p><strong>Date:</strong> 02 May 2026</p>
                <p><strong>Reported by:</strong> Student #1023</p>
                <p style="margin-top:10px;">
                    <strong>Description:</strong><br>
                    Blue stainless steel bottle, around 750ml, with a small dent on the side.
                    Found on a table near the cafeteria entrance.
                </p>
                <p style="margin-top:15px;">
                    <a href="#claim" class="btn">Submit a Claim</a>
                    <a href="search-items.jsp" class="btn btn-secondary">Back to list</a>
                </p>
            </div>
        </div>
    </section>

    <!-- Claim form -->
    <form id="claim" class="form-box" action="ClaimServlet" method="post">
        <h2>Claim this Item</h2>
        <!-- <div class="msg msg-success">Your claim has been submitted.</div> -->
        <input type="hidden" name="itemId" value="123">

        <div class="form-group">
            <label for="proof">Proof of Ownership</label>
            <textarea id="proof" name="proof" placeholder="Describe identifying details only the owner would know" required></textarea>
        </div>

        <div class="form-group">
            <label for="contact">Contact Number</label>
            <input type="text" id="contact" name="contact" required>
        </div>

        <div class="form-actions">
            <a href="search-items.jsp">Cancel</a>
            <button type="submit" class="btn">Submit Claim</button>
        </div>
    </form>
</main>

<!-- ====== Footer (shared) ====== -->
<footer class="footer">
    &copy; 2026 FindIT - Lost &amp; Found Portal | Educational Project
</footer>

</body>
</html>
