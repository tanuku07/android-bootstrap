Feature: Login feature
Scenario: As a invalid user I should see error message
When I enter text "demo@androidbootstrap.ru" into field with id "et_email"
And I enter text "android" into field with id "et_password"
And I press the "Sign In" button
Then I see "Email Address or Password is incorrect"

Scenario: As a valid user I can log into my app
    When I enter text "demo@androidbootstrap.com" into field with id "et_email"
    And I enter text "android" into field with id "et_password"
    And I press the "Sign In" button			   
    Then I see "Home"
    And I see "Timer"

Scenario: As a user I can logout from my app
    When I swipe right
    And I press the menu key
    And I press the menu key
    And I select "Logout" from the menu
    Then I see "Sign In"

Scenario: User click on other user to see profile
When I enter text "demo@androidbootstrap.com" into field with id "et_email"
And I enter text "android" into field with id "et_password"
And I press the "Sign In" button
And I wait
And I swipe right
And I touch the "Justin Peck" text
Then I see "Justin Peck"

Scenario: User see timer tic
When I press "Timer"
And I press the "Start" button
And I wait for 4 seconds
Then I see "00:00:04"
And I press the "Stop" button



