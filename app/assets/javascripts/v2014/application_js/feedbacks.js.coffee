$(document).on 'ready page:load', ->
  $(".new_feedback").exists ->
    registerForm = $(this)
    registerForm.bootstrapValidator()