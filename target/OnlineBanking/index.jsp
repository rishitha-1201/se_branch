<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Banking - Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f6fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-box {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
            width: 350px;
        }
        h2 {
            text-align: center;
            color: #2f3640;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        button {
            width: 100%;
            padding: 12px;
            background: #273c75;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin-top: 10px;
        }
        button:hover {
            background: #40739e;
        }
        .links {
            text-align: center;
            margin-top: 15px;
        }
        .links a {
            text-decoration: none;
            color: #273c75;
        }
        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>Bank Login</h2>
        <!-- Show error if login fails -->
        <%
            String errorMsg = (String) request.getAttribute("error");
            if (errorMsg != null) {
        %>
            <p class="error"><%= errorMsg %></p>
        <%
            }
        %>

        <!-- Login form -->
        <form action="LoginServlet" method="post">
            <input type="text" name="username" placeholder="Enter Username" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <button type="submit">Login</button>
        </form>

        <div class="links">
            <p>New User? <a href="registration.jsp">Register Here</a></p>
        </div>
    </div>
</body>
</html>
