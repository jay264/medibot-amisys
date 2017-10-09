Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-05
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-05
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
| 10042017 | 2017-10-04T15:36:37+00:00 |  | 000055345-01 | ERIC | CROKER | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10112017 | 01112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004167 | C321, R130 | Aphagia | ICD10 | 10052017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10042017 | 2017-10-04T10:46:42+00:00 |  | 000101742-01 | JUDY | HARRIS | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10052017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 10042017 | 01042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004166 | Z942 | Lung transplant status | ICD10 | 10052017 | 82040, 84075, 84460, 84450, 84448, 84447, 84155, 83735, 84100, 85730, 85610, 84439, 84443, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 82310, 86808, 84550, 80197, 87497, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10042017 | 2017-10-04T09:25:47+00:00 |  | 000068314-01 | MICHAEL | BURTON | OSU SURGERY LLC | 908443 | AMER | RAJAB | 1700831864 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10052017 | 11052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004114 | N186 | End stage renal disease | ICD10 | 10052017 | 99205, 99291, 99201, 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T13:47:37+00:00 |  | 000096342-01 | Jannie | Byndon | TRISTATE CENTERS FOR SIG | 921617 | MARK A | CEPELA | 1730181009 | TRISTATE CENTERS FOR SIGHT SURG CTR | 926154 | 1871698894 | TRISTATE CENTERS FOR SIGHT SURG CTR | 1871698894 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | TRISTATE CENTERS FOR SIGHT SURG CTR | 10052017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10232017 | 11232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171003157 | H02532, H02535 | Eyelid retraction left lower eyelid | ICD10 | 10052017 | 15732, 67950 | CANTHOPLASTY | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 10042017 | 2017-10-04T07:34:00+00:00 | Q19458603 | 000100929-01 | Melvin | Shetler | OH ONCOLOGY & HEMATOLOGY | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 10052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10042017 | 11032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171005021 | C8333 | Diffuse large B-cell lymphoma, intra-abdominal lymph nodes | ICD10 | 10052017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08262017 | 2017-08-26T14:07:00+00:00 | Q19183298 | 000036877-01 | Chun | Sachs | CEN OH UROLOGY GRP INC | 901105 | LINDA | OSBORNE | 1861463721 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08262017 | 09252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170905048 | R319 | Hematuria, unspecified | ICD10 | 10052017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09122017 | 2017-09-12T13:59:00+00:00 | Q19292893 | 000099802-01 | Elden | Acker | ALLIANCE PHYSICIANS INC | 906934 | BRIAN P | SCHWARTZ | 1255315453 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 10052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09182017 | 10182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170914040 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 10052017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10042017 | 2017-10-04T15:38:16+00:00 |  | 000101170-01 | Gregory | Fyffe | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | DME | DME | Pre-Service | PRE |  | UNKNOWN PROVIDER | 10052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10052017 | 12052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004168 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 10052017 | E0486 | ORAL DEVICE/APPLIANCE USED TO REDUCE UPPER AIRWAY COLLAPSIBI | HCPCS | 1 | 1 | Approved | 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 10042017 | 2017-10-04T13:11:50+00:00 | Q19465067 | 000108092-01 | Terry | Perry | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 10052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10172017 | 12162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171005074 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 10052017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T14:11:03+00:00 | Q19455116 | 000076729-01 | Ralph | Spires | PARS NEUROSURG ASSOC INC | 924058 | JAY A | BAUERLE | 1265498604 | PARS NEUROSURG ASSOC INC | 924015 | 1457396152 | PARS NEUROSURGICAL ASSOCIATES INC | 1457396152 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PARS NEUROSURGICAL ASSOCIATES INC | 10052017 | Approved | MediGold Southeast OH Essential Care |  | Medical Criteria Met | Outpatient | 10032017 | 11022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171005022 | R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 10052017 | 70544, 70549 | MR ANGIOGRAPH NECK W/O&W DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T13:50:00+00:00 | Q19414679 | 000033389-01 | ARTHUR | TIMMONS | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 10052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09272017 | 11262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171005106 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 10052017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T10:57:51+00:00 |  | 000083115-01 | Linda | Phillips | MEDICAL & SURG ASSOC INC | 950991 | JEREMY | CAMPBELL | 1477533826 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 10052017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09272017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170927162 | G40209, G40909, R55 | Syncope and collapse | ICD10 | 10052017 | 93229, 93270, 95951, 95816, 95957 | DIGITAL ANALYSIS OF ELECTROENCEPHALOGRAM (EEG) (EG, FOR EPILEPTIC SPIK | CPT | 1, 1, 3, 1, 3 | 1, 1, 3, 1, 3 | Approved, Approved, Approved, Approved, Approved | 43, 43, 43, 43, 43 | CPT | C4 |  |  |  |  |  | 0 |
| 10052017 | 2017-10-05T08:13:53+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 917202 | SAMANTHA M | JAGLOWSKI | 1669674271 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10052017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10092017 | 12092017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171005088 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 10052017 | 93306, 94010, 82805, 93000, 71020, 38221, 83735, 85025, 84100, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 85730, 85610, 84550, 83615, 83891, 83909, 83912, 80053, 82728, 84165, 86695, 86645, 86644, 86696, 87801, 86665, 86703, 87340, 86803, 83890, 83894, 83912, 83898, 86900, 86901, 86850, 87081, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 10052017 | 2017-10-05T14:17:17+00:00 |  | 000099440-01 | Leonard | Sutton | OSU UROLOGY LLC | 939464 | KAMAL S | POHAR | 1952350985 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10102017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171005144 | C675 | Malignant neoplasm of bladder neck | ICD10 | 10052017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
