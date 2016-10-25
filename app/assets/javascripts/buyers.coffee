# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> 
    $('#buyer_civil_status_married').click ->
        $('.spouse_form').css('display', 'block')
        
    $('#buyer_civil_status_single').click ->
        $('.spouse_form').css('display', 'none')
        
    $('#buyer_civil_status_widowed').click ->
        $('.spouse_form').css('display', 'none')
        
    $('#buyer_civil_status_legally_separated').click ->
        $('.spouse_form').css('display', 'none')