Feature: [ads][auth] User should be able to logout any time at any page

    @TEST_WP-1021
    Scenario Outline: [ads][auth] User should be able to logout any time at any page
        Given I open the login page
        When I am typing "<email>" request "<password>" and click login button
        Then I should see dashboard
        Examples:
            | title        | email                        | password  |
            | Authorized-1 | mohammed.murad@admixplay.com | Zoom+9321 |
