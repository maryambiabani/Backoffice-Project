<%--
  Created by IntelliJ IDEA.
  User: H3-Asus
  Date: 8/8/2020
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<div class="col-container">
    <div class="col" style="background:azure">
        <h2>By Date</h2>
        <form action="/report/date">
            <label for="fromDate"></i>from:</label>
            <br/>
            <input type="text" name="fromDate" id="fromDate" placeholder="13000000">
            <br/>
            <br/>
            <label for="toDate"></i>to:</label>
            <br/>
            <input type="text" name="toDate" id="toDate" placeholder="13000000">
            <br/>
            <br/>
            <input type="submit" class="btn info" value="get transactions">

        </form>

    </div>

    <div class="col" style="background:aliceblue">
        <h2>By Service Type</h2>
        <form action="/report/service">
            <label for="fromDate1"></i>from:</label>
            <br/>
            <input type="text" name="fromDate1" id="fromDate1" placeholder="13000000">
            <br/>
            <br/>
            <label for="toDate1"></i>to:</label>
            <br/>
            <input type="text" name="toDate1" id="toDate1" placeholder="13000000">

            <br/>
            <br/>

            <select name="selectService" class="custom-select mb-3">
                <option selected>Service Name</option>
                <option value="1">payBill</option>
                <option value="2">facility</option>
                <option value="3">internet</option>
                <option value="4">other</option>
            </select>

            <br/>
            <br/>
            <input type="submit" class="btn info" value="get transactions">

        </form>
    </div>

    <div class="col" style="background:ghostwhite">
        <h2>By Account Number</h2>
        <form action="/report/accountNo">
            <label for="fromDate2"></i>from:</label>
            <br/>
            <input type="text" name="fromDate2" id="fromDate2" placeholder="13000000">
            <br/>
            <br/>
            <label for="toDate2"></i>to:</label>
            <br/>
            <input type="text" name="toDate2" id="toDate2" placeholder="13000000">

            <br/>
            <br/>
            <label for="accNo1"></i> account number</label>
            <br/>
            <input type="text" id="accNo1" name="accNo1" placeholder="00000000">

            <br/>
            <br/>
            <input type="submit" class="btn info" value="get transactions">

        </form>
    </div>
</div>
</body>
</html>
