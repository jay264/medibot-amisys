Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-24
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-24
	Given I save the auth class "<auth_class>" to a variable
	And I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "loaded_sidebar" image
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And the test pauses for "1" seconds
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And in the "Certification" page I save the "<service_code>" service codes
	And the test pauses for "2" seconds
	And in the "certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
	And the test pauses for "2" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter the first quantity requested "<qty_reqd>" into the "how_many_requested" image and save the variable
	And in the "authorized_services" page I enter the first quantity approved "<qty_appr>" into the "how_many_authorized" image and save the variable
	And in the "authorized_services" page I convert "<authorized_date>" into the "dates_begin_requested" image and save the variable
	And in the "authorized_services" page I convert "<expiration_date>" into the "dates_end_requested" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "4" seconds
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
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And in the "authorized_services" page I enter "$" into the "prov" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "2" seconds
	And I determine whether something is PAR or NONPAR
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable

	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "3" seconds

	And in the "authorized_services" page I enter the first service code into the "proc_number" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds
	And I press ENTER graphically
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

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "4" seconds
	And I press ENTER graphically
	And the test pauses for "4" seconds
	And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 01222018 | 2018-01-22T11:49:13+00:00 |  | 000115916-01 | Linda | Clark | RIVERSIDE RAD ASSOC | 920632 | SUMIT | BHATLA | 1104823137 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | BERGER HOSPITAL | 01242018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02202018 | 03202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180122112 | N135 | Crossing vessel and stricture of ureter w/o hydronephrosis | ICD10 | 01242018 | 50435 | EXCHANGE NEPHROSTOMY CATH | CPT | 1 | 1 | Approved | 29 | CPT | C4 |  |  |  |  |  | 0 |
| 01222018 | 2018-01-22T13:24:43+00:00 |  | 000120144-01 | Dale | Watson | OSU UROLOGY LLC | 911712 | AHMAD | SHABSIGH | 1407025042 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01252018 | 02252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180122124 | C61 | Malignant neoplasm of prostate | ICD10 | 01242018 | 52000, 88108 | CYTOPATH. CONC TECH, SMEARS & INT | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01222018 | 2018-01-22T09:31:23+00:00 | Q20217344 | 000080168-01 | Daniel | Hunter | OH ONCOLOGY & HEMATOLOGY | 935093 | JEFFREY | ZANGMEISTER | 1871541979 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | LAVERNE G | MENSAH | 01242018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01252018 | 07242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180124014 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 01242018 | J9171, J1100, J1626 | INJECTION, GRANISETRON HYDROCHLORIDE, 100 MCG | HCPCS | 1200, 640, 320 | 1200, 640, 320 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9171: 1200: Docetaxel 75 mg/m2  IV  day 1  every 21 days  8 cycles: J1100: 640: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  8 cycle(s): J1626: 320: Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  8 cycle(s) |  |  |  |  | 0 |
| 01232018 | 2018-01-23T10:02:00+00:00 | Q20231061 | 000109575-01 | Marie | Wood | LICKING MEM HLTH PROF | 931839 | D'ANNA N | MULLINS | 1790946861 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 01242018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02022018 | 08012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180124018 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 01242018 | J9045, J2405, J1453, J9305, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 33, 192, 450, 309, 240 | 33, 192, 450, 309, 240 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC | J9045: 33: INJECTION  CARBOPLATIN  50 MG  Dispensed as: 540.00 mg  1 treatment(s) each cycle  3 cycle(s): J9305: 309: INJECTION  PEMETREXED  10 MG  Dispensed as: 1030.00 mg  1 treatment(s) each cycle  3 cycle(s): J2405: 192: Ondansetron up to 16 mg  IV  up to 4 days  Dispensed as: 16.00 mg  4 treatment(s) each cycle  3 cycle(s): J1453: 450: Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  3 cycle(s): J1100: 240: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  3 cycle(s) |  |  |  |  | 0 |
| 01232018 | 2018-01-23T07:04:02+00:00 |  | 000063656-01 | MICHAEL | ALLEN | OSU INTERNAL MED LLC | 952079 | MARCELO R | BONOMI | 1043446230 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02082018 | 05082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180123057 | C01, R911 | Solitary pulmonary nodule | ICD10 | 01242018 | 99211, 99212, 99213, 99214, 99215, 82947, 83735, 82310, 82247, 82565, 84520, 82435, 82040, 84075, 84155, 84295, 82374, 84460, 85025, 84450, 84132 | POTASSIUM,BLOOD | CPT | 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 01232018 | 2018-01-23T10:57:38+00:00 |  | 000087644-01 | Leonard | Dickerson | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01242018 | 03252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180123064 | N200 | Calculus of kidney | ICD10 | 01242018 | 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | CPT | C4 | LVMM for L. Beverly at OSU 614-293-8155.  Inquired about request being expedited.  Fax just received today (1/23/18) but form indicates date as 1/9/18.  She may be using old forms and not removing old date.  Asked her to return call about request date and expedited status., PC from Laquisha at OSU  discussed use of expedited status  which she withdrew  she also provided CPT codes for pre-op anesthesia appointment as 99201-99205.  , Surgery is tentatively scheduled for 2/6/2018. |  |  |  |  | 0 |
| 01242018 | 2018-01-24T08:30:09+00:00 |  | 000107809-01 | Frances | Festing | DENTAL FACULTY PRACTICE | 938575 |  | DENTAL FACULTY PRACTICE | 1164537684 | DENTAL FACULTY PRACTICE | 938575 | 1164537684 | DENTAL FACULTY PRACTICE | 1164537684 | Out of Network Services | OONS | Pre-Service | PRE |  | DENTAL FACULTY PRACTICE | 01242018 | Approved | Flexible Choice PPO | Fax | Services Not Available In-Network | Outpatient | 01312018 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180124068 | K08404, K117 | Disturbances of salivary secretion | ICD10 | 01242018 | 99201, 99202, 99203, 99204, 99205, 70300, 70320 | TEETH, COMPLETE, FULL MOUTH | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29, 29, 29 | CPT | C4 | Uploaded letters from and to member., Mr. Festing sent in letter on 1/9/18 requesting additional time to initiate an appreal.  , 1/17/18 letter from CEO Mike Demand to Member., 1/23/18 letter letter from appeals and grievance department to mbr., Updated approval letter with user friendly language showing one office visit and dental x-rays as approved. |  |  |  |  | 0 |
| 01192018 | 2018-01-19T08:31:36+00:00 | Q20205413 | 000037762-01 | ROBERT | VANLUVANEE | CANYON MEDICAL CENTER | 937298 | SHAILESH R | PATEL | 1346235215 | ZOLL LIFECOR CORPORATION | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 01242018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01192018 | 03202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180124090 | I420 | Dilated cardiomyopathy | ICD10 | 01242018 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 01242018 | 2018-01-24T13:49:03+00:00 |  | 000104605-01 | KATHERINE | TAWROSZA | OSU INTERNAL MED LLC | 916695 | ANTHONY J | MICHAELS | 1003998642 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01242018 | Approved | MediGold Essential Care | Fax | Transplant Evaluation | Outpatient | 02052018 | 03052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180124139 | K7581, Z01818 | Encounter for other preprocedural examination | ICD10 | 01242018 | 94010, 94060, 94260, 94720, 94618 | PULMONARY STRESS TESTING | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
