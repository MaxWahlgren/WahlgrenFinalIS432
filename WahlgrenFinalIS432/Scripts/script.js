$("#btnLogin").click(function(event) {
    var $form = $('UserInputContainer');

    if ($('#txtUsername').val() == "") {
        event.preventDefault();

        $form.find('.group:nth-child(1)')
            .addClass('error msg')
            .append('<p>Do you need to register?</p>');
    }
    if ($('#txtPassword').val() == "") {
        event.preventDefault();

        $form.find('.group:nth-child(2)')
            .addClass('error msg')
            .append('<p>Password is required to login</p>');
    }
    $("#sampleForm").submit();
});

//jQuery(document).ready(function() {
//    'user-strict';

//    console.log("monkey");

//    jQuery(document).on('click', '#frmLogin', function(e){
        
//    });
//});


