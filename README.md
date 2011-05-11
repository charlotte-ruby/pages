# pages

pages is a Rails 3 plugin that lets you add HTML pages to your rails app with SEO friendly slugs (using friendly_id plugin).  The pages are editable within the app.  Useful for pages that are usually static, but may require some updates without you touching the code and restarting your server. For example, "Contact Us", "About Us", etc..

## Install

This plugin has not been pushed to gemcutter yet, so you need to install directly from github.  Put this in your Gemfile

    gem "pages", :git=>"git@github.com:charlotte-ruby/pages.git" 
    
Install with Bundler

    bundle install
   
Run the generator

    rails g pages:install
   
The generator performs the following actions:

1. runs the generator for the friendly_id plugin.  This will create a migraiton for slugs
2. creates a migration for the Page model
3. copies the pages_controller.rb from the engine to your app.  You will probably want to add some security here

Run the migrations

    rake db:migrate
    
## Usage

The administration URL is (assuming you are on local):

    http://localhost:3000/p
    
This shows you a list of pages that have been created, with their friendly URLs, and gives you the option to add, edit or delete.  If you create or edit a page, you will be able to preview the page as you type if you have jquery installed in your app.

A route helper is provided so you can call routes for pages using their title.  For instance, if you have a page with the title "About Us", you would do the following:

    page_url_for("About Us")
    
This helper is available in the controller and view.

## Customizing

If you want to change the model, just drop in a copy of this model into your app/models directory: https://github.com/charlotte-ruby/pages/tree/master/app/models/page.rb

If you want to override the views, just place any of these files in app/views/pages: https://github.com/charlotte-ruby/pages/tree/master/app/views/pages

## A note about security

This plugin provides no mechanism for role based security.  Out of the box, any user can visit "http://yoursite.com/p" and edit the pages.  If you want to restrict users from editing pages, you will need to add your own security mechanism.

## Contributing to pages
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 John McAliley. See LICENSE.txt for
further details.

