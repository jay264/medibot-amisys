Feature: Process Essette Extract 121516_MediGold_PM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 121516_MediGold_PM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17247496 |
| Q17248805 |
| Q17248805 |
| Q17251265 |
| Q17254755 |
| Q17256521 |
| Q17258825 |
| Q17259774 |
| Q17260333 |
| Q17270825 |
| Q17271005 |
| Q17271945 |
| Q17277437 |
| Q17277437 |
| Q17281201 |
| Q17282168 |
| Q17282168 |
| Q17282168 |
| Q17282168 |
| Q17282168 |
| Q17282168 |
| Q17282693 |
| Q17283918 |
| Q17287062 |
| Q17288352 |
| Q17289358 |
| Q17290710 |
| Q17293677 |
| Q17294268 |
| Q17294268 |
| Q17294402 |
| Q17295423 |
| Q17295423 |
| Q17296990 |
| Q17302260 |
| Q17303264 |
| Q17305569 |
| Q17308005 |
| Q17308394 |
| Q17308372 |
| Q17308900 |
| Q17309760 |
| Q17309844 |
| Q17310625 |
| Q17310962 |
| Q17311783 |
| Q17311783 |
| Q17312957 |
| Q17314368 |
| Q17323699 |
| Q17326220 |
| Q17332075 |
| Q17332817 |
| Q17333122 |
| Q17333526 |
| Q17334593 |
| Q17334591 |
| Q17335129 |
| Q17334755 |
| Q17334838 |
| Q17334928 |
| Q17335036 |
| Q17335287 |
| Q17335330 |
| Q17335775 |
| Q17335939 |
| Q17336211 |
| Q17336339 |
| Q17336649 |
| Q17336772 |
| Q17336860 |
| Q17336813 |
| Q17336983 |
| Q17337100 |
| Q17338059 |
| Q17338147 |
| Q17338059 |
| Q17338059 |
| Q17338059 |
| Q17339036 |
| Q17339075 |
| Q17339141 |
| Q17339310 |
| Q17339355 |
| Q17339428 |
| Q17339409 |
| Q17339409 |
| Q17339597 |
| Q17339507 |
| Q17339519 |
| Q17339589 |
| Q17339663 |
| Q17339719 |
| Q17339764 |
| Q17339819 |
| Q17339901 |
| Q17340032 |
