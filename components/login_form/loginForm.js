require('./loginForm.scss');

var $ = require("jquery");

function doClick(){
    var $email = $('#j-useremail_box');

    $email.on('click', function(){
        $(this).css("background-color","red")
    })
}

module.exports = doClick;

