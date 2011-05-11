Feature: generating pages migrations
  In order to use pages
  A user should be able to
  generate migrations for pages

  Scenario: run install generator
    Given a working directory
    And I cleanup
    When I run the install generator
    Then a timestamped file named 'create_slugs.rb' is created in the '/db/migrate/' directory
    And a timestamped file named 'create_pages_table.rb' is created in the '/db/migrate/' directory
    And a file named "pages_controller.rb" is created in the "/app/controllers/" directory