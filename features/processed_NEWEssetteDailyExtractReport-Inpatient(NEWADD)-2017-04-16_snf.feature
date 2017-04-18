Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-16_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-16_SNF
Given I save the auth class "<auth_class>" to a variable
Given I use "<care_date>" to determine the start and end dates and authorized days
Given I sign in to the application
When in the "Home" page I click on "Authorizations/Medical Management"
And the test pauses for "3" seconds
And in the "Authorizations Medical Management" page I click on "Certification"
And the test pauses for "10" seconds
And in the "Certification" page I should see the "Initial Date" element
And I press "Control + N"
And in the "certification" page I should see the "red_and_yellow_boxes" image
And the test pauses for "3" seconds
And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
And in the "Certification" page I enter "<member_id>" into the "Member Number" field
And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
And the test pauses for "1" seconds
And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
And the test pauses for "2" seconds
And in the "certification" page I use the SNF auth status "<status>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And I press "Control + S"
And the test pauses for "3" seconds

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter the first SNF date into the "est_admit" image

	#And in the "hospital_services" page I enter the total SNF days into the "auth_days" image
	And in the "hospital_services" page I enter "365" into the "auth_days" image

	And in the "hospital_services" page I enter "$" into the "facility_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
	And I press ENTER graphically
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I determine whether something is PAR or NONPAR
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<practice_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter the first SNF date into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_requested" image
	And the test pauses for "2" seconds
  And in the "authorized_services" page I enter the first SNF date into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_authorized" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "Control + N"
	And the test pauses for "5" seconds
	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter the first SNF date into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_requested" image
	And the test pauses for "2" seconds
  And in the "authorized_services" page I enter the first SNF date into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_authorized" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "H" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

	And I input the ACO type and payment if any are contained in "<aco_type_and_payment>"
	And I input the EIS AA if any are contained in "<eis_aa>"
	And I input the first SNF assessments if any are contained in "<adm>" "<auth_for_payment>" "<days_used_prior>"
	And I input the second SNF assessments if any are contained in "<dc>" "<denc_date>" "<mds_date>"
	And I input the third SNF assessments if any are contained in "<nomnc_date>" "<total_days>" "<total_skilled_days>"

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

		Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 02062017 | 2017-02-06T08:03:14+00:00 |  | 000087784-01 | Edna | Nierman | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 04142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02032017 | 04052017 | Standard |  |  | 2017-02-03 | Contract/RUG: 17/RVX  Per Diem: $200.00/day x 42 SNF Days = $8,400.00(Per MDS) = $ 6,171.24 Total Payment: $ 14,571.24 | 10 | 2017-04-06 |  | 2017-04-11 | 2017-04-11 | 62 | 72 | Concurrent Review | Approved | A170206080 | E46 | Unspecified protein-calorie malnutrition | ICD10 | 04142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 62 | Revenue | RV | Received per diem request but no update on the Task/Update Summary. Called Gina Harris at SNF. Updated on the above.  She will update form and re fax information to MediGold., Reviewed per diem request that was faxed. Called Gina at facility to discuss member's case. Gina informed that member's NG was taken out on 03/09/2017 and had a new peg tube placement completed the same day. Presently  having problems with nausea and water is the only order at present for the peg tube., S/P fall on 03/21/2017 due to pt trying to self transfer. Called SNF., Spoke with Gina. She informed no injury from fall. Completed a correspondence to quality due to s/p fall., DC info NOMNC MDS with RUG RVX10 received | 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017, 03282017, 03292017, 03302017, 03312017, 04012017, 04022017, 04032017, 04042017, 04052017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 |
| 02242017 | 2017-02-24T09:44:03+00:00 |  | 000008455-01 | MARY | BARRY | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | YORKLAND HEALTH CARE INC | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | YORKLAND HEALTH CARE INC | 04142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02232017 | 03082017 | Standard |  |  | 2017-02-23 | . 16/RUB01 (per MDS) = $4429.71 TOTAL PAYMENT: $4429.71 | 0 | 2017-03-09 |  | 2017-04-12 | 2017-04-12 | 14 | 14 | Concurrent Review | Approved | A170224069 | I259, M6281 | Muscle weakness (generalized) | ICD10 | 04142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP | DC info NOMNC MDS with RUG RUB10 received | 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , , , , ,  | 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14 |
| 03102017 | 2017-03-10T13:17:28+00:00 |  | 000028429-01 | SOPHIE | DAVIS | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 04142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03092017 | 03212017 | Standard |  |  | 2017-03-09 | . 17?RUB01 (per MDS) = $5813.99 TOTAL PAYMENT: $5813.99 | 0 | 2017-03-22 | 2017-03-22 | 2017-03-22 | 2017-03-22 | 13 | 13 | Concurrent Review | Approved | A170310075 | M12811 | Oth specific arthropathies, NEC, right shoulder | ICD10 | 04142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP | KEPRO fax for records received, DC info NOMNC DENC MDS with RUG RUB10 received, Late Entry:, KEPRO FTA filed 3/17/17 and notification rcvd that FTA was upheld on 3/21/17., 2nd level appeal requested 3/21/17 and upheld 3/23/17  LCD remains 3/21/17 | 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017, 03282017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , , , , , ,  | 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13 |
| 03222017 | 2017-03-22T11:27:36+00:00 |  | 000021748-01 | JANETTA | GILLARD | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | GUARDIAN ELDER CARE OF COLS | 923938 | 1386994671 | GUARDIAN ELDER CARE OF COLS | 1386994671 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GUARDIAN ELDER CARE OF COLS | 04142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03212017 | 03292017 | Standard |  |  | 2017-03-21 | Contract/RUG: 17/RUC01    (PER MDS) = $6,049.81 | 0 | 2017-03-30 |  | 2017-04-11 | 2017-03-29 | 9 | 9 | Concurrent Review | Approved | A170323128 | G4089 | Other seizures | ICD10 | 04142017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP | per Christy in Medical Records  DX: G40.89; physician: Kenneth Writesel, NOMNC received, Spoke with Dawna at facility to request MDS sections G  O and Z and the D/C checklist to be sent in order to close out auth., NOMNC MDS with RUG RUC10 received | 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017, 03282017, 03292017, 03302017, 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , , , , , , , , , , ,  | 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 |
| 03242017 | 2017-03-24T08:53:00+00:00 |  | 000033770-01 | LUISITO | TOLENTINO | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 04142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03232017 | 03302017 | Standard |  |  | 2017-03-23 | Contract/RUG:  16/RUB01   (PER MDS) = $4,429.71 | 0 | 2017-03-31 |  | 2017-04-11 | 2017-03-30 | 8 | 8 | Concurrent Review | Approved | A170327035 | M6282 | Rhabdomyolysis | ICD10 | 04142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP | Spoke with Stacy Keller to request needed information not provided on second page of notification. Unable to provide at time of call., DC info NOMNC received, Spoke with Stacy Keller at this time to request MDS sections G  O and Z to close out auth., MDS with RUG RUB10 received | 03232017, 03242017, 03252017, 03262017, 03272017, 03282017, 03292017, 03302017, 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , , , , , , , , , , ,  | 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 |
| 04102017 | 2017-04-10T17:10:50+00:00 |  | 000018501-01 | RONALD | ROSEN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 04142017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170412099 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | KEPRO request for records received, Letter is written in appropriate language with no abbreviations and is therefore approved., Received notification of expedited appeal. Case discussed with medical director Dr. Greg Wise. Case was approved on 4/14/2017 @ 13:58:20 EST., facility notified that the denial was overturned | 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04122017 | 2017-04-12T13:53:21+00:00 |  | 000098636-01 | Sheila | Smith | CENTRAL OHIO NP SERVICES | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN NEW ALBANY LLC | 944058 | 1407262165 | OTTERBEIN NEW ALBANY LLC | 1407262165 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN NEW ALBANY LLC | 04142017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170413011 | R569 | Unspecified convulsions | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | FS received | 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017, 04272017, 04282017, 04292017, 04302017, 05012017, 05022017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04122017 | 2017-04-12T16:22:00+00:00 |  | 000117157-01 | MINNIE | SLONE | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 04142017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170413033 | S82842D | Displ bimalleol fx l low leg, subs for clos fx w routn heal | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017, 04272017, 04282017, 04292017, 04302017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T08:19:03+00:00 |  | 000044934-01 | JOHN | ECOS | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 04142017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170413037 | I4891, I5033, J189, N179 | Acute kidney failure, unspecified | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T09:45:38+00:00 |  | 000081840-01 | Betty | Meuser | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 04142017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170413038 | R296 | Repeated falls | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | MDS with RUG RVB60 received, received MDS with no case; spoke with Kristen  she will fax with transmittal; member admitted on 3/24 went out to the hospital on 4/6 and returned to the facility on 4/11/17, Spoke with Kristen Parker from facility secondary to incomplete initial notification. MBR requires mod A for toileting and requires set up assistance for eating. | 03242017, 03252017, 03262017, 03272017, 03282017, 03292017, 03302017, 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , , , , , Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T10:35:58+00:00 |  | 000003752-01 | DELORIS | IVERS | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 04142017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170413052 | L89304, M069 | Rheumatoid arthritis, unspecified | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T12:06:24+00:00 |  | 000110134-01 | Alice | Greenlee | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | LP WASHINGTON CH LLC | 930093 | 1063846020 | LP WASHINGTON CH LLC | 1063846020 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LP WASHINGTON CH LLC | 04142017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170413061 | M6281, N390 | Urinary tract infection, site not specified | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017, 04272017, 04282017, 04292017, 04302017, 05012017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T12:20:51+00:00 |  | 000089512-01 | Bruce | Lee | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 04142017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170414002 | Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | per Amy  physician is Aijaz Ahmed, DC info NOMNC MDS with RUG RVA60 received | 03302017, 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T12:31:43+00:00 |  | 000110171-01 | RALPH | SMITH | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 04142017 | Interim Approval | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170414007 | A419, G373, Z48815, Z9049 | Acquired absence of other specified parts of digestive tract | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017, 04272017, 04282017, 04292017, 04302017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T13:22:59+00:00 |  | 000080598-01 | Rosa | Crowe | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 04142017 | Interim Approval | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170414013 | K5780 | Dvtrcli of intest, part unsp, w perf and abscess w/o bleed | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017, 04272017, 04282017, 04292017, 04302017, 05012017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T13:58:52+00:00 |  | 000110200-01 | CECIL | JORDAN | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | HIGHLAND OAKS HEALTH CENTER | 934015 | 1083929186 | HIGHLAND OAKS HEALTH CENTER | 1083929186 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HIGHLAND OAKS HEALTH CENTER | 04142017 | Interim Approval | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170414015 | S82201D, S82401D | Unsp fx shaft of r fibula, subs for clos fx w routn heal | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017, 04272017, 04282017, 04292017, 04302017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T15:03:00+00:00 |  | 000065057-01 | LINDA | CECIL | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 04142017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170414020 | J209 | Acute bronchitis, unspecified | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017, 04272017, 04282017, 04292017, 04302017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T15:54:19+00:00 |  | 000005242-01 | WINONA | ROBERTS | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 04142017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170414022 | I6990 | Unspecified sequelae of unspecified cerebrovascular disease | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017, 04272017, 04282017, 04292017, 04302017, 05012017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T17:03:23+00:00 |  | 000054475-01 | Thomas | Keane | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 04142017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170414028 | I4891, I8290, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017, 04272017, 04282017, 04292017, 04302017, 05012017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04132017 | 2017-04-13T17:09:27+00:00 |  | 000060382-01 | ALICE | TUVELLE | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 04142017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170414035 | F329, F419, I10, M4806 | Spinal stenosis, lumbar region | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017, 04272017, 04282017, 04292017, 04302017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04142017 | 2017-04-14T14:30:55+00:00 |  | 000037887-01 | Philip | Hutchinson | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 04142017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170414072 | D649, I714, I82621, J850 | Gangrene and necrosis of lung | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04142017 | 2017-04-14T15:08:56+00:00 |  | 000085052-01 | Loretta | Wolfe | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 04142017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170414076 | K567 | Ileus, unspecified | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
