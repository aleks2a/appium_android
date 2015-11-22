class Wikipedia
  def search_result_screen
    @search_result_screen ||= SearchResultScreen.new
  end

  def article_screen
    @article_screen ||= ArticleScreen.new
  end
end