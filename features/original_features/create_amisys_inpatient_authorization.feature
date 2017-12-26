
Feature: Create Amisys Inpatient Authorization

	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

	Scenario Outline: Inpatient
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations / Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + N"
		And the test pauses for "5" seconds
		And in the "Certification" page I enter "<Auth_Requested_Date>" into the "Req Dates" field
		And in the "Certification" page I enter "<Member_ID>" into the "Member Number" field
		And in the "Certification" page I enter "MN" into the "Source" field
		And in the "Certification" page I enter "<Diagnosis_Code>" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "<Service_Code>" into the "Primary Proc Number 1" field
		And in the "Certification" page I use "<Determination>" to determine what to enter into the "EX" field
		And in the "Certification" page I use the sub class "<Sub_Class>" to determine what to enter into the "Auth Type" field
		And I press "Control + S"
	 	And the test pauses for "5" seconds

		And in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "5" seconds
		And in the "Hospital Services" page I enter "<Auth_Requested_Date>" into the "Est Admit" field
		And in the "Hospital Services" page I enter "<Servicing_Provider_ID>" into the "Facility Number" field
		And in the "Hospital Services" page I enter "<Requesting_Provider_ID>" into the "Ref Prov Number" field
		And in the "Hospital Services" page I enter "<Auth_Approval_Days>" into the "Auth Days" field
		# can't tell admit type (emergent, elective) from essette export at the moment
		#And in the "Hospital Services" page I enter "<>" into the "Admit Type" field
		And in the "Hospital Services" page I enter "<Sub_Class_Code>" into the "Auth Type AR" field
		And I press "Control + S"
		And the test pauses for "5" seconds
		And I press "F8"

		And in the "Functions Menu" page I click on "Authorized Svcs"
		And the test pauses for "5" seconds
		And I access the new window
		And the test pauses for "10" seconds
		And in the "Authorized Services" page I should see the "How Many Requested" element
		And in the "Authorized Services" page I enter "<Qty_Reqd>" into the "How Many Requested" field
		And in the "Authorized Services" page I enter "<Qty_Appr>" into the "How Many Authorized" field
		And in the "Authorized Services" page I enter "<Auth_Requested_Date" into the "Dates Begin Requested" field
		And in the "Authorized Services" page I enter "<Servicing_Provider_ID>" into the "Prov" field
		And in the "Authorized Services" page I enter "H" into the "Claim Type CP" field
		# count may need to be adjusted by variable data
		And in the "Authorized Services" page I enter "AD" into the "Count CT" field
		And in the "Authorized Services" page I enter "21" into the "Location LC" field
		And I press "Control + S"
		And the test pauses for "5" seconds
		And I press "F8"
		And there is a "30" second pause

		And I logout of the application

		Examples:
	|Requested_Date_Time                   | Other_Reference_Number | Member_ID    | Member_First_Name | Member_Last_Name | Facility                           | Requesting_Provider_ID | Requesting_Provider_First_Name | Requesting_Provider_Last_Name | Requesting_Provider_NPI | Facility                            | Servicing_Provider_ID | Provider_Facility_NPI | Servicing_Provider_Name  | Servicing_Provider_NPI| Sub_Class       | Sub_Class_Code | Type            | Type_Code      | Servicing_Provider_First_Name | Servicing_Provider_Last_Name | Auth_Type        | Auth_Status | Auth_Number   | Diagnosis_Code   | Diagnosis                     |
	| 2016-09-08T15:18:14+00:00            |                        | 00006539101  |VIOLA              |FLOWERS           |WORTHINGTON OPTHALMOLOGY            |931462.0                |TRENT D                         |ALBRIGHT                       |1861708315               |TIFFIN EMERGENCY SERVICES            |900702 0001            |                       |TIFFIN EMERGENCY SERVICES |                       |Inpatient        |IP              |Pre-Service      |PRE             |                               |TIFFIN EMERGENCY SERVICES     | Pre-Service      |Approved     |A160908002     |M54.5             |Low back pain                  |
