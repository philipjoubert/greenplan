//=require jquery-2.2.0.min.js

$(function() {
	$(".navbar-toggler").on("click", function() {
	  console.log("test");
	  $("#exCollapsingNavbar").toggleClass("collapse");
	})
});