$(document).on 'ready page:load', ->
  $(".new_volunteer").exists ->
    registerForm = $(this)
    registerForm.bootstrapValidator()