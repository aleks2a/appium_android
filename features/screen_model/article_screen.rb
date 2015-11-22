class ArticleScreen < ScreenActions
  def search_bar
    find_element(id: "main_search_bar_text")
  end

  def search_text_field
    find_element(id: "search_src_text")
  end

  def article_title
    find_elements(id: "page_list_item_title")
  end
end