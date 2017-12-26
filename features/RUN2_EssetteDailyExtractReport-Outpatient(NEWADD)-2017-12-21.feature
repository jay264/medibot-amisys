Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-21
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-21
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
| 12142017 | 2017-12-14T15:22:47+00:00 |  | 000093028-01 | Mike | Young | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | DME | DME | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12142017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171215039 | R002 | Palpitations | ICD10 | 12212017 | 0296T | EXT ECG RECORDING | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12152017 | 2017-12-15T14:56:07+00:00 |  | 000038960-01 | RUSSELL | TUCKER | OSU SURGERY LLC | 919591 | MOUNIR J | HAURANI | 1679781546 | OSU SURGERY LLC | 938610 | 1538117551 | OSU SURGERY LLC | 1538117551 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU SURGERY LLC | 12212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01052018 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171215141 | K6812 | Psoas muscle abscess | ICD10 | 12212017 | 99211, 99212, 99213, 99214, 99215, 99024, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T10:48:00+00:00 | Q20007802 | 000044222-01 | JOHN | MEEKER | ADENA MEDICAL GROUP LLC | 914501 | JEFFREY | ROSE | 1710969779 | ADENA MEDICAL GROUP LLC | 913325 | 1235468083 | ADENA MEDICAL GROUP LLC | 1235468083 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA MEDICAL GROUP LLC | 12212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12182017 | 06162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221007 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 12212017 | J0641, J2469, J9190, J9263 | INJECTION, OXALIPLATIN, 0.5 MG | HCPCS | 9600, 120, 24, 2880 | 9600, 120, 24, 2880 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J0641: 9600: INJECTION  LEVOLEUCOVORIN CALCIUM  0.5 MG  Dispensed as: 400.00 mg  1 treatment(s) each cycle  12 cycle(s): J9190: 24: INJECTION  FLUOROURACIL  500 MG  Dispensed as: 760.00 mg  1 treatment(s) each cycle  12 cycle(s): J9263: 2880: INJECTION  OXALIPLATIN  0.5 MG  Dispensed as: 120.00 mg  1 treatment(s) each cycle  12 cycle(s): J2469: 120: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 12202017 | 2017-12-20T08:17:39+00:00 | Q20018656 | 000104101-01 | Phillip | Tripp | COPC CENTRAL OHIO PRIMAR | 935667 | BRYAN N | FELDMAN | 1376578559 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 12212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12202017 | 01192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221012 | R911 | Solitary pulmonary nodule | ICD10 | 12212017 | 71260, 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T09:39:24+00:00 | Q20020085 | 000104726-01 | Ruth | Crow | MARIETTA HLTH CARE PHYS | 922024 | EVA K | GIRO | 1104821420 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 12212017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12282017 | 01272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221020 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 12212017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T08:31:30+00:00 | Q20018853 | 000070900-01 | Anna | Boyer | NORTH CEN OHIO FAM CARE | 913791 | ROBERT E | GOULD | 1972501724 | PROSCAN IMAGING GAHANNA LLC | 903877 | 1912997032 | PROSCAN IMAGING GAHANNA LLC | 1912997032 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING GAHANNA LLC | 12212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12212017 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221025 | M25511 | Pain in right shoulder | ICD10 | 12212017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T08:56:58+00:00 | Q20019269 | 000099865-01 | Charles | Kauffman | ALLIANCE PHYSICIANS INC | 947309 | HASEEB | JAFRI | 1801091541 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 12212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12202017 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221029 | I495 | Sick sinus syndrome | ICD10 | 12212017 | 33229, 33225, C1900, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T08:56:56+00:00 | Q20019291 | 000035017-01 | JAMES | MARSINEK | EKG INC | 935423 | TODD N | CARDWELL | 1891794913 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12202017 | 01192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221030 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 12212017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T10:42:21+00:00 | Q20021264 | 000075845-01 | Gerald | Harrison | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 12212017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12212017 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221046 | R079 | Chest pain, unspecified | ICD10 | 12212017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T12:50:47+00:00 | Q20023366 | 000092307-01 | Romayne | Avery | MERCY HEALTH PHYSICIANS | 921804 | DAVID G | BABBITT | 1346249018 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 12212017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12272017 | 01262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221060 | I25709 | Atherosclerosis of CABG, unsp, w unsp angina pectoris | ICD10 | 12212017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T13:25:39+00:00 | Q20023914 | 000018109-01 | MARJEANNE | MCDONNELL | LICKING MEM HLTH PROF | 936036 | ROBERT W | MUELLER | 1316916752 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01022018 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221077 | M25511 | Pain in right shoulder | ICD10 | 12212017 | 73222 | MRI JOINT UPR EXTREM W/ DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T11:06:31+00:00 |  | 000005236-01 | JAMES | MORGAN | OSU INTERNAL MED LLC | 937566 |  | OSU INTERNAL MEDICINE LLC | 1740231448 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12282017 | 01282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219136 | K838 | Other specified diseases of biliary tract | ICD10 | 12212017 | 43237, 43238, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T14:13:50+00:00 | Q20015362 | 000110498-01 | Alta | Miller | TAJ MEDICAL INC | 906519 | NAJEEB | AHMED | 1972574275 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 03042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221103 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 12212017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T15:20:29+00:00 | Q20016549 | 000076804-01 | Franklin | Bash | COSHOCTON COUNTY MEM HSP | 913615 | DUANE P | POOL | 1073599031 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 12212017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12222017 | 01212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221124 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 12212017 | 70498 | CT ANGIOGRAPHY, NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T07:35:48+00:00 | Q20018279 | 000049314-01 | ELNORA | TAYLOR | COLS PULMONARY ASSOC INC | 937028 | JAMES A | KLEIN | 1679516983 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12212017 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221137 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 12212017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
