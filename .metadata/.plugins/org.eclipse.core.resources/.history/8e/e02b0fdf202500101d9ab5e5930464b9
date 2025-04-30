<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%@ page import="com.luminar.springbootkalathmika.model.Student"%>

<%
    Student student  = (Student)request.getAttribute("StudentRecord");
    session.setAttribute("StudentId", student.getStuId());
    session.setAttribute("StudentRecord", student);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Marcellus&family=Roboto&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: 
                linear-gradient(to right, rgba(243,229,245,0.8), rgba(237,231,246,0.8)),
                url('${pageContext.request.contextPath}/images/bharat.webp') no-repeat left, 
                url('${pageContext.request.contextPath}/images/bharat.webp') no-repeat right;
            background-size: 30%;
            background-position: left center, right center;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        body::before, body::after {
            content: "";
            position: fixed;
            left: 0;
            width: 100%;
            height: 30px;
            background: url('https://via.placeholder.com/1920x30/fff/ff6347?text=Indian+Pattern') repeat-x;
            z-index: 1;
        }

        body::before { top: 0; }
        body::after { bottom: 0; }

        nav, .dashboard-container {
            position: relative;
            z-index: 2;
        }

        ul.nav-menu {
            list-style: none;
            display: flex;
            justify-content: center;
            gap: 25px;
            margin: 20px auto 0 auto;
            padding: 0;
        }

        ul.nav-menu li a {
            text-decoration: none;
            background-color: #9C27B0;
            color: white;
            padding: 12px 20px;
            border-radius: 8px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        ul.nav-menu li a:hover, ul.nav-menu li a.active {
            background-color: #7B1FA2;
            transform: scale(1.05);
        }

        .dashboard-container {
            max-width: 1100px;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.95);
            padding: 50px 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s ease-in-out;
            text-align: center;
        }

        .dashboard-title {
            font-family: 'Marcellus', serif;
            font-size: 36px;
            color: #7B1FA2;
            margin-bottom: 30px;
        }

        .dashboard-section {
            margin: 40px 0;
        }

        .dashboard-section h3 {
            font-family: 'Marcellus', serif;
            font-size: 26px;
            color: #9C27B0;
            margin-bottom: 15px;
        }

        .dashboard-section p {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .btn {
            background-color: #9C27B0;
            color: white;
            padding: 12px 24px;
            font-size: 16px;
            border-radius: 8px;
            text-decoration: none;
            transition: background-color 0.3s, transform 0.3s;
            display: inline-block;
        }

        .btn:hover {
            background-color: #7B1FA2;
            transform: scale(1.05);
        }

        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(-20px);}
            100% { opacity: 1; transform: translateY(0);}
        }

        /* Mobile responsive */
        @media (max-width: 768px) {
            ul.nav-menu {
                flex-wrap: wrap;
                gap: 15px;
            }

            .dashboard-container {
                margin: 20px;
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>

<nav>
    <ul class="nav-menu">
        <li><a href="/admin/student/dashboard" class="active">Home</a></li>
        <li><a href="/admin/student/myProfile">My Profile</a></li>
        <li><a href="/admin/student/myClasses">My Classes</a></li>
        <li><a href="/admin/student/fees">Fees</a></li>
        <li><a href="/admin/student/events">Events</a></li>
        <li><a href="/admin/student/gallery">Gallery</a></li>
    </ul>
</nav>

<div class="dashboard-container">
    <h1 class="dashboard-title">Welcome, <%= student.getStuName() %>!</h1>

    <div class="dashboard-section">
        <h3>My Classes</h3>
        <p>View your class schedules, dance forms, and timings.</p>
        <a href="/admin/student/myClasses" class="btn">View Classes</a>
    </div>

    <div class="dashboard-section">
        <h3>Fees</h3>
        <p>Track your fee payments and dues.</p>
        <a href="/admin/student/fees" class="btn">Track Fees</a>
    </div>

    <div class="dashboard-section">
        <h3>Upcoming Events</h3>
        <p>Check upcoming performances and competitions.</p>
        <a href="/admin/student/events" class="btn">View Events</a>
    </div>

    <div class="dashboard-section">
        <h3>Gallery</h3>
        <p>Browse memorable moments and achievements.</p>
        <a href="/admin/student/gallery" class="btn">View Gallery</a>
    </div>

    <div class="dashboard-section">
        <h3>My Profile</h3>
        <p>Update your personal details and change your password.</p>
        <a href="/admin/student/myProfile" class="btn">Edit Profile</a>
    </div>

</div>

</body>
</html>
<%@ include file="footer.jsp" %>
