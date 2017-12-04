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
//= require jquery3
// require popper
// require bootstrap
//= require bootstrap-sprockets
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(function(){
    $(".alert, #message").click(function(e){
        clearTimeout(alertTimer);
        $('#message').fadeTo(500, 0).slideUp(500, function(){
            $(this).remove();
        });
    });
    var alertTimer = window.setTimeout(function() {
        $('#message').fadeTo(500, 0).slideUp(500, function(){
            $(this).remove();
        });
    }, 4000);
});

$(function(){
// FIX DYNAMIC ELEMENT EVENT PROBLEM 

    $(".add_answer").on('click', function(e){
        var $listGroup = $(".answer_options .list-group");
        var newListGroupItem = getNewAnswer(
            $listGroup.find("[name|=answer-option]").length
        );
        $listGroup.append(newListGroupItem);

        jQueryEventSetup();
        e.preventDefault();
    });
    $(".answer_options").on('click', ".set_answer", function(e){
        var thisIndex = $(this).closest('.list-group-item').index();
        var $correctAnswerIndex = $("#correct_answer_index");
        $correctAnswerIndex.val(thisIndex);

        e.preventDefault();
    });
    $(".answer_options").on('click', ".remove_answer", function(e){
        var thisIndex = $(this).closest('.list-group-item').index();
        var $correctAnswerIndex = $("#correct_answer_index");
        var val = $correctAnswerIndex.val();

        // check the selected value, if equal or higher than index then recalculate it and update hidden element
        if (val && val >= thisIndex) {
            val = (val === thisIndex) ? val = -1 : val--;
            $correctAnswerIndex.val(val);
        }

        $(this).closest('.list-group-item').remove();
        e.preventDefault();
    })

    function getNewAnswer(indx){
        var liGroupItem = document.createElement('li');
            liGroupItem.className = 'list-group-item';
        
        var answerText = document.createElement('input');
            answerText.type = 'text'
            answerText.name = 'answer-option-' + indx;

        liGroupItem.appendChild(answerText);
        liGroupItem.appendChild(getButtonGroup());
        return liGroupItem;
    }

    function getButtonGroup(){
        var buttonGroup = document.createElement('div');
            buttonGroup.className = "button-group";

        var btnSetCorrect = document.createElement('a');
            btnSetCorrect.className = 'btn set_answer';
            btnSetCorrect.href = '#';
            btnSetCorrect.innerHTML = '<span class="glyphicon glyphicon-edit"></span> Set as Correct';
        
        var btnRemove = document.createElement('a');
            btnRemove.className = 'btn remove_answer';
            btnRemove.href = '#';
            btnRemove.innerHTML = '<span class="glyphicon glyphicon-delete"></span> Remove';
        
        buttonGroup.appendChild(btnSetCorrect);
        buttonGroup.appendChild(btnRemove);
        return buttonGroup;
    }

    function removeAt(){
        reIndexAnswers();
    }

    function reIndexAnswers(){
    }
});