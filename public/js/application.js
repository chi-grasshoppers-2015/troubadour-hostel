$(document).ready(function() {
  $(".pure-menu-list").on("click", ".log-out", function(event) {
    event.preventDefault();
    console.log("we are connected.")

    var cookies = $.cookie();
    for(var cookie in cookies) {
      $.removeCookie(cookie);
    }

    gapi.auth.signOut();

    console.log("we are connected again.")

    // $.ajax({
    //   url: "/sessions",
    //   method: "delete"
    // }).done( function(response) {
      window.location.replace("https://th-grasshoppers.herokuapp.com");
    // })

    console.log("we should be done.")
  })

});
