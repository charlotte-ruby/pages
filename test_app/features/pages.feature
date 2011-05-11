Feature: create pages with pages gem
  In order to use dynamic pages in my app
  with the pages plugin
  I should be able to create, update, destroy and preview pages
  
  Scenario: See a list of pages
    Given I am on the pages page
    Then I should see "First Page"
    And I should see "Second Page"
    And I should see "/p/first-page"
    And I should see "/p/second-page"
    And I should see "New Page"
    And I should see "Title"
    And I should see "URL"
    
  Scenario: Create a page
    Given I am on the pages page
    And I follow "New Page"
    And I fill in "Title" with "Third Page"
    And I fill in "Content" with "<b>third page</b><br>test"
    And I press "Create Page"
    Then I should be on the pages page
    Then I should see "Third Page"
    And I should see "/p/third-page"
    And I follow "http://www.example.com/p/third-page"
    Then the page should contain "<b>third page</b><br>test"
  
  Scenario: Update a page
    Given I am on the pages page
    And I follow "Edit"
    And I fill in "Title" with "Changed Title"
    And I fill in "Content" with "testing<br>testing123"
    And I press "Update Page"
    Then I should be on the pages page
    And I should see "Changed Title"
    And I should see "/p/changed-title"
    And I follow "http://www.example.com/p/changed-title"
    Then the page should contain "testing<br>testing123"
  
  Scenario: Delete a page
    Given I am on the pages page
    And I follow "Destroy"
    Then I should be on the pages page
    And I should not see "First Page"