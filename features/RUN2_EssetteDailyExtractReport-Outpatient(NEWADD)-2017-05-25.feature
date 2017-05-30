Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-25
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-25
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
| 05122017 | 2017-05-12T08:36:59+00:00 |  | 000048633-01 | SHARON | JAMES | OSU INTERNAL MED LLC | 928269 | BRENT C | LAMPERT | 1700024577 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05222017 | 06222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512119 | Z941 | Heart transplant status | ICD10 | 05242017 | 93306 | TTE W/DOPPLER, COMPLETE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 11102016 | 2016-11-10T13:46:23+00:00 | Q17096080 | 000028393-01 | SAMMY | JUNK | RADIOLOGY INC | 914289 | ABHAY S | GOKHALE | 1528371937 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11102016 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513014 | D320 | Benign neoplasm of cerebral meninges | ICD10 | 05242017 | 70553, 70553, 77373 | STEROTACTIC BODY RADIATION THERAPY TREATMENT DELIVERY PER FRACTION TO 1 | CPT | 0, 1, 1 | 1, 1, 1 | Void, Approved, Approved | 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T15:49:42+00:00 |  | 000057876-01 | BEVERLY | LITTLE | MOUNT CARMEL HLTH SYS | 944092 | BRITTON D | RINK | 1811034242 | AMBRY GENETICS CORPORATION | 929192 | 1861568784 | AMBRY GENETICS CORPORATION | 1861568784 | Genetic Testing | OP GEN | Pre-Service | PRE |  | AMBRY GENETICS CORPORATION | 05242017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04182017 | 07182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513039 | C189, Z803, Z8041 | Family history of malignant neoplasm of ovary | ICD10 | 05242017 | 81292, 81295, 81298 | MSH6 GENE FULL SEQ | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T13:19:23+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05162017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515108 | C4011, Z96611 | Presence of right artificial shoulder joint | ICD10 | 05242017 | 73060, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T16:32:48+00:00 |  | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05242017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05242017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517090 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 05242017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T11:02:00+00:00 |  | 000109475-01 | Myron | Calendine | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Clinical Trial | TRIAL | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 05242017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 05082017 | 08082017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517119 | C450 | Mesothelioma of pleura | ICD10 | 05242017 | 99215, 99205 | OFFICE CALL - NEW PATIENT | CPT | 10, 1 | 10, 1 | Approved, Approved | 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T08:12:49+00:00 |  | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05252017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05242017 | 06242017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518158 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 05252017 | 77075, 71020, 93306, 33660, 94010, 94060, 94240, 94260, 94720, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 05242017 | 2017-05-24T11:20:38+00:00 | Q18501339 | 000045439-01 | John | Juenger | SPRINGFIELD HEMATOLOGY & | 908018 | FILIX | KENCANA | 1790709301 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 05252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05252017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170525014 | D4621 | Refractory anemia with excess of blasts 1 | ICD10 | 05252017 | J9025 | INJECTION, AZACITIDINE, 1 MG | HCPCS | 6930 | 6930 | Approved | 91 | HCPCS | HC | J9025: 6930 Vidaza 165mg IV days 1-5 8 9 q 28 days x 6 cycles (42treatments).  Total billing units = 6930 |  |  |  |  | 0 |
| 05242017 | 2017-05-24T11:55:24+00:00 | Q18501947 | 000095678-01 | Pamette | Clark | FCMH MED & SURG ASSOC | 937321 | ROBERT R | PICKERING | 1548209844 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 05252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05242017 | 06232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170525019 | R911 | Solitary pulmonary nodule | ICD10 | 05252017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05242017 | 2017-05-24T08:00:40+00:00 | Q18497454 | 000117361-01 | Carol | Buehler | COLONNADE MED GRP INC | 926211 | STEVEN D | KAPETANSKY | 1780871343 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170525087 | F17210 | Nicotine dependence, cigarettes, uncomplicated | ICD10 | 05252017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 05242017 | 2017-05-24T18:41:00+00:00 |  | 000109475-01 | Myron | Calendine | GENESIS PRIMARY CARE PHY | 922019 | AMANDA S | ELSTON | 1952386617 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Clinical Trial | TRIAL | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 05252017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 05252017 | 08232017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170525097 | C450 | Mesothelioma of pleura | ICD10 | 05252017 | 85025, 80053, 84443, 84439, 84480 | TRIIODOTHYRONINE T3; TOTAL (TT-3) | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 05252017 | 2017-05-25T08:07:36+00:00 |  | 000114101-01 | Lenora | Bolinger | UNIVERSITY RADIATION ONC | 928137 | AASHISH | BHATT | 1790953297 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05252017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05312017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170525098 | C311 | Malignant neoplasm of ethmoidal sinus | ICD10 | 05252017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05252017 | 2017-05-25T10:39:31+00:00 | Q18086091 | 000077409-01 | Roger | Osborn | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170525106 | I420 | Dilated cardiomyopathy | ICD10 | 05252017 | 33249, 33225, 33241, C1900, C1721, C1722, C1882, C1777, C1895, C1896, 33264, C1882 | CARDIOVERTER-DEFIBRILLATOR, OTHER THAN SINGLE OR DUAL CHAMBER (IMPLANTAB | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
