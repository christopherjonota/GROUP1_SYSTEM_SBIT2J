document.addEventListener('DOMContentLoaded', function() {

    const loginForm = document.getElementById('loginForm');
    const usernameInput = document.getElementById('username');
    const passwordInput = document.getElementById('password');
    const togglePassword = document.getElementById('togglePassword');
    const loginButton = document.getElementById('loginButton');
    const loginSpinner = document.getElementById('loginSpinner');
    const errorMessage = document.getElementById('error-message');
    const forgotPassword = document.getElementById('forgotPassword');
    const registerLink = document.getElementById('registerLink');

   
    function validateUsername(username) {
        return username.length >= 3;
    }

    function validatePassword(password) {
        return password.length >= 6;
    }

    function showError(message) {
        errorMessage.textContent = message;
        errorMessage.style.display = 'block';
    }

    function hideError() {
        errorMessage.style.display = 'none';
        errorMessage.textContent = '';
    }

    togglePassword.addEventListener('click', function() {
        const type = passwordInput.type === 'password' ? 'text' : 'password';
        passwordInput.type = type;
        this.classList.toggle('active');
    });

    usernameInput.addEventListener('input', function() {
        const validationMessage = document.getElementById('username-validation');
        if (!validateUsername(this.value) && this.value) {
            validationMessage.textContent = 'Username must be at least 3 characters long';
        } else {
            validationMessage.textContent = '';
        }
    });

    passwordInput.addEventListener('input', function() {
        const validationMessage = document.getElementById('password-validation');
        if (!validatePassword(this.value) && this.value) {
            validationMessage.textContent = 'Password must be at least 6 characters long';
        } else {
            validationMessage.textContent = '';
        }
    });

 
    loginForm.addEventListener('submit', async function(e) {
        e.preventDefault();
        hideError();

   
        if (!validateUsername(usernameInput.value) || !validatePassword(passwordInput.value)) {
            showError('Please check your username and password');
            return;
        }

        
        loginButton.disabled = true;
        loginSpinner.style.display = 'block';

        try {
         
            await new Promise(resolve => setTimeout(resolve, 1500));

           
            if (usernameInput.value === 'demo' && passwordInput.value === 'password123') {
                // Successful login
                localStorage.setItem('isLoggedIn', 'true');
                window.location.href = '/dashboard'; 
            } else {
                throw new Error('Invalid credentials');
            }
        } catch (error) {
            showError(error.message);
        } finally {
            loginButton.disabled = false;
            loginSpinner.style.display = 'none';
        }
    });

    // Forgot password 
    forgotPassword.addEventListener('click', function(e) {
        e.preventDefault();
        // Forgot pass
        alert('Password reset functionality would go here');
    });


    registerLink.addEventListener('click', function(e) {
        e.preventDefault();
      
        alert('Registration page would go here');
    });
});