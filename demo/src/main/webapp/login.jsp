<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - FoodieExpress</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #ff6b6b, #4ecdc4, #45b7d1, #96ceb4);
            background-size: 400% 400%;
            animation: gradientShift 15s ease infinite;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Arial', sans-serif;
        }
        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        .login-card {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
            padding: 2rem;
            max-width: 400px;
            width: 100%;
        }
        .login-title {
            color: #ff6b6b;
            text-align: center;
            margin-bottom: 1.5rem;
            font-weight: bold;
            font-size: 2rem;
        }
        .form-control {
            border-radius: 10px;
            border: 2px solid #ddd;
            padding: 0.75rem;
            margin-bottom: 1rem;
            transition: border-color 0.3s;
        }
        .form-control:focus {
            border-color: #4ecdc4;
            box-shadow: 0 0 0 0.2rem rgba(78, 205, 196, 0.25);
        }
        .btn-login {
            background: linear-gradient(45deg, #ff6b6b, #4ecdc4);
            border: none;
            border-radius: 10px;
            padding: 0.75rem;
            width: 100%;
            color: white;
            font-weight: bold;
            transition: transform 0.2s;
        }
        .btn-login:hover {
            transform: translateY(-2px);
            background: linear-gradient(45deg, #4ecdc4, #ff6b6b);
        }
        .error-message {
            color: #dc3545;
            text-align: center;
            margin-top: 1rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="login-card">
                    <h2 class="login-title">🍔 Welcome to FoodieExpress</h2>
                    <form action="LoginServlet" method="post">
                        <div class="mb-3">
                            <label for="user" class="form-label fw-bold">Username</label>
                            <input type="text" class="form-control" id="user" name="user" placeholder="Enter your username" required>
                        </div>
                        <div class="mb-3">
                            <label for="pass" class="form-label fw-bold">Password</label>
                            <input type="password" class="form-control" id="pass" name="pass" placeholder="Enter your password" required>
                        </div>
                        <button type="submit" class="btn btn-login">Login</button>
                    </form>
                    <% if(request.getParameter("error") != null) { %>
                        <div class="error-message">Invalid username or password!</div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
