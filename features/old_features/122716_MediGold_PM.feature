Feature: Process Essette Extract 122716_MediGold_PM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 122716_MediGold_PM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17332950 |
| Q17360509 |
| Q17372419 |
| Q17382441 |
| Q17382603 |
| Q17383467 |
| Q17384127 |
| Q17384252 |
| Q17384252 |
| Q17384616 |
| Q17384656 |
| Q17386118 |
| Q17386234 |
| Q17386234 |
| Q17387400 |
| Q17387669 |
| Q17390227 |
| Q17393452 |
| Q17393452 |
| Q17393452 |
| Q17393452 |
| Q17393452 |
| Q17393453 |
| Q17393680 |
| Q17397036 |
| Q17397071 |
| Q17397071 |
| Q17397178 |
| Q17397204 |
| Q17397350 |
| Q17397539 |
| Q17397528 |
| Q17397528 |
| Q17397761 |
| Q17398129 |
| Q17398223 |
| Q17398223 |
| Q17398223 |
| Q17398223 |
| Q17398223 |
| Q17398310 |
| Q17398463 |
| Q17398556 |
| Q17398552 |
| Q17398892 |
| Q17399008 |
| Q17399623 |
| Q17399716 |
| Q17400071 |
| Q17400231 |
| Q17400235 |
| Q17400231 |
| Q17400835 |
| Q17400884 |
| Q17400949 |
| Q17401253 |
| Q17401376 |
| Q17401225 |
| Q17401312 |
| Q17401300 |
| Q17401300 |
| Q17401300 |
| Q17401300 |
| Q17401300 |
| Q17401410 |
| Q17401921 |
| Q17401929 |
| Q17402060 |
| Q17402453 |
