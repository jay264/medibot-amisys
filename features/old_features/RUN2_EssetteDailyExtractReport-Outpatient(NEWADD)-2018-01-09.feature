Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-09
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-09
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
| 01082018 | 2018-01-08T09:03:05+00:00 | Q20113297 | 000074543-01 | Dean | Hall | MARIETTA HLTH CARE PHYS | 921896 | KELLI A | CAWLEY | 1023113727 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01152018 | 07142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180109018 | C153 | Malignant neoplasm of upper third of esophagus | ICD10 | 01092018 | J9267, J1100, J2405, J9045 | CARBOPLATIN, 50 MG | HCPCS | 500, 400, 320, 30 | 500, 400, 320, 30 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9267: 500: Paclitaxel 50 mg/m2  IV  day 1  every 7 days  5 cycles: J9045: 30: Carboplatin AUC 2 (max 300 mg)l  IV  day 1  every 7 days  5 cycles: J1100: 400: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  5 cycle(s): J2405: 320: Ondansetron up to 16 mg  IV  up to 4 days  Dispensed as: 16.00 mg  4 treatment(s) each cycle  5 cycle(s) |  |  |  |  | 0 |
| 01082018 | 2018-01-08T10:24:32+00:00 | Q20114895 | 000119059-01 | JANE | HUBER | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL HLTH PRVDRS | 901263 | 1134154750 | MOUNT CARMEL HEALTH PROVIDERS INC II | 1134154750 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH PROVIDERS INC II | 01092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01082018 | 02072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180109021 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 01092018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01082018 | 2018-01-08T15:41:22+00:00 |  | 000096277-01 | Beverly | Callander | OSU GENERAL INTL MED LLC | 943295 | CARMEN | SKINNER | 1821056144 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01092018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01122018 | 02122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108123 | D490 | Neoplasm of unspecified behavior of digestive system | ICD10 | 01092018 | 99201, 99202, 99203, 99204, 99205, 93000, 85730, 85025, 71020, 85610, 36415, 94760, 83036, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 01052018 | 2018-01-05T11:43:00+00:00 | Q20109361 | 000070268-01 | Lynne | Beach | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 01092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01102018 | 07092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180109071 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 01092018 | J2505 | INJECTION, PEGFILGRASTIM, 6 MG | HCPCS | 8 | 8 | Approved | 181 | HCPCS | HC | J2505: 8: PegFilgrastim (Neulasta) 6 mg  SQ  day 2  every 21 days  8 cycles |  |  |  |  | 0 |
| 01042018 | 2018-01-04T07:41:17+00:00 | Q20092320 | 000084087-01 | Penny | Bush | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01042018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180105087 | M4856XA | Collapsed vertebra, NEC, lumbar region, init | ICD10 | 01092018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Provider cannot be found. Please find the necessary information in the 278-5010 01/04  Initial) folder and update the facility information. Thank you! |  |  |  |  | 0 |
| 01032018 | 2018-01-03T14:02:32+00:00 |  | 000062839-01 | JUDY | WARNER | OSU EYE PHYS & SURGEONS | 915820 | COLLEEN | CEBULLA | 1144264334 | OSU EYE PHYS & SURGEONS | 939010 | 1861437923 | OSU EYE PHYSICIANS & SURGEONS INC | 1861437923 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU EYE PHYSICIANS & SURGEONS INC | 01092018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03212018 | 06212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180103110 | C6931, H3321, Z961 | Presence of intraocular lens | ICD10 | 01092018 | 99212, 99213, 99214, 92250, 92134, 76510, 76510 | OPHTH US, B & QUANT A | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 12292017 | 2017-12-29T10:57:00+00:00 |  | 000081912-01 | Kelly | Simmons | ORTHOPEDIC ONE INC | 925417 | CRAIG | DIMITRIS | 1801045364 | LANTZ MEDICAL INC | 941968 | 1629037304 | LANTZ MEDICAL INC | 1629037304 | DME | DME | Pre-Service | PRE |  | LANTZ MEDICAL INC | 01092018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12292017 | 03292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171229077 | S52121D | Disp fx of head of r radius, subs for clos fx w routn heal | ICD10 | 01092018 | E1800 | ADJUST ELBOW EXT/FLEX DEVICE | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 01052018 | 2018-01-05T11:53:49+00:00 |  | 000078594-01 | Stephen | Manion | MOUNT CARMEL HLTH PRVDRS | 937027 | ANDREW P | KLAUS | 1376545319 | OH SLEEP MED INSTITUTE | 900138 | 1043397300 | OH SLEEP MEDICINE INSTITUTE | 1043397300 | Out of Network Services | OONS | Pre-Service | PRE |  | OH SLEEP MEDICINE INSTITUTE | 01092018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02082018 | 03082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180105132 | G4730, I4510, I498 | Other specified cardiac arrhythmias | ICD10 | 01092018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29, 29, 29, 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
