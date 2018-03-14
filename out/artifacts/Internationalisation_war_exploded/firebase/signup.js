function signUp() {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var password2 = document.getElementById("password2").value;

    if (email !== "" && password !== "" && password2 !== "") {
        if (password === password2) {
            firebase.auth().createUserWithEmailAndPassword(email, password).then(function(user){
                console.log('User signed up: ' + user.email)
            }).catch(function(error) {
                // Handle Errors here.
                var errorCode = error.code;
                var errorMessage = error.message;
                console.log("Error signing up: " + errorMessage)
            });
        } else {
            console.log("Passwords don't match")
        }
    } else {
        console.log("Please fill in all form inputs.")
    }
}