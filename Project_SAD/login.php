
<?php 
include ('php/connection.php');
include ('php/scripts.php');


if(isset($_POST['submit'])){
//Personal Information
$FName = $_POST['FName'];
$MName = $_POST['MName'];
$LName = $_POST['LName'];
$Suffix = $_POST['suffix'] ?? "";
$dateOfBirth = $_POST['dateOfBirth'];
$sex = $_POST['sex'];

//contact information
$contact = $_POST['contact'];
$email = $_POST['email'];

// Address
$province = $_POST['province'];
$city = $_POST['city'];
$barangay = $_POST['barangay'];
$zipCode = $_POST['zipCode'];
$houseAddress = $_POST['houseAddress'];
$street = $_POST['street'];

// School Information
$schoolId = $_POST['schoolId'];
$department = $_POST['department'];
$program = $_POST['program'];
$campus = $_POST['campus'];

//Accounts
$username = $_POST['username'];
$password = $_POST['password'];


    $stmt = $conn ->prepare("INSERT INTO contact_info(email, contact_number)
    values(?, ?)");
    $stmt->bind_param("ss", $email, $contact);
    $stmt->execute();
    $Id_contact = $conn-> insert_id;

    $stmt = $conn ->prepare("INSERT INTO address_info(Province, City_Municipality, Barangay, Zip_Code, House_Address, Street)
    values(?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssiss", $province, $city, $barangay, $zipCode, $houseAddress, $street);
    $stmt->execute();
    $Id_address = $conn-> insert_id;

    $stmt = $conn ->prepare("INSERT INTO school_info(Student_Id, Campus, Deparment, Program)
    values(?, ?, ?, ?)");
    $stmt->bind_param("isss", $schoolId, $campus, $department, $program);
    $stmt->execute();
    $id_school = $conn-> insert_id;

    $stmt = $conn ->prepare("INSERT INTO account_info(contact_id ,User_Name, User_Password)
    values(?, ?, ?)");
    $stmt->bind_param("iss",$Id_contact , $username, $password);
    $stmt->execute();
    $Id_account = $conn-> insert_id;

    $stmt = $conn ->prepare("INSERT INTO personal_info(FName, MName, LName, Suffix, DateOfBirth, Sex, contact_id,Address_Id, School_Id, Account_Id)
    values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssssiiii", $FName, $MName, $LName, $Suffix, $dateOfBirth, $sex, $Id_contact, $Id_address,$id_school,$Id_account);


    if ($stmt->execute()) {

        ?><header>
            <?php

        echo "<script>
        swal({
        title: 'Successfully Registered !',
        icon: 'success',
        button: 'okay',
      });
        </script>";
        ?>
        </header>
        <?php
         header('refresh:2;login.php');
        exit;
    $stmt->close();
    $conn->close();
    }else{
        ?><header>
            <?php
        echo "<script>
        swal({
        title: 'Unsuccessfully Registered !',
        icon: 'error',
        button: true,
      });
        </script>";
        ?>
        </header>
        <?php
        header('refresh:2;login.php');
        exit;
    $stmt->close();
    $conn->close();
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="login.css" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Login Page</title>
</head>
<body>
    <div name = "nav-icon"class="container-nav">
        <img class="nav-icon" src="image_kira_colorefa/logo.ico">
    <div name = "nav-dashboard" class="container_nav1">
        <ul>
            <li><a href="About-us.html" >About us</a></li>
            <li><a href="Contact-us.html" class="active">Contact us</a></li>
        </ul>
    </div>
    <div name = "stat" class="stat">
        <button name = "Signin" style= "margin-right : 20px;" class="Signin">Sign In</button>
        <button name = "Register"style= "margin-right : 20px;"class="Register">Register</button>
    </div>
    </div>
    <hr>
    <div class="form-container">
        <form method ="post" onsubmit="return validateForm()">

            <div name = "container-login">
                <h2>Personal Information</h2>
                <div name = "container-profile">
                <input class="placehoder-format" type = "text" placeholder = "First Name" name = "FName" id = "FName" maxlength="60" required>
                <input class="placehoder-format" type = "text" placeholder = "Middle Name" name = "MName" id = "MName" maxlength="60" required>
                <input class="placehoder-format" type = "text" placeholder = "Last Name" name = "LName" id = "LName" maxlength="60" required>
                <select type = "dropdown" name = "suffix" class="suffix">
                    <option value="" disabled selected hidden>Suffix</option>
                    <option>Jr.</option>
                    <option>II</option>
                    <option>III</option>
                    <option>IV</option>
                    <option>V</option>
                </select>
            </div>
            <div name = "container-profile">
                <div name = "container-dateOfBirth" >
                    <input class="placehoder-format" type="date" id = "date" name = "dateOfBirth" required>
                    <select type = "dropdown" class="sex" name = "sex" required>
                    <option value="" disabled selected hidden>sex</option>
                    <option>Male</option>
                    <option>Female</option>
                </select>
                </div>
                
                <h2>Contact Information</h2>
                <input class="placehoder-format" type = "text" placeholder= "Contact Number" name="contact" id = "contact" required>
                <input class="placehoder-format" type = "email"name ="email" placeholder= "Email Address" required>
            </div>
        </div>

            <div name = "container-address">
                <h2>Address</h2>
                <select class="box-format" type = "dropdown" name = "province" id = "province" required>
                    <option value=" " disabled selected hidden>Select Province</option>
                    <option>Manila</option>
                </select>
                <select class="box-format" type = "dropdown" name = "city" id = "city" required>
                    <option value="" disabled selected hidden>Select City</option>
                    <option>Metro Manila</option>
                </select>
                <select class="box-format" type = "dropdown" name = "barangay" id = "barangay" required>
                    <option value="" disabled selected hidden>Select Barangay</option>
                    <option>Tandang Sora</option>
                </select>
                <input type = "text" id = "zipCode" name = "zipCode" class="zipCode" placeholder= "Zip Code" required>
                <div>
                <input type="text" class="type-manual" name = "houseAddress" placeholder="House Address">
                <input type = "text" class="type-manual" name = "street" placeholder="Street">
                </div>
            </div>

            <div name = "school-profile">
                <h2>School Profile</h2>

                <input class="placehoder-format-id" type = "text" placeholder="School ID" name="schoolId" id="schoolId" required>
                <select class="box-format-school" type = "dropdown" name = "campus" id = "campus" required>
                    <option value="" disabled selected hidden>Campus</option>
                    <option>San Bartolome</option>
                </select>
                <select class="box-format-school" type = "dropdown" name = "department" id = "department" required>
                    <option value="" disabled selected hidden>Department</option>
                    <option>Information Techonology</option>
                </select>
                <select class="box-format-school" type = "dropdown" name = "program" id = "program" required>
                    <option value="" disabled selected hidden>Program</option>
                    <option>Computer Science</option>
                </select>
            </div>
            <div name = "account-profile">
                <h2>Account Profile</h2>
                <input class="placehoder-format" type = "text"name ="username" placeholder= "User Name" required>
                <input class="placehoder-format" type = "password" name="password" placeholder= "password" id="password1" required>
                <input class="placehoder-format" type = "password" placeholder= "Confirm Password" id="password2" required>
                <input type = "checkbox" id = "showPassword" onclick="togglePasswordVisibility()">
            </div>
            <br>
            <br>
            <div  class = "Register-container">
            <button class = "Register" type = "submit" name = "submit" onclick="validateForm()">Register</button>
            </div>
        </div>
        </form>
    </div>
    </body>
</html>
