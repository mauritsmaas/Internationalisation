function logout() {
    firebase.auth().signOut().then(function() {
        console.log("User logged out")
    }).catch(function(error) {
        console.log("Error logging out")
    });
}
