// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require_tree .

$(document).ready(function(){

    var preview = $(".upload-preview img");
    $(".file").change(function(event){
       var input = $(event.currentTarget);
       var file = input[0].files[0];
       var reader = new FileReader();
       reader.onload = function(e){
           image_base64 = e.target.result;
           preview.attr("src", image_base64);
       };
       reader.readAsDataURL(file);
    });


    $("#validate_dish").validate({
       errorPlacement: function (error, element) {
       error.insertAfter(element);
       },
    // Specify the validation rules
    rules: {
      "dish[name]": {
          required: true,
          minlength: 3,
          maxlength: 50
      },
      "dish[description]": {
          maxlength: 250
      },
      "dish[price]": {
          required: true,
          number: true,
          maxlength: 5
      }
    },
    submitHandler: function(form) {
      form.submit();
    }
  });


   $("#edit_dish_validate").validate({
       //Error Placement
       errorPlacement: function (error, element) {
       error.insertBefore(element);
       },
    // Specify the validation rules
    rules: {
      "dish[name]": {
          required: true,
          minlength: 3,
          maxlength: 50
      },
      "dish[description]": {
          maxlength: 250
      },
      "dish[price]": {
          required: true,
          number: true,
          maxlength: 5
      }
     
    },
    submitHandler: function(form) {
      form.submit();
    }
  }); 
});

