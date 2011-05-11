require 'spec_helper'

describe HomeController do
  it "should redirect using the page_url_for helper" do
    get "redirect"
    response.should redirect_to("/p/first-page")
  end
end