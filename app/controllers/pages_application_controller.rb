module PagesApplicationController
  def self.included(base)
    base.helper_method :page_url_for
  end
  
  def page_url_for(title)
    page = Page.find_by_title(title)
    page_url(page)
  end
end