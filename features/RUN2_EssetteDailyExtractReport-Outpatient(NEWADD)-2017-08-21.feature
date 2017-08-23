Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-21
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-21
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
| 08102017 | 2017-08-10T17:06:17+00:00 | Q19068653 | 000020641-01 | ROBERT | CLIFTON | CEN OH UROLOGY GRP INC | 901105 | LINDA | OSBORNE | 1861463721 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 08212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 02072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812071 | C61 | Malignant neoplasm of prostate | ICD10 | 08212017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 08092017 | 2017-08-09T14:07:15+00:00 | Q19053532 | 000029726-01 | Bernard | Edwards | OH ONCOLOGY & HEMATOLOGY | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08222017 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811066 | C61 | Malignant neoplasm of prostate | ICD10 | 08212017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 8 | 8 | Approved | 181 | HCPCS | HC | J9217: 8 Leuprolide 22.5 mg  IM  day 1  every 84 days  2 cycles |  |  |  |  | 0 |
| 08212017 | 2017-08-21T07:11:39+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09122017 | 10172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821062 | C4011 | Malignant neoplasm of short bones of right upper limb | ICD10 | 08212017 | 97161, 97162, 97163, 97164, 97760, 97140, 97535, 97530, 97110, 97112, 97035, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36 | HCPCS | HC |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T12:43:22+00:00 | Q19127517 | 000034694-01 | WILLIAM | FOSTER | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08182017 | 09172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821126 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 08212017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T11:09:09+00:00 |  | 000008742-01 | VIRGINIA | PACK | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 08212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08212017 | 11192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810123 | R002 | Palpitations | ICD10 | 08212017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T16:29:31+00:00 | Q19057638 | 000111157-01 | Dorothea | Morgan | ALLIANCE PHYSICIANS INC | 906600 | MALEK M | SAFA | 1427016914 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER SYCAMORE | 08212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811009 | C8330 | Diffuse large B-cell lymphoma, unspecified site | ICD10 | 08212017 | 70491, 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08082017 | 2017-08-08T13:53:00+00:00 | 19043930 | 000067445-01 | SAMIR | HANNA | BELLBROOK FAMILY PRCT | 915952 | JOHN E | MURPHY IV | 1508044082 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 08212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809119 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 08212017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Reached out to provider requesting clinical.  855.574.7653; Spoke with Charlie A and he will send clinical. |  |  |  |  | 0 |
| 08172017 | 2017-08-17T14:53:24+00:00 | Q19119756 | 000034085-01 | ANN | SHUSTER | ADENA MEDICAL GROUP LLC | 948442 | ROBERT E | LEETH | 1881657237 | GREENFIELD AREA MED CTR | 916533 | 1215960901 | GREENFIELD AREA MEDICAL CENTER SNF | 1235155425 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GREENFIELD AREA MEDICAL CENTER SNF | 08212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08172017 | 09162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821078 | S8012XA | Contusion of left lower leg, initial encounter | ICD10 | 08212017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08172017 | 2017-08-17T14:15:22+00:00 | Q19102427 | 000053113-01 | ROBERTA | BRITTON | ADENA MEDICAL GROUP LLC | 904351 | BEVERLY G | TOLLE | 1275558272 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 08212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821051 | R109 | Unspecified abdominal pain | ICD10 | 08212017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T12:01:50+00:00 |  | 000053699-01 | JACQUELIN | TURBEN | FAIRFIELD HLTHCARE PROFS | 910849 | JEREMY W | BUCKLEY | 1720106248 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 08212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08172017 | 09172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809123 | R002 | Palpitations | ICD10 | 08212017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 08172017 | 2017-08-17T14:51:16+00:00 | Q19119582 | 000096018-01 | Sandra | Montgomery | ALLIANCE PHYSICIANS INC | 903445 | THOMAS J | REID | 1245296409 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 08212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08172017 | 09162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821024 | C569 | Malignant neoplasm of unspecified ovary | ICD10 | 08212017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08172017 | 2017-08-17T12:49:30+00:00 | Q19117237 | 000039121-01 | Harry | Bales | KNOX COMMUNITY HSP PHYS | 908962 | JAWAHAR | PALANIAPPAN | 1083726400 | KNOX COMMUNITY HSP PHYS | 924097 | 1154483022 | DAVID J MCCANN | 1447302443 | Radiology (HH) | OP RAD | Pre-Service | PRE | DAVID J | MCCANN | 08212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08182017 | 09172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170818027 | R079 | Chest pain, unspecified | ICD10 | 08212017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T13:33:02+00:00 | Q19128422 | 000083910-01 | Ruth | Davis | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | KNOX COMMUNITY HOSP GRP | 938072 | 1295761963 | KNOX COMMUNITY HOSPITAL 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL 1500 | 08212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08212017 | 09202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821104 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 08212017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08172017 | 2017-08-17T15:07:39+00:00 | Q19120036 | 000039985-01 | MARGARET | BRAHAM | MOUNT CARMEL HLTH PRVDRS | 935259 | HYUNG S | KIM | 1891794814 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09202017 | 11192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821079 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 08212017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T12:01:53+00:00 | Q19102786 | 000097626-01 | Donald | Cave | OSU OTOLARYNGOLOGISTS LL | 935263 | EDWARD E | DODSON | 1871686147 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY MEMORIAL HOSPITAL - CAH | 08212017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08122017 | 09112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821052 | D333 | Benign neoplasm of cranial nerves | ICD10 | 08212017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T13:10:34+00:00 | Q19064615 | 000073186-01 | Karolyn | Shaw | MOUNT CARMEL HLTH PRVDRS | 933631 | SHILPA A | PADIA | 1760799175 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811038 | C50312 | Malig neoplasm of lower-inner quadrant of left female breast | ICD10 | 08212017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T08:50:24+00:00 | Q19123138 | 000110126-01 | Esther | Flowers | SURG INTERVENTIONS LLC | 937369 | HOWARD L | REEVES | 1639245350 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 09222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821076 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 08212017 | 70498 | CT ANGIOGRAPHY, NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T14:43:39+00:00 | Q19066472 | 000087451-01 | William | Short | DAYTON PHYSICIANS LLC | 909670 | KETAN S | SHAH | 1083664023 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 08212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 02072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812058 | C61 | Malignant neoplasm of prostate | ICD10 | 08212017 | J9293, J7510 | PREDNISOLONE ORAL PER 5 MG | HCPCS | 40, 336 | 40, 336 | Approved, Approved | 181, 181 | HCPCS | HC | J9293: 40 Mitoxantrone 12 mg/m2  IV  day 1  every 21 days  8 cycles; J7510: 336 Prednisone 5 mg  PO  BID  QD  every 21 days  8 cycles |  |  |  |  | 0 |
| 08182017 | 2017-08-18T11:04:18+00:00 | Q19101778 | 000113878-01 | BRENDA | KIRKEY-STONE | JEFFREY J HAGGENJOS | 916460 | JEFFREY J | HAGGENJOS | 1417940172 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08212017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821050 | M25519 | Pain in unspecified shoulder | ICD10 | 08212017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T11:31:01+00:00 | Q19062742 | 000075563-01 | Barbara | Dowell | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 02062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811027 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 08212017 | J9271 | INJ PEMBROLIZUMAB | HCPCS | 1600 | 1600 | Approved | 181 | HCPCS | HC | J9271: 1600 Pembrolizumab 200 mg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 08152017 | 2017-08-15T06:16:32+00:00 |  | 000037946-01 | PETER | PALM | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08212017 | 10022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815064 | I890 | Lymphedema, not elsewhere classified | ICD10 | 08212017 | 97161, 97162, 97163, 97164, 97140, 97535, 97530, 97110, 97112, 97116, 97035, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43 | HCPCS | HC |  |  |  |  |  | 0 |
| 08152017 | 2017-08-15T12:09:39+00:00 | Q19094468 | 000101359-01 | RICKY | CRAIG | ONCOLOGY HEMATOLOGY CARE | 923344 | JAMES | ESSELL | 1265425078 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 08212017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817009 | C8338 | Diffuse large B-cell lymphoma, lymph nodes of multiple sites | ICD10 | 08212017 | 71250, 70490, 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T13:22:20+00:00 | Q19042236 | 000045979-01 | LEWIS | FENTON | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 02122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811010 | C9310 | Chronic myelomonocytic leukemia not achieve remission | ICD10 | 08212017 | J9025, J1626 | INJECTION, GRANISETRON HYDROCHLORIDE, 100 MCG | HCPCS | 3906, 240 | 3906, 240 | Approved, Approved | 181, 181 | HCPCS | HC | J9025: 3906 INJECTION  AZACITIDINE  1 MG  Dispensed as: 93.00 mg  7 treatment(s) each cycle  6 cycle(s); J1626: 240 Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 08102017 | 2017-08-10T10:02:35+00:00 | Q19022360 | 000030358-01 | Joseph | Sullivan | CEN OH UROLOGY GRP INC | 937030 | RICHARD | KLUMP | 1114971512 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 08212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812096 | C61 | Malignant neoplasm of prostate | ICD10 | 08212017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 08172017 | 2017-08-17T08:39:47+00:00 | Q19100800 | 000070129-01 | Rita | Brooks | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09062017 | 03052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170818009 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 08212017 | J9206, J1100, J2469, J0640, J9190, J9035 | INJECTION, BEVACIZUMAB, 10 MG | HCPCS | 216, 960, 120, 192, 144, 444 | 216, 960, 120, 192, 144, 444 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T13:19:36+00:00 | Q19104568 | 000083819-01 | Kristin | Mills | SLEEP DISORDERS CENTERS- | 911072 | MICHAEL J | VALLE | 1285636050 | KETTERING RADIOLOGISTS | 939040 | 1346299153 | KETTERING RADIOLOGISTS | 1346299153 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING RADIOLOGISTS | 08212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821058 | G35 | Multiple sclerosis | ICD10 | 08212017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T09:30:29+00:00 | Q19123868 | 000099413-01 | John | Davies | FAIRFIELD HLTHCARE PROFS | 927434 | ALAEDDIN | AYYAD | 1548434046 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08222017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821067 | R079 | Chest pain, unspecified | ICD10 | 08212017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
