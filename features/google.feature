Feature: [ads][auth] User should be able to login ONLY with valid email and password

  @TEST_WP-990
  Scenario Outline: [ads][auth] User should be able to login ONLY with valid email and password
    Given I open the login page
    When I am typing "<email>" request "<password>" and click login button
    Then I should see dashboard
    Examples:
      | title        | email                        | password  |
      | Authorized-1 | mohammed.murad@admixplay.com | Zoom+9321 |
