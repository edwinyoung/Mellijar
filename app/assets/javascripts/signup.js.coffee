textFocused = (id, value) -> 
  if ($(id).val() == value)
    $(id).val ''
    $(id).removeClass 'textfield_hint'

textBlurred = (id, value) ->
  if ($(id).val() == '')
    $(id).val value
    $(id).addClass 'textfield_hint' 

addWatermark = (id, value) ->
  $(id).val value
  $(id).addClass 'textfield_hint'
  $(id).focus -> textFocused(id, value)
  $(id).blur -> textBlurred(id, value)

$ ->
  addWatermark('#user_fname', 'First Name')
  addWatermark('#user_lname', 'Last Name')
  addWatermark('#user_email', 'Email')
  addWatermark('#user_password', 'Password')
  addWatermark('#user_password_confirmation', 'Password')
