Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-30
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-30
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
| 10232017 | 2017-10-23T11:51:08+00:00 |  | 000096301-01 | Dennis | Fyffe | CLEVELAND CLINIC FNDN | 940150 | RONALD C | STARLING | 1669572962 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 10302017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12282017 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023113 | M810, Z941 | Heart transplant status | ICD10 | 10302017 | 99214, 93306, 77080, 71020, 93010, 80053, 83735, 80197, 85025, 81003, 86849, 36415, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63 | HCPCS | HC |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T08:49:24+00:00 |  | 000011112-01 | VIRGINIA | CASTO | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 10302017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10242017 | 12242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024113 | I480 | Paroxysmal atrial fibrillation | ICD10 | 10302017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 62 | CPT | C4 |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T08:59:44+00:00 |  | 000028444-01 | ROBERT | ELLIOTT | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 10302017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10242017 | 12242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024136 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 10302017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 62 | CPT | C4 |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T06:44:00+00:00 | Q19512635 | 000020886-01 | CARL | EUBEL | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 10302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 12102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171013019 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 10302017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 10172017 | 2017-10-17T12:39:03+00:00 |  | 000085098-01 | Cynthia | Wallace | CLEVELAND CLINIC FNDN | 936488 |  | CLEVELAND CLINIC FNDN | 1679525919 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 10302017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 10302017 | 01302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018135 | K529, Z9884 | Bariatric surgery status | ICD10 | 10302017 | 93350, 94010, 74245, 95250, 43239, 45380, 71250, 70450, 74178, 74010, 80053, 85025, 86147, 85300, 81241, 83090, 85303, 85306, 81240, 85613, 81241, 85613, 85732, 85610, 85730, 81270 | JAK2 GENE | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | Received voice request for status of authorization from April at CCF.  Gave her a status of IN-PROCESS., received a return call from Cleveland Clinic( Jackie) regarding this patients requests. Cleveland Clinic states that the referral came from the office of Ben Thomas for possible gut transplant following a 1992 gastric bypass.  Cleveland clinic reports that after speaking to the patient she is likely NOT a candidate for transplantation as she is not on TPN at this time.  Reports that Medigold is secondary.  Patient is actually now going to Cleveland Clinic evaluation of POSSIBLE  nothing definite  for gastric by-pass reversal.  PATIENT IS NOT A CANDIDATE FOR TRANSPLANTATION ., Spoke again with Jackie for clarification.  The requested CPT codes are for Surgical Gut rehabilitation service as their program is a dual program.  They aside from transplantation offer surgical gut rehabilitation and the requested codes are for evaluation into the rehabilitation program with possible reversal of gastric bypass. |  |  |  |  | 0 |
| 10182017 | 2017-10-18T09:57:51+00:00 | Q19568444 | 000079754-01 | Rebecca | Sellers | ALLIANCE PHYSICIANS INC | 946863 | MELISSA D | ALCAZAR | 1528429750 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | INJU & RAJ SOIN MEDICAL CENTER | 10302017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 10192017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171020012 | C8200 | Follicular lymphoma grade I, unspecified site | ICD10 | 10302017 | 71260, 74177, 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10192017 | 2017-10-19T09:37:06+00:00 | Q19578929 | 000064346-01 | GARRY | KENT | RADIOLOGY INC | 935042 | DOUGLAS W | WIDMAN | 1669461828 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10192017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171020066 | C61 | Malignant neoplasm of prostate | ICD10 | 10302017 | 72195 | MRI PELVIS W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10192017 | 2017-10-19T12:37:13+00:00 | Q19582814 | 000066376-01 | ETHEL | GRUBB | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 10302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11082017 | 05072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171020119 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 10302017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 24 | 24 | Approved | 181 | HCPCS | HC | J3489: 24: Zoledronic Acid 4 mg  IV  day 1  every 28 days  6 cycles |  |  |  |  | 0 |
| 10202017 | 2017-10-20T11:58:36+00:00 |  | 000076560-01 | Nile | Hayes | EYE CARE ASSOC OF GREATE | 933428 | DANIEL J | HAMMER | 1346575479 | TRIHEALTH EVENDALE HOSPITAL | 924752 | 1053655738 | TRIHEALTH EVENDALE HOSPITAL | 1053655738 | Out of Network Services | OONS | Pre-Service | PRE |  | TRIHEALTH EVENDALE HOSPITAL | 10302017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 10242017 | 11242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171020152 | H2513, H401132 | PRIMARY OPEN-ANGLE GLAUCOMA, BILATERAL, MODERATE STAGE | ICD10 | 10302017 | 66984, 0191T | INSERT ANT SEGMENT DRAIN INT | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 06132017 | 2017-06-13T16:32:34+00:00 |  | 000078945-01 | Elmer | Shutts Jr. | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10302017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 06152017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170614092 | C030 | Malignant neoplasm of upper gum | ICD10 | 10302017 | 99211, 99212, 99213, 99214, 99215, 21076, 21077, 21087, 21079, 21080, 21081, 21082, 21083, 21084, 21085, 21086, 21087, 21088, 21089, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10252017 | 2017-10-25T13:32:55+00:00 |  | 000061212-01 | THELMA | JOHNSON | MIDWEST DYSPHAGIA CONSUL | 942344 | ANGELA R | HARDY | 1083048474 | THE VINEYARDS AT CONCORD | 928631 | 1104905173 | THE VINEYARDS AT CONCORD | 1104905173 | Part B Therapy | OP THER | Pre-Service | PRE |  | THE VINEYARDS AT CONCORD | 10302017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10302017 | 11242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026102 | G309, G4089, R262, R296 | Repeated falls | ICD10 | 10302017 | 97010, 97035, 97118, 97112, 97110, 97530, 97535, 92526, 92610 | EVALUATE SWALLOWING FUNCTION | CPT | 16, 16, 16, 16, 16, 16, 16, 16, 16 | 16, 16, 16, 16, 16, 16, 16, 16, 16 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 26, 26, 26, 26, 26, 26, 26, 26, 26 | CPT | C4 |  |  |  |  |  | 0 |
| 10232017 | 2017-10-23T08:26:00+00:00 | Q19598655 | 000079053-01 | Robert | Smith | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 10302017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10232017 | 04212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024063 | C61 | Malignant neoplasm of prostate | ICD10 | 10302017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 10192017 | 2017-10-19T10:40:00+00:00 | Q19582193 | 000117833-01 | George | Hammock | THE UROLOGY GROUP | 921693 | MARK G | DELWORTH | 1275579856 | THE UROLOGY GROUP | 922524 | 1568404846 | THE UROLOGY GROUP | 1568404846 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | THE UROLOGY GROUP | 10302017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10192017 | 04172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024115 | C61 | Malignant neoplasm of prostate | ICD10 | 10302017 | J9217, J0897 | Denosumab injection | HCPCS | 6, 60 | 6, 60 | Approved, Approved | 181, 181 | HCPCS | HC | J9217: 6: LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION)  7.5 MG  Dispensed as: 22.50 mg  1 treatment(s) each cycle  2 cycle(s): J0897: 60: INJECTION  DENOSUMAB  1 MG  Dispensed as: 60.00 mg  1 treatment(s) each cycle  1 cycle(s) |  |  |  |  | 0 |
| 10232017 | 2017-10-23T13:51:51+00:00 |  | 000040244-01 | JOYCE | CLARK | OSU INTERNAL MED LLC | 925720 | JON | MICKLE | 1851595664 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10302017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10232017 | 11232017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024146 | C9501 | Acute leukemia of unspecified cell type, in remission | ICD10 | 10302017 | 93306, 71020, 94729, 94010, 94060, 94070, 94375, 94726, 94727, 94728, 94240, 94260, 94720, 36600, 87081, 38221, 88313, 88237, 88262, 88271, 88275, G0364, 93005, 86900, 86901, 86850, 36415, 36591, 36592, 85025, 82728, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 84100, 84165, 84155, 85730, 85610, 84450, 83615, 80048, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10232017 | 2017-10-23T15:08:19+00:00 |  | 000017997-01 | LARRY | WALSH | OSU INTERNAL MED LLC | 912908 | BETH A | CHRISTIAN | 1194940783 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10302017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10242017 | 01242018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023119 | C8335 | Diffus large B-cell lymph, nodes of ing rgn and lower limb | ICD10 | 10302017 | 85025, 80053, 82232, 81503, 81500, 82784, 83615, 82040, 84075, 84450, 82248, 82247, 84155, 84166, 84550, 86335, 82784, 84165, 86703, 80074, 86334, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10302017 | 2017-10-30T13:49:12+00:00 |  | 000087644-01 | Leonard | Dickerson | PRADEEP K PANDYA MD INC | 937272 | PRADEEP K | PANDYA | 1396721486 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10302017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10302017 | 12302017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171030026 | N201 | Calculus of ureter | ICD10 | 10302017 | 99202, 99203, 99204, 99205, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 2 | 1, 1, 1, 1, 1, 1, 1, 1, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T17:19:43+00:00 |  | 000074925-01 | Marie | Wohl | HEALOGICS SPECIALTY PHYS | 952320 | MATTHEW | HIGHFIELD | 1245603828 | HEALOGICS SPECIALTY PHYS | 949832 | 1124430491 | HEALOGICS SPECIALTY PHYSICIANS OF OH | 1124430491 | Part B Therapy | OP THER | Pre-Service | PRE |  | HEALOGICS SPECIALTY PHYSICIANS OF OH | 10302017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10102017 | 12262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012138 | L02215 | Cutaneous abscess of perineum | ICD10 | 10302017 | 99305, 99306, 99307, 99308, 99309, 11042 | DEBRIDEMENT SKIN & SUBCU TISSUE | CPT | 12, 12, 12, 12, 12, 1 | 12, 12, 12, 12, 12, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 78, 78, 78, 78, 78, 78 | CPT | C4 |  |  |  |  |  | 0 |
