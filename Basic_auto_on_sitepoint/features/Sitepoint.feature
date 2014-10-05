Feature: Ruby Enrolment

   @scotland
  Scenario: Completing Ruby survey form

    Given that I am on the Ruby survey web site "http://nitrowriters.com/form/form.html"
    When I complete the question Are you a big ruby fan
    And I complete the Tell me your story on getting started with Ruby
    And I answer Are you familiar with Rails
    And I complete What's your favourite Ruby Evangelist
    And check the box for all the things you like about Ruby
    And I select How long are you using Ruby
    And Upload my document
    And I click submit
    Then I should see Ruby on my Browser title
