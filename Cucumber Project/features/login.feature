Feature: Logging into a website
  Scenario Outline: Verifying that the user can login to the website
    Given I open the website in a browser
    When I login with credentials "username" and  "username"
    Then home page is displayed


    Examples:
      |username  | password |
      |selenium  | password |
      |test@gamil.com | user|
