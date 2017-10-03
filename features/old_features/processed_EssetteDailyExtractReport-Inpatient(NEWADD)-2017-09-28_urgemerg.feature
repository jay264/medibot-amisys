Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-28_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-28_URGEMERG
	Given I save the auth class "<auth_class>" to a variable
	Given I sign in to the application
	And the test pauses for "3" seconds
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "10" seconds
	And in the "Certification" page I should see the "Initial Date" element
	And I press "Control + N"
	And in the "certification" page I should see the "red_and_yellow_boxes" image
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

	And in the "hospital_services" page I enter "$" into the "facility_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
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
	And the test pauses for "3" seconds
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
	And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "2" seconds

	#And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And in the "authorized_services" page I enter "21" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 09262017 | 2017-09-26T09:23:10+00:00 |  | 000077736-01 | Dennis | Mccort | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09282017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 09252017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926017 | K429 | Umbilical hernia without obstruction or gangrene | ICD10 | 09282017 | 09252017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09112017 | 2017-09-11T11:28:17+00:00 |  | 000046329-01 | DAVID | SWENSON | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09082017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911128 | L89159 | Pressure ulcer of sacral region, unspecified stage | ICD10 | 09282017 | 09082017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08302017 | 2017-08-30T15:18:26+00:00 |  | 000085832-01 | Patricia | Flannery | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831002 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09282017 | 09252017 | 09272017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09212017 | 2017-09-21T09:33:44+00:00 | 250551737263 | 000007695-01 | JANET | HOERLE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09202017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921014 | J159 | Unspecified bacterial pneumonia | ICD10 | 09282017 | 09202017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08032017 | 2017-08-03T13:23:16+00:00 |  | 000028067-01 | WILLIAM | PHILLIPS | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803057 | M4712, M4722, M4802 | Spinal stenosis, cervical region | ICD10 | 09282017 | 09262017 | 09282017 | 22551, 22853, 22552, 77003, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 3, 2, 1, 1 | 1, 3, 2, 1, 1 | Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 08282017 | 2017-08-28T15:10:55+00:00 | 025076708-7237 | 000057027-01 | KENNETH | MILAM | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828124 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09282017 | 09262017 | 09282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07252017 | 2017-07-25T13:34:29+00:00 |  | 000009679-01 | JUANITA | LAMBERT | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725078 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 09282017 | 09262017 | 09282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09222017 | 2017-09-22T12:05:39+00:00 |  | 000092732-01 | Jody | Fulks | MERCY HEALTH PHYSICIANS | 932723 | JUSTIN N | GIBLER | 1467748079 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 09282017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09212017 | 09242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922039 | B965 | Pseudomonas (mallei) causing diseases classd elswhr | ICD10 | 09282017 | 09212017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09252017 | 2017-09-25T10:14:32+00:00 |  | 000103009-01 | Elinor | Holbrook | NEUROSCIENCE CENTER | 947205 | VIVIEN H | LEE | 1538146907 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09222017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925044 | I639 | Cerebral infarction, unspecified | ICD10 | 09282017 | 09222017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09192017 | 2017-09-19T11:09:20+00:00 | 025128653-7256 | 000058138-01 | CAROL | YODER | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919066 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 09282017 | 09252017 | 09272017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09192017 | 2017-09-19T13:21:52+00:00 |  | 000040088-01 | MARGARET | VANHORN | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920018 | D469, R42, R55 | Syncope and collapse | ICD10 | 09282017 | 09182017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09202017 | 2017-09-20T12:37:32+00:00 |  | 000070827-01 | Carolyn | Farnsworth | RIVERSIDE SURG ASSOC INC | 910216 | ROBERT | TOSCANO | 1205835063 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09202017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920090 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 09282017 | 09202017 | 09232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09082017 | 2017-09-08T15:13:54+00:00 | 026158811-7250 | 000053730-01 | MERLINE | HARRISON | SIDES, JAMES A | 934799 | JAMES A | SIDES | 1275587578 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09262017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912017 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09282017 | 09262017 | 09272017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08152017 | 2017-08-15T08:24:19+00:00 |  | 000013388-01 | JUDITH | HAGELY | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09282017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815087 | I4891 | Unspecified atrial fibrillation | ICD10 | 09282017 | 08142017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09202017 | 2017-09-20T08:38:51+00:00 | 169320417262 | 000096377-01 | Mary | Debevoise | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09192017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920014 | I509 | Heart failure, unspecified | ICD10 | 09282017 | 09192017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 09142017 | 2017-09-14T10:25:43+00:00 | 262167827256 | 000081785-01 | Cora | Stevens | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09132017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914039 | D6489 | Other specified anemias | ICD10 | 09282017 | 09132017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 09212017 | 2017-09-21T11:47:13+00:00 | 025216691-7265 | 000042273-01 | BILLIE | PETERS | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921063 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 09282017 | 09262017 | 09282017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09212017 | 2017-09-21T10:06:48+00:00 | 254279397263 | 000053301-01 | DAINA | MCGARY | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09202017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921029 | R55 | Syncope and collapse | ICD10 | 09282017 | 09202017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09182017 | 2017-09-18T09:12:40+00:00 |  | 000106278-01 | Donald | Brewer | NEUROSCIENCE CENTER | 951551 | BRYAN M | GOUGH | 1962795963 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09282017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09172017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918091 | G9340 | Encephalopathy, unspecified | ICD10 | 09282017 | 09172017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09082017 | 2017-09-08T10:50:19+00:00 |  | 000085312-01 | David | Hannahs | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908064 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 09282017 | 09252017 | 09272017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09282017 | 2017-09-28T09:33:05+00:00 |  | 000100979-01 | Patricia | Kenyon | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 09262017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928016 | C50411 | Malig neoplm of upper-outer quadrant of right female breast | ICD10 | 09282017 | 09262017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09252017 | 2017-09-25T08:21:08+00:00 |  | 000061601-01 | WALLACE | WRIGHT JR | OSU INTERNAL MED LLC | 911399 | KAREN | CATIGNANI | 1083646707 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09222017 | 09232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925033 | C499, C7951, D61818, I10 | Essential (primary) hypertension | ICD10 | 09282017 | 09222017 | 09232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09182017 | 2017-09-18T11:21:10+00:00 |  | 000100486-01 | Mary | Barker | OSU INTERNAL MED LLC | 922948 | CHIRAG A | PATEL | 1760611263 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09232017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919035 | R109 | Unspecified abdominal pain | ICD10 | 09282017 | 09172017 | 09232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09132017 | 2017-09-13T15:38:01+00:00 | 025459535-7256 | 000046497-01 | ARTHUR | LEWIS | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09212017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913065 | C240 | Malignant neoplasm of extrahepatic bile duct | ICD10 | 09282017 | 09212017 | 09272017 | 47712 | EXCISION OF BILE DUCT TUMOR, WITH OR WITHOUT PRIMARY REPAIR OF BILE | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 03212017 | 2017-03-21T09:17:48+00:00 |  | 000093581-01 | Frances | Southers | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 09282017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170329092589.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170323108 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 09282017 | 03202017 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09252017 | 2017-09-25T15:34:43+00:00 |  | 000113875-01 | Anita | Begley | UNIVERSITY OF CINCINNATI | 924661 | RENEE S | HEBBLER-CLARK | 1528258340 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 09282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09232017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925114 | J9601, K7290 | Hepatic failure, unspecified without coma | ICD10 | 09282017 | 09232017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09252017 | 2017-09-25T19:24:25+00:00 |  | 000083663-01 | James | Cummings | KINDRED HOSPITAL | 913297 |  | KINDRED HOSPITAL | 1447320676 | KINDRED HOSPITAL | 913297 | 1447320676 | KINDRED HOSPITAL | 1447320676 | Long Term Acute Care Hospital | LTACH | Pre-Service | PRE |  | KINDRED HOSPITAL | 09282017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 09282017 | 09292017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170926007 | J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 09282017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08052017 | 2017-08-05T12:16:09+00:00 |  | 000031103-01 | RUTH | FISHER | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09282017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807054 | R109 | Unspecified abdominal pain | ICD10 | 09282017 | 08042017 | 08082017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 |  | 61 | CPT | C4 |  |  |  | 4.0 |
| 09202017 | 2017-09-20T10:27:23+00:00 | 017340595-7264 | 000029265-01 | MYRIAM | PLACE | SOUND PHYSICIANS OF OHI0 | 943144 | PRANAV | WASTI | 1659634236 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09202017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920049 | M549 | Dorsalgia, unspecified | ICD10 | 09282017 | 09202017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09282017 | 2017-09-28T10:28:34+00:00 | 017436429-7261 | 000048753-01 | Terry | Walker | MOUNT CARMEL HLTH PRVDRS | 904976 | WILLIAM R | ZERICK | 1568469609 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 09272017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928035 | M4800 | Spinal stenosis, site unspecified | ICD10 | 09282017 | 09272017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09182017 | 2017-09-18T13:04:26+00:00 |  | 000073143-01 | Geraldine | Forrest | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09162017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919113 | I509, L03115 | Cellulitis of right lower limb | ICD10 | 09282017 | 09162017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09252017 | 2017-09-25T10:47:40+00:00 | 250795347267 | 000026968-01 | DONALD | MAUREY | COPC CENTRAL OHIO PRIMAR | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09242017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925052 | I4891 | Unspecified atrial fibrillation | ICD10 | 09282017 | 09242017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08252017 | 2017-08-25T11:52:00+00:00 |  | 000114751-01 | Patsy | Strausburg | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08252017 | 09082017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825048 | I639 | Cerebral infarction, unspecified | ICD10 | 09282017 | 08252017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 09222017 | 2017-09-22T15:54:36+00:00 | 252291547265 | 000000646-01 | BERTHA | SPIRES | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09222017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922063 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 09282017 | 09222017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09182017 | 2017-09-18T16:10:54+00:00 |  | 000072016-01 | Donna | Griglik | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09162017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919103 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 09282017 | 09162017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09272017 | 2017-09-27T09:00:44+00:00 | 250217647270 | 000020623-01 | PIN CHI | CHANG | COPC CENTRAL OHIO PRIMAR | 908372 | RUPENKUMAR R | PATEL | 1689613366 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927013 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 09282017 | 09262017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09212017 | 2017-09-21T11:01:56+00:00 |  | 000082331-01 | Robert | Kattine | CLERMONT INTERNISTS ASSO | 921368 | ANIL K | KAKUMANU | 1922287515 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 09282017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09202017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921065 | C169, J90 | Pleural effusion, not elsewhere classified | ICD10 | 09282017 | 09202017 | 09232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08302017 | 2017-08-30T09:20:09+00:00 |  | 000083540-01 | Lin | Brown | ORTHO ASSOC SPFLD INC | 918581 | NOSHIR E | DEBOO | 1164609814 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830025 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 09282017 | 09252017 | 09272017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07242017 | 2017-07-24T08:45:36+00:00 |  | 000099789-01 | Edna | Scott | SOUND INPATIENT PHYS OF | 928092 | HANY A | AL-KHEDR | 1306117049 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09282017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170801119433.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724097 | D72829, K838, L03116 | Cellulitis of left lower limb | ICD10 | 09282017 | 07232017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09252017 | 2017-09-25T09:37:35+00:00 | 252358287266 | 000004171-01 | OLLIE | SALYER | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09232017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925029 | K8020 | Calculus of gallbladder w/o cholecystitis w/o obstruction | ICD10 | 09282017 | 09232017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09252017 | 2017-09-25T10:58:43+00:00 | 260438917267 | 000105835-01 | Nancy | Pugh | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09242017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925053 | R296, S32402A | Unsp fracture of left acetabulum, init for clos fx | ICD10 | 09282017 | 09242017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09132017 | 2017-09-13T09:41:36+00:00 |  | 000052912-01 | James | Spires | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09122017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914058 | A419, J189, R799 | Abnormal finding of blood chemistry, unspecified | ICD10 | 09282017 | 09122017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09212017 | 2017-09-21T11:02:55+00:00 | 251280417263 | 000094641-01 | Linda | Wardell | COPC CENTRAL OHIO PRIMAR | 901490 | ANURADHA | KESARI | 1740389352 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09202017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921042 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 09282017 | 09202017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
