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
<form action="/transaction/save.do">
    <input type="text" placeholder="transaction number" name="transNo" id="transNo"/>
    <br>
    <input type="text" placeholder="account Number" name="accNo" id="accNo">
    <br>
    <input type="text" placeholder="description" name="desc" id="desc">
    <br>
    <input type="text" placeholder="deposit amount" name="depAmnt" id="depAmnt">
    <br>
    <input type="text" placeholder="withdraw amount" name="withAmnt" id="withAmnt">
    <br>
    <input type="text" placeholder="service type" name="code" id="code">
    <br>
    <input type="text" placeholder="destination transaction number" name="destTransNo" id="destTransNo">
    <br>
    <input type="text" placeholder="transaction Date" name="transDate" id="transDate">
    <br>
    <input type="text" placeholder="transaction time" name="transTime" id="transTime">
    <br>
    <input type="submit" value="add transaction">

</form>
<table border="1" style="width: 100%">
    <c:forEach items="${requestScope.list}" var="trans">
        <tr>
            <form action="/transaction/update.do">
                <td><input type="text" value="${trans.id}" name="id" style="width: 100%" readonly/></td>
                <td><input type="text" value="${trans.trasNo}" style="width: 100%" name="trasNo"/></td>
                <td><input type="text" value="${trans.accountNumber}" style="width: 100%" name="accountNumber"/></td>
                <td><input type="text" value="${trans.description}" style="width: 100%" name="description"/></td>
                <td><input type="text" value="${trans.depAmount}" name="depAmount" style="width: 100%" /></td>
                <td><input type="text" value="${trans.withAmount}" name="withAmount" style="width: 100%" /></td>
                <td><input type="text" value="${trans.code}" style="width: 100%" name="code"/></td>
                <td><input type="text" value="${trans.destTransNo}" style="width: 100%" name="destTransNo"/></td>
                <td><input type="text" value="${trans.transDate}" style="width: 100%" name="transDate"/></td>
                <td><input type="text" value="${trans.transTime}" style="width: 100%" name="transTime"/></td>
                <td><input type="submit" value="UPDATE" style="width: 100%"/></td>
                <td><input type="button" value="DELETE" style="width: 100%" onclick="javascript:window.location='/transaction/delete.do?id='+${trans.id}"/></td>
            </form>
        </tr>
    </c:forEach>
</table>
</body>
</html>
