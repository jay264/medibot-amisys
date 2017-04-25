Feature: Process Essette Extract 012417_MEDIGOLD_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 012417_MEDIGOLD_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17517711 |
| Q17520855 |
| Q17538012 |
| Q17538012 |
| Q17538012 |
| Q17541256 |
| Q17542903 |
| Q17544613 |
| Q17547350 |
| Q17547871 |
| Q17549179 |
| Q17557337 |
| Q17563301 |
| Q17575908 |
| Q17575908 |
| Q17578891 |
| Q17580597 |
| Q17583370 |
| Q17584133 |
| Q17584357 |
| Q17584370 |
| Q17584525 |
| Q17584918 |
| Q17585093 |
| Q17585097 |
| Q17585399 |
| Q17585403 |
| Q17585403 |
| Q17585514 |
| Q17585568 |
| Q17585691 |
| Q17585691 |
| Q17586086 |
| Q17586255 |
| Q17586404 |
| Q17586686 |
| Q17586771 |
| Q17586794 |
| Q17587396 |
