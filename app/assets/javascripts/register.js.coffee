$ ->
  registerForm = $(".register-form")
  registerForm.bootstrapValidator()
  $("#register-button").bind "click", ->
    registerForm.bootstrapValidator('validate')
    registerForm.bootstrapValidator('_submit')

  $("#user_state").autocomplete
    source: ["Assam", "Jammu and Kashmir", "Maharashtra", "Uttar Pradesh", "Gujarat", "Andhra Pradesh", "Karnataka", "Kerala", "West Bengal", "Tripura", "Chhattisgarh", "Punjab", "Mizoram", "Rajasthan", "Uttarakhand", "Arunachal Pradesh", "Bihar", "Jharkhand", "Orissa", "Tamil Nadu", "Himachal Pradesh", "Haryana", "Madhya Pradesh", "Nagaland", "Sikkim", "Manipur", "Meghalaya", "Andaman and Nicobar Islands", "Pondicherry", "Daman and Diu", "Chandigarh", "Delhi", "Lakshadweep", "Goa"]
    delay: 0
