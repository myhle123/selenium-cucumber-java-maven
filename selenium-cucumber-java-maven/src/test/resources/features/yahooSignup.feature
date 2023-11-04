
Feature: Yahoo Sign-up form

	
	Scenario: Should ask to input phone number if I provide needed information
		Given I navigate to "https://yahoo.com"
    Then I click on element having xpath "//a[text()='Sign in']"
    And I click on element having id "createacc"
   	When I enter "FirstName" into input field having id "usernamereg-firstName"
   	And I enter "LastName" into input field having id "usernamereg-lastName"
   	And I enter "user21213" into input field having id "usernamereg-userId"
   	And I enter "pass@#$232" into input field having id "usernamereg-password"
   	And I select "May" option by text from dropdown having id "usernamereg-month"
   	And I enter "12" into input field having id "usernamereg-day"
   	And I enter "1990" into input field having id "usernamereg-year"
   	When I click on element having id "reg-submit-button"
   	Then element having class "challenge-desc" should be present
   	    
	Scenario: Should display field name correctly
    Given I navigate to "https://yahoo.com"
    Then I click on element having xpath "//a[text()='Sign in']"
    And I click on element having id "createacc"
    Then element having css "label[for='usernamereg-firstName']" should have text as "Full name"
    And element having css "label[for='usernamereg-userId']" should have text as "New Yahoo email"
    And element having class "yid-domain" should have text as "@yahoo.com"
    And element having css "label[for='usernamereg-password']" should have text as "Create Password"
    And element having class "reg-dob" should have text as "Date of birth"
    
  	Scenario: Validate the required fields
    #Given I navigate to "https://yahoo.com"
    #Then I click on element having xpath "//a[text()='Sign in']"
    #And I click on element having id "createacc"
    When I click on element having id "reg-submit-button"
    Then element having id "reg-error-firstName" should have text as "This is required."
    And element having id "reg-error-lastName" should have text as "This is required."
    And element having id "reg-error-userId" should have text as "This is required."
    And element having id "reg-error-password" should have text as "This is required."
    And element having id "reg-error-birthDate" should have text as "This is required."
   
    
    #Then I take screenshot
    #And I enter "tomsmith" into input field having id "username"
    #And I enter "SuperSecretPassword!" into input field having id "password"
    #When I click on element having class "radius"
    #Then I should get logged-in
   
    