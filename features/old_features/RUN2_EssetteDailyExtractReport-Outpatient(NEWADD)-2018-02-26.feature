Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-26
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-26
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
| 02192018 | 2018-02-19T09:29:59+00:00 | Q20433249 | 000046933-01 | ANNA | MOORE | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02262018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02202018 | 08192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180226007 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 02262018 | J1626, J9060, J9206, J1100, J2469, J1453 | Fosaprepitant injection | HCPCS | 160, 40, 60, 320, 40, 600 | 160, 40, 60, 320, 40, 600 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC | J9060: 40: INJECTION  CISPLATIN  POWDER OR SOLUTION  10 MG  Dispensed as: 100.00 mg  1 treatment(s) each cycle  4 cycle(s): J9206: 60: INJECTION  IRINOTECAN  20 MG  Dispensed as: 100.00 mg  3 treatment(s) each cycle  4 cycle(s): J1626: 160: Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  4 cycle(s): J1100: 320: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  4 cycle(s): J2469: 40: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  4 cycle(s): J1453: 600: Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 02222018 | 2018-02-22T11:17:00+00:00 | Q20472218 | 000090741-01 | Donna | Carroll | CHALLA AJIT MD LLC | 905181 | CHALLA | AJIT | 1598778805 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY MEMORIAL HOSPITAL - CAH | 02262018 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02232018 | 03252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180226022 | R1084 | Generalized abdominal pain | ICD10 | 02262018 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T15:06:15+00:00 | Q20473146 | 000046644-01 | KATHERINE | KUHN | CANYON MEDICAL CENTER | 936056 | CATHERINE O | SPIESS | 1801907522 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02262018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180226027 | M542 | Cervicalgia | ICD10 | 02262018 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02192018 | 2018-02-19T09:52:23+00:00 |  | 000082457-01 | Carla | Graves | CEN OH BEHAVIORAL MED | 904727 | JULIE | GUTHRIE | 1699845396 | CEN OH BEHAVIORAL MED | 900146 | 1508936204 | CENTRAL OH BEHAVIORAL MED | 1508936204 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | CENTRAL OH BEHAVIORAL MED | 02262018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03082018 | 04082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180219111 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 02262018 | 99213, 90833 | PSYTX PTAND/FAM W/EANDM 30 MIN | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 | Received requested clinical form the provider  Lori contact with the provider called and wanted to know if she need to submit clinical with each request  because in the past she had not  informed Lori that we need supported clinical on all request.  Lori voiced understanding |  |  |  |  | 0 |
| 02202018 | 2018-02-20T11:48:00+00:00 |  | 000089512-01 | Bruce | Lee | SURG ASSOC OF SPRINGFIEL | 906099 | STEVEN E | CONKEL | 1770615338 | DAYTON ARTIFICIAL LIMB | 908137 | 1720089253 | DAYTON ARTIFICIAL LIMB | 1720089253 | Out of Network Services | OONS | Pre-Service | PRE |  | DAYTON ARTIFICIAL LIMB | 02262018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02202018 | 03202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180221071 | Z89511 | Acquired absence of right leg below knee | ICD10 | 02262018 | L5700, L5637, L5671, L5673, L5645, L5685, L8400, L8420, L8440, L5629, L5940, L5620 | ADDITION TO LOWER EXTREMITY, TEST SOCKET, BELOW KNEE | HCPCS | 1, 1, 1, 2, 1, 2, 6, 6, 2, 1, 1, 1 | 1, 1, 1, 2, 1, 2, 6, 6, 2, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29 | HCPCS | HC |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T09:08:00+00:00 |  | 000069585-01 | PAUL | VITTITOW | OSU INTERNAL MED LLC | 907956 | DAVID R | NUNLEY | 1871607614 | OSU INTERNAL MED LLC | 937566 | 1740231448 | OSU INTERNAL MEDICINE LLC | 1740231448 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU INTERNAL MEDICINE LLC | 02262018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03072018 | 04072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222114 | J449, R0602, R799 | Abnormal finding of blood chemistry, unspecified | ICD10 | 02262018 | 93306 | TTE W/DOPPLER, COMPLETE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 02232018 | 2018-02-23T08:22:00+00:00 | Q20476256 | 000054247-01 | Clara | Baker | UNIVERSITY RADIATION ONC | 928137 | AASHISH | BHATT | 1790953297 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02262018 | Approved | MediGold Essential Care | HealthHelp | Services Not Available In-Network | Outpatient | 02232018 | 04152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223124 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 02262018 | 77412, 77263, 77280, 77290, 77293, 77295, 77332, 77334, 77336, 77387, 77417, 77470, 77011, 77427 | RADIATION TX MANAGEMENT, X5 | CPT | 10, 1, 1, 1, 1, 1, 1, 5, 7, 1, 5, 1, 1, 7 | 10, 1, 1, 1, 1, 1, 1, 5, 7, 1, 5, 1, 1, 7 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52 | CPT | C4 | LVMM for Angie Walter at the James Cancer Hospital  614-293-3448  asked how many units are being requested.  Left contact information., VMM from Angie Walter at the James 614-293-3448.  , 10 fractions and 30 gamma., LVMM for Angie Walter at the James  still need to clarify how units., PC to Angie at the James., 77412=10 visits, 77334=5, 77336=7, 77417=5, 77427=7 |  |  |  |  | 0 |
| 02232018 | 2018-02-23T06:30:07+00:00 | Q20475089 | 000072808-01 | Michael | Albertson | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | COPC CENTRAL OHIO PRIMAR | 948084 | 1194705194 | SVETLANA NOVAK | 1598008179 | Radiology (HH) | OP RAD | Pre-Service | PRE | SVETLANA | NOVAK | 02262018 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 03052018 | 04042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180226035 | R911 | Solitary pulmonary nodule | ICD10 | 02262018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02232018 | 2018-02-23T07:21:00+00:00 | Q20475408 | 000091065-01 | Richard | Cheatham | ALLIANCE PHYSICIANS INC | 910052 | SYED A | NAJEED | 1972560662 | ZOLL LIFECOR CORPORATION | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 02262018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02232018 | 04242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180226044 | I255 | Ischemic cardiomyopathy | ICD10 | 02262018 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
