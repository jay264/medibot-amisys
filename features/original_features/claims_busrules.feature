@fullregression
@regression3
@claims
Feature: Claims - Busrules

	As a QA Tester
	I want to test the Claims process
	so that I know the page is functioning properly.

	Scenario: Enter a Medical Claim
	Given I sign in to the application
	When in the "Home" page I click on "Claims Processing"
		And in the "Claims Processing" page I click on "Medical Claim Entry"
		And the test pauses for "30" seconds
		And in the "Medical Claim Entry" page I enter "05012014" into the "Recv Dt" field
		And in the "Medical Claim Entry" page I enter "02012014" into the "Covers" field
		#00005271001
		And in the "Medical Claim Entry" page I enter "00005271001" into the "Member Number" field
		And in the "Medical Claim Entry" page I enter "932406" into the "Prov Number" field
		And in the "Medical Claim Entry" page I click on "Diagnosis Procedures and Service Detail"
		And the test pauses for "60" seconds
		#form data maintenance UB-04 pops up but nothing is required
		And I press "F8"
		And the test pauses for "60" seconds
		And in the "Medical Claim Entry" page I enter "412" into the "Diag A" field
		And in the "Medical Claim Entry" page I enter "1000" into the "Charge 1" field
		And in the "Medical Claim Entry" page I enter "02012014" into the "Date" field
		And in the "Medical Claim Entry" page I enter "21" into the "LC" field
		And in the "Medical Claim Entry" page I enter "88329" into the "Proc" field
		And in the "Medical Claim Entry" page I enter "1000" into the "Charge 2" field
		And I press "Control + S"
		And the test pauses for "60" seconds
		#here's where error messages need to be F8'd out of
		And I press "F8"
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "60" seconds
	Then in the "Medical Claim Entry" page I should see the "Error Message" element with a value of "Process Completed."
	
	Scenario: Enter a Hospital Claim
	Given I sign in to the application
	When in the "Home" page I click on "Claims Processing"
		And in the "Claims Processing" page I click on "Hospital Claim Entry"
		And the test pauses for "30" seconds
		And in the "Hospital Claim Entry" page I enter "05012014" into the "Recv Dt" field
		And in the "Hospital Claim Entry" page I enter "02012014" into the "Covers 1" field
		And in the "Hospital Claim Entry" page I enter "03012014" into the "Covers 2" field
		And in the "Hospital Claim Entry" page I enter "09" into the "DS" field
		And in the "Hospital Claim Entry" page I enter "00005271001" into the "Member Number" field
		And in the "Hospital Claim Entry" page I enter "932406" into the "Inst Number" field
		And in the "Hospital Claim Entry" page I click on "Diagnosis Procedures and Service Detail"
		And the test pauses for "60" seconds
		And in the "Hospital Claim Entry" page I enter "V50" into the "Diagnoses POA Indicators" field
		And in the "Hospital Claim Entry" page I enter "100" into the "Charge 1" field
		#And in the "Hospital Claim Entry" page I enter "02012014" into the "Date" field
		And in the "Hospital Claim Entry" page I enter "21" into the "LC" field
		And in the "Hospital Claim Entry" page I enter "1000" into the "Chgs" field
		And in the "Hospital Claim Entry" page I enter "1179" into the "CPT4" field
		And in the "Hospital Claim Entry" page I enter "1000" into the "TP Pay" field
		And I press "Control + S"
		And the test pauses for "60" seconds
		#form data maintenance UB-04 pops up but nothing is required
		And I press "F8"
		And the test pauses for "60" seconds
		#here's where error messages need to be F8'd out of
		And I press "F8"
		And the test pauses for "60" seconds
	Then in the "Hospital Claim Entry" page I should see the "Error Message" element with a value of "EX-Code(OD): THE SERVICE DIAGNOSIS CODE IS OBSOLETE - SERVICE IS DENIED"
	
	Scenario Outline: Pending and Denying Claims Manually
	Given I sign in to the application
	When in the "Home" page I click on "Claims Processing"
		And in the "Claims Processing" page I click on "Hospital Claim Entry"
		And the test pauses for "30" seconds
		And in the "Hospital Claim Entry" page I enter "05012014" into the "Recv Dt" field
		And in the "Hospital Claim Entry" page I enter "02012014" into the "Covers 1" field
		And in the "Hospital Claim Entry" page I enter "03012014" into the "Covers 2" field
		And in the "Hospital Claim Entry" page I enter "09" into the "DS" field
		And in the "Hospital Claim Entry" page I enter "00005271001" into the "Member Number" field
		And in the "Hospital Claim Entry" page I enter "932406" into the "Inst Number" field
		And in the "Hospital Claim Entry" page I click on "Diagnosis Procedures and Service Detail"
		And the test pauses for "30" seconds
		And in the "Hospital Claim Entry" page I enter "E8842   " into the "Diagnoses POA Indicators" field
		And in the "Hospital Claim Entry" page I enter "100" into the "Charge 1" field
		#And in the "Hospital Claim Entry" page I enter "02012014" into the "Date" field
		And in the "Hospital Claim Entry" page I enter "21" into the "LC" field
		And in the "Hospital Claim Entry" page I enter "1000" into the "Chgs" field
		And in the "Hospital Claim Entry" page I enter "1179" into the "CPT4" field
		And in the "Hospital Claim Entry" page I enter "1000" into the "TP Pay" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		#override with various pends
		And in the "Override EX Errors" page I enter "<Pend Codes>" into the "EX Code Blank" image
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "60" seconds
	Then in the "Override EX Errors" page I should see the "Process Completed" image
		#here's where error messages need to be F8'd out of
		And I press "F8"
		And the test pauses for "60" seconds
	#Then in the "Hospital Claim Entry" page I should see the "Error Message" element with a value of "EX-Code(OD): THE SERVICE DIAGNOSIS CODE IS OBSOLETE - SERVICE IS DENIED"
	
	Examples:
	| Pend Codes	|
	| B6			|
	| MB			|
	| E1			|
	| E3			|
	| E4			|
	| RS			|
	| XX			|
	| DD			|
	| G5			|
	| DH			|
	| DF			|
	| CT			|
	| DK			|
	| 78			|
	| TP			|
	| 61			|
	| PF			|
	| 51			|
	| 2F			|
	| 51			|
	| 2F			|
	| MP			|
	| MU			|
	| MS			|
	| TB			|
	| 59			|
	| B0			|
	| 02			|
	| DP			|
	| DS			|
	| L8			|
	| ID			|
	| PR			|
	| PH			|
	| PV			|
	| QC			|
	| E5			|
	| EM			|
	| L1			|
	| MO			|
	| DX			|
	| YC			|
	| NS			|
	| IS			|
	| RT			|
	| T7			|
	#deny codes
	| AD			|
	| 57			|
	| WG			|
	| XV			|
	| S3			|
	| 87			|
	| LZ			|
	| ZY			|
	| XN			|
	| XF			|
	| DR			|
	| WH			|
	| WI			|
	| 23			|
	| WD			|
	| WE			|
	| WF			|
	| W6			|
	| 64			|
	| WB			|
	| AJ			|
	| NX			|
	| CB			|
	| 83			|
	| DV			|
	| 27			|
	| 50			|
	| 5P			|
	| WV			|
	| WJ			|
	| XD			|
	| AW			|
	| XR			|
	| LM			|
	| LS			|
	| 76			|
	| 31			|
	| 14			|
	
	Scenario: Verify Converted Claims
	Given I sign in to the application
	When in the "Home" page I click on "Customer Service"
		And in the "Customer Service" page I click on "Medical Claim Entry"
		And the test pauses for "30" seconds
		