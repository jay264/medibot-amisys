@fullregression
@regression1
@authorizations
Feature: Authorizations - Busrules

	As a QA Tester
	I want to verify the ability to add all types of authorizations
	so that I know that information is entered correctly.

	Scenario Outline: Inpatient & OBS, non-Mt Carmel
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And the test pauses for "10" seconds
		And in the "Certification" page I enter "00008800701 " into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "<Diagnosis Code>" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "<EX Codes>" into the "EX" field
		And in the "Certification" page I enter "<Authorization Type>" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "10" seconds
	Then in the "Certification" page I should see the "Error Message" element with a value of "Process Completed. No detail records exist for this authorization."
	Given in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "10" seconds
		And in the "Hospital Services" page I enter "<Est Admit Date>" into the "Est Admit" image
		And in the "Hospital Services" page I enter "<Facility Number>" into the "Facility Number" image
		And in the "Hospital Services" page I enter "<Provider Number>" into the "Att Prov Number 1" image
		And in the "Hospital Services" page I enter "<Provider Number>" into the "Admit ID Number" image
		And in the "Hospital Services" page I enter "<Provider Number>" into the "Ref Prov Number 1" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "10" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
	Given I press "F8"
	When the test pauses for "10" seconds
		And in the "Functions Menu" page I click on "Authorized Svcs"
		And the test pauses for "10" seconds
		And in the "Authorized Services" page I enter "<Est Admit Date>" into the "Dates 1 Requested" image
		And in the "Authorized Services" page I enter "<Claim Type Value>" into the "Claim Type" image
		And in the "Authorized Services" page I enter "AD" into the "Count" image
		And in the "Authorized Services" page I enter "21" into the "Location" image
		And I press "Control + S"
		And the test pauses for "10" seconds
	Then in the "Authorized Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "10" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "10" seconds
		And I press "Control + S"
		And the test pauses for "10" seconds

	Examples:
	 | Authorization Type 				| Claim Type Value		| Est Admit Date		| Diagnosis Code				| Facility Number				| Provider Number			| Provider Number Default			| EX Codes	|
	 | IP								| M						| 01122015			| 436							| 935257      0003				| 922054      				| 999999							| A1		|
	 | IP								| M						| 01122015			| 436							| 935257      0003				| 922054      				| 999999							| 9A		|
	 | IP								| M						| 01122015			| 436							| 935257      0003				| 922054      				| 999999							| D6		|
	 | IP								| M						| 01122015			| 436							| 935257      0003				| 922054      				| 999999							| 9G		|


	Scenario Outline: Acute INPT Rehab Approve or Deny
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And the test pauses for "10" seconds
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And the test pauses for "10" seconds
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "FX" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "9A" into the "EX" field
		And in the "Certification" page I enter "RH" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "10" seconds
	#Then in the "Certification" page I should see the "Error Message" element with a value of "Process Completed. No detail records exist for this authorization."
	When the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Authorized Svcs"
		And the test pauses for "30" seconds
		And in the "Authorized Services" page I enter "01122015" into the "Dates 1 Requested" image
		And in the "Authorized Services" page I enter "1" into the "How Many Authorized" image
		And in the "Authorized Services" page I enter "922054      0001" into the "Ref Prov Number 1" image
		And in the "Authorized Services" page I enter "932341" into the "Prov 1" image
		And in the "Authorized Services" page I enter "M" into the "Claim Type" image
		And in the "Authorized Services" page I enter "AD" into the "Count" image
		And in the "Authorized Services" page I enter "21" into the "Location" image
		And in the "Authorized Services" page I enter "RB" into the "Treat Type" image
		And in the "Authorized Services" page I enter "RH" into the "Auth Type" image
		And in the "Authorized Services" page I enter "MCRF" into the "Coord Number" image
		And I press "Control + S"
		And the test pauses for "10" seconds
		And I press "F8"
		And the test pauses for "30" seconds
	Given in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "01122015" into the "Est Admit" image
		And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Att Prov Number 1" image
		And in the "Hospital Services" page I enter "777777" into the "Admit ID Number" image
		And in the "Hospital Services" page I enter "932340      0001" into the "Ref Prov Number 1" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And in the "Hospital Services" page I enter "1" into the "Req Days" image
		And in the "Hospital Services" page I enter "1" into the "Admit Type" image
		And in the "Hospital Services" page I enter "RH" into the "Auth Type" image
		And in the "Hospital Services" page I enter "000" into the "DRG Number" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
	Given I press "F8"
	And the test pauses for "30" seconds
	When in the "Certification" page I enter "<EX Codes>" into the "Ex" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		#Then in the "Certification" page I should see the "Error Message" element with a value of "Process Completed."
		And the test pauses for "10" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "10" seconds
		And I press "Control + S"
		And the test pauses for "10" seconds

	Examples:
	 | Authorization Type 				| Claim Type Value		| Est Admit Date		| Diagnosis Code				| Facility Number					| Provider Number					| Provider Number Default			| EX Codes	|
	 | IP													| M										| 01122015					| 436										| 935257      0003				| 922054      0001				| 999999											| A1		|
	 | IP													| M										| 01122015					| 436										| 935257      0003				| 922054      0001				| 999999											| D0		|

	Scenario Outline: 2.1.1 Authorization Creation
	#this test checks all valid authorization codes including inpatient, outpatient, and professional services
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And the test pauses for "10" seconds
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And the test pauses for "10" seconds
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "<Diagnosis Code>" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "<Authorization Type>" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "10" seconds
	Then in the "Certification" page I should see the "Error Message" element with a value of "Process Completed. No detail records exist for this authorization."
	Given in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "<Est Admit Date>" into the "Est Admit" image
		And in the "Hospital Services" page I enter "<Facility Number>" into the "Facility Number" image
		And in the "Hospital Services" page I enter "<Provider Number>" into the "Att Prov Number 1" image
		And in the "Hospital Services" page I enter "<Provider Number>" into the "Admit ID Number" image
		And in the "Hospital Services" page I enter "<Provider Number>" into the "Ref Prov Number 1" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "10" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
	Given I press "F8"
	When the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Authorized Svcs"
		And the test pauses for "30" seconds
		And in the "Authorized Services" page I enter "<Est Admit Date>" into the "Dates 1 Requested" image
		And in the "Authorized Services" page I enter "<Claim Type Value>" into the "Claim Type" image
		And I press "Control + S"
		And the test pauses for "10" seconds
	Then in the "Authorized Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "10" seconds

	Examples:
	 | Authorization Type 				| Claim Type Value		| Est Admit Date		| Diagnosis Code				| Facility Number		| Provider Number		| Provider Number Default			|
	#| AF								| M						| 01/30/2014			| 401							| 935257      0003				| 921534				| 999999							|
	#| CD								| M						| 02/03/2013			| 402							| 910015				| 921624				| 999999							|
	#| CY		  				 	| M						| 03/04/2012			| 403							| 932694				| 916337				| 999999							|
	#| PY								| M						| 04/05/2011			| 404							| 905345				| 926254				| 999999							|
	#| SH								| M						| 05/06/2010			| 405							| 932695				| 907641				| 999999							|
	#| RB								| M						| 06/07/2009			| 410							| 930727				| 915212				| 999999							|
	#| BE								| M						| 07/08/2008			| 411							| 933799				| 921443				| 999999							|
	#| TH								| M						| 08/09/2007			| 412							| 922006				| 906595				| 999999							|
	#| 47								| M						| 09/10/2006			| 413							| 932698				| 919302				| 999999							|
	#| DY								| M						| 10/11/2005			| 414							| 928221				| 904675				| 999999							|
	#| DM								| M						| 11/12/2007			| 415							| 905346				| 913043				| 999999							|
	#| HS								| M						| 12/13/2003			| 416							| 933757				| 910975				| 999999							|
	#| IP								| H						| 01/14/2002			| 417							| 900609				| 916764				| 999999							|
	#| RH								| H						| 02/15/2001			| 420							| 905344				| 922869				| 999999							|
	#| OB								| H						| 03/16/2002			| 421							| 917601				| 922995				| 999999							|
	#| ON								| M						| 04/17/2003			| 422							| 932691				| 907682				| 999999							|
	#| PT								| M						| 05/18/2004			| 423							| 932692				| 910864				| 999999							|
	#| SN								| M						| 06/19/2005			| 424							| 901451				| 920287				| 999999							|
	#| IP								| M						| 01/02/2013			| 410							| 901451				| 926335				| 999999							|
	#| IP								| M						| 01/01/2013			| 410							| 901451				| 926335				| 999999							|
	#| IP								| M						| 01/02/2013			| 487							| 901451				| 926335				| 999999							|
	#| IP								| M						| 01/01/2013			| 486							| 901451				| 926335				| 999999							|
	#| IP								| M						| 01/01/2013			| 458.9							| 901451				| 926335				| 999999							|
	 | IP								| M						| 01122015			| 436							| 935257      0003				| 922054      0001				| 999999							|


	Scenario Outline: 2.2 Templates
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00005271001" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
		And in the "Functions Menu" page I click on "Authorized Svcs"
		And the test pauses for "30" seconds
		And in the "Authorized Services" page I click on the "Template Number Link" image
		And the test pauses for "30" seconds
		And in the "Auth Template Lookup" page I click on the "Template" image
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Authorization Templates" page I enter "TEST" into the "Template Number" image
		And in the "Authorization Templates" page I enter "This is a test template" into the "Description" image
		And in the "Authorization Templates" page I enter "<Claim Type Value>" into the "Claim Type" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Authorization Templates" page I should see the "Process Completed" image
		And the test pauses for "30" seconds
		And I press "F8"
		And the test pauses for "30" seconds
		And I press "F8"
		And the test pauses for "30" seconds
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Authorized Services" page I click on the "Template Number Link" image
		And the test pauses for "30" seconds
		And in the "Auth Template Lookup" page I click on the "Test Radio Button" image
		And the test pauses for "30" seconds
		And in the "Auth Template Lookup" page I click on the "Return Lookup Values" image
		And the test pauses for "30" seconds
		And in the "Template Record" page I enter "Y" into the "Do You Want This Record" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		#And in the "Authorized Services" page I should not see the "Template Number With Test Text" image
		And in the "Authorized Services" page I enter "01/01/2014" into the "Dates 1 Requested" image
		And I press "Control + S"
	Then in the "Authorized Services" page I should see the "Process Completed" image
		And in the "Authorized Services" page I click on the "Template Number Link" image
		And the test pauses for "30" seconds
		And in the "Auth Template Lookup" page I click on the "Test Radio Button" image
		And in the "Auth Template Lookup" page I click on the "Template" image
		And the test pauses for "30" seconds
		And in the "Authorization Templates" page I click on the "Delete" image
		And the test pauses for "30" seconds
		And in the "Authorization Templates" page I click on the "OK Button" image
		And the test pauses for "30" seconds
		And I press "F8"
		And the test pauses for "30" seconds
		And I press "F8"
		And the test pauses for "30" seconds
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Examples:
	| Claim Type Value		|
	| D							|
	| H							|
	| M							|

	Scenario: 2.3 Authorization Number
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00005271001" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
	Then in the "Certification" page I should see the "Auth Number" element which is not empty
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Scenario: 2.4.1 Enter an Authorization Request Receipt Date Type & 2.4.3 Enter Initial Date
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "01/01/2014" into the "Req Dates 1" field
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "01/02/2014" into the "Initial Date" field
		And in the "Certification" page I enter "01/03/2014" into the "Accident Date" field
		And in the "Certification" page I enter "501" into the "Admit Diag Dt 1" field
		And in the "Certification" page I enter "01/04/2014" into the "Admit Diag Dt 3" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "01/05/2014" into the "Primary Diag Dt 3" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
	Then in the "Certification" page I should see the "Req Dates 1" element with a value of "01/01/2014"
		And in the "Certification" page I should see the "Initial Date" element with a value of "01/02/2014"
		And in the "Certification" page I should see the "Accident Date" element with a value of "01/03/2014"
		And in the "Certification" page I should see the "Admit Diag Dt 3" element with a value of "01/04/2014"
		And in the "Certification" page I should see the "Primary Diag Dt 3" element with a value of "01/05/2014"
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Scenario: 2.4.2 Enter Effective Dates and End Dates & 2.4.4 Enter Decision Date
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Authorized Svcs"
		And the test pauses for "30" seconds
		And in the "Authorized Services" page I enter "01/06/2014" into the "Dates 1 Requested" image
		And in the "Authorized Services" page I enter "01/07/2014" into the "Dates 2 Requested" image
		And in the "Authorized Services" page I enter "01/08/2014" into the "Dates 1 Authorized" image
		And in the "Authorized Services" page I enter "01/09/2014" into the "Dates 2 Authorized Text Entered 2" image
		And in the "Authorized Services" page I enter "H" into the "Claim Type" image
		And in the "Authorized Services" page I enter "01/10/2014" into the "Phys Approv Date" image
		And in the "Authorized Services" page I enter "01/11/2014" into the "Transfer Date" image
		And in the "Authorized Services" page I enter "01/12/2014" into the "Reviewed By Date" image
		And in the "Authorized Services" page I enter "01/13/2014" into the "Denial Effective Date" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Authorized Services" page I should see the "Full Authorized Services Window" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario: 2.4.5 Enter Review Date
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
		And in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "01/14/2014" into the "Est Admit" image
		And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Att Prov Number 1" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Admit ID Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Ref Prov Number 1" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And in the "Hospital Services" page I enter "01/15/2014" into the "Next Review Populated" image
		And I press "Control + S"
		And the test pauses for "10" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario: 2.5.1.1 Search for Member From a Valid Identification Number and Attach Authorization
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I click on "Member Number Link"
		And the test pauses for "30" seconds
		And in the "Member Inquiry" page I enter "00000224901" into the "Member Number" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Inquiry" page I click on the "Maeola Hughes Selection" image
		And in the "Member Inquiry" page I click on the "Return Lookup Values" image
		And the test pauses for "30" seconds
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
		And in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "01/01/2014" into the "Est Admit" image
		And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Att Prov Number 1" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Admit ID Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Ref Prov Number 1" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "10" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario: 2.5.1.2 Search for Member From a Valid Identification Name and Attach Authorization
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I click on "Member Number Link"
		And the test pauses for "30" seconds
		And in the "Member Inquiry" page I enter "Maeola Hughes" into the "Name" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Inquiry" page I click on the "Maeola Hughes Selection" image
		And in the "Member Inquiry" page I click on the "Return Lookup Values" image
		And the test pauses for "30" seconds
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "01/01/2014" into the "Est Admit" image
		And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Att Prov Number 1" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Admit ID Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Ref Prov Number 1" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "10" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario: 2.5.1.3 Search for Member From a Valid Date of Birth and Attach Authorization
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I click on "Member Number Link"
		And the test pauses for "30" seconds
		And in the "Member Inquiry" page I enter "00000224901 " into the "Member Number" image
		And in the "Member Inquiry" page I enter "9/3/1931" into the "DOB" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Inquiry" page I click on the "Maeola Hughes Selection" image
		And in the "Member Inquiry" page I click on the "Return Lookup Values" image
		And the test pauses for "30" seconds
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
		And in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "01/01/2014" into the "Est Admit" image
		And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Att Prov Number 1" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Admit ID Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Ref Prov Number 1" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario Outline: 2.6 Source of Authorization
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And the test pauses for "30" seconds
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Certification" page I enter "141218000102" into the "Auth Number" field
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Certification" page I enter "<Source Type>" into the "Source" field
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Certification" page I should see the "Source" element with a value of "<Source Type>"
		And the test pauses for "30" seconds
		And in the "Certification" page I enter "MN" into the "Source" field
		And I press "Control + S"
		And the test pauses for "30" seconds

	Examples:
	| Source Type			|
	| C4					|
	| CV  					|
	| FX					|
	| HS					|
	| ML					|
	| MN					|
	| SX					|
	| PH					|
	| QC					|


	Scenario: 2.7 Multiple Diagnosis
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "435" into the "Admit Diag Dt 1" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Certification" page I should see the "Admit Diag Dt 2" element with a value of "TRANSIENT CEREB ISCHEMIA"
		And in the "Certification" page I should see the "Primary Diag Dt 2" element with a value of "CVA"
	When in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "01/15/2014" into the "Est Admit" image
		And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Att Prov Number 1" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Admit ID Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Ref Prov Number 1" image
		And in the "Hospital Services" page I enter "437" into the "Diag Number 4" image
		And in the "Hospital Services" page I enter "438" into the "Diag Number 5" image
		And in the "Hospital Services" page I enter "440" into the "Diag Number 6 Information Entered" image
		And in the "Hospital Services" page I enter "441" into the "Diag Number 7 Information Entered" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Scenario: 2.8 Multiple Providers
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "01122015" into the "Est Admit" image
		And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Att Prov Number 1" image
		And in the "Hospital Services" page I enter "929900" into the "Admit ID Number" image
		And in the "Hospital Services" page I enter "999999      0003" into the "Ref Prov Number 1" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario Outline: 2.9 Type of Care
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "<Authorized or Outpatient>"
		And the test pauses for "30" seconds
		And in the "Authorized Services" page I enter "M" into the "Claim Type" image
		And in the "Authorized Services" page I enter "01/01/2014" into the "Dates 1 Requested" image
		And in the "Authorized Services" page I enter "AC" into the "Treat Type" image
		And in the "Authorized Services" page I enter "SV" into the "Avoidance" image
		And in the "Authorized Services" page I enter "5" into the "Days" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Authorized Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Examples:
	| Authorized or Outpatient		|
	| Authorized Svcs				|
	| Outpatient Svcs				|


	Scenario Outline: 2.10 Decrement Type
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "<Authorized or Outpatient>"
		And the test pauses for "30" seconds
		And in the "Authorized Services" page I enter "2" into the "How Many Requested" image
		And in the "Authorized Services" page I enter "1" into the "How Many Authorized" image
		And in the "Authorized Services" page I enter "M" into the "Claim Type" image
		And in the "Authorized Services" page I enter "01/01/2014" into the "Dates 1 Requested" image
		And in the "Authorized Services" page I enter "01" into the "Count" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Authorized Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Examples:
	| Authorized or Outpatient	|
	| Authorized Svcs				|
	| Outpatient Svcs				|


	Scenario Outline: 2.11 Assign Categories of Services to an Authorization
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And in the "Certification" page I enter "<EX Code>" into the "EX" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Certification" page I should see the "EX" element with a value of "<EX Code>"
		And in the "Certification" page I should see the "Status" element with a value of "<Status Number>"
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Examples:
	| EX Code			| Status Number				|
	| 11				| 11						|
	| 49				| 11						|
	| 05				| 11						|
	| 22				| 11						|
	| AM				| 11						|


	Scenario Outline: 2.12 Authorization Status
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And in the "Certification" page I enter "<EX Code>" into the "EX" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Certification" page I should see the "EX" element with a value of "<EX Code>"
		And in the "Certification" page I should see the "Status" element with a value of "<Status Number>"
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Examples:
	| EX Code		| Status Number	|
	| MA				| 41						|
	| MN				| 11						|
	| 1P				| 11						|
	| XV				| 51						|

	Scenario: 2.12.5 Assign a Closed Status
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And in the "Functions Menu" page I click on "Close"
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Close"
	Then in the "Certification" page I should see the "Error Message" element with a value of ""
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario Outline: 2.13 Payment Status
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And in the "Certification" page I enter "<EX Code>" into the "EX" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Certification" page I should see the "EX" element with a value of "<EX Code>"
		And in the "Certification" page I should see the "Status" element with a value of "<Status Number>"
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Examples:
	| EX Code		| Status Number	|
	| M8				| 11						|
	| IT				| 41						|
	| ML				| 11						|
	| AD				| 51						|


	Scenario: 2.14 Assign To Case Manager
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Authorized Svcs"
		And the test pauses for "30" seconds
		And in the "Authorized Services" page I enter "M" into the "Claim Type" image
		And in the "Authorized Services" page I enter "01/01/2014" into the "Dates 1 Requested" image
		And in the "Authorized Services" page I enter "1" into the "Days" image
		And in the "Authorized Services" page I enter "MCLU" into the "Coord Number" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Authorized Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario: 2.15 Case Rate for an SNF
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "01/02/2014" into the "Est Admit" image
		And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		And in the "Hospital Services" page I enter "BA1" into the "Proc Number 4" image
		And in the "Hospital Services" page I enter "10000" into the "Auth Amt" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario: 2.16 RUG Score
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "01/02/2014" into the "Est Admit" image
		And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		And in the "Hospital Services" page I enter "AAA" into the "Proc Number 4" image
		And in the "Hospital Services" page I enter "10000" into the "Auth Amt" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	#Scenario: 2.17 Discharge Status
	#Given I sign in to the application
	#When in the "Home" page I click on "Authorizations/Medical Management"
		#And in the "Authorizations Medical Management" page I click on "Certification"
		#And I press "Control + N"
		#And in the "Certification" page I enter "00008800701" into the "Member Number" field
		#And in the "Certification" page I enter "MN" into the "Source" field
		#And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		#And in the "Certification" page I enter "SN" into the "Auth Type" field
		#And I press "Control + S"
		#And the test pauses for "30" seconds
		#And in the "Functions Menu" page I click on "Hospital Svcs"
		#And the test pauses for "30" seconds
		#And in the "Hospital Services" page I enter "01/02/2014" into the "Est Admit" image
		#And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		#And in the "Hospital Services" page I enter "00142" into the "Proc Number 1" image
		#And in the "Hospital Services" page I enter "10000" into the "Auth Amt" image
		#And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		#And I press "Control + S"
		#And the test pauses for "30" seconds
		#And I press "F8"
		#And the test pauses for "30" seconds
		#And in the "Functions Menu" page I click on "Authorized Svcs"
		#And the test pauses for "30" seconds
		#And in the "Authorized Services" page I enter "M" into the "Claim Type" image
		#And in the "Authorized Services" page I enter "01/01/2014" into the "Dates 1 Requested" image
		#And I press "Control + S"
		#And in the "Authorized Services" page I click on the "Discharge Sum" image
		#And the test pauses for "30" seconds
		#remove this next line after fixed
		#And in the "Authorized Services" page I should see the "Discharge Summary Header" image
		#And in the "Discharge Summary" page I enter "09" into the "Status at Discharge" image
		#And I press "Control + S"
	#Then in the "Discharge Summary" page I should see the "Admitted as Inpatient Text" image
		#And I press "F8"
		#And the test pauses for "30" seconds
		#And in the "Functions Menu" page I click on "Void"
		#And the test pauses for "30" seconds
		#And I press "Control + S"


	Scenario: 2.18 Authorized Dollar Amount
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "SN" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "01/02/2014" into the "Est Admit" image
		And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		And in the "Hospital Services" page I enter "9999" into the "Est Amt" image
		And in the "Hospital Services" page I enter "10000" into the "Auth Amt" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Scenario: 3.1 Updating Existing Authorization
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Certification" page I save the value of the "Auth Number" element as "STORED_VALUE(1)"
		And I navigate to the Home page
		And in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + F"
		And in the "Certification" page I enter "=STORED_VALUE(1)" into the "Auth Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Certification" page I enter "437" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "FX" into the "Source" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Certification" page I should see the "Primary Diag Dt 2" element with a value of "OTHER CEREBROVASC DISEASE"
		And in the "Certification" page I should see the "Error Message" element with a value of "Process Completed. No detail records exist for this authorization."
		And in the "Certification" page I should see the "Source" element with a value of "FX"
		And in the "Certification" page I should see the "Auth Type" element with a value of "OB"
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Scenario: 3.2 Authorization Termination
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Close"
	Then in the "Certification" page I should see the "Closed Auth" image
		And in the "Functions Menu" page I click on "Open Auth"
		And in the "Certification" page I should see the "Req Dates 4" element which is empty
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Scenario: 3.3 Voiding Authorizations
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Certification" page I should see the "Error Message" element with a value of "Process Completed. Information: Certification is void. No detail records exist for this authorization."

	Scenario: 3.4 Authorization Reinstatement
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Close"
	Then in the "Certification" page I should see the "Closed Auth" image
		And in the "Functions Menu" page I click on "Open Auth"
		And in the "Certification" page I should see the "Req Dates 4" element which is empty
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario: 3.5 Reinstating Authorizations
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Certification" page I should see the "Error Message" element with a value of "Process Completed. Information: Certification is void. No detail records exist for this authorization."


	Scenario: 4.1 Quality of Care
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Remarks"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And in the "Remarks Maintenance" page I enter "This is a test Remark Summary" into the "Remark Summary" image
		And in the "Remarks Maintenance" page I enter "This is a test Remark Text" into the "Remark Text 1" image
		And I press "Control + S"
		And in the "Remarks Maintenance" page I click on the "Append" image
		And the test pauses for "10" seconds
		And in the "Remarks Maintenance" page I click on the "Append" image
		And in the "Remarks Maintenance" page I enter "This is a test appended Remark Text" into the "Remark Text 2" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Remarks Maintenance" page I should see the "Process Completed" image
		And in the "Remarks Maintenance" page I should see the "Completed Remark Summary" image
		And in the "Remarks Maintenance" page I click on the "Delete" image
		And in the "Remarks Maintenance" page I click on the "OK Popup" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Scenario: 5.0 Authorization History
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "01122015" into the "Est Admit" image
		And in the "Hospital Services" page I enter "935257      0003" into the "Facility Number" image
		And in the "Hospital Services" page I enter "922054      0001" into the "Att Prov Number 1" image
		And in the "Hospital Services" page I enter "929900" into the "Admit ID Number" image
		And in the "Hospital Services" page I enter "999999      0003" into the "Ref Prov Number 1" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "10" seconds
		And I press "F8"
		And the test pauses for "30" seconds
	#Then in the "Hospital Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

Scenario: 6.0 Remarks
Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "OB" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Remarks"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And in the "Remarks Maintenance" page I enter "This is a test Remark Summary" into the "Remark Summary" image
		And in the "Remarks Maintenance" page I enter "This is a test Remark Text" into the "Remark Text 1" image
		And I press "Control + S"
		And in the "Remarks Maintenance" page I click on the "Append" image
		And in the "Remarks Maintenance" page I click on the "Append" image
		And in the "Remarks Maintenance" page I enter "This is a test appended Remark Text" into the "Remark Text 2" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Remarks Maintenance" page I should see the "Process Completed" image
		And in the "Remarks Maintenance" page I should see the "Completed Remark Summary" image
		And in the "Remarks Maintenance" page I click on the "Delete" image
		And in the "Remarks Maintenance" page I click on the "OK Popup" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario: 7.0 Authorization History
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00008800701" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And I press "Control + S"
		And the test pauses for "30" seconds

		# enter three progress notes

		And in the "Functions Menu" page I click on "Progress Notes"
		And the test pauses for "30" seconds
		And in the "Progress Notes" page I enter "This is a test progress note 1" into the "Text Field Blank" image
		And the test pauses for "10" seconds
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Progress Notes" page I click on the "Append" image
		And the test pauses for "30" seconds
		And in the "Progress Notes" page I enter "This is a test progress note 2" into the "Text Field Blank" image
		And the test pauses for "10" seconds
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Progress Notes" page I click on the "Append" image
		And the test pauses for "30" seconds
		And in the "Progress Notes" page I enter "This is a test progress note 3" into the "Text Field Blank" image
		And the test pauses for "10" seconds
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Progress Notes" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Scenario Outline: 8.0 Associate Authorizations With Hospital Claims
	#this test checks all valid authorization codes including inpatient, outpatient, and professional services
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00005300901" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "<Diagnosis Code>" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "<Authorization Type>" into the "Auth Type" field
		And I press "Control + S"
	Then in the "Certification" page I should see the "Error Message" element with a value of "Process Completed. No detail records exist for this authorization."
	Given in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And in the "Hospital Services" page I enter "<Est Admit Date>" into the "Est Admit" image
		And in the "Hospital Services" page I enter "<Facility Number>" into the "Facility Number" image
		And in the "Hospital Services" page I enter "<Provider Number>" into the "Att Prov Number 1" image
		And in the "Hospital Services" page I enter "<Provider Number>" into the "Admit ID Number" image
		And in the "Hospital Services" page I enter "<Provider Number>" into the "Ref Prov Number 1" image
		And in the "Hospital Services" page I enter "1" into the "Auth Days" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Hospital Services" page I should see the "Process Completed" image
	Given I press "F8"
	When the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Authorized Svcs"
		And the test pauses for "30" seconds
		And in the "Authorized Services" page I enter "<Est Admit Date>" into the "Dates 1 Requested" image
		And in the "Authorized Services" page I enter "<Claim Type Value>" into the "Claim Type" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Authorized Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"


	Examples:
	  | Authorization Type 					| Claim Type Value				| Est Admit Date		| Diagnosis Code					| Facility Number				| Provider Number					|
	  | IP									| H								| 01/30/2014			| 1710    							| 935257      0003				| 933610      0001					|
	  | OP									| H								| 01/30/2014			| 1710    							| 935257      0003				| 933610      0001					|
	  | SN									| H								| 01/30/2014			| 1710    							| 935257      0003				| 933610      0001					|
	  | OB									| H								| 01/30/2014			| 1710    							| 935257      0003				| 933610      0001					|



	Scenario Outline: 8.0+ Associate Authorizations With Medical Claims
	#this test checks all valid authorization codes including inpatient, outpatient, and professional services
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00005300901" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "<Diagnosis Code>" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "<Authorization Type>" into the "Auth Type" field
		And I press "Control + S"
	Then in the "Certification" page I should see the "Error Message" element with a value of "Process Completed. No detail records exist for this authorization."
		And in the "Functions Menu" page I click on "Outpatient Svcs"
		And the test pauses for "30" seconds
		And in the "Authorized Services" page I enter "<Est Admit Date>" into the "Dates 1 Requested" image
		And in the "Authorized Services" page I enter "<Claim Type Value>" into the "Claim Type" image
		And I press "Control + S"
	Then in the "Authorized Services" page I should see the "Process Completed" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Examples:
	  | Authorization Type 					| Claim Type Value				| Est Admit Date		| Diagnosis Code					| Facility Number				| Provider Number			|
	  | OP									| M								| 01/30/2014			| 1710								| 935257      0003				| 921534					|
	  | SN									| M								| 01/30/2014			| 1710								| 935257      0003				| 921534					|

	Scenario Outline: 9.0 Pend and Deny Claims by Auth
	#this test checks all valid authorization codes including inpatient, outpatient, and professional services
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And in the "Certification" page I enter "00005300901" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "436" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "IP" into the "Auth Type" field
		And in the "Certification" page I enter "<EX Codes>" into the "EX" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Certification" page I should see the "Error Message" element with a value of "Process Completed. No detail records exist for this authorization."

	Then in the "Authorized Services" page I should see the "Process Completed" image
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds
		And I press "Control + S"

	Examples:
	  | EX Codes					|
	  |	AD							|
	  |	57							|
	  |	W4							|
	  |	WG							|
	  |	XV							|
	  |	B6							|
	  |	MB							|
	  |	E1							|
	  |	E3							|
	  |	E4							|
