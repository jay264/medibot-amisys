Feature: Process Essette Extract 012717_MEDIGOLD_PM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 012717_MEDIGOLD_PM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17283213 |
| Q17451836 |
| Q17515543 |
| Q17540353 |
| Q17540353 |
| Q17540353 |
| Q17540353 |
| Q17540353 |
| Q17540353 |
| Q17540353 |
| Q17553446 |
| Q17557374 |
| Q17569711 |
| Q17583852 |
| Q17585953 |
| Q17589019 |
| Q17591388 |
| Q17591388 |
| Q17591665 |
| Q17594089 |
| Q17594326 |
| Q17603028 |
| Q17605767 |
| Q17611053 |
| Q17611522 |
| Q17621719 |
| Q17621813 |
| Q17621877 |
| Q17621900 |
| Q17621925 |
| Q17621927 |
| Q17621927 |
| Q17621927 |
| Q17621927 |
| Q17621927 |
| Q17622036 |
| Q17622130 |
| Q17622237 |
| Q17622377 |
| Q17622662 |
| Q17622835 |
| Q17622835 |
| Q17622871 |
| Q17623044 |
| Q17623044 |
| Q17623359 |
| Q17623592 |
| Q17623658 |
| Q17623762 |
| Q17623970 |
| Q17624007 |
| Q17624310 |
| Q17624373 |
| Q17624449 |
| Q17624965 |
| Q17625074 |
| Q17625446 |
| Q17625446 |
| Q17625521 |
| Q17625715 |
| Q17626058 |
| Q17626116 |
| Q17626251 |
| Q17626261 |
| Q17626300 |
| Q17626302 |
| Q17626776 |
| Q17626805 |
| Q17626978 |
| Q17627051 |
| Q17627051 |
| Q17627051 |
| Q17627051 |
| Q17627051 |
| Q17627051 |
| Q17627051 |
| Q17627051 |
| Q17627051 |
| Q17627087 |
| Q17627244 |
| Q17627513 |
| Q17627530 |
| Q17627712 |
| Q17627858 |
| Q17627858 |
