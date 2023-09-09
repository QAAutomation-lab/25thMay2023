Feature: Test Lead functionality of Vtiger application
  Background: 
    Given user already in login page
    And user login successfully with valid data
    And click on navigation bar
    And go to Marketing and select Leads

  @Regression
  Scenario Outline: Verify new lead  creation with name as <firstName>
    When click on Add Leads button and enter firstname as <firstName> ,last as <lastName> ,number as <number> and click on save button
    And click on All link
    Then varify lead is created with <lastName>
    And close the browser

    Examples: 
      | firstName | lastName | number |
      | QA        | Champak  |    123 |

  @Regression
  Scenario: Delete all leads
    When click on select all leads checkbox
    And click on delete logo
    And user will get a popup to comfirm deletion, select Yes
    Then varify that all leads deleted
    And close the browser
Scenario: Verify Lead modification

Scenario: Verify Lead deletion
