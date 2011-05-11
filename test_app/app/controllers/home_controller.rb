class HomeController < ApplicationController
  def index
    
  end
  
  def redirect
    redirect_to page_url_for("First Page")
  end
end