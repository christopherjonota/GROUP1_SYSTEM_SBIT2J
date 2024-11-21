<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <nav>
        <div class="logo"> <img src="images/logo.png" alt="logo" /></div>
        <div class="nav-links">
            <a href="#">About Us</a>
            <a href="#">Contact Us</a>
        </div>
        <div class="auth-buttons">
            <button class="btn btn-secondary">Sign In</button>
            <button class="btn btn-primary">Register</button>
        </div>
    </nav>

    <main class="container">
        <div class="login-container">
            <div class="illustration">
                <img src="images/Body.png" alt="Chat illustration" />
            </div>
            <div class="login-form">
                <h2>Welcome Back</h2>
                <div id="error-message" class="error-message"></div>
                <form id="loginForm" novalidate>
                    <div class="form-group">
                        <label for="username">
                            <svg class="icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                        </label>
                        <input type="text" id="username" placeholder="Username" required>
                        <span class="validation-message" id="username-validation"></span>
                    </div>
                    <div class="form-group">
                        <label for="password">
                            <svg class="icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                                <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                            </svg>
                        </label>
                        <input type="password" id="password" placeholder="Password" required>
                        <button type="button" id="togglePassword" class="toggle-password">
                            <svg class="icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                                <circle cx="12" cy="12" r="3"></circle>
                            </svg>
                        </button>
                        <span class="validation-message" id="password-validation"></span>
                    </div>
                    <div class="forgot-password">
                        <a href="#" id="forgotPassword">Forgot password?</a>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block" id="loginButton">
                        <span>Sign In</span>
                        <div class="spinner" id="loginSpinner"></div>
                    </button>
                    <div class="terms">
                        By continuing, you agree to our <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
                    </div>
                </form>
                <div class="register-link">
                    No account yet? <a href="#" id="registerLink">Register now!</a>
                </div>
            </div>
        </div>
    </main>
    <script src="script.js"></script>
</body>
</html>