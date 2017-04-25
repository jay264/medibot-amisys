Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-05_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-05_SNF
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
| 02022017 | 2017-02-02T14:14:09+00:00 |  | 000077415-01 | DOROTHY | MARTIN | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 04052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01312017 | 03162017 | Standard |  |  | 2017-01-31 | 20 DAY CASE RATE OF 16/RVC01=$4429.71 16 DAYS @ $200/DAY FOR 2 THERAPIES=$3200.00 TOTAL;$7629.71  FOR 36 TOTAL DAYS HOSP STAYS 2/8-2/9 2/17-2/22 3/8-3/9 3/10-3/12  (9DAYS OUTS) | 3 | 2017-03-17 |  | 2017-04-05 |  | 36 | 36 | Concurrent Review | Approved | A170204006 | S42351D | Displ commnt fx shaft of humer, r arm, 7thD | ICD10 | 04052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7629 | 7629 | Approved | 45 | Revenue | RV | Hosp. 2/17/17, hosp on 2/8-29/17=1 day, hosp 2/17-2/22/17=5 days, hosp stays 3/8-3/9/17=1, 3/10-3/12/17=2 days out, DC info AMA MDS with RUG RUB60 received | 01312017, 02012017, 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 03152017, 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , , , Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , Approved, , , Approved, Approved, Approved, , , Approved, Approved, Approved, Approved, Approved, Approved, , , , , , , , , , ,  | 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45 |
| 02172017 | 2017-02-17T06:54:23+00:00 |  | 000083870-01 | Grace | Wilson | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | ADAMS LANE CARE CENTER | 924190 | 1841288149 | ADAMS LANE CARE CENTER | 1841288149 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ADAMS LANE CARE CENTER | 04052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 02152017 | 03232017 | Standard |  |  | 2017-02-15 | 20 DAY CASE RATE/RVC01=$6306.19 17 DAYS@ $200.00/DAY FOR 2 THERAPIES OR LESS TOTAL=$9706.19 | 0 | 2017-03-29 |  | 2017-03-30 | 2017-03-30 | 42 | 42 | Concurrent Review | Approved | A170217078 | I4430 | Unspecified atrioventricular block | ICD10 | 04052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9706 | 9706 | Approved | 37 | Revenue | RV | DC info NOMNC MDS with RUG RVC60 received, DC info and partial MDS received., MDS with RUG RVC60 received | 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017, 03282017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , , , ,  | 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37 |
| 02222017 | 2017-02-22T11:02:16+00:00 |  | 000021966-01 | KENNETH | BAILEY | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MILCREST NURSING CENTER | 936540 | 1790896835 | MILCREST NURSING CENTER | 1790896835 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MILCREST NURSING CENTER | 04052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02212017 | 03132017 | Standard |  |  | 2017-02-21 | 20 DAY CASE RATE  17/CC101=$3231.84 1 DAYS @$200.00 TOTAL=$3431.84 | 64 | 2017-03-14 |  | 2017-03-27 | 2017-03-27 | 21 | 21 | Concurrent Review | Approved | A170223050 | I4891 | Unspecified atrial fibrillation | ICD10 | 04052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3431 | 3431 | Approved | 21 | Revenue | RV | MDS sections G and O only  left message with Heather Collins requesting that the section Z be sent, Rec info that mbr is dc'ing on 3/14/17. Updated SNF that there is a LCD of 3/6/17 and no per diem to cover the days through the dc date., NOMNC MDS with RUG CC160 received, Per conversation with Heather  member discharged home on 3/14/17 | 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21 |
| 02232017 | 2017-02-23T14:27:34+00:00 |  | 000111724-01 | Evelyn | Hessin | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 04052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 02222017 | 03032017 | Standard |  |  | 2017-02-22 | 17/RUA01=$3214.76 FOR 10 DAY STAY TOTAL=$3214.76 | 0 | 2017-03-04 |  | 2017-03-15 | 2017-03-15 | 10 | 10 | Concurrent Review | Approved | A170224056 | E860, M6281, S37009D | Unspecified injury of unspecified kidney, subs encntr | ICD10 | 04052017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP | DC info NOMNC MDS with RUG RUA10 received | 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , , , , , , , , ,  | 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10 |
| 03132017 | 2017-03-13T10:33:41+00:00 |  | 000051516-01 | JON | BEERY | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 04052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03082017 | 03172017 | Standard |  |  | 2017-03-08 | . 17/RUC01 (per MDS) = $6049.81 TOTAL PAYMENT: $6049.81 | 79 | 2017-03-18 |  | 2017-03-28 |  | 10 | 89 | Concurrent Review | Approved | A170313107 | D591, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP | DC info MDS with RUG RUC10 received, Out to hospital 3/18/17  did not return | 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , , , , , , , , ,  | 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10 |
| 04032017 | 2017-04-03T23:12:53+00:00 |  | 000030835-01 | THOMAS | HEDGES | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 04052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170404099 | S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04032017 | 2017-04-03T17:55:14+00:00 |  | 000073535-01 | Linda | Bowersock | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 04052017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170404100 | E119, I10, I2510, M6282, R0602, R52, R531, R5381, W1839XD | Other fall on same level, subsequent encounter | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04032017 | 2017-04-03T17:55:14+00:00 |  | 000104164-01 | Arleta | Miller | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 04052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170404102 | I10, I4891, J189, M810, R531, Z950 | Presence of cardiac pacemaker | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04032017 | 2017-04-03T17:55:14+00:00 |  | 000091024-01 | Freda | Groff | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 04052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170404103 | D649, I4891, I509, M5136, N184, R52, S32000S | Wedge compression fracture of unsp lumbar vertebra, sequela | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04032017 | 2017-04-03T17:55:14+00:00 |  | 000022358-01 | CHARLES | SCHMELZER | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 04052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170404104 | H9193, I10, I2510, I4901, I5021, R55 | Syncope and collapse | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04042017 | 2017-04-04T09:28:55+00:00 |  | 000032583-01 | HERBERT | SEYMOUR | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 04052017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170404123 | I214, M6281, S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04032017 | 2017-04-03T15:44:59+00:00 |  | 000001043-01 | ELSIE | EDWARDS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 04052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170404124 | L03119, N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | DC previous auth on 3/28/17 and readmitted 3/31/17 | 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04042017 | 2017-04-04T11:18:30+00:00 |  | 000004708-01 | MARY | LOEFFLER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 04052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170404139 | N390 | Urinary tract infection, site not specified | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04042017 | 2017-04-04T12:27:05+00:00 |  | 000050285-01 | GWENDOLYN | SALYERS | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 04052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170405022 | I4891, R531, Z9181 | History of falling | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04042017 | 2017-04-04T12:31:18+00:00 |  | 000037519-01 | MARGARET | WOOLUM | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 04052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170405023 | S72041D | Disp fx of base of nk of r femr, 7thD | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04042017 | 2017-04-04T16:08:27+00:00 |  | 000089678-01 | Dixie | Rockwell | TJ BRIGHT & RG VARGO DOS | 935342 | TIMOTHY J | BRIGHT | 1760405393 | CENTERBURG POINTE | 915833 | 1033410295 | CENTERBURG POINTE | 1033410295 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG POINTE | 04052017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170405026 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04052017 | 2017-04-05T09:02:23+00:00 |  | 000115535-01 | Emily | Courson | HOSPICE OF CENTRAL OHIO | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 04052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170405045 | N390 | Urinary tract infection, site not specified | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03252017, 03262017, 03272017, 03282017, 03292017, 03302017, 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 04052017 | 2017-04-05T09:18:34+00:00 |  | 000075795-01 | Maxine | Thomas | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | HIGHLAND OAKS HEALTH CENTER | 934015 | 1083929186 | HIGHLAND OAKS HEALTH CENTER | 1083929186 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HIGHLAND OAKS HEALTH CENTER | 04052017 | Interim Approval | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170405046 | J9691 | Respiratory failure, unspecified with hypoxia | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
