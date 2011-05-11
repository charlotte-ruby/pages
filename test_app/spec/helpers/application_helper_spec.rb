require 'spec_helper'

describe ApplicationHelper do
  fixtures :pages, :slugs
  it "return page for slug" do
    html = helper.page_url_for("First Page")
    html.should eq "http://test.host/p/first-page"
  end
end