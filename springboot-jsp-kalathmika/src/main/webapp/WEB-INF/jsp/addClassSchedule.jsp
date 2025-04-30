<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Class Schedule</title>
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
        /* body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            padding: 30px;
        }
 */
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
    <h2>Add New Class Schedule</h2>
    <form action="${pageContext.request.contextPath}/admin/saveClass" method="post">
         <div>
    <label for="class_name">Class Name:</label>
    <input type="text" id="className" name="className" required>
  </div>

  <div>
    <label for="dance_desc">Class- Day Of week:</label>
    <input type="text" id="classDayofweek" name="classDayofweek" required>
    
    
  </div>

  <div>
    <label for="dance_origin_state">Class Start Time:</label>
    <input type="text" id="classStarttime" name="classStarttime" required>
  </div>
  
  <div>
    <label for="dance_origin_state">Class End Time:</label>
    <input type="text" id="classEndtime" name="classEndtime" required>
  </div>
  
  <div>
    <label for="dance_origin_state">Class Location:</label>
    <input type="text" id="classLocation" name="classLocation" required>
  </div>
  
  <div>
    <label for="dance_origin_state">Class Description:</label>
    <textarea id="classDesc" name="classDesc" rows="4" cols="50" required></textarea>
  </div>

        <button type="submit" class="btn-submit">Add Class Schedule</button>
    </form>
</div>

</body>
</html>
<%@ include file="footer.jsp" %>
