// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(console.log("hi"))

$('/first_aid').observe('click', function (event) {
  alert('Hooray!');
  event.stop(); // Prevent link from following through to its given href
});

<% if @post.valid? %>
  $(".post_form").prepend('<%= j(render(@post)) %>'); // make sure you have _track.html.erb
  $(".post_form")[0].reset(); // this will clear your form inputs
<% else %>
  alert('Something Went Wrong');
<% end %>
