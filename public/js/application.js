$(document).ready(function() {
  $(".pure-menu-list").on("click", ".log-out", function(event) {
    event.preventDefault();



    $.ajax({
      url: "/sessions",
      method: "delete"
    }).done( function(response) {
      window.location.replace("https://th-grasshoppers.herokuapp.com");
    })

    console.log("we should be done.")
  })

});
