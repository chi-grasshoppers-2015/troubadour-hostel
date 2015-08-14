function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  var id_token = googleUser.getAuthResponse().id_token;
  var token = {idToken: id_token}

  var request = $.ajax({
                        method: "POST",
                        url: "/users",
                        data: token
                        // dataType: "json"
                      });

  request.done(function(response){
    window.location.replace("https://th-grasshoppers.herokuapp.com");
  });

};
