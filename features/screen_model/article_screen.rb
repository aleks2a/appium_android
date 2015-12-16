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

  def navigation_menu_icon
    find_element(name: "Wikipedia Alpha")
  end

  def floating_button
    id("floating_toc_button")
  end

  def floating_button_exists?
    exists{floating_button}
  end

  def wait_for_flt_button_disappear seconds
    seconds.to_i.times do
      break unless floating_button_exists?
      sleep 1
    end
  end

end