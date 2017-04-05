Feature: Process Essette Extract 122116_MEDIGOLD_PM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 122116_MEDIGOLD_PM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17322552 |
| Q17338871 |
| Q17341347 |
| Q17345753 |
| Q17353230 |
| Q17353247 |
| Q17353455 |
| Q17354721 |
| Q17355662 |
| Q17360289 |
| Q17367478 |
| Q17367500 |
| Q17371939 |
| Q17374716 |
| Q17374679 |
| Q17374788 |
| Q17374814 |
| Q17374886 |
| Q17374960 |
| Q17375056 |
| Q17375060 |
| Q17375067 |
| Q17375068 |
| Q17375289 |
| Q17375386 |
| Q17376656 |
| Q17376889 |
| Q17376949 |
| Q17377011 |
| Q17377500 |
| Q17377679 |
| Q17377795 |
| Q17377795 |
| Q17378124 |
| Q17378288 |
| Q17378188 |
| Q17378339 |
| Q17378491 |
| Q17378555 |
