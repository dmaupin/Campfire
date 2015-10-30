// remove field from form

function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

// add field to form

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}

// scroll-to

$(document).ready(function() {
  $("#home").click(function() {
    $('html, body').animate({
        scrollTop: $("#top").offset().top-38
    }, 1000);
  });
});