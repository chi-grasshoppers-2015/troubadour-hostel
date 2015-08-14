$(document).ready(function() {
  $(".pure-menu-list").on("click", ".log-out", function(event) {
    event.preventDefault();
    gapi.auth.signOut();
    $.ajax({
      url: "/sessions",
      method: "delete"
    }).done( function() {
      window.location.replace("/");
    })
  })

});
