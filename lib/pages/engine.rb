require "pages"
require "rails"

module Pages
  class Engine < Rails::Engine
    initializer 'pages.application_controller' do |app|
      ActiveSupport.on_load(:action_controller) do
         include PagesApplicationController
      end
    end
  end
end