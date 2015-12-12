class NavigationMenuScreen < ScreenActions

  def navigation_menu_exists?
    exists{account_text}
  end

  def account_text
    find_element(id: "nav_account_text")
  end

  def log_out_button
    find_element(name: "Log out")
  end

end