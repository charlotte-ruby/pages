require 'rails/generators'
require 'rails/generators/migration'     

module Pages
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration
    source_root File.join(File.dirname(__FILE__), 'templates')

    def self.next_migration_number(dirname)
      sleep 1
      if ActiveRecord::Base.timestamped_migrations
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      else
        "%.3d" % (current_migration_number(dirname) + 1)
      end
    end

    def create_migration_file
      migration_template 'db/migrate/create_pages_table.rb', 'db/migrate/create_pages_table.rb'
    end
    
    def friendly_id
      generate "friendly_id"
    end
    
    def controller_output
      copy_file "../../../../../app/controllers/pages_controller.rb","app/controllers/pages_controller.rb"
    end
  end
end