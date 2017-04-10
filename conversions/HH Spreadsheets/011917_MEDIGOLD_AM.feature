Feature: Process Essette Extract 011917_MEDIGOLD_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 011917_MEDIGOLD_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17482564 |
| Q17483557 |
| Q17499591 |
| Q17504219 |
| Q17506523 |
| Q17510449 |
| Q17513237 |
| Q17515413 |
| Q17515537 |
| Q17515537 |
| Q17515537 |
| Q17515537 |
| Q17515537 |
| Q17515537 |
| Q17515537 |
| Q17515537 |
| Q17515537 |
| Q17515537 |
| Q17520502 |
| Q17520502 |
| Q17520773 |
| Q17520773 |
| Q17520773 |
| Q17532781 |
| Q17539097 |
| Q17539501 |
| Q17539530 |
| Q17540179 |
| Q17541542 |
| Q17544214 |
| Q17546033 |
| Q17546801 |
| Q17547061 |
| Q17550632 |
| Q17551495 |
| Q17552664 |
| Q17552691 |
| Q17552748 |
| Q17552949 |
| Q17552949 |
| Q17552965 |
| Q17552995 |
| Q17552995 |
| Q17553083 |
| Q17553157 |
| Q17553191 |
| Q17553191 |
| Q17553191 |
| Q17553191 |
| Q17553191 |
| Q17553266 |
| Q17553272 |
| Q17553384 |
| Q17553469 |
| Q17553733 |
| Q17553801 |
| Q17554261 |
| Q17554263 |
| Q17554410 |
| Q17554619 |
| Q17554784 |
