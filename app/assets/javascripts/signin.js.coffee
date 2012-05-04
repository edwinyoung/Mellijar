textFocused = (id, value) -> 
  if ($(id).val() == value)
    $(id).val ''
    $(id).removeClass 'textfield_hint'

textBlurred = (id, value) ->
  if ($(id).val() == '')
    $(id).val value
    $(id).addClass 'textfield_hint' 

$ -> 
  $('#session_email').val "Email"
  $('#session_email').addClass 'textfield_hint' 
  $('#session_email').focus -> textFocused('#session_email', 'Email')
  $('#session_email').blur -> textBlurred('#session_email', 'Email')
  $('#session_password').val "Password"
  $('#session_password').addClass 'textfield_hint'
  $('#session_password').focus -> textFocused('#session_password', 'Password')
  $('#session_password').blur -> textBlurred('#session_password', 'Password')
  return
