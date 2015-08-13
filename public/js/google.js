function onSignIn(googleUser) {
  // Useful data for your client-side scripts:
  var profile = googleUser.getBasicProfile();
  console.log("ID: " + profile.getId()); // Don't send this directly to your server!
  console.log("Name: " + profile.getName());
  console.log("Image URL: " + profile.getImageUrl());
  console.log("Email: " + profile.getEmail());

  // The ID token you need to pass to your backend:
  var id_token = googleUser.getAuthResponse().id_token;
  console.log("ID Token: " + id_token);
  var token = {idToken: id_token}

  var request = $.ajax({
                        method: "POST",
                        url: "/users",
                        data: token
                        // dataType: "json"
                      });

  request.done(function(response){
    window.location.replace("/");
    // console.log(response);
    // $('body').append('<h1>' + response.name + '</h1>')
    // $('body').append('<h2>' + response.email + '</h2>')
    // $('body').append("<img src='"+ response.photo_link +"'>")

  });

};
