Feature: Process Essette Extract 013017_MEDIGOLD_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 013017_MEDIGOLD_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17455001 |
| Q17525403 |
| Q17538300 |
| Q17538300 |
| Q17538300 |
| Q17538300 |
| Q17538300 |
| Q17553149 |
| Q17553358 |
| Q17556512 |
| Q17559019 |
| Q17570451 |
| Q17580607 |
| Q17581755 |
| Q17581755 |
| Q17581755 |
| Q17582249 |
| Q17583189 |
| Q17583803 |
| Q17584106 |
| Q17588391 |
| Q17589034 |
| Q17591658 |
| Q17592247 |
| Q17592609 |
| Q17592609 |
| Q17592940 |
| Q17592940 |
| Q17592940 |
| Q17592940 |
| Q17592940 |
| Q17592974 |
| Q17595353 |
| Q17595703 |
| Q17595855 |
| Q17596398 |
| Q17596537 |
| Q17596678 |
| Q17597190 |
| Q17598855 |
| Q17599793 |
| Q17604889 |
| Q17605344 |
| Q17605344 |
| Q17608692 |
| Q17613556 |
| Q17613942 |
| Q17614073 |
| Q17614073 |
| Q17614633 |
| Q17614732 |
| Q17615210 |
| Q17615361 |
| Q17616174 |
| Q17618423 |
| Q17619896 |
| Q17622468 |
| Q17624471 |
| Q17624471 |
| Q17627275 |
| Q17627434 |
| Q17627475 |
| Q17628293 |
| Q17628431 |
| Q17628632 |
| Q17628829 |
| Q17629266 |
| Q17629266 |
| Q17629266 |
| Q17629266 |
| Q17629266 |
| Q17629452 |
| Q17629458 |
| Q17629480 |
| Q17630169 |
| Q17630169 |
| Q17630169 |
| Q17630169 |
| Q17630169 |
| Q17630312 |
| Q17631077 |
