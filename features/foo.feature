Feature: As a  user I can login successfully-2

    @TEST_WP-971
    Scenario Outline: As a  user I can login successfully-2
        Given I open the login page
        When I am typing "<email>" request "<password>" and click login button
        Then I should see dashboard
        Examples:
            | title        | email                        | password  |
            | Authorized-1 | mohammed.murad@admixplay.com | Zoom+9321 |
