<%--
  Created by IntelliJ IDEA.
  User: H3-Asus
  Date: 8/8/2020
  Time: 5:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>input data</title>
    <style>
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
<form action="/account/save.do">
    <label for="userid"></i>user id</label>
    <input type="text" placeholder="user id" name="userid" id="userid"/>
    <br>
    <label for="balance"></i>Balance</label>
    <input type="text" placeholder="balance" name="balance" id="balance">
    <br>
    <label for="mobile"></i>user mobile number</label>
    <input type="text" placeholder="mobile" name="mobile" id="mobile">
    <br>
    <label for="accNo"></i>Account Number</label>
    <input type="text" placeholder="account number" name="accNo" id="accNo">
    <br>
     <br>
    <input type="submit" value="create Account">

</form>
<table border="1" style="width: 100%">
    <tr>
        <td>ID</td>
        <td>USER ID</td>
        <td>Account Number</td>
        <td>RemainBalance</td>
        <td>Mobile Number</td>
        <td>STATUS</td>
        <td>Type</td>
        <td>Last Trans Date</td>
        <td>Last Trans Time</td>
    </tr>
    <c:forEach items="${requestScope.list}" var="acc">
        <tr>
            <form action="/account/update.do">
                <td><input type="text" value="${acc.id}" name="id" style="width: 100%" readonly/></td>
                <td><input type="text" value="${acc.userid}" style="width: 100%" name="userid" readonly/></td>
                <td><input type="text" value="${acc.accountNumber}" style="width: 100%" name="accNo"/></td>
                <td><input type="text" value="${acc.remainBalance}" style="width: 100%" name="balance"/></td>
                <td><input type="text" value="${acc.mobileNo}" name="mobile" style="width: 100%" /></td>
                <td><input type="text" value="${acc.status}" name="status" style="width: 100%" /></td>
                <td><input type="text" value="${acc.type}" style="width: 100%" name="type"/></td>
                <td><input type="text" value="${acc.lastTransDate}" style="width: 100%" name="lastTransDate"/></td>
                <td><input type="text" value="${acc.lastTransTime}" style="width: 100%" name="lastTransTime"/></td>

                <td><input type="submit" value="UPDATE" style="width: 100%"/></td>
                <td><input type="button" value="DELETE" style="width: 100%" onclick="javascript:window.location='/account/delete.do?id='+${acc.id}"/></td>
            </form>
        </tr>
    </c:forEach>
</table>
</body>
</html>
