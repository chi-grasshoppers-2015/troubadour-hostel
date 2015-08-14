$(document).ready(function() {
  $(".pure-menu-list").on("click", ".log-out", function(event) {
    event.preventDefault();
    // console.log("we are connected.")

    // var cookies = document.cookie.split(";");
    // for(var i=0; i < cookies.length; i++) {
    //     var equals = cookies[i].indexOf("=");
    //     var name = equals > -1 ? cookies[i].substr(0, equals) : cookies[i];
    //     document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
    // }

    // console.log("we are connected again.")

    $.ajax({
      url: "/sessions",
      method: "delete"
    }).done( function(response) {
      window.location.replace("https://th-grasshoppers.herokuapp.com");
    })

    console.log("we should be done.")
  })

});
