Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-20
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-20
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
| 12182017 | 2017-12-18T14:55:00+00:00 | Q20007760 | 000043515-01 | PATRICIA | EISENMAN | OH ONCOLOGY & HEMATOLOGY | 934906 | P KOTHAI | SUNDARAM | 1538127238 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 12202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12282017 | 06262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220010 | C229 | Malig neoplasm of liver, not specified as primary or sec | ICD10 | 12202017 | J9201, J2469, J1626, J9045 | CARBOPLATIN, 50 MG | HCPCS | 240, 60, 240, 48 | 240, 60, 240, 48 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9201: 240: INJECTION  GEMCITABINE HYDROCHLORIDE  200 MG  Dispensed as: 1870.00 mg  2 treatment(s) each cycle  12 cycle(s): J9045: 48: INJECTION  CARBOPLATIN  50 MG  Dispensed as: 395.70 mg  1 treatment(s) each cycle  6 cycle(s): J2469: 60: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s): J1626: 240: Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 12192017 | 2017-12-19T08:45:38+00:00 | Q20009331 | 000020010-01 | NORMA | YOUNG | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 12202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12272017 | 01262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220017 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 12202017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T12:01:43+00:00 | Q20013075 | 000115996-01 | Sherry | Potter | FRANKLIN CLINIC | 936033 | KIRK M | TUCKER | 1093734501 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12192017 | 01182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220025 | R0602 | Shortness of breath | ICD10 | 12202017 | 78451 | HT MUSCLE IMAGE SPECT, SING | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T10:36:17+00:00 | Q20011430 | 000056217-01 | JOAN | HESS | ADENA MEDICAL GROUP LLC | 911234 | COLLINS N | OKOLIE | 1235331224 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12192017 | 01182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220047 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 12202017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T06:32:10+00:00 | Q20008200 | 000070571-01 | Ester | Pennington | COPC CENTRAL OHIO PRIMAR | 936944 | OLIVIA C | HOWER | 1194708883 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 12202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12192017 | 01182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220060 | G3184 | Mild cognitive impairment, so stated | ICD10 | 12202017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T07:17:41+00:00 | Q20008379 | 000049754-01 | PAMELA | DAVIS | OH PHY MED & REHAB INC | 937306 | JON H | PEARLMAN | 1215915897 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12202017 | 01192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220063 | M25512 | Pain in left shoulder | ICD10 | 12202017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T07:53:15+00:00 | Q20008624 | 000072403-01 | David | Carlson | MADISON FAMILY HEALTH | 937353 | DAVID R | RALSTON | 1164408472 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 12202017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12192017 | 01182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220072 | J849 | Interstitial pulmonary disease, unspecified | ICD10 | 12202017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T14:27:47+00:00 | Q20005710 | 000012126-01 | CAROL | MCGOWAN | ORTHO INSTITUTE OF DAYTO | 916279 | NICOLAS E | GRISONI | 1104959220 | DUBLIN DIAGNOSTIC IMAGIN | 951370 | 1093249781 | PROSCAN IMAGING POLARIS | 1093249781 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING POLARIS | 12202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12182017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220081 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 12202017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T14:48:33+00:00 | Q20006094 | 000078211-01 | Richard | Bloom | COPC CENTRAL OHIO PRIMAR | 927095 | MARK P | HAGEN | 1225358740 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 12202017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 12202017 | 01192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220088 | J920 | Pleural plaque with presence of asbestos | ICD10 | 12202017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T12:00:39+00:00 | Q20003192 | 000078132-01 | Robert | Mcclain Jr | MOUNT CARMEL HLTH PRVDRS | 906705 | FAREED R | SHAIKH | 1609990779 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12202017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01022018 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220104 | R072 | Precordial pain | ICD10 | 12202017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T15:07:46+00:00 |  | 000070034-01 | Bobby | Higginbotham | UNIVERSITY RADIATION ONC | 928811 | DUKAGJIN | BLAKAJ | 1144483272 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12202017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12152017 | 01152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219127 | C320 | Malignant neoplasm of glottis | ICD10 | 12202017 | 92507, 92610, 92611, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T10:37:26+00:00 |  | 000040310-01 | MARGARET | BECHIE | ORTHO TRAUMA SRVS LTD | 909385 | BRUCE G | FRENCH | 1568447696 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 12202017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01022018 | 02022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219133 | T07 | Unspecified multiple injuries | ICD10 | 12202017 | 99214, 73562, 73610, 72190, 72170, 71111 | RIBS INC AP CHEST BILATERAL | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12172017 | 2017-12-17T14:28:00+00:00 | Q19998617 | 000011759-01 | GAYLORD | JOHNSON | OH ONCOLOGY & HEMATOLOGY | 935093 | JEFFREY | ZANGMEISTER | 1871541979 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 12202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12262017 | 06242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219018 | C182 | Malignant neoplasm of ascending colon | ICD10 | 12202017 | J9263, J1100, J2469, J0640, J9035, J9190 | FLUOROURACIL, 500 MG | HCPCS | 3000, 960, 120, 192, 444, 132 | 3000, 960, 120, 192, 444, 132 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 12132017 | 2017-12-13T13:03:00+00:00 | Q19979477 | 000080797-01 | Thomas | Wiant | THE UROLOGY GROUP | 921457 | KEVIN G | CAMPBELL | 1700820776 | THE UROLOGY GROUP | 922524 | 1568404846 | THE UROLOGY GROUP | 1568404846 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | THE UROLOGY GROUP | 12202017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12282017 | 06262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219107 | C61 | Malignant neoplasm of prostate | ICD10 | 12202017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T10:01:00+00:00 | Q2001291 | 000097626-01 | Donald | Cave | MARY RUTAN HOSPITAL PHYS | 941538 | ANDREA K | YOUNG | 1467866517 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY MCAULEY CENTER | 12202017 | Approved | MediGold Southwest OH Essential Care |  | Medical Criteria Met | Outpatient | 12182017 | 01182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220133 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 12202017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T14:12:13+00:00 | Q20023138 | 000073539-01 | Kathryn | Parkinson | THORNVILLE FAM MED CTR | 922011 | LARRY I | COWAN | 1023002011 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 12202017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12202017 | 02202018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220130 | R55 | Syncope and collapse | ICD10 | 12202017 | 93228, 93229, 0296T | EXT ECG RECORDING | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 63, 63, 63 | CPT | C4 | LVMM for Lisa Villaronga at iRhythm Technologies regarding this member., Will fax approval to her if needed., Also received duplicate request from HH and attached.  Provider sent to both HH and us., PON: member is scheduled for placement of a 14 day cardiac event monitor being placed at Fairfield Medical Center on 12/21/17., No ROI on file in Voyager. |  |  |  |  | 0 |
| 12202017 | 2017-12-20T13:53:19+00:00 |  | 000076603-01 | ROGER | HARPER JR | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 12202017 | Approved | MediGold Essential Care | Fax | PPO - Out-of-Network Rate | Outpatient | 12222017 | 01222018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220131 | J8410 | Pulmonary fibrosis, unspecified | ICD10 | 12202017 | 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1 | 1 | Approved | 32 | CPT | C4 | PON-Member in Florida  was in the hospital., Approved for an office visit with the Pulmonologist Dr. Yousuf Dawoodjee, , ROI per Voyager:, Sharon Harper (spouse)  740-398-0043, Timothy (TJ) Harper (son)    614-625-7736 |  |  |  |  | 0 |
