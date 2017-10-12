Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-10_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-10_URGEMERG
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
| 10022017 | 2017-10-02T09:17:26+00:00 | 255087617272 | 000106016-01 | Michelle | Damon | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10092017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09292017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002010 | N179 | Acute kidney failure, unspecified | ICD10 | 10092017 | 09292017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10092017 | 2017-10-09T09:31:16+00:00 | 253014527281 | 000073445-01 | Peggy | Francies | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10082017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009023 | R4020 | Unspecified coma | ICD10 | 10102017 | 10082017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T11:31:35+00:00 |  | 000081561-01 | Ellen | Johnson | COPC CENTRAL OHIO PRIMAR | 915650 | ADAM A | RUSH | 1649457250 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10062017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009091 | I639 | Cerebral infarction, unspecified | ICD10 | 10102017 | 10062017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10032017 | 2017-10-03T12:27:51+00:00 |  | 000114049-01 | John | Popadak | VHS OUTPATIENT CLINICS | 918246 | JACK | RZEPKA | 1306839790 | TRUMBULL MEMORIAL HOSPIT | 952258 | 1922040591 | TRUMBULL MEMORIAL HOSPITAL | 1922040591 | Inpatient | IP | Concurrent Review | CONC |  | TRUMBULL MEMORIAL HOSPITAL | 10102017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10012017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003058 | E860, R0600, R42 | Dizziness and giddiness | ICD10 | 10102017 | 10012017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10042017 | 2017-10-04T10:13:39+00:00 | 168158567276 | 000087729-01 | Barbara | Wilson | SOUND PHYSICIANS OF OHI0 | 913492 | MOHAMED H | HAMZA | 1720060940 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10042017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004037 | J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 10102017 | 10042017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10092017 | 2017-10-09T09:39:12+00:00 | 250693567280 | 000070938-01 | Hubert | Lund | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Essential Care | Reports | ACO - CHF | Inpatient | 10072017 | 10092017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009028 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 10102017 | 10072017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10032017 | 2017-10-03T12:21:56+00:00 |  | 000107512-01 | Nancy | Chaney | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10022017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003057 | M6282, N390, S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 10102017 | 10022017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09222017 | 2017-09-22T09:42:00+00:00 | 178376317264 | 000110031-01 | Catherine | Mccoy | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Southeast OH Essential Care | Reports | Inpatient | Inpatient | 09212017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922020 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 10102017 | 09212017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 08222017 | 2017-08-22T11:06:46+00:00 |  | 000079683-01 | Marlene | Riethman | ORTHO INSTITUTE OF DAYTO | 902696 | JEFFREY S | HOSKINS | 1669471447 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10022017 | 10042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822083 | M4806, M5417 | Radiculopathy, lumbosacral region | ICD10 | 10102017 | 10022017 | 10042017 | 22830, 22852, 22214, 22216, 22612, 22614, 22843, 20930, 20936 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 1, 1, 1, 1, 1, 4, 1, 1, 1 | 1, 1, 1, 1, 1, 4, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 10042017 | 2017-10-04T08:41:49+00:00 |  | 000075785-01 | Ronald | Winget | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10102017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 10032017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004012 | N186, Z5189, S91309A | Unspecified open wound, unspecified foot, initial encounter | ICD10 | 10102017 | 10032017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08302017 | 2017-08-30T11:04:28+00:00 |  | 000116450-01 | PAUL | DUFNER | FAIRFIELD HLTHCARE PROFS | 943028 | RYAN K | HARRISON | 1528295169 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10102017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10022017 | 10042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830049 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10102017 | 10022017 | 10042017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10022017 | 2017-10-02T12:40:56+00:00 | 250216607275 | 000118461-01 | Kathleen | Chambers | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10022017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002085 | R079 | Chest pain, unspecified | ICD10 | 10102017 | 10022017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10042017 | 2017-10-04T14:12:43+00:00 |  | 000118638-01 | Richard | Ferguson | ALLIANCE PHYSICIANS INC | 917982 | STEPHEN R | FLEISCHER | 1134335805 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 10102017 | Approved | Flexible Choice PPO | Fax | Medical Criteria Met | Inpatient | 11182017 | 12182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171004063 | I429 | Cardiomyopathy, unspecified | ICD10 | 10102017 |  |  | 43644, 43235 | ENDOSCOPY UPPER GI | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  | No child records to display. |  |
| 10092017 | 2017-10-09T07:58:06+00:00 |  | 000102947-01 | Ralph | Latham | SOUND KENWOOD HSPISTS OF | 905430 | DEBORAH M | BOWE | 1679512230 | MERCY MEMORIAL HOSPITAL | 905693 | 1811097223 | MERCY MEMORIAL HOSPITAL | 1811097223 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL | 10102017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 10072017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009057 | I5023, I509, J810, L723, R0600, R0689, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 10102017 | 10072017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10042017 | 2017-10-04T12:32:04+00:00 |  | 000034981-01 | RICHARD | SMITH | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10032017 | 10042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004054 | R0600, R110 | Nausea | ICD10 | 10102017 | 10032017 | 10042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10062017 | 2017-10-06T09:38:15+00:00 |  | 000080067-01 | Mary | Kennard | FAIRFIELD HLTHCARE PROFS | 905459 | OSSAMA | ABDULRAHMAN | 1972517860 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10052017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006050 | I509 | Heart failure, unspecified | ICD10 | 10102017 | 10052017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10052017 | 2017-10-05T14:13:12+00:00 |  | 000076113-01 | Melvin | Steigleder | MERCY HEALTH PHYSICIANS | 920951 | BRION P | MORAN | 1174528970 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 10102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10042017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005050 | T8453XD, Z96651 | Presence of right artificial knee joint | ICD10 | 10102017 | 10042017 | 10062017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09262017 | 2017-09-26T12:33:58+00:00 |  | 000113965-01 | Janace | Jackson | BETHESDA NORTH HOSPITAL | 936487 |  | BETHESDA NORTH HOSPITAL | 1396714663 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 10102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09232017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926088 | K625, R197 | Diarrhea, unspecified | ICD10 | 10102017 | 09232017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10022017 | 2017-10-02T08:54:19+00:00 |  | 000001689-01 | DOUGLAS | AVERY | COPC CENTRAL OHIO PRIMAR | 901490 | ANURADHA | KESARI | 1740389352 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 09302017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002076 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10102017 | 09302017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T10:56:39+00:00 |  | 000029054-01 | MARY | FLEMING | ORTHO TRAUMA SRVS LTD | 909718 | KEVIN J | PUGH | 1043204704 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10062017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009088 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 10102017 | 10062017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10062017 | 2017-10-06T12:02:04+00:00 |  | 000063816-01 | BRUCE | MEES | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10052017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006053 | K625, R748 | Abnormal levels of other serum enzymes | ICD10 | 10102017 | 10052017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T09:48:22+00:00 |  | 000097505-01 | Robert | Haslett | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09302017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002031 | R531 | Weakness | ICD10 | 10102017 | 09302017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10032017 | 2017-10-03T12:21:50+00:00 |  | 000065160-01 | FLOYD | REDDING | HDH PROFESSIONAL SERV CO | 908708 | RAMESH | SHIVANI | 1477545390 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10032017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003056 | F333, R45851 | Suicidal ideations | ICD10 | 10102017 | 10032017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09122017 | 2017-09-12T10:28:19+00:00 |  | 000027055-01 | KENNETH | PRATER | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913030 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 10102017 | 10092017 | 10102017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10022017 | 2017-10-02T08:35:32+00:00 |  | 000089949-01 | Patricia | Schirmer | SOUND PHYSICIANS OF OHI0 | 946140 | MALATHY | VARATHARAJAH | 1669470050 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 10102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10012017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002069 | S52351A, S52614A, S72001A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 10102017 | 10012017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10062017 | 2017-10-06T08:42:54+00:00 |  | 000015877-01 | SHIRLEY | ROSS | ARING, ANN M | 936345 | ANN M | ARING | 1215925433 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10052017 | 10072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006039 | E860 | Dehydration | ICD10 | 10102017 | 10052017 | 10072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10042017 | 2017-10-04T07:37:59+00:00 | 025836283-7249 | 000057185-01 | CAMILLE | BAKER | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004031 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 10102017 | 10092017 | 10102017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09282017 | 2017-09-28T10:34:12+00:00 | 025114344-7271 | 000054041-01 | CHRISTINE | TODD | MOUNT CARMEL HLTH PRVDRS | 912451 | WILLIAM H | PHILLIPS | 1356343586 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10022017 | 10102017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928043 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 10102017 | 10022017 | 10102017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 9 | CPT | C4 |  |  |  | 8.0 |
| 09262017 | 2017-09-26T11:53:54+00:00 |  | 000092354-01 | Deborah | Dietsch | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10062017 | 10102017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927040 | S82251N | Displ commnt fx shaft of r tibia, 7thN | ICD10 | 10102017 | 10062017 | 10102017 | 27724 | RPR TIBIA C ILIAC OR AUTOG GRFT | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 10092017 | 2017-10-09T09:29:12+00:00 | 25047187280 | 000042437-01 | JOHN | HUGHES | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 10072017 | 10102017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009021 | J157 | Pneumonia due to Mycoplasma pneumoniae | ICD10 | 10102017 | 10072017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10042017 | 2017-10-04T09:20:41+00:00 | 251928637276 | 000001779-01 | JANET | KENNEDY | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10032017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004017 | D509, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10102017 | 10032017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10022017 | 2017-10-02T09:57:17+00:00 |  | 000119010-01 | Donna | Collinsworth | DOCTORS HOSPITAL | 903408 |  | DOCTORS HOSPITAL | 1972535052 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09292017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002036 | R0600 | Dyspnea, unspecified | ICD10 | 10102017 | 09292017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09262017 | 2017-09-26T13:11:57+00:00 |  | 000002739-01 | VIRGINIA | ZIEGLER | SOUND PHYSICIANS OF OHI0 | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09262017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926061 | E860 | Dehydration | ICD10 | 10102017 | 09262017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10022017 | 2017-10-02T16:21:05+00:00 |  | 000078942-01 | Rita | Dunn | BERNFELD, JONATHAN A | 924835 | JONATHAN A | BERNFELD | 1407853203 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | GOOD SAMARITAN MEDICAL CENTER | 10102017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09292017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002154 | F0630 | Mood disorder due to known physiological condition, unsp | ICD10 | 10102017 | 09292017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09262017 | 2017-09-26T13:03:43+00:00 |  | 000056559-01 | GARY | MONTEITH | OHIOHEALTH PHYS GRP | 937345 | CHARLES A | PUE | 1447228705 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 10102017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09242017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926059 | A419, R6521 | Severe sepsis with septic shock | ICD10 | 10102017 | 09242017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 10062017 | 2017-10-06T10:39:57+00:00 | 255929977279 | 000000986-01 | DARLENE | PEACE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10052017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006043 | M84373S | Stress fracture, unspecified ankle, sequela | ICD10 | 10102017 | 10052017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10042017 | 2017-10-04T15:02:53+00:00 | 251736297277 | 000063275-01 | ELMER | GORDON | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 10042017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004065 | T8453XA | Infect/inflm reaction due to internal r knee prosth, init | ICD10 | 10102017 | 10042017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09152017 | 2017-09-15T11:40:40+00:00 |  | 000109414-01 | PAULINE | MORRIS | COLON & RECTAL SURG INC | 937012 | KARAMJIT S | KHANDUJA | 1093707960 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10062017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915089 | K623 | Rectal prolapse | ICD10 | 10102017 | 10062017 | 10102017 | 45540 | PROCTOPEXY FOR PROLAPSE-ABDOM APPR | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 10052017 | 2017-10-05T10:12:54+00:00 | 262844677277 | 000052658-01 | LOIS | SHAFFER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10042017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005026 | I509 | Heart failure, unspecified | ICD10 | 10102017 | 10042017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09222017 | 2017-09-22T13:35:20+00:00 |  | 000071485-01 | Helen | Kincaid | HAQUE, MAX M | 904471 | MAX M | HAQUE | 1700884111 | HOCKING VALLEY COMMUNITY | 903999 | 1295840007 | HOCKING VALLEY COMMUNITY HOSPITAL | 1295840007 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09212017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922045 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 10102017 | 09212017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 38.0 |
| 10052017 | 2017-10-05T08:29:46+00:00 |  | 000083955-01 | Joyce | Stevens | FAIRFIELD MEDICAL CENTER | 936439 |  | FAIRFIELD MEDICAL CENTER | 1467433763 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10042017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005009 | R0602 | Shortness of breath | ICD10 | 10102017 | 10042017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10102017 | 2017-10-10T10:50:54+00:00 |  | 000065094-01 | ALLAN | SHERMAN JR | ALLIANCE PHYSICIANS INC | 911165 | DANIEL J | DUNAWAY | 1669483152 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 10102017 | Approved | MediGold Essential Care | Fax | Pending Admission | Inpatient | 11022017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171010040 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10102017 |  |  | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  | No child records to display. |  |
| 10042017 | 2017-10-04T09:30:41+00:00 | 252298127276 | 000020321-01 | HOMAN | SKAGGS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 10032017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004018 | A419 | Sepsis, unspecified organism | ICD10 | 10102017 | 10032017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10052017 | 2017-10-05T09:32:00+00:00 | 250475247278 | 000071390-01 | William | Hoster | COLS INPATIENT CARE INC | 942957 | CHARLES F | WARE III | 1528355922 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10042017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005005 | K5669 | Other intestinal obstruction | ICD10 | 10102017 | 10042017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
