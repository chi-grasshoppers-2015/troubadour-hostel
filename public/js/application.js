$(document).ready(function() {
  $(".pure-menu-list").on("click", ".log-out", function(event) {
    event.preventDefault();
    console.log("we are conncted.")

    gapi.auth.signOut();

    $.ajax({
      url: "/sessions",
      method: "delete"
    }).done( function() {
      window.location.replace("https://th-grasshoppers.herokuapp.com");
    })
  })

});
