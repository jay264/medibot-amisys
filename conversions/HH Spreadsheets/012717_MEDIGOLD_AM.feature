Feature: Process Essette Extract 012717_MEDIGOLD_AM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 012717_MEDIGOLD_AM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17526685 |
| Q17539915 |
| Q17539915 |
| Q17542007 |
| Q17553857 |
| Q17554494 |
| Q17559621 |
| Q17560125 |
| Q17565037 |
| Q17574003 |
| Q17574003 |
| Q17574003 |
| Q17574003 |
| Q17574003 |
| Q17578018 |
| Q17578018 |
| Q17578018 |
| Q17578018 |
| Q17578836 |
| Q17578960 |
| Q17579100 |
| Q17579149 |
| Q17580751 |
| Q17581883 |
| Q17581947 |
| Q17583427 |
| Q17590971 |
| Q17602725 |
| Q17604382 |
| Q17607433 |
| Q17612873 |
| Q17614671 |
| Q17617768 |
| Q17617865 |
| Q17617932 |
| Q17617960 |
| Q17618370 |
| Q17618405 |
| Q17618471 |
| Q17618791 |
| Q17618817 |
| Q17618894 |
| Q17619532 |
| Q17620001 |
| Q17620199 |
| Q17620267 |
| Q17620332 |
| Q17620890 |
| Q17621127 |
| Q17621274 |
| Q17621315 |
| Q17621387 |
