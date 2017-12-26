
Feature: Create 278 Authorization

	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

	Scenario: Outpatient
	Given I sign in to the application
	And the test pauses for "5" seconds
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And the test pauses for "10" seconds
		And I press "Control + N"
		And the test pauses for "10" seconds

		And in the "Certification" page I enter "<Requested_Date_Time>" into the "Req Dates 1" field
		And in the "Certification" page I enter "<Member_ID>" into the "Member Number" field
		And in the "Certification" page I enter "HH" into the "Source" field
		And in the "Certification" page I enter "<Diagnosis_Code>" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "<Service_Code>" into the "Primary Proc Number 1" field
		# EX field changes depending on what type of auth is being entered
		And in the "Certification" page I enter "07" into the "EX" field
		And in the "Certification" page I enter "<Sub_Class_Code>" into the "Auth Type" field
		And I press "Control + S"
	 	And the test pauses for "5" seconds

		And in the "Functions Menu" page I click on "Authorized Svcs"
		And the test pauses for "5" seconds
		And I access the new window
		And the test pauses for "10" seconds
		And I access the new window
		And the test pauses for "5" seconds
		And in the "Authorized Services" page I should see the "How Many Requested" element
		And in the "Authorized Services" page I enter "<Qty_Reqd>" into the "How Many Requested" field
		And in the "Authorized Services" page I enter "<Qty_Appr>" into the "How Many Authorized" field
		And in the "Authorized Services" page I enter "<Auth_Requested_Date>" into the "Dates Begin Requested" field
		#And in the "Authorized Services" page I enter "<Requesting_Provider_ID>" into the "Ref Prov Number" field
		And in the "Authorized Services" page I enter "<Servicing_Provider_ID>" into the "Prov" field
		# This will always be M for medical because it's outpatient
		And in the "Authorized Services" page I enter "M" into the "Claim Type CP" field
		# Not sure how to determine which count
		And in the "Authorized Services" page I enter "TB" into the "Count CT" field
		# similar to above
		And in the "Authorized Services" page I enter "21" into the "Location LC" field
		And the test pauses for "10" seconds
		And I press "Control + S"
		And the test pauses for "10" seconds
		And I press "Control + S"
		And the test pauses for "10" seconds
		And I press "F8"
		And the test pauses for "30" seconds
		#And I click "OK" in the popup if it exists
