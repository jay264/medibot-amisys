Feature: Process Essette Extract 121516_MediGold_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 121516_MediGold_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q16973502 |
| Q17064218 |
| Q17207129 |
| Q17259307 |
| Q17270863 |
| Q17274520 |
| Q17274520 |
| Q17290303 |
| Q17299470 |
| Q17302798 |
| Q17302818 |
| Q17305189 |
| Q17308942 |
| Q17309573 |
| Q17309536 |
| Q17310246 |
| Q17313817 |
| Q17313817 |
| Q17313817 |
| Q17313817 |
| Q17313817 |
| Q17316604 |
| Q17317821 |
| Q17330801 |
| Q17330870 |
| Q17331101 |
| Q17331164 |
| Q17331229 |
| Q17331503 |
| Q17331887 |
| Q17331907 |
| Q17332141 |
| Q17332576 |
| Q17332655 |
| Q17332886 |
| Q17332886 |
| Q17333379 |
