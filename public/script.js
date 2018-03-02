function validateForm() { 
    var x = document.forms["Your_Name"]["name"].value; 
    if (x == null || x == "") { 
        alert("Please enter your name"); 
        return false; 
    } 
}