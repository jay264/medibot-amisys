Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-11_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-11_URGEMERG
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
	And the test pauses for "4" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And the test pauses for "2" seconds
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 10092017 | 2017-10-09T13:08:57+00:00 |  | 000019687-01 | EDNA | SMITH | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10072017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010016 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 10112017 | 10072017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10052017 | 2017-10-05T10:41:21+00:00 | 259307047278 | 000039549-01 | BERTHA | SELBY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10052017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005034 | R410 | Disorientation, unspecified | ICD10 | 10112017 | 10052017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10022017 | 2017-10-02T12:57:46+00:00 | 256612667273 | 000009101-01 | JOANN | VAUGHN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09302017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002092 | I4891 | Unspecified atrial fibrillation | ICD10 | 10112017 | 09302017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09292017 | 2017-09-29T09:14:42+00:00 | 025454188-7257 | 000045010-01 | KENNETH | MCCLELLAND | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 10112017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10092017 | 10102017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929023 | M25512 | Pain in left shoulder | ICD10 | 10112017 | 10092017 | 10102017 | 23472, 23420, 23440, 23020, 23700 | MANIP SHLDR C ANES. INC APP. FIX AP | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 10022017 | 2017-10-02T10:31:33+00:00 |  | 000106462-01 | Louise E | Cooper | ALLIANCE PHYSICIANS INC | 912219 | DAVID E | BRUCE | 1083611792 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 10112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09302017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002119 | K5660 | Unspecified intestinal obstruction | ICD10 | 10112017 | 09302017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10092017 | 2017-10-09T10:32:00+00:00 |  | 000112827-01 | Tomas | Hernandez | OSU INTERNAL MED LLC | 910996 | KRISTEN | LEWIS | 1831314236 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10052017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009087 | N179 | Acute kidney failure, unspecified | ICD10 | 10112017 | 10052017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09132017 | 2017-09-13T10:15:52+00:00 |  | 000060285-01 | WAYNE | HILES | PICKAWAY HEALTH SERVICES | 942920 | RAUL A | ZAMORA | 1538484415 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10022017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913036 | K5732 | Dvtrcli of lg int w/o perforation or abscess w/o bleeding | ICD10 | 10112017 | 10022017 | 10102017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 9 | CPT | C4 |  |  |  | 8.0 |
| 10022017 | 2017-10-02T11:08:43+00:00 | 251203997274 | 000030469-01 | IONA | WEST | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10012017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002052 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 10112017 | 10012017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 09122017 | 2017-09-12T11:49:38+00:00 |  | 000077003-01 | Diane | Saxton | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913055 | M6281, R0602 | Shortness of breath | ICD10 | 10112017 | 09112017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 10092017 | 2017-10-09T10:40:30+00:00 |  | 000103588-01 | Johnny | Clay | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10062017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009086 | I639, R531 | Weakness | ICD10 | 10112017 | 10062017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T13:14:38+00:00 |  | 000054263-01 | LUROSE | RHOADS | OHIOHEALTH PHYS GRP | 911198 | GREGORY K | LAM | 1255319760 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10082017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010022 | J159 | Unspecified bacterial pneumonia | ICD10 | 10112017 | 10082017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10022017 | 2017-10-02T15:39:12+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 10112017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 10082017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002153 | C9101 | Acute lymphoblastic leukemia, in remission | ICD10 | 10112017 | 10082017 | 10102017 | 96416 | CHEMO PROLONG INFUSE W/PUMP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09262017 | 2017-09-26T12:01:36+00:00 |  | 000100544-01 | Bonita | Planck | MERITRA CLINICS LLC | 911415 | NAVEEN | BEKKAM | 1225196371 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09252017 | 09302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926051 | D649, R197 | Diarrhea, unspecified | ICD10 | 10112017 | 09252017 | 09302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10062017 | 2017-10-06T14:34:55+00:00 |  | 000079301-01 | Alice | Maze | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10052017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006066 | D649, K922, R791 | Abnormal coagulation profile | ICD10 | 10112017 | 10052017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10052017 | 2017-10-05T08:18:04+00:00 |  | 000114212-01 | Melody | Tolbert | JACKSON FLANIGAN MD LLC | 925872 | JACKSON | FLANIGAN | 1760564793 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 10112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10042017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005004 | K819, K859 | Acute pancreatitis, unspecified | ICD10 | 10112017 | 10042017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10102017 | 2017-10-10T16:06:22+00:00 |  | 000093683-01 | Don | Funk | MARIETTA HLTH CARE PHYS | 907862 | ALEXANDRU M | VAIDA | 1285703124 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 10122017 | 11122017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171011003 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 10112017 |  |  | 31622, 32666, 32220, 32505 | WEDGE RESECT OF LUNG INITIAL | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  | No child records to display. |  |
| 10042017 | 2017-10-04T13:34:39+00:00 |  | 000083156-01 | Richard | Tingler | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10032017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004057 | C801, E876, M549 | Dorsalgia, unspecified | ICD10 | 10112017 | 10032017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T11:02:41+00:00 |  | 000055928-01 | IRVIN | HENDERSON | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10072017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009094 | R55 | Syncope and collapse | ICD10 | 10112017 | 10072017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T10:12:07+00:00 |  | 000077210-01 | Darlene | Oflaherty | GENESIS MEDICAL GRP LLC | 912779 | EDUARDO | JORGE | 1689675134 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10062017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009083 | J849 | Interstitial pulmonary disease, unspecified | ICD10 | 10112017 | 10062017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10102017 | 2017-10-10T09:14:00+00:00 | 251966477282 | 000032651-01 | BARBARA | LUTZ | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010003 | I495, I499, R001 | Bradycardia, unspecified | ICD10 | 10112017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09272017 | 2017-09-27T15:11:53+00:00 |  | 000006601-01 | TINY | FIELDS | ROBERT TURNER MD INC | 934953 | ROBERT C | TURNER | 1134112238 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10092017 | 10112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928026 | S42295G | Oth nondisp fx of upr end l humer, subs for fx w delay heal | ICD10 | 10112017 | 10092017 | 10112017 | 24515, 20900 | OBTAIN BN GRFT, MINOR,ANY DON. AREA | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 08242017 | 2017-08-24T12:32:10+00:00 |  | 000000346-01 | GLENN | BUCKLEY | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10102017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824090 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 10112017 | 10102017 | 10112017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10042017 | 2017-10-04T09:25:23+00:00 |  | 000104366-01 | Margaret | Creamer | SOUND KENWOOD HSPISTS OF | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 10112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10042017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004027 | A419, D62, K921, M542 | Cervicalgia | ICD10 | 10112017 | 10042017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10032017 | 2017-10-03T11:33:10+00:00 |  | 000097322-01 | Andras | Csicsai | SOUND KENWOOD HSPISTS OF | 932824 | CLIFF | OMOREGIE | 1467773713 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 10112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10022017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003053 | D649, J189, J90, N189, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 10112017 | 10022017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08292017 | 2017-08-29T15:20:59+00:00 |  | 000107777-01 | Margaret | Boes | HOLLAND, GREGORY C | 936925 | GREGORY C | HOLLAND | 1316991268 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10112017 | Approved | Flexible Choice PPO | Fax | EIS | Inpatient | 10102017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829098 | Z853 | Personal history of malignant neoplasm of breast | ICD10 | 10112017 | 10102017 | 10112017 | 19357, 19361 | BREAST RECONSTRUCT. WITH LATISSMUS DORSI FLAP,C/CO PROSTHETIC IMPLANT | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 10022017 | 2017-10-02T12:49:32+00:00 |  | 000111666-01 | EVELYN | SMITH | WILMINGTON PHYS GRP LLC | 948638 | BYRON L | STAPLETON | 1053610923 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10012017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002131 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 10112017 | 10012017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10092017 | 2017-10-09T09:41:12+00:00 | 2641260687281 | 000082800-01 | Steven | Mcdaniel | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009029 | I7092, I771, T82392A | Mech compl of femoral arterial graft (bypass), init encntr | ICD10 | 10112017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09262017 | 2017-09-26T08:44:07+00:00 |  | 000016329-01 | WANDA | GRIFFITH | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926015 | R0781 | Pleurodynia | ICD10 | 10112017 | 09252017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 10042017 | 2017-10-04T11:29:43+00:00 |  | 000114751-01 | Patsy | Strausburg | MEDICINE INPATIENT GROUP | 925155 | FADI | BAILONY | 1003965385 | WEST CHESTER MEDICAL CENTER | 911775 | 1851549273 | WEST CHESTER MEDICAL CENTER | 1851549273 | Inpatient | IP | Concurrent Review | CONC |  | WEST CHESTER MEDICAL CENTER | 10112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10032017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004050 | R160 | Hepatomegaly, not elsewhere classified | ICD10 | 10112017 | 10032017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T09:40:09+00:00 | 026456646-7243 | 000101941-01 | James | Ramey | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905015 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10112017 | 10092017 | 10112017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10092017 | 2017-10-09T10:58:05+00:00 |  | 000102765-01 | Lloyd | Bixler | LICKING MEM HLTH PROF | 917807 | HASSAN | RAJJOUB | 1811060999 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10082017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009089 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 10112017 | 10082017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10032017 | 2017-10-03T15:41:56+00:00 | 251110947276 | 000032566-01 | Eleanor | Haeffner | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10032017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003085 | I719, K648, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10112017 | 10032017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 09292017 | 2017-09-29T16:53:30+00:00 |  | 000081375-01 | Charles | Search | TEDROS ANDOM MD LLC | 907641 | TEDROS | ANDOM | 1629160262 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10062017 | 10102017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002001 | N321 | Vesicointestinal fistula | ICD10 | 10112017 | 10062017 | 10102017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 10062017 | 2017-10-06T08:28:15+00:00 |  | 000100261-01 | Gladys | Verner | ALLIANCE PHYSICIANS INC | 911768 | BRIAN W | ONDULICK | 1336129485 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 10112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10062017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006025 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 10112017 | 10062017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10092017 | 2017-10-09T14:48:17+00:00 |  | 000113822-01 | Carolyn | Arnold | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10082017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010034 | J449, R0902 | Hypoxemia | ICD10 | 10112017 | 10082017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09222017 | 2017-09-22T11:22:22+00:00 | 025257971-7263 | 000102106-01 | Linda | Pack | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 10112017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10092017 | 10112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922078 | M25551 | Pain in right hip | ICD10 | 10112017 | 10092017 | 10112017 | 29916 | HIP ARTHRO W/LABRAL REPAIR | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10052017 | 2017-10-05T10:16:35+00:00 | 251020557277 | 000086793-01 | Phillip | Swisher | SOUND PHYSICIANS OF OHI0 | 901165 | OLGA V | PYLAEVA | 1508811811 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | THE TIMKEN COMPANY | Reports | Inpatient | Inpatient | 10042017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005027 | K869, R188 | Other ascites | ICD10 | 10112017 | 10042017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
