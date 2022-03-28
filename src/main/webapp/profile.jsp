
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .background{
         border-bottom-style: solid;
        }
        .form {
            max-width: 300px;
            margin: 0 auto 100px;
            padding: 30px;
            display: block;
            width: 100%;
        }
        body{
            background-color: azure;
            position: fixed;
            top: 0;
            left: 0;
            display: block;
            width: 100%;
            height: 100%;
            font-family: "Avenir Next";
            color: #2e586d;
        }
        a {
            background: #2e586d;
            width: 100%;
            border: 0;
            padding: 15px;
            border-radius: 3px;
            color: #FFFFFF;
            font-size: 14px;
        }
    </style>
</head>
<body>

<div class="form">
    <div class="background" style="font-family: 'Avenir Next'; color: #336178; font-size: 30px">
        <b><center> Profile </center> </b>
    </div>
   <center> <h1><b> Email: <br> ${email}</b></h1> </center>
<center><a href="setting.jsp">Settings</a></center>
    <br>
    <br>
<center><a href="listOfCourse">List of courses</a> </center>
</div>
</body>
</html>
