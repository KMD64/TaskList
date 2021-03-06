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
//= require rails-ujs
//= require icheck/icheck.js
//= require select2.js
//= require activestorage
//= require_tree

$(document).ready(function(){
    $(document).on("click","#add_todo",function(){
        $('#addtodo_container').css('display','inline-block');
    });
    $(document).on("click","#submit_todo",function(){
        $('#addtodo_container > form').submit();
    });
    $(document).on("click","#cancel_todo",function(){
        $('#addtodo_container').css('display','none');
        console.log("hidden");
    });    
    
    $('input').iCheck({handle:'checkbox',inheritClass:true});
    
    $(document).on('ifClicked','.icheckbox',function(){
        $(this).parents('form:first').submit();
    });
    $(document).on('click','.project span',function(){
       $(this).parents('form:first').submit(); 
    });
    
    $('#project_id').select2({'minResultsForSearch':'-1'});
    
});
