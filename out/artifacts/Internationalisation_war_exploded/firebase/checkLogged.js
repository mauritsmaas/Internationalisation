var logged = false;
firebase.auth().onAuthStateChanged(function(user) {
    if (user) {
        console.log("User logged in: " + user.email)
    } else {
        console.log("No user logged in.")
    }
});