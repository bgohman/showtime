Feature: Showtime Descriptions

  So that I can find movies that fit my schedule
  As a movie goer
  I want to see accurate and concise showtimes

  @wip
  Scenario: Show minutes for times not ending with 00
  	Given a movie
  	When I set the showtime to "2015-10-10" at "2:15pm"
  	Then the showtime description should be "October 10, 2015 (2:15pm)"
  Scenario: Hide minutes for times ending with 00
    Given a movie
  	When I set the showtime to "2015-10-10" at "2:00pm"
  	Then the showtime description should be "October 10, 2015 (2pm)"