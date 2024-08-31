#Welcome to KobeHaven Hotels! Your seamless hotel management experience starts here.


**NOTE: Please read this document completely before proceeding!**

## Important Information
- By default, the email verification system is disabled. You do not need to set up SendGrid account & API key.
- If SendGrid is disabled, the "Forgot Password" and email verification features will not function.
- If user registration does not work, check the bottom of this README file for troubleshooting steps.

---

## Configuration Checklist Before Running the Project

1. **Configure Paytm Integration**

   - Navigate to `hbwebsite/inc/paytm/config_paytm.php`.

   - Log in to your Paytm Business account on the Paytm dashboard.

   - Go to "Developer settings" -> "API keys" to obtain your API keys.

   - Update the following constants in `config_paytm.php` with your Paytm credentials:

     ```php
     define('PAYTM_ENVIRONMENT', 'TEST'); // Change to 'PROD' for production
     define('PAYTM_MERCHANT_KEY', 'PASTE YOUR MERCHANT KEY'); // Replace with Merchant Key from Paytm
     define('PAYTM_MERCHANT_MID', 'PASTE YOUR MERCHANT MID'); // Replace with MID (Merchant ID) from Paytm
     define('PAYTM_MERCHANT_WEBSITE', 'WEBSTAGING'); // Replace with Website Name from Paytm
     define('INDUSTRY_TYPE_ID', 'Retail'); // Replace with Website Industry Type from Paytm
     define('CHANNEL_ID', 'WEB'); // Replace with Website Channel ID from Paytm
     ```

   - Update the callback URL accordingly, but do not modify `pay_response.php`:

     ```php
     define('CALLBACK_URL', 'http://localhost/hbwebsite/pay_response.php');
     ```

2. **Configure SendGrid Mailing Service**

   - Open the `ajax/login_register.php` file.
   - Review the comments on lines 89 and 104 to understand the setup.
   - In `inc/footer.php`, update the registration function on line 134:

     ```php
     alert('success', "Registration successful. Confirmation link sent to email!");
     ```

---

## Default Credentials

### Admin Account
- **Username:** kobedime
- **Password:** Admin12345!

### User Account
- **Username:** kobe@gmail.com
- **Password:** user123

Please note that the provided credentials are for initial setup and testing purposes. For enhanced security, it is recommended to change the default password immediately after the first login.

---


