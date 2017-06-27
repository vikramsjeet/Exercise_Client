@Test
Feature: Exercise | Validations of values

@Test_1
Scenario 1: To verify the right number of values appear on the screen
Given that I am on Exercise Home page
Then number of values labels on screen should be 5

@Test_2
Scenario 2: To verify all the values greater than 0

Given that I am on Exercise Home page
Then value of fields should be greater than 0

@Test_3, @Test_5
Scenario 3: To verify the total balance is correct based on the values listed on the screen

Given that I am on Exercise Home page
Then validate if sum of all values equals total balance

@Test_4
Scenario 4: To verify the values are formatted as currencies

Given that I am on Exercise Home page
Then I validate if values are formatted as currencies





