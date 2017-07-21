Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-19
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-19
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
| 06022017 | 2017-06-02T17:16:35+00:00 | Q18568281 | 000091896-01 | Fred | Thomas | SPRINGFIELD HEMATOLOGY & | 920373 | ZAW M | BO | 1578701116 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 08312017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605002 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 07192017 | J9041 | INJECTION, BORTEZOMIB, 0.1 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T15:44:37+00:00 |  | 000045288-01 | WANDA | GOOD | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 07192017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07122017 | 08122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170711116 | R001 | Bradycardia, unspecified | ICD10 | 07192017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T08:39:37+00:00 |  | 000094133-01 | Lonnie | Comfort | MOUNT CARMEL HLTH PRVDRS | 942145 | NATHANIEL A | AMOR | 1922235498 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Predetermination Request | PR | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07262017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712147 | G894 | Chronic pain syndrome | ICD10 | 07192017 | 63650, 63685 | INC SUBCU PLCMNT NEUROSTIM RECVR | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T12:54:32+00:00 |  | 000118148-01 | PAMELA | THERRIEN | FAIRFIELD HLTHCARE PROFS | 916318 | JARROD T | BRUCE | 1134162563 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07192017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07122017 | 09122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712161 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 07192017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63 | HCPCS | HC |  |  |  |  |  | 0 |
| 07132017 | 2017-07-13T08:23:33+00:00 |  | 000115652-01 | NANCY | REED | MERCY HEALTH PHYSICIANS | 911073 | TAMER Y | ABOU-ELSAAD | 1255302808 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Out of Network Services | OONS | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 07192017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07132017 | 09132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713097 | G255, G2571 | Drug induced akathisia | ICD10 | 07192017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63 | HCPCS | HC |  |  |  |  |  | 0 |
| 07132017 | 2017-07-13T14:10:25+00:00 |  | 000030769-01 | BEVERLY | COTE | OSU OTOLARYNGOLOGISTS LL | 912050 | MATTHEW | OLD | 1699891242 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07172017 | 09172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713164 | C01 | Malignant neoplasm of base of tongue | ICD10 | 07192017 | 74220, 92611, 99211, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 63, 63, 63, 63 | HCPCS | HC |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T07:32:24+00:00 |  | 000022058-01 | JOHN | PHILLIPS | OSU INTERNAL MED LLC | 911666 | STEVEN K | CLINTON | 1790792968 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07192017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714068 | C61 | Malignant neoplasm of prostate | ICD10 | 07192017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T08:14:22+00:00 |  | 000056964-01 | LOUIS | SHAHEEN | OHIOHEALTH PHYS GRP | 907826 | STEVEN J | YAKUBOV | 1316942782 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Clinical Trial | TRIAL | Pre-Service | PRE |  | RIVERSIDE METHODIST HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07202017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714081 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 07192017 | 71034 | CHEST INCLUDING FLUOROSCOPY | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T13:34:18+00:00 |  | 000065780-01 | JUDITH | COOK | OSU HLTH SYSTEM NEUROSUR | 929919 | BARBARA K | CHANGIZI | 1609075175 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07192017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07172017 | 10172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714117 | G20 | Parkinson's disease | ICD10 | 07192017 | 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T07:22:42+00:00 |  | 000080384-01 | Norma | Ingles | MID OH ONCOLOGY HEMATOLO | 937410 | ROBERT | RUPERT | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07192017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08012017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717111 | K121, K1233, L589, Z08 | Encntr for follow-up exam after trtmt for malignant neoplasm | ICD10 | 07192017 | 99211, 99212, 99213, 99214, 99215, 84443, 84439, 82728, 80053, 85025, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07182017 | 2017-07-18T12:24:58+00:00 |  | 000082331-01 | Robert | Kattine | OSU SURGERY LLC | 914209 | SHERIF R | ABDEL-MISIH | 1255501250 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07192017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07202017 | 10202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170718110 | C169 | Malignant neoplasm of stomach, unspecified | ICD10 | 07192017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T10:18:42+00:00 | Q18845224 | 000104992-01 | Michael | Davis | OH ONCOLOGY & HEMATOLOGY | 928374 | SAMEH | MIKHAIL | 1447455720 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07192017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 01152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719011 | C252 | Malignant neoplasm of tail of pancreas | ICD10 | 07192017 | J9190, J2469, J1100, J9263 | INJECTION, OXALIPLATIN, 0.5 MG | HCPCS | 120, 120, 960, 3960 | 120, 120, 960, 3960 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9190: 120 INJECTION  FLUOROURACIL  500 MG  Dispensed as: 4655.00 mg  1 treatment(s) each cycle  12 cycle(s); J9263: 3960 INJECTION  OXALIPLATIN  0.5 MG  Dispensed as: 165.00 mg  1 treatment(s) each cycle  12 cycle(s); J2469: 120 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  12 cycle(s); J1100: 960 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 07182017 | 2017-07-18T11:57:04+00:00 | Q18886151 | 000049041-01 | CARL | WALTON | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07242017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719016 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 07192017 | 75574, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T16:58:10+00:00 | Q18847678 | 000072893-01 | Barry | Weber | SPRINGFIELD HEMATOLOGY & | 908018 | FILIX | KENCANA | 1790709301 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 01132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719021 | C8388 | Other non-follicular lymphoma, lymph nodes of multiple sites | ICD10 | 07192017 | J9310, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 16, 80 | 16, 80 | Approved, Approved | 181, 181 | HCPCS | HC | J9310: 16 INJECTION  RITUXIMAB  100 MG  Dispensed as: 400.00 mg  4 treatment(s) each cycle  1 cycle(s); J1100: 80 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  1 cycle(s) |  |  |  |  | 0 |
| 07182017 | 2017-07-18T09:08:40+00:00 | Q18880708 | 000113901-01 | Christina | Moss | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719023 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 07192017 | 70460 | COMP. TOMOG. HEAD WITH IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T14:08:56+00:00 | Q18860391 | 000073195-01 | Brenda | Keifer | CARDIOLOGISTS OF GREENE | 904143 | ASHRAF | KORAYM | 1760471692 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | INJU & RAJ SOIN MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719063 | Z950 | Presence of cardiac pacemaker | ICD10 | 07192017 | 33228, C1785, C2619 | PACEMAKER, DUAL CHAMBER, NON RATE-RESPONSIVE (IMPLANTABLE) | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 07182017 | 2017-07-18T13:57:08+00:00 | Q18888475 | 000060190-01 | NANCY | STEWART | LICKING MEM HLTH PROF | 948971 | NINA P | HOURMOUZIS | 1588007017 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719098 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 07192017 | 71270 | CAT SCAN THORAX W/WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07182017 | 2017-07-18T09:45:13+00:00 | Q18883422 | 000008673-01 | CARL | BOWMAN JR | GROVE CITY FAM HLTH INC | 936835 | MICHAEL J | HARPER | 1154361467 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719147 | R51 | Headache | ICD10 | 07192017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07192017 | 2017-07-19T12:28:46+00:00 |  | 000003574-01 | BARBARA | JOHNSTONE | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07192017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07192017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719165 | K1321 | Leukoplakia of oral mucosa, including tongue | ICD10 | 07192017 | 92507, 92610, 92612, 92526, 92597, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07192017 | 2017-07-19T13:24:37+00:00 |  | 000086995-01 | Deborah | Chapman | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07202017 | 10202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719169 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 07192017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83615, 80053, 85652, 86900, 86901, 86850, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07192017 | 2017-07-19T15:49:08+00:00 |  | 000113921-01 | Bonnie | Pace | THE OH STATE UNIVERSITY | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07242017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719173 | J439 | Emphysema, unspecified | ICD10 | 07192017 | 71250, 71020, 93307, 93306, 93320 | DOPPLER ECHOCARDIOGRAPHY, PULSED AND/OR CONTINUOUS WAVE; COMPLETE | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T10:31:33+00:00 |  | 000118725-01 | David | Daniels | PAIN EVALUATION & MANAGE | 924514 | RICHARD M | DONNINI | 1316912413 | PAIN EVALUATION & MANAGE | 902029 | 1811940182 | PAIN EVALUATION & MANAGEMENT CTR OF | 1811940182 | Out of Network Services | OONS | Post-Service | POST |  | PAIN EVALUATION & MANAGEMENT CTR OF | 07192017 | Denied | MediGold Essential Care | Fax | Administrative Denial | Outpatient | 07192017 | 07202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170714104 | E118, Z79891 | Long term (current) use of opiate analgesic | ICD10 | 07192017 | 99211, 99212, 99213, 99214, 99215, 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | , , , , , , , , ,  | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 |  |  |  |  |  | 0 |
