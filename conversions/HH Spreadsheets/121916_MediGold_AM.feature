Feature: Process Essette Extract 121916_MediGold_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 121916_MediGold_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17271740 |
| Q17306953 |
| Q17311918 |
| Q17315665 |
| Q17315914 |
| Q17316738 |
| Q17317735 |
| Q17318872 |
| Q17320771 |
| Q17323069 |
| Q17323069 |
| Q17323069 |
| Q17323069 |
| Q17323069 |
| Q17324250 |
| Q17327068 |
| Q17328917 |
| Q17329105 |
| Q17329870 |
| Q17330269 |
| Q17330291 |
| Q17336037 |
| Q17337618 |
| Q17337948 |
| Q17338367 |
| Q17338389 |
| Q17338409 |
| Q17339036 |
| Q17340730 |
| Q17342471 |
| Q17343582 |
| Q17344336 |
| Q17347693 |
| Q17349960 |
| Q17350438 |
| Q17351005 |
| Q17351280 |
| Q17351374 |
| Q17351582 |
| Q17351678 |
| Q17352538 |
| Q17352936 |
