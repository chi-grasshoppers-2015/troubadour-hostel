$(document).ready(function() {
  $(".pure-menu-list").on("click", ".log-out", function(event) {
    event.preventDefault();
    console.log("we are conncted.")
    $.ajax({
      url: "/sessions",
      method: "delete"
    }).done( function() {
      window.location.replace("/");
    })
  })

});
