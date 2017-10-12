Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-10
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-10
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
| 10042017 | 2017-10-04T13:02:15+00:00 | Q19464925 | 000065695-01 | ROBERT | DETILLION | ADENA MEDICAL GROUP LLC | 906495 | GANAPATHY | KRISHNAN | 1063537645 | ADENA MEDICAL GROUP LLC | 913325 | 1235468083 | ADENA MEDICAL GROUP LLC | 1235468083 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA MEDICAL GROUP LLC | 10102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10042017 | 04022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010012 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 10102017 | J9047, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 780, 160 | 780, 160 | Approved, Approved | 181, 181 | HCPCS | HC | J9047: 780: INJECTION  CARFILZOMIB  1 MG  Dispensed as: 65.00 mg  6 treatment(s) each cycle  2 cycle(s): J1100: 160: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  2 cycle(s) |  |  |  |  | 0 |
| 08012017 | 2017-08-01T16:17:35+00:00 |  | 000091287-01 | Edward | Ausborn | OSU INTERNAL MED LLC | 909411 | CRAIG C | HOFMEISTER | 1497785232 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08092017 | 11092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802091 | C9000, E854, I429 | Cardiomyopathy, unspecified | ICD10 | 10102017 | 93306, 99211, 99212, 99213, 99214, 99215, 93306, 83880, 83883, 80053, 85025, 82565, 84520, 82374, 82435, 84295, 84132, 80048, 82306, 85610, 83615, 84550, 84443, 86334, 84156, 84166, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 4, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Void, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 08152017 | 2017-08-15T15:41:37+00:00 |  | 000086202-01 | Frances | Cassandro | OSU INTERNAL MED LLC | 909411 | CRAIG C | HOFMEISTER | 1497785232 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10102017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 08182017 | 11182017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815172 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 10102017 | 99211, 99212, 99213, 99214, 99215, 86334, 86334, 82784, 84165, 83883, 80053, 85025, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 6, 0, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 6, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Void, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T09:11:32+00:00 | Q19492061 | 000098519-01 | CAROLYN | WYNN | MERCY HEALTH PHYSICIANS | 923517 | JASON W | ULITZSCH | 1720330657 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 10102017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10092017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010039 | M545 | Low back pain | ICD10 | 10102017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T09:47:21+00:00 | Q19492842 | 000108909-01 | Becky | Baynum | THE UROLOGY GROUP | 921736 | DOUGLAS E | FEENEY | 1649216326 | FORT HAMILTON HOSPITAL | 926711 | 1104867167 | FORT HAMILTON HOSPITAL | 1063447167 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FORT HAMILTON HOSPITAL | 10102017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 11102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010049 | N3021 | Other chronic cystitis with hematuria | ICD10 | 10102017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10042017 | 2017-10-04T08:17:19+00:00 | Q19459123 | 000115183-01 | Peggy | Willis | GENESIS PRIMARY CARE PHY | 922101 | WALTER J | WIELKIEWICZ | 1063497824 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 10102017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10092017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010058 | R0609 | Other forms of dyspnea | ICD10 | 10102017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09262017 | 2017-09-26T09:39:00+00:00 | Q19397041 | 000088136-01 | Nicholas | Nye | OHIO PAIN CLINIC LLC | 910334 | AMOL | SOIN | 1316135585 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 10102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09262017 | 10262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010065 | M542 | Cervicalgia | ICD10 | 10102017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09302017 | 2017-09-30T12:26:03+00:00 | Q19436233 | 000075215-01 | Karen | Duvall | ALLIANCE PHYSICIANS INC | 917251 | MANISHA M | NANDA | 1164634937 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | INJU & RAJ SOIN MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09302017 | 10302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010067 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 10102017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10022017 | 2017-10-02T10:12:00+00:00 | Q19440336 | 000052190-01 | RUTH | PELPHREY | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MADISON COUNTY HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10022017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010071 | R911 | Solitary pulmonary nodule | ICD10 | 10102017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10052017 | 2017-10-05T10:04:35+00:00 | Q19472320 | 000099029-01 | Joan | Houk | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 10102017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10052017 | 11042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010080 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 10102017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T08:42:41+00:00 | Q19491795 | 000012322-01 | EUGENE | SMITH | COPC CENTRAL OHIO PRIMAR | 940107 | JAMES A | NATALIE III | 1053535179 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 10102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10092017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010113 | M25512 | Pain in left shoulder | ICD10 | 10102017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10062017 | 2017-10-06T09:20:36+00:00 | Q19482278 | 000029815-01 | NELLIE | WILLIAMS | CARDIOVASCULAR SPEC LLC | 925351 | MOBUSHER | MAHMUD | 1558466227 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10102017 | 12092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010125 | I25119 | Athscl heart disease of native cor art w unsp ang pctrs | ICD10 | 10102017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 10062017 | 2017-10-06T10:29:21+00:00 | Q19483420 | 000026574-01 | ANNA | DECKER | EKG INC | 935423 | TODD N | CARDWELL | 1891794913 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10102017 | 11092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010128 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 10102017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T09:11:07+00:00 |  | 000101742-01 | JUDY | HARRIS | OSU INTERNAL MED LLC | 935660 | PHILIP T | DIAZ | 1114930476 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10102017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 10062017 | 01062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010137 | Z942 | Lung transplant status | ICD10 | 10102017 | G0239, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 24, 1 | 24, 1 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10022017 | 2017-10-02T12:47:16+00:00 | Q19443482 | 000029400-01 | ELAINE | FILMORE | AKSM HEALTHCARE COLLABO | 934886 | DAVID W | STEWART | 1720029903 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 10102017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 10022017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171003107 | C649 | Malignant neoplasm of unsp kidney, except renal pelvis | ICD10 | 10102017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T16:33:16+00:00 | Q19496610 | 000076130-01 | Richard | Sayatovich | GENESIS MEDICAL GRP LLC | 917348 | SCOTT A | WEGNER | 1699729434 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 10102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10102017 | 04082018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010148 | C154 | Malignant neoplasm of middle third of esophagus | ICD10 | 10102017 | J9267, J9045, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 5, 5, 5 | 5, 5, 5 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T16:40:58+00:00 | Q19497241 | 000098486-01 | Perry | Swartz | GENESIS MEDICAL GRP LLC | 952067 | PHU N | TRAN | 1891089587 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 10102017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10102017 | 04082018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010149 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 10102017 | J9060, J9181, J1453, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 6, 18, 6, 6 | 6, 18, 6, 6 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 07272017 | 2017-07-27T11:08:22+00:00 |  | 000082872-01 | Kathy | Sullivan | OSU INTERNAL MED LLC | 908166 | SHAHEEN UL | ISLAM | 1497727739 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10102017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 07272017 | 10272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727127 | C50912, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 10102017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, 85025, 82378, 84156, 82378, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | DUPLICATE REQUEST REC'D TO UPDATE PROVIDER  THIS WAS DONE AS POST APPROVAL CHANGE.  NEW LETTERS SENT TO PROVIDER AND MEMBER |  |  |  |  | 0 |
| 10032017 | 2017-10-03T11:10:48+00:00 |  | 000072678-01 | Philip | Willette | ORTHO ASSOC OF ZANESVILL | 933437 | LACIE D | BAKER | 1194126797 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | DME | DME | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 10102017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 10102017 | 10112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171003147 | M2170 | Unequal limb length (acquired), unspecified site | ICD10 | 10102017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10062017 | 2017-10-06T10:48:12+00:00 |  | 000109137-01 | Salina | Jewell | LOWER LIGHTS CHRISTIAN H | 924708 | JENNIFER J | HARTMAN | 1811008840 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 10102017 | Denied | MediGold Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 10102017 | 10112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171006144 | I7409, M25552, Q6589, Q669 | Congenital deformity of feet, unspecified | ICD10 | 10102017 | K0898 | Power wheelchair NOC | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | LVMM for Seth at Rehab Medical 7665-425-0227  requested call back  inquired about specific info 300ES and the Power Mobility Device LCD., Request sent to Seth at Rehab Medical 844-429-9452., Will wait on call back to process further., 2:18 PM 10/6/2017 Conversion Record,    [RFPD050.tmp.PRT],    Type: application/x-pcl,    G3 to TIFF attempt 1: Success (299ms),    Image Optimization attempt 1: Success (5ms),    PCL6 attempt 1: Success (473ms),    (COCBFXTRFAF01:WORKSRV3), , 2:18 PM 10/6/2017 Conversion Record,    Successfully created cover sheet.,    Type: message/rfc822,    G3 to TIFF attempt 1: Success (25ms),    GhostScript TIFF attempt 1: Success (382ms),    PhantomJS attempt 1: Success (624ms),    Resubmitted [text/html],    MHTML attempt 1: Success (16ms) [text/html],    (COCBFXTRFAF01:WORKSRV6), , 2:19 PM 10/6/2017 Transmission Record,    Sent to: Seth,    Phone: 918444299452,    Billing information: ''  '',    Remote ID: Rehab Medical,    Unique ID: RF259D790C4C247,    Elapsed time: 5 minutes  31 seconds.,    Used channel 6 on server COCBAP-DTRANS01.,    No ANI data.,    No AOC data.,    Resulting status code (0/339; 0/0): Success,    Pages sent: 1 - 14,    Delegate ID: , PC from Seth  relays that Rehab medical delivered a POV in the past  member didn't accept the chair because the base/wheels weren't big enough  Seth felt that she intended to go outside with chair.  , He explains that the requested chair 600ES is the Cadillac of all POV's and the no Medicare company covers it because there are other chairs of similar quality that meet the LCD., He is going to get back to me on  more specifics related to this chair and what is typically covered., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10082017 | 2017-10-08T09:48:09+00:00 |  | 000008037-01 | LOWELL | ALIFF | BUCKEYE DERMATOLOGY INC | 906112 | DEAN W | HEARNE | 1932117579 | BUCKEYE DERMATOLOGY INC | 906112 | 1568560456 | DEAN W HEARNE | 1932117579 | DME | DME | Pre-Service | PRE | DEAN W | HEARNE | 10102017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 10102017 | 10112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171009091 | I509 | Heart failure, unspecified | ICD10 | 10102017 | A6531 | GRADIENT COMPRESSION STOCKING, BELOW KNEE, 30-40 MMHG, EACH | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Outreach to provider for clinical documentation made., PC to member  he is very HOH  gives permission to speak to his wife Meredith on his behalf., She relays that he has had ulcers on his feet in the past  almost always has swelling  once had to have a scab removed on his foot., He doesn't currently have any open area's or ulcers., She took a prescription to the DME store near her house and they told her that compression stocking are not a covered medicare benefit., She called in to request the stocking hoping that they might be approved for coverage., Clinical information was received from his doctor  he has had ulcers on his feet in the past but nothing to support CMS guidelines for coverage; ie: open venous stasis ulcers that require debridement., Advised that the item will be denied by the medical director and she would get a letter in the mail stating this., She understood and thanked me for trying., ROI form completed, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10092017 | 2017-10-09T14:06:05+00:00 |  | 000056326-01 | BECKY | CHILCOTE | COLS VASCULAR MED INC | 903174 | RANDALL S | SLAYBAUGH | 1609837335 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Hyperbaric Oxygen | HO | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10052017 | 11152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009152 | E11621, L97414 | Non-prs chr ulcer of right heel and midfoot w necros bone | ICD10 | 10102017 | G0277, 99183 | PHYSICIAN ATTENDANCE AND SUPERVISION OF HYPERBARIC OXYGEN THERAPY, PER | CPT | 1, 30 | 1, 30 | Approved, Approved | 42, 42 | CPT | C4 |  |  |  |  |  | 0 |
| 09062017 | 2017-09-06T07:12:00+00:00 | Q19244677 | 000074643-01 | Beverly | Carter | COPC CENTRAL OHIO PRIMAR | 942151 | LAURA A | MAHER | 1912299074 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 10102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09072017 | 10072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907066 | R222 | Localized swelling, mass and lump, trunk | ICD10 | 10102017 | 71250, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 0, 1 | 1, 1 | Void, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09112017 | 2017-09-11T08:51:27+00:00 |  | 000112047-01 | TOMMY | CROMWELL | KATZ, STEVEN E | 936995 | STEVEN E | KATZ | 1518906866 | OSU COLLEGE OF OPTOMETRY | 909322 | 1710900683 | ROANNE FLOM | 1699764886 | Out of Network Services | OONS | Pre-Service | PRE | ROANNE | FLOM | 10102017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 09112017 | 11112017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170911087 | H4720 | Unspecified optic atrophy | ICD10 | 10102017 | G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1 | 1 | Approved | 62 | HCPCS | HC | request rec'd to change dates on this auth. |  |  |  |  | 0 |
