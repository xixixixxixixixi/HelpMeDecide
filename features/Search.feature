Feature: I can search posts

Background:
    User.destroy_all
    # Given the following users exist:
    # | email              | password           |created_at         |updated_at          |
    # | 728977862@qq.com   | 4156GOGOGO         |2021-03-13 11:04:06|2021-03-13 11:04:06 |


@javascript
Scenario: I search content
    Given I login using "728977862@qq.com"
    Given I am on the home page
    And I follow "New Vote"
    Then I fill in "Description" with "what food"
    Then I input to Hashtag using "steak"
    And I upload an image named "steak.jpg"
    Then I follow "Add Choices"
    And I upload "steak.jpg" in the nested form
    And I initiate it with public
    And I press "Create Vote"
    Then I should be on the home page
    Given I logout
    Given I login using "12345678@qq.com"
    Given I am on the home page
    Then I search "food"
    Then I press "Submit"
    Then I should see "what food"
    Then I search "steak"
    Then I press "Submit"
    Then I should see "what food"