
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
        }
        .form {
            display: block;
            width: 100%;
        }
        .form input {
            border-bottom-color: #2e586d;
            background: #f2f2f2;
            width: 100%;
            border: 1px;
            margin: 0 0 15px;
            padding: 15px;
            border-radius: 3px;;
            box-sizing: border-box;
            font-size: 14px;
            font-family: "Avenir Next";
            border: 2px solid grey;
        }
        .form button {

            background: #2e586d;
            width: 100%;
            border: 0;
            padding: 15px;
            border-radius: 3px;
            color: #FFFFFF;
            font-size: 14px;
        }

        body{
            background: rgb(171,186,171);
            background: linear-gradient(90deg, rgba(171,186,171,1) 0%, rgba(255,255,255,1) 35%);
            position: fixed;
            top: 0;
            left: 0;
            display: block;
            width: 100%;
            height: 100%;
        }
        .button {
            align-items: center;
            background-clip: padding-box;
            background-color: #fa6400;
            border: 1px solid transparent;
            border-radius: .25rem;
            box-shadow: rgba(0, 0, 0, 0.02) 0 1px 3px 0;
            box-sizing: border-box;
            color: #fff;
            cursor: pointer;
            display: inline-flex;
            font-family: system-ui,-apple-system,system-ui,"Helvetica Neue",Helvetica,Arial,sans-serif;
            font-size: 16px;
            font-weight: 600;
            justify-content: center;
            line-height: 1.25;
            margin: 0;
            min-height: 3rem;
            padding: calc(.875rem - 1px) calc(1.5rem - 1px);
            position: relative;
            text-decoration: none;
            transition: all 250ms;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            vertical-align: baseline;
            width: auto;
        }

        .button:hover,
        .button:focus {
            background-color: #fb8332;
            box-shadow: rgba(0, 0, 0, 0.1) 0 4px 12px;
        }

        .button:hover {
            transform: translateY(-1px);
        }

        .button:active {
            background-color: #c85000;
            box-shadow: rgba(0, 0, 0, .06) 0 2px 4px;
            transform: translateY(0);
        }

    </style>
</head>

<body>
<div class="form">
    <div class="background" style="font-family: 'Avenir Next'; color: #336178; font-size: 30px">
        <b><center> Registration </center> </b>
    </div>
    <br>
    <form action="signup" method="post">
        <p class="background" style="font-family: 'Avenir Next'; color: #336178; font-size: 15px">Email address</p>
        <input class="b" name="email" type="email">
        <p class="background" style="font-family: 'Avenir Next'; color: #336178; font-size: 15px">Password</p>
        <input class="b" name="pass" type="password">
        <button class="button" type="submit"> Registration</button>


    </form>
</div>
</body>
</html>
