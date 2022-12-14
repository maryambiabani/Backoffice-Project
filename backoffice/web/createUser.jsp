<%--
  Created by IntelliJ IDEA.
  User: H3-Asus
  Date: 8/7/2020
  Time: 10:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            font-family: Arial;
            font-size: 17px;
            padding: 8px;
        }

        * {
            box-sizing: border-box;
        }

        .row {
            display: -ms-flexbox; /* IE10 */
            display: flex;
            -ms-flex-wrap: wrap; /* IE10 */
            flex-wrap: wrap;
            margin: 0 -16px;
        }

        .col-25 {
            -ms-flex: 25%; /* IE10 */
            flex: 25%;
        }

        .col-50 {
            -ms-flex: 50%; /* IE10 */
            flex: 50%;
        }

        .col-75 {
            -ms-flex: 75%; /* IE10 */
            flex: 75%;
        }

        .col-25,
        .col-50,
        .col-75 {
            padding: 0 16px;
        }

        .container {
            background-color: #f2f2f2;
            padding: 5px 20px 15px 20px;
            border: 1px solid lightgrey;
            border-radius: 3px;
        }

        input[type=text] {
            width: 100%;
            margin-bottom: 20px;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        label {
            margin-bottom: 10px;
            display: block;
        }

        .icon-container {
            margin-bottom: 20px;
            padding: 7px 0;
            font-size: 24px;
        }

        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            margin: 10px 0;
            border: none;
            width: 100%;
            border-radius: 3px;
            cursor: pointer;
            font-size: 17px;
        }

        .btn:hover {
            background-color: #45a049;
        }

        a {
            color: #2196F3;
        }

        hr {
            border: 1px solid lightgrey;
        }

        span.price {
            float: right;
            color: grey;
        }

        /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
        @media (max-width: 800px) {
            .row {
                flex-direction: column-reverse;
            }
            .col-25 {
                margin-bottom: 20px;
            }
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
<script>function validateForm() {
    var x = document.forms["myForm"]["fname"].value;
    if (x == "") {
        alert("Name must be filled out");
        return false;
    }
}</script>

<div class="topnav">
    <a class="active" href="http://localhost:8081/main.jsp">Home</a>
    <a href="http://localhost:8081/admin.jsp">Admin</a>
    <a href="http://localhost:8081/Report.jsp">Report</a>
    <a href="http://localhost:8081/Services.jsp">Service</a>
</div>
<h2>Create New User</h2>

<div class="row">
    <div class="col-75">
        <div class="container">
            <form action="/user/save.do">

                <div class="row">
                    <div class="col-50">
                        <h3>User Information</h3>
                        <label for="name"></i>Name</label>
                        <input type="text" id="name" name="name" placeholder="John" required >
                        <label for="family"></i> Family</label>
                        <input type="text" id="family" name="family" placeholder="Donald" required>
                        <label for="mobile"></i> Mobile Number</label>
                        <input type="text" id="mobile" name="mobile" placeholder="09120000000" required>
                        <label for="nationalid"></i> national Id</label>
                        <input type="text" id="nationalid" name="nationalid" placeholder="00112345678" required>

                        <div class="row">
                            <div class="col-50">
                                <label for="status">Status</label>
                                <input type="text" id="status" name="status" placeholder="0/1" required>
                            </div>
                            <div class="col-50">
                                <label for="branch">Branch</label>
                                <input type="text" id="branch" name="branch" placeholder="10001">
                            </div>
                        </div>
                    </div>

<%--                    <div class="col-50">--%>
<%--                        <h3>Account Information</h3>--%>
<%--            --%>
<%--                        <label for="accountNo">Account Number</label>--%>
<%--                        <input type="text" id="accountNo" name="accountNo" placeholder="J871234567">--%>
<%--                        <label for="ccnum">Credit card number</label>--%>
<%--                        <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">--%>
<%--                        <label for="expmonth">Exp Month</label>--%>
<%--                        <input type="text" id="expmonth" name="expmonth" placeholder="September">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-50">--%>
<%--                                <label for="expyear">Exp Year</label>--%>
<%--                                <input type="text" id="expyear" name="expyear" placeholder="2018">--%>
<%--                            </div>--%>
<%--                            <div class="col-50">--%>
<%--                                <label for="cvv">CVV</label>--%>
<%--                                <input type="text" id="cvv" name="cvv" placeholder="352">--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

                </div>
<%--                <label>--%>
<%--                    <input type="checkbox" checked="checked" name="activeServices"> active services for user--%>
<%--                </label>--%>
                <input type="submit" value="create user" class="btn">
            </form>
        </div>
    </div>
<%--    <div class="col-25">--%>
<%--        <div class="container">--%>
<%--            <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>4</b></span></h4>--%>
<%--            <p><a href="#">Product 1</a> <span class="price">$15</span></p>--%>
<%--            <p><a href="#">Product 2</a> <span class="price">$5</span></p>--%>
<%--            <p><a href="#">Product 3</a> <span class="price">$8</span></p>--%>
<%--            <p><a href="#">Product 4</a> <span class="price">$2</span></p>--%>
<%--            <hr>--%>
<%--            <p>Total <span class="price" style="color:black"><b>$30</b></span></p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

</body>
</html>

