<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%@ page import="com.luminar.springbootkalathmika.model.Student" %>

<%
    Student student = (Student) request.getAttribute("student");
%>

<html>
<head>
    <title>Edit Student</title>
    <style>
        ul.nav-menu {
            list-style-type: none;
            padding: 0;
            margin: 20px auto 0 auto;
            display: flex;
            justify-content: center;
            gap: 25px;
        }

        ul.nav-menu li a {
            text-decoration: none;
            background-color: #9C27B0;
            color: white;
            padding: 12px 20px;
            border-radius: 8px;
        }

        ul.nav-menu li a:hover {
            background-color: #7B1FA2;
        }

       /*  body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            padding: 30px;
        } */

        .form-container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 10px;
        }

        input, select, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        label {
            font-weight: bold;
        }

        .btn-submit {
            background-color: #9C27B0;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
        }

        .btn-submit:hover {
            background-color: #7B1FA2;
        }
    </style>
</head>
<body>
<nav>
    <ul class="nav-menu">
    <li><a href="/admin/dashboard">Home</a></li>
        <li><a href="/admin/manageStudents">Manage Students</a></li>
        <li><a href="/admin/danceForms">Dance Forms</a></li>
        <li><a href="/admin/trackFees">Track Fees</a></li>
         <li><a href="/admin/classSchedule">Class Schedule</a></li>
        <li><a href="/admin/Events">Events</a></li>
        <li><a href="/admin/Gallery">Gallery</a></li>
        
    </ul>
</nav>
<br><br>

<div class="form-container">
    <h2>Edit Student</h2>

    <form action="${pageContext.request.contextPath}/admin/editStudent" method="post">
        <input type="hidden" name="stuId" value="<%= student.getStuId() %>"/>

        <label>Name:</label>
        <input type="text" name="stuName" value="<%= student.getStuName() %>" required />

        <label>DOB:</label>
        <input type="date" name="stuDob" value="<%= student.getStuDob() %>" required />

        <label>Gender:</label>
        <select name="stuGender" required>
            <option value="Male" <%= "Male".equals(student.getStuGender()) ? "selected" : "" %>>Male</option>
            <option value="Female" <%= "Female".equals(student.getStuGender()) ? "selected" : "" %>>Female</option>
            <option value="Other" <%= "Other".equals(student.getStuGender()) ? "selected" : "" %>>Other</option>
        </select>

        <label>Parent Name:</label>
        <input type="text" name="stuParentname" value="<%= student.getStuParentname() %>" required />

        <label>Contact Number:</label>
        <input type="text" name="stuContactnumber" value="<%= student.getStuContactnumber() %>" required />

        <label>Email:</label>
        <input type="email" name="stuEmail" value="<%= student.getStuEmail() %>" required />

        <label>Address:</label>
        <textarea name="stuAddress" required><%= student.getStuAddress() %></textarea>

        <label>Join Date:</label>
        <input type="date" name="stuDateofJoin" value="<%= student.getStuDateofJoin() %>" required />

        <label>Dance Form:</label>
        <select name="stuDanceform" required>
            <option value="Bharatanatyam" <%= "Bharatanatyam".equals(student.getStuDanceform()) ? "selected" : "" %>>Bharatanatyam</option>
            <option value="Kathak" <%= "Kathak".equals(student.getStuDanceform()) ? "selected" : "" %>>Kathak</option>
            <option value="Mohiniyattam" <%= "Mohiniyattam".equals(student.getStuDanceform()) ? "selected" : "" %>>Mohiniyattam</option>
            <option value="Other" <%= "Other".equals(student.getStuDanceform()) ? "selected" : "" %>>Other</option>
        </select>

        <label>Level:</label>
        <select name="stuLevel" required>
            <option value="Beginner" <%= "Beginner".equals(student.getStuLevel()) ? "selected" : "" %>>Beginner</option>
            <option value="Intermediate" <%= "Intermediate".equals(student.getStuLevel()) ? "selected" : "" %>>Intermediate</option>
            <option value="Advanced" <%= "Advanced".equals(student.getStuLevel()) ? "selected" : "" %>>Advanced</option>
        </select>

        <button type="submit" class="btn-submit">Update</button>
    </form>
</div>

</body>
</html>

<%@ include file="footer.jsp" %>
