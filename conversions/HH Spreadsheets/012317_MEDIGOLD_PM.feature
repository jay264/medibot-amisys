Feature: Process Essette Extract 012317_MEDIGOLD_PM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 012317_MEDIGOLD_PM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17234831 |
| Q17497078 |
| Q17498318 |
| Q17504219 |
| Q17515952 |
| Q17515952 |
| Q17516505 |
| Q17518660 |
| Q17520140 |
| Q17520140 |
| Q17520872 |
| Q17521776 |
| Q17521776 |
| Q17522441 |
| Q17534365 |
| Q17535401 |
| Q17537536 |
| Q17537726 |
| Q17537726 |
| Q17538115 |
| Q17538193 |
| Q17538277 |
| Q17538691 |
| Q17538691 |
| Q17539691 |
| Q17539962 |
| Q17539962 |
| Q17540555 |
| Q17540555 |
| Q17540826 |
| Q17541110 |
| Q17541254 |
| Q17541395 |
| Q17541708 |
| Q17541815 |
| Q17541815 |
| Q17541815 |
| Q17542175 |
| Q17546747 |
| Q17551084 |
| Q17558786 |
| Q17564381 |
| Q17564381 |
| Q17564381 |
| Q17564381 |
| Q17564381 |
| Q17564962 |
| Q17565207 |
| Q17569147 |
| Q17569486 |
| Q17571721 |
| Q17571721 |
| Q17572731 |
| Q17573537 |
| Q17575283 |
| Q17576249 |
| Q17576249 |
| Q17576771 |
| Q17577564 |
| Q17577626 |
| Q17577626 |
| Q17577651 |
| Q17577766 |
| Q17577860 |
| Q17577860 |
| Q17577869 |
| Q17578089 |
| Q17578142 |
| Q17578220 |
| Q17578351 |
| Q17578381 |
| Q17578719 |
| Q17578722 |
| Q17578892 |
| Q17578995 |
| Q17579348 |
| Q17579348 |
| Q17579348 |
| Q17579358 |
| Q17579458 |
| Q17579575 |
| Q17579626 |
| Q17579639 |
| Q17579639 |
| Q17579888 |
| Q17580142 |
| Q17580234 |
| Q17580391 |
| Q17580692 |
| Q17580980 |
| Q17581397 |
| Q17581612 |
| Q17582002 |
| Q17582227 |
| Q17582227 |
| Q17582394 |
| Q17582567 |
| Q17582567 |
| Q17582812 |
| Q17582870 |
| Q17582870 |
| Q17583049 |
| Q17583234 |
| Q17583234 |
| Q17583354 |
| Q17583521 |
| Q17583566 |
| Q17583857 |
| Q17583898 |
| Q17583959 |
| Q17584051 |
| Q17584099 |
| Q17584125 |
| Q17584125 |
| Q17584284 |
