Feature: Create user
  I want toi be able to create many users

Acceptance Criteria:
* User must have name
* User must be publicly visible once saved

#Background:
#Given I am signed in

Scenario:creating a user
  Given I am on the homepage
  And I click "New User"
  Then I should see "New user" 
  And I should see "Create a new user here"
  When I fill in "Vered" for "Name"
  And I fill in "vered@gmail.com" for "Email"
  And I press "Create User"
  Then I should see "User was successfully created."
  And I should see "Vered"
  And I should see "vered@gmail.com"

Scenario:creating a user with no name
  Given I am on the homepage
  And I click "New User"
  Then I should see "New user" 
  And I should see "Create a new user here"
  When I fill in "" for "Name"
  And I fill in "vered@gmail.com" for "Email"
  And I press "Create User"
  Then I should see "Name is too short (minimum is 2 characters)"

Scenario:creating a user with no email 
  Given I am on the homepage
  And I click "New User"
  Then I should see "New user" 
  And I should see "Create a new user here"
  When I fill in "Vered Bauer" for "Name"
  And I fill in "" for "Email"
  And I press "Create User"
  Then I should see "Email is too short (minimum is 5 characters)"

Scenario:creating a user with a name longer than 25 char
  Given I am on the homepage
  And I click "New User"
  Then I should see "New user" 
  And I should see "Create a new user here"
  When I fill in "Vered Bauer Batz Raviv The first" for "Name"
  And I fill in "vered@gmail.com" for "Email"
  And I press "Create User"
  Then I should see "Name is too long (maximum is 25 characters)"
  
Scenario:creating a user with an email longer than 30 char
  Given I am on the homepage
  And I click "New User"
  Then I should see "New user" 
  And I should see "Create a new user here"
  When I fill in "Vered Bauer" for "Name"
  And I fill in "vered@gmail7777777777777777.com" for "Email"
  And I press "Create User"
  Then I should see "Email is too long (maximum is 30 characters)"
