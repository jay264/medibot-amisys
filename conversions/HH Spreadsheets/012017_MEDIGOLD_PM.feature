Feature: Process Essette Extract 012017_MEDIGOLD_PM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 012017_MEDIGOLD_PM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17200665 |
| Q17495303 |
| Q17513669 |
| Q17517010 |
| Q17517010 |
| Q17517780 |
| Q17518286 |
| Q17518884 |
| Q17519037 |
| Q17519037 |
| Q17519788 |
| Q17519903 |
| Q17521457 |
| Q17521776 |
| Q17521776 |
| Q17522604 |
| Q17522818 |
| Q17524082 |
| Q17525468 |
| Q17529879 |
| Q17529879 |
| Q17530061 |
| Q17548085 |
| Q17556721 |
| Q17559717 |
| Q17567678 |
| Q17567696 |
| Q17567749 |
| Q17567824 |
| Q17567886 |
| Q17567894 |
| Q17567973 |
| Q17567976 |
| Q17568096 |
| Q17568105 |
| Q17568143 |
| Q17568228 |
| Q17568234 |
| Q17568234 |
| Q17568356 |
| Q17568418 |
| Q17568465 |
| Q17568632 |
| Q17568846 |
| Q17569013 |
| Q17569195 |
| Q17569309 |
| Q17569320 |
| Q17569486 |
| Q17569486 |
| Q17569763 |
| Q17569768 |
| Q17570107 |
| Q17570298 |
| Q17570461 |
| Q17570811 |
| Q17570811 |
| Q17570811 |
| Q17570811 |
| Q17570811 |
| Q17570821 |
| Q17571208 |
| Q17571243 |
| Q17571537 |
| Q17572398 |
| Q17572699 |
| Q17572935 |
| Q17572993 |
| Q17573050 |
| Q17573107 |
| Q17573435 |
| Q17573676 |
