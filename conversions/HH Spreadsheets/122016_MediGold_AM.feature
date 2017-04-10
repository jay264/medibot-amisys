Feature: Process Essette Extract 122016_MediGold_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 122016_MediGold_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17293671 |
| Q17293671 |
| Q17309058 |
| Q17318833 |
| Q17318833 |
| Q17318910 |
| Q17319289 |
| Q17322884 |
| Q17325298 |
| Q17326676 |
| Q17326676 |
| Q17330520 |
| Q17330520 |
| Q17331840 |
| Q17332366 |
| Q17332950 |
| Q17334302 |
| Q17338186 |
| Q17343334 |
| Q17343954 |
| Q17345559 |
| Q17353248 |
| Q17353248 |
| Q17353375 |
| Q17353590 |
| Q17355444 |
| Q17355444 |
| Q17355444 |
| Q17355444 |
| Q17355444 |
| Q17355444 |
| Q17355444 |
| Q17355444 |
| Q17355444 |
| Q17355444 |
| Q17355444 |
| Q17359544 |
| Q17359744 |
| Q17359862 |
| Q17360048 |
| Q17360191 |
| Q17360289 |
| Q17360326 |
| Q17360378 |
| Q17360403 |
| Q17360457 |
| Q17360987 |
| Q17361080 |
| Q17361092 |
| Q17361899 |
| Q17361899 |
| Q17361899 |
| Q17361899 |
| Q17361899 |
