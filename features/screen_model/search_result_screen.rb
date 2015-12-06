class SearchResultScreen < ScreenActions

  def search_results
    find_elements(id: "page_list_item_container")
  end

  def search_result_title
    find_element(id: "page_title_text")
  end

end