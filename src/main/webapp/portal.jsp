<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Banking Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f6fa;
            margin: 0;
        }
        .navbar {
            background: #273c75;
            color: #fff;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar h1 {
            margin: 0;
            font-size: 22px;
        }
        .navbar a {
            color: #fff;
            text-decoration: none;
            margin-left: 20px;
        }
        .container {
            padding: 30px;
        }
        .card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
            padding: 20px;
            margin-bottom: 20px;
        }
        h2 {
            color: #2f3640;
        }
        button {
            background: #27ae60;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 6px;
            cursor: pointer;
        }
        button:hover {
            background: #2ecc71;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>Welcome, <%= session.getAttribute("username") %></h1>
        <div>
            <a href="LogoutServlet">Logout</a>
        </div>
    </div>

    <div class="container">
        <div class="card">
            <h2>Account Overview</h2>
            <p><strong>Account Number:</strong> 123456789</p>
            <p><strong>Balance:</strong> ₹ 50,000</p>
            <p><strong>Account Type:</strong> Savings</p>
        </div>

        <div class="card">
            <h2>Quick Actions</h2>
            <button onclick="location.href='transfer.jsp'">Fund Transfer</button>
            <button onclick="location.href='transactions.jsp'">View Transactions</button>
            <button onclick="location.href='profile.jsp'">Profile Settings</button>
        </div>
    </div>
</body>
</html>
