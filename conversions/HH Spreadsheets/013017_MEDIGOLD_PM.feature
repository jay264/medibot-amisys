Feature: Process Essette Extract 013017_MEDIGOLD_PM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 013017_MEDIGOLD_PM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17303744 |
| Q17313206 |
| Q17542007 |
| Q17565037 |
| Q17573235 |
| Q17573235 |
| Q17590971 |
| Q17591807 |
| Q17591807 |
| Q17597265 |
| Q17597542 |
| Q17597542 |
| Q17599934 |
| Q17599938 |
| Q17600180 |
| Q17602973 |
| Q17603130 |
| Q17603359 |
| Q17605066 |
| Q17608740 |
| Q17615210 |
| Q17621387 |
| Q17621711 |
| Q17621858 |
| Q17627546 |
| Q17628365 |
| Q17629353 |
| Q17631645 |
| Q17631678 |
| Q17632006 |
| Q17632042 |
| Q17632090 |
| Q17632142 |
| Q17632221 |
| Q17632310 |
| Q17632310 |
| Q17632572 |
| Q17632680 |
| Q17632802 |
| Q17632839 |
| Q17632877 |
| Q17632977 |
| Q17633019 |
| Q17633162 |
| Q17633309 |
| Q17633315 |
| Q17633320 |
| Q17633468 |
| Q17633489 |
| Q17633631 |
| Q17633631 |
| Q17633641 |
| Q17633768 |
| Q17633768 |
| Q17633788 |
| Q17633810 |
| Q17633810 |
| Q17633811 |
| Q17633872 |
| Q17633905 |
| Q17634008 |
| Q17634129 |
| Q17634129 |
| Q17634140 |
| Q17634275 |
| Q17634378 |
| Q17634378 |
| Q17634509 |
| Q17634544 |
| Q17634798 |
| Q17634841 |
| Q17635020 |
| Q17635130 |
| Q17635424 |
| Q17635502 |
| Q17635771 |
| Q17635847 |
| Q17636063 |
| Q17636240 |
| Q17636468 |
| Q17636813 |
| Q17636935 |
| Q17636953 |
| Q17637011 |
| Q17637251 |
| Q17637251 |
| Q17638037 |
