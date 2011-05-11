class PagesController < InheritedResources::Base
  def create
    create!{ pages_url}
  end
  
  def update
    update!{ pages_url}    
  end
end