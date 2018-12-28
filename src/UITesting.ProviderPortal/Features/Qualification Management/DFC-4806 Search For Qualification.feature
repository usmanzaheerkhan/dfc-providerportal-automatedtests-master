Feature: DFC-4806 Search For Qualification
	In order to Add a Qualification
	As a provider
	I want to be able to search for a Qualification using LARS/QAN Reference Number 

Background:
	Given I have accessed the Course Directory as a provider
	And I have accessed the Qualifications page	
	And there is a field to enter the LARS/QAN number.
@CI
Scenario: Search for a Qualification by LARS/QAN Reference Number
	Given I have entered LARS/QAN Number "60060955"
	Then I want to see the Qualifications listed for that LARS/QAN Number
	And I want to see LARS/QAN number "LARS/QAN", Level "Level" and awarding body "Awarding body" for each qualification
	And I want to see a message confirming the results "Found 1 results for 60060955"
	And I want to see a Link to add this qualification.
	And I want to see Qualification Level Filter "Qualification Level"
	And I want to see Awarding Organisation Filter on the screen "Awarding Organisation"
@CI
Scenario: Search for a Qualification when user enters an invalid search term
	Given that I have entered an invalid search term "xxxxx"
	Then I want to see a validation message "No records found"
@CI
Scenario: Search for a Qualification using Qualification Name
	Given I have entered a Qualification Name "Biology"
	Then I want to see the Qualifications listed for that LARS/QAN Number
	And I want to see LARS/QAN number "LARS/QAN", Level "Level" and awarding body "Awarding body" for each qualification
	And I want to see the number of results returned for the name "Found results for Biology"
	And I want to see a Link to add this qualification.
	And I want to see Level and Awarding body on the screen.
@CI
Scenario: Select and clear filters for Qualification Level 
	Given I have searched for a term "Maths"
	And I select one level for qualification level "Level 2"
	Then I should be able to select another level for qualification level "Level X"
	When I click reset all filters should be cleared.
@CI
Scenario: Select and clear filters for Awarding Body
	Given I have searched for a search term "English"
	And I have selected one awarding body "OCR"
	Then I should be able to select another awarding body "NCFE"
	When I click reset all filters should be cleared.
@CI
Scenario: Click Add this Qualification
	Given I have searched for "60060955"
	And I have clicked to add the first qualification
	Then I should be taken to add course screen.


	

