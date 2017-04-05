Feature: Process Essette Extract 012417_MEDIGOLD_PM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 012417_MEDIGOLD_PM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17150279 |
| Q17516505 |
| Q17545838 |
| Q17550922 |
| Q17551547 |
| Q17551547 |
| Q17551547 |
| Q17553464 |
| Q17553493 |
| Q17557215 |
| Q17564312 |
| Q17565450 |
| Q17566882 |
| Q17567761 |
| Q17571316 |
| Q17571316 |
| Q17571316 |
| Q17571316 |
| Q17571316 |
| Q17580993 |
| Q17582812 |
| Q17583186 |
| Q17583234 |
| Q17583234 |
| Q17588420 |
| Q17588440 |
| Q17588476 |
| Q17588476 |
| Q17588480 |
| Q17588510 |
| Q17588573 |
| Q17588615 |
| Q17588615 |
| Q17588738 |
| Q17588755 |
| Q17588789 |
| Q17588812 |
| Q17588952 |
| Q17588993 |
| Q17589061 |
| Q17589067 |
| Q17589067 |
| Q17589229 |
| Q17589289 |
| Q17589538 |
| Q17589540 |
| Q17589715 |
| Q17589715 |
| Q17589771 |
| Q17589804 |
| Q17590294 |
| Q17590940 |
| Q17591204 |
| Q17591556 |
| Q17591599 |
| Q17591801 |
| Q17591828 |
| Q17591917 |
| Q17592018 |
| Q17592061 |
| Q17592121 |
| Q17592487 |
| Q17593319 |
| Q17593459 |
| Q17593693 |
| Q17594241 |
| Q17594368 |
| Q17594771 |
| Q17594884 |
| Q17595192 |
| Q17595235 |
| Q17595345 |
| Q17595461 |
