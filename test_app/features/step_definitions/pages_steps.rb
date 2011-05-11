MIGRATION_FILES = ["create_pages_table.rb","create_slugs.rb"]

Then /^the page should contain "([^"]*)"$/ do |html|
  page.body.should match /#{html}/
end

Given 'a working directory' do
  @working_dir = File.dirname(__FILE__)+"/../../"
end

Given /^I cleanup$/ do
  migrations_dir = "#{@working_dir}db/migrate/"
  begin
   Dir.entries(migrations_dir).each do |file|
     MIGRATION_FILES.each do |mfile|
       File.delete("#{migrations_dir}#{file}") if file.include? mfile
     end
   end
  rescue
  end
  FileUtils.rm("#{@working_dir}app/controllers/pages_controller.rb")
end

Then /^a timestamped file named '(.*)' is created in the '(.*)' directory$/ do |file,dir|
  full_dir = @working_dir+dir
  Dir.entries(full_dir).each do |timestamped_file|
    file = timestamped_file if timestamped_file.include? file
  end
  assert File.exists?(full_dir+file), "#{file} expected to exist, but did not"
  assert File.file?(full_dir+file), "#{file} expected to be a file, but is not"
end

When /^I run the install generator$/ do
  @generator_output = systemu("rails g pages:install")
end

Then /^a file named "(.*)" is created in the "(.*)" directory$/ do |file,dir|
  full_dir = @working_dir+dir
  assert File.exists?(full_dir+file), "#{file} expected to exist, but did not"
  assert File.file?(full_dir+file), "#{file} expected to be a file, but is not"
end

Then /^the file "([^"]*)" contains "([^"]*)"$/ do |file, text|
  path = @working_dir+file
  file_content = IO.read(path)
  assert file_content.match(/#{text}/), "#{text} expected in #{path}"
end