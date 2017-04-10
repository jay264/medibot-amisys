Feature: Process Essette Extract 121616_MediGold_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 121616_MediGold_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17274126 |
| Q17300966 |
| Q17303271 |
| Q17312556 |
| Q17312793 |
| Q17312822 |
| Q17313199 |
| Q17313206 |
| Q17313240 |
| Q17313894 |
| Q17332576 |
| Q17332699 |
| Q17340110 |
| Q17340647 |
| Q17340798 |
| Q17340834 |
| Q17341445 |
| Q17341645 |
| Q17342188 |
| Q17341736 |
| Q17342047 |
| Q17342019 |
| Q17342053 |
| Q17342053 |
| Q17342551 |
| Q17342730 |
| Q17342823 |
