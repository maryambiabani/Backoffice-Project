<%--
  Created by IntelliJ IDEA.
  User: H3-Asus
  Date: 8/7/2020
  Time: 10:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {box-sizing: border-box}
        body {font-family: "Lato", sans-serif;}




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
<h2>BANK</h2>

<div class="tab">
    <button class="tablinks" onclick="openCity(event, 'Admin')" id="defaultOpen">Admin</button>
    <button class="tablinks" onclick="openCity(event, 'Report')">Report</button>
    <button class="tablinks" onclick="openCity(event, 'Service')">Service</button>
</div>

<div id="Admin" class="tabcontent">
    <div class="col-container">
        <div class="col" style="background:azure">
            <form>
                <input type="button" class="btn info" value="create new user"
                       onclick="javascript:window.location='createUser.jsp'">

            </form>
            <br>
            <br>
            <br>
            <br>
            <br>


            <form>


                <input type="button" class="btn info" value="get user information"
                       onclick="javascript:window.location='getUser.jsp'">
            </form>
        </div>


        <div class="col" style="background:ghostwhite" >
            <form>
                <input type="button" class="btn info" value="input transaction"
                       onclick="javascript:window.location='inputTransaction.jsp'">
            </form>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="col" style="background:ghostwhite" >
            <form>
                <input type="button" class="btn info" value="input Account"
                       onclick="javascript:window.location='inputAccount.jsp'">
            </form>
        </div>
    </div>
</div>

<div id="Report" class="tabcontent">
    <h3>Report</h3>
    <p>In ths part you can get report in different subject.</p>
    <form action="Report.jsp">
        <input type="submit" class="btn info" value="start...">
    </form>
</div>

<div id="Service" class="tabcontent">
    <h3>Service</h3>
    <p>In this part you can active/deactive services and get services turn over .</p>
    <form action="Services.jsp">
        <input type="submit" class="btn info" value="start...">
    </form>
</div>

<script>
    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();
</script>

</body>
</html>
