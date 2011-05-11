require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "pages"
  gem.homepage = "http://github.com/johnmcaliley/pages"
  gem.license = "MIT"
  gem.summary = %Q{Editable HTML pages for your Rails 3 app}
  gem.description = %Q{Editable HTML pages for your Rails 3 app that are editable via web interface.  Shows a page preview as you type HTML.}
  gem.email = "john.mcaliley@gmail.com"
  gem.authors = ["John McAliley"]
  gem.add_dependency "inherited_resources"
  gem.add_dependency "friendly_id", "~> 3.2.1"
  gem.files.exclude "test_app"
  gem.files.exclude "Gemfile.lock"
end
Jeweler::RubygemsDotOrgTasks.new