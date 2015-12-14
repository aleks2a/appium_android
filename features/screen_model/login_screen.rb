class LoginScreen < ScreenActions
  def username_field
    find_element(id: "login_username_text")
  end

  def password_field
    find_element(id: "password_edit_text_input")
  end

  def connection_error
    find_element(id: "snackbar_text")
  end

  def login_button
    find_element(id: "login_button")
  end

end
