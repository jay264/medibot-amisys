Feature: Process Essette Extract 013117_MEDIGOLD_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 013117_MEDIGOLD_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17572335 |
| Q17574099 |
| Q17578786 |
| Q17582015 |
| Q17599384 |
| Q17600436 |
| Q17605631 |
| Q17606856 |
| Q17608971 |
| Q17611221 |
| Q17617884 |
| Q17621755 |
| Q17623707 |
| Q17626890 |
| Q17628382 |
| Q17638293 |
| Q17638402 |
| Q17638551 |
| Q17638981 |
| Q17639151 |
| Q17639246 |
| Q17639246 |
| Q17639246 |
| Q17639247 |
| Q17639284 |
| Q17639325 |
| Q17639449 |
| Q17639451 |
| Q17639582 |
| Q17639752 |
| Q17640790 |
| Q17641078 |
| Q17641422 |
