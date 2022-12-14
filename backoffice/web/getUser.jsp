<%--
  Created by IntelliJ IDEA.
  User: H3-Asus
  Date: 8/8/2020
  Time: 12:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>

        <title>Get user info</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap.min.css">
        <script src="${pageContext.request.contextPath}/assets/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/bootstrap.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        input[type=text] {
            width: 130px;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            background-color: white;
            background-image: url('searchicon.png');
            background-position: 10px 10px;
            background-repeat: no-repeat;
            padding: 12px 20px 12px 40px;
            -webkit-transition: width 0.4s ease-in-out;
            transition: width 0.4s ease-in-out;
        }

        input[type=text]:focus {
            width: 100%;
        }
        .btn {
            background-color: #449baf;
            color: white;
            padding: 12px;
            margin: 10px 0;
            border: none;
            width: 100%;
            border-radius: 3px;
            cursor: pointer;
            font-size: 17px;
        }
        /* Add a black background color to the top navigation */
        .topnav {
            background-color: #333;
            overflow: hidden;
        }

        /* Style the links inside the navigation bar */
        .topnav a {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        /* Change the color of links on hover */
        .topnav a:hover {
            background-color: #ddd;
            color: #117e9e;
        }

        /* Add a color to the active/current link */
        .topnav a.active {
            background-color: #449baf;
            color: white;
        }
    </style>
</head>
<body>
<div class="topnav">
    <a class="active" href="http://localhost:8081/main.jsp">Home</a>
    <a href="http://localhost:8081/admin.jsp">Admin</a>
    <a href="http://localhost:8081/Report.jsp">Report</a>
    <a href="http://localhost:8081/Services.jsp">Service</a>
</div>
<p>Enter user information::</p>

<form action="/user/search.do">
    <input type="text" name="searchuser" placeholder="Search...">

</form>

<form action="javascript:window.location='/user/createUser.do'">
    <input type="submit" class="btn btn-info" name="add" value="add new user">

</form>
<div class="container">
    <div class="panel panel-primary">
        <div class="panel-heading">User</div>
        <div class="panel-body">

            <table class="table table-hover" style="width: 100%">
                <tr>
                    <td>ID</td>
                    <td>USER ID</td>
                    <td>NAME</td>
                    <td>FAMILY</td>
                    <td>CREATE DATE</td>
                    <td>STATUS</td>
                    <td>NATIONAL ID</td>
                    <td>MOBILE NUMBER</td>
                </tr>
                <c:forEach items="${requestScope.list}" var="user">
                    <tr>
<%--                        javascript:window.location='/user/update.do?id='+${user.id}--%>
                        <form action="/user/update.do">
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" readonly name="id" id="id" value="${user.id}"/></td>
                            </div>
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" readonly name="userid"  id="userid" value="${user.userId}"/></td>
                            </div>
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" name="name" id="name" value="${user.name}"/></td>
                            </div>
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" name="family"id="family" value="${user.family}"/></td>
                            </div>
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" readonly name="createdate" id="createdate" value="${user.createDate}"/></td>
                            </div>
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" name="status" id="status" value="${user.status}"/></td>
                            </div>
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" readonly name="nationalid" id="nationalid" value="${user.nationalId}"/></td>
                            </div>
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text"  name="mobileNo" id="mobileNo" value="${user.mobileNo}"/></td>
                            </div>

                            <td><input style="width: 100%" type="submit" value="Update" class="btn btn-danger"/></td>
                            <td><input style="width: 100%" type="button" value="Delete" onclick="removePerson(${user.id})" class="btn btn-danger"/></td>
                        </form>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<script>
    function removePerson(id) {
        if (confirm("are you sure?")) {
            window.location = '/user/delete.do?id=' + id;
        }
    }
</script>

</body>
</html>
