<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: H3-Asus
  Date: 8/8/2020
  Time: 11:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>result</title>
    <style>
        * {box-sizing: border-box}
        body {font-family: "Lato", sans-serif;}
        /*the container must be positioned relative:*/
        .custom-select {
            position: relative;
            font-family: Arial;
        }

        .custom-select select {
            display: none; /*hide original SELECT element:*/
        }

        .select-selected {
            background-color: DodgerBlue;
        }

        /*style the arrow inside the select element:*/
        .select-selected:after {
            position: absolute;
            content: "";
            top: 14px;
            right: 10px;
            width: 0;
            height: 0;
            border: 6px solid transparent;
            border-color: #fff transparent transparent transparent;
        }

        /*point the arrow upwards when the select box is open (active):*/
        .select-selected.select-arrow-active:after {
            border-color: transparent transparent #fff transparent;
            top: 7px;
        }

        /*style the items (options), including the selected item:*/
        .select-items div,.select-selected {
            color: #ffffff;
            padding: 8px 16px;
            border: 1px solid transparent;
            border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
            cursor: pointer;
            user-select: none;
        }

        /*style items (options):*/
        .select-items {
            position: absolute;
            background-color: DodgerBlue;
            top: 100%;
            left: 0;
            right: 0;
            z-index: 99;
        }

        /*hide the items when the select box is closed:*/
        .select-hide {
            display: none;
        }

        .select-items div:hover, .same-as-selected {
            background-color: rgba(0, 0, 0, 0.1);
        }



        /* Style the tab */
        .tab {
            float: left;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
            width: 30%;
            height: 300px;
        }

        /* Style the buttons inside the tab */
        .tab button {
            display: block;
            background-color: inherit;
            color: black;
            padding: 22px 16px;
            width: 100%;
            border: none;
            outline: none;
            text-align: left;
            cursor: pointer;
            transition: 0.3s;
            font-size: 17px;
        }

        /* Change background color of buttons on hover */
        .tab button:hover {
            background-color: #ddd;
        }

        /* Create an active/current "tab button" class */
        .tab button.active {
            background-color: #ccc;
        }

        /* Style the tab content */
        .tabcontent {
            float: left;
            padding: 0px 12px;
            border: 1px solid #ccc;
            width: 70%;
            border-left: none;
            height: 300px;
            text-align: center
        }
        .btn {
            border: 2px solid black;
            background-color: white;
            color: black;
            padding: 14px 28px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
        }
        /* Blue */
        .info {
            border-color: rgba(6, 0, 37, 0.66);
            color: #646468;
        }
        .col-container {
            display: table;
            width: 100%;
            text-align: center
        }
        .col {
            display: table-cell;
            padding: 16px;
            text-align: center;
        }

        .btn {
            border: 2px solid black;
            background-color: white;
            color: black;
            padding: 14px 28px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
        }
        /* Blue */
        .info {
            border-color: #2196F3;
            color: dodgerblue;
        }

        .info:hover {
            background: #2196F3;
            color: white;
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
<div class="container">
    <div class="panel panel-primary">
        <div class="panel-heading">Transaction Details</div>
        <div class="panel-body">
            <br>
            <br>
            <table class="table table-hover" style="width: 100%">
                <tr>
                    <td>Transaction Number</td>
                    <td>Account Number</td>
                    <td>Description</td>
                    <td>Deposit Amount</td>
                    <td>Withdraw Amount</td>


                </tr>
                <c:forEach items="${requestScope.list}" var="trans">
                    <tr>
                            <%--                        javascript:window.location='/user/update.do?id='+${user.id}--%>
                        <form >
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" name="transNo" id="transNo" value="${trans.trasNo}"/></td>
                            </div>
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" name="accNo" id="accNo" value="${trans.accountNumber}"/></td>
                            </div>
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" readonly name="desc" id="desc" value="${trans.description}"/></td>
                            </div>
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" name="depAmnt" id="depAmnt" value="${trans.depAmount}"/></td>
                            </div>
                            <div class="form-group">
                                <td><input class="form-control" style="width: 100%" type="text" readonly name="withAmnt" id="withAmnt" value="${trans.withAmount}"/></td>
                            </div>

                        </form>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>

<br>
<br>
<div class="container">
    <label for="total"></i>Total Number:</label>
    <input type="text" name="total" id="total" value="${requestScope.totalNumber}">
    <br/>
    <label for="totalWith"></i>Total Withdraw Amount:</label>
    <input type="text" name="totalWith" id="totalWith" value="${requestScope.totalWithAmount}">
    <br/>
    <label for="totalDep"></i>Total Deposit Amount:</label>
    <input type="text" name="totalDep" id="totalDep" value="${requestScope.totalDepAmount}">
</div>


</body>
</html>
