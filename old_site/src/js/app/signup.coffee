$ = require 'jquery'

$ ->
  # Handle Signup
  address = "http://mighty-inlet-1174.herokuapp.com/registrations.json"
  sent = no
  $('#signup_form').submit (e) ->
    serialized = $("#signup_form").serialize()
    $.ajax address,
      type: "POST"
      data: serialized
      dataType: 'JSON'
      success: (data) ->
        console.log("Registered " + data.email + " (" + data.role + ")")
        $('#signup_form').hide()
        $('#processing').hide()
        $('#thankyou').show()
        sent = yes
        ga 'send', 'event', 'registration', 'success'
      error: (data) ->
        sent = yes
        errors = data.responseJSON.errors
        if errors.email.length > 0
          alert "Email already registered"
          ga 'send', 'event', 'registration', 'duplicate'
        else
          alert "Oops - something went wrong. Please try again."
          ga 'send', 'event', 'registration', 'failed'
    # Display processing message if request takes longer than half a second
    setTimeout ->
      unless sent
        $('#signup_form').hide()
        $('#processing').show()
    , 500

    return false
