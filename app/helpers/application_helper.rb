module ApplicationHelper
  def full_title page_title = ""
    base_title = t(".project_1")
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def create_index params_page, index, per_page
    params_page = 1 if params_page.nil?
    (params_page.to_i - 1) * per_page.to_i + index.to_i + 1
  end
end
