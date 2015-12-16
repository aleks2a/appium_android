class Wikipedia

  def screen_actions
    @screen_actions ||= ScreenActions.new
  end

  def search_result_screen
    @search_result_screen ||= SearchResultScreen.new
  end

  def article_screen
    @article_screen ||= ArticleScreen.new
  end

  def navigation_menu_screen
    @navigation_menu_screen ||= NavigationMenuScreen.new
  end

  def login_screen
    @login_screen ||= LoginScreen.new
  end

  def link_preview
    @link_preview ||= LinkPreview.new
  end
end















