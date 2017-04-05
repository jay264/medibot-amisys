Feature: Process Essette Extract 121416_MediGold_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 121416_MediGold_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17250648 |
| Q17268547 |
| Q17272196 |
| Q17274520 |
| Q17274520 |
| Q17275002 |
| Q17276750 |
| Q17276927 |
| Q17278082 |
| Q17279262 |
| Q17282344 |
| Q17282530 |
| Q17282530 |
| Q17286063 |
| Q17287702 |
| Q17287702 |
| Q17298838 |
| Q17299487 |
| Q17299560 |
| Q17300249 |
| Q17300836 |
| Q17302268 |
| Q17302838 |
| Q17303147 |
| Q17310897 |
| Q17313493 |
| Q17319584 |
| Q17319584 |
| Q17319584 |
| Q17319584 |
| Q17319584 |
| Q17319958 |
| Q17320053 |
| Q17320162 |
| Q17320449 |
| Q17320559 |
| Q17320577 |
| Q17320577 |
| Q17320686 |
| Q17320978 |
| Q17320978 |
| Q17321027 |
| Q17321451 |
| Q17321645 |
| Q17321923 |
| Q17322215 |
| Q17322224 |
| Q17322430 |
| Q17322451 |
| Q17323707 |
