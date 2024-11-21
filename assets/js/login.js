
var dateControl = document.getElementById("date");
dateControl.format = "2017-06-01";
console.log(dateControl.value); // prints "2017-06-01"
console.log(dateControl.valueAsNumber); // prints 1496275200000, a JavaScript timestamp (ms)

function validateForm() {
    // Get the selected values from the dropdowns
    var province = document.getElementById("province").value;
    var city = document.getElementById("city").value;
    var barangay = document.getElementById("barangay").value;
    var zipCode = document.getElementById("zipCode").value;
    var passwordInput1 = document.getElementById("password1").value;
    var passwordInput2 = document.getElementById("password2").value;
    var contactNum = document.getElementById("contact").value;
    var schoolID = document.getElementById("schoolId").value;
    var Sex = document.getElementById("sex").value;

    // Validation logic
    if (province === "Select Province" || city === "Select City" 
    || barangay === "Select Barangay" || zipCode === "" || department === "Department" || program === "Program"
    || campus === "Campus" || sex === "sex") {
      alert("Please select all fields.");
      return false;
    }
    
    if(passwordInput1 !== passwordInput2){
      alert("Password Doesn't Match !, Please Try Again");
      return false; 
    }

    // Additional validation as needed (e.g., zip code format, etc.)
    if (!/^\d{4,5}$/.test(zipCode)) {
      alert("Please enter a valid zip code in the format XXXX.");
      return false;
    }
    if (!/^\d{10,11}$/.test(contactNum)) {
        alert("Please enter a valid Phone Number in the format 09XXXXXXXXX.");
        return false;
      }
      if (!/^\d+$/.test(schoolID)){
        alert("Please Enter a Valid School ID");
        return false;
      }

    // If validation passes, return true to allow form submission
    return true;
    
  }

  function togglePasswordVisibility() {
    var passwordInput1 = document.getElementById("password1");
    var passwordInput2 = document.getElementById("password2");
    var showPasswordCheckbox = document.getElementById("showPassword");

    if (showPasswordCheckbox.checked) {
      passwordInput1.type = "text"; 
      passwordInput2.type = "text"; 
    } else {
      passwordInput1.type = "password"; 
      passwordInput2.type = "password"; 
    }
    
  }
