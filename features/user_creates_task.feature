Feature: User creates task
  As a user
  In order to write my tasks for each day
  I want to publish a to do list

Acceptance Criteria:
* Task must have title
* Task must be publicly visible once saved

#Background:
#Given I am signed in

Scenario:creating a task
 Given I am on the homepage
 And I click "New Task"
 Then I should see "Add your task here"
 When I fill in "Buy milk" for "Title"
 And I fill in "1" for "User"
 And I press "Create Task"
 Then I should see "Task was successfully created."
 And I should see "Buy milk" 
 And I should see "1"

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
