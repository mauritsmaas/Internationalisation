function signIn() {
    var email = document.getElementById("emailSignin").value;
    var password = document.getElementById("passwordSignin").value;

    if (email !== "" && password !== "") {
        firebase.auth().signInWithEmailAndPassword(email, password).then(function (user) {
            console.log("User signed in: " + user.email)
        }).catch(function(error) {
            // Handle Errors here.
            var errorCode = error.code;
            var errorMessage = error.message;
            console.log("Error signing in: " + errorMessage)
        });
    } else {
        console.log("Please fill in all form inputs.")
    }
}