Feature: Adopting puppies

  As a puppy lover
  I want to adopt puppies
  So they can chew my furniture
   Background:
     Given I am on the "http://puppies.herokuapp.com"

 @twopuppies
  Scenario: Adopting two puppies
   Given I am on the "http://puppies.herokuapp.com"
   When I click the first View Details button
   And I click the Adopt Me button for that puppy
   And I click the Adopt Another Puppy button
   And I click the second View Details button
   And I click the Adopt Me button
   And I click the Complete the Adoption button
   And I enter "Cheezy " in the name field
   And I enter "123 Main Street" in the address field
   And I enter "cheezy@example.com" in the email field
   And I select "Credit card" from the pay with dropdown
   And I click the Place Order button
   Then I should see "Thank you for adopting a puppy!"

        @edwin
  Scenario: Validate cart with one puppy
    When I click the first View Details button
    And I click the Adopt Me button
    Then I should see "Brook" as the name for line item 1
    And I should see "$34.95" as the subtotal for line item 1
    And I should see "$34.95" as the cart total


  @twopuppiescart
  Scenario: Validate cart with two puppies
   When I click the first View Details button
   And I click the first Adopt Me button
   And I click the Adopt Another Puppy button
   And I click the second View Details button
   And I click the second Adopt Me button
   Then I should see "Brook" as the first name for line item 1
   And I should see "$34.95" as the first subtotal for line item 1
   And I should see "Hanna" as the second name for line item 2
   And I should see "$22.99" as the second subtotal for line item 2
   And I should see "$57.94" as the cart totally

