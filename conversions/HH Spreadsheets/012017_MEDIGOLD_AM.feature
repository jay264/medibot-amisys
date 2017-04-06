Feature: Process Essette Extract 012017_MEDIGOLD_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 012017_MEDIGOLD_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17483980 |
| Q17491337 |
| Q17491523 |
| Q17509551 |
| Q17512510 |
| Q17515019 |
| Q17518384 |
| Q17518616 |
| Q17518616 |
| Q17522791 |
| Q17526141 |
| Q17527838 |
| Q17527838 |
| Q17529819 |
| Q17529819 |
| Q17529819 |
| Q17529819 |
| Q17529819 |
| Q17544001 |
| Q17544001 |
| Q17544001 |
| Q17546418 |
| Q17550436 |
| Q17555955 |
| Q17556157 |
| Q17563382 |
| Q17563601 |
| Q17563653 |
| Q17563793 |
| Q17563901 |
| Q17564002 |
| Q17564002 |
| Q17564002 |
| Q17564227 |
| Q17564324 |
| Q17564627 |
| Q17564734 |
| Q17564972 |
| Q17565449 |
| Q17565516 |
| Q17565553 |
| Q17565981 |
| Q17566019 |
| Q17566040 |
| Q17566226 |
| Q17566235 |
| Q17566295 |
| Q17567002 |
| Q17567008 |
| Q17567008 |
| Q17567008 |
| Q17567008 |
| Q17567062 |
| Q17567086 |
