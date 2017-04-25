Feature: Process Essette Extract 012317_MEDIGOLD_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 012317_MEDIGOLD_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17498642 |
| Q17509305 |
| Q17512510 |
| Q17513488 |
| Q17519297 |
| Q17520164 |
| Q17521179 |
| Q17521179 |
| Q17522401 |
| Q17526410 |
| Q17526603 |
| Q17526741 |
| Q17526741 |
| Q17527984 |
| Q17528273 |
| Q17528422 |
| Q17528843 |
| Q17529285 |
| Q17530145 |
| Q17530172 |
| Q17530621 |
| Q17530739 |
| Q17530768 |
| Q17530960 |
| Q17533159 |
| Q17533979 |
| Q17535436 |
| Q17540353 |
| Q17540353 |
| Q17540353 |
| Q17540353 |
| Q17540353 |
| Q17540353 |
| Q17540353 |
| Q17550878 |
| Q17553670 |
| Q17563379 |
| Q17565535 |
| Q17567629 |
| Q17567629 |
| Q17571418 |
| Q17571912 |
| Q17573924 |
| Q17573924 |
| Q17573973 |
| Q17574122 |
| Q17574122 |
| Q17574352 |
| Q17574362 |
| Q17574500 |
| Q17574645 |
| Q17575048 |
| Q17575075 |
| Q17575283 |
| Q17576398 |
| Q17576412 |
