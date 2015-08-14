$(document).ready(function() {
  $(".pure-menu-list").on("click", ".log-out", function(event) {
    event.preventDefault();
    $.ajax({
      url: "/sessions",
      method: "delete"
    }).done( function() {
      window.location.replace("/");
    })
  })

});
