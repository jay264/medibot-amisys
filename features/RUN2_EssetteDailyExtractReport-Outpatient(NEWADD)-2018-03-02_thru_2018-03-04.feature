Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-03-02_thru_2018-03-04
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-03-02_thru_2018-03-04
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
| 03012018 | 2018-03-01T09:08:04+00:00 | Q20521002 | 000051322-01 | JOAN | OBRIEN | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03012018 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302049 | M4322 | Fusion of spine, cervical region | ICD10 | 03022018 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T09:24:41+00:00 | Q20521222 | 000043102-01 | GAIL | PIERCE | MOUNT CARMEL HLTH PRVDRS | 907847 | MELISSA A | DINE | 1700084787 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03012018 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302054 | R319 | Hematuria, unspecified | ICD10 | 03022018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T09:37:54+00:00 | Q20521547 | 000110525-01 | PAUL | GARRISON | FIRST SETTLEMENT ORTHOS | 926697 | JOHN S | HENRY | 1427016211 | FIRST SETTLEMENT ORTHOS | 930497 | 1215992458 | JACOB B SMITH | 1568657062 | Radiology (HH) | OP RAD | Pre-Service | PRE | JACOB B | SMITH | 03022018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03022018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302062 | M25512 | Pain in left shoulder | ICD10 | 03022018 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T09:32:29+00:00 | Q20521708 | 000064611-01 | ROBERT | DONALDSON | FAIRFIELD HLTHCARE PROFS | 915260 | CHRISTIAN T | TENCZA | 1336292085 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03052018 | 04042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302063 | J984 | Other disorders of lung | ICD10 | 03022018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T14:15:24+00:00 |  | 000049570-01 | JAMES | WALLER | SMITH FACIAL PLASTICS | 908002 | STEPHEN P | SMITH JR | 1518923119 | SMITH FACIAL PLASTICS | 908002 | 1043614589 | STEPHEN P SMITH JR | 1518923119 | Predetermination Request | PR | Pre-Service | PRE | STEPHEN P | SMITH JR | 03022018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03012018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131129 | H02021, H02024, H02831, H02834 | Dermatochalasis of left upper eyelid | ICD10 | 03022018 | 67900, 67900, 21282 | LATERAL CANTHOPEXY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T08:46:36+00:00 | Q20292368 | 000119104-01 | William | Scaggs | ONCOLOGY HEMATOLOGY CARE | 920373 | ZAW M | BO | 1578701116 | ONCOLOGY HEMATOLOGY CARE | 943625 | 1790778041 | RHONDA R GOTTMANN | 1417286626 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | RHONDA R | GOTTMANN | 03022018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01312018 | 07302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201058 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 03022018 | J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 20 | 20 | Approved | 181 | HCPCS | HC | J2469: 20: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  2 cycle(s) |  |  |  |  | 0 |
| 02282018 | 2018-02-28T09:00:53+00:00 |  | 000059854-01 | MARILYN | PERDUE | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Predetermination Request | PR | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 03022018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 03022018 | 03032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180228108 | B351, E1140, L84 | Corns and callosities | ICD10 | 03022018 | 11721, 11055 | TRIM SKIN LESION | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02282018 | 2018-02-28T15:38:11+00:00 |  | 000114300-01 | Sharen | Kensler | OSU INTERNAL MED LLC | 928059 | DAVID A | LIEBNER | 1174753537 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03022018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03212018 | 06212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180228140 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 03022018 | 85025, 80053, 83615, 84443, 84439 | THYROXINE FREE RIA (UNBOUND T-4) | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T13:06:11+00:00 |  | 000102847-01 | Warren | Tomlin Jr | FAIRFIELD HLTHCARE PROFS | 919094 | ROOPA S | SRIKANTIAH-SAH | 1396856191 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03022018 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 03022018 | 04022018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180301126 | C187, C787, C800 | Disseminated malignant neoplasm, unspecified | ICD10 | 03022018 | 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T10:02:41+00:00 | Q20522108 | 000093988-01 | Shirley | Thornton | FAIRFIELD COMMUNITY HLTH | 906081 | HEATHER B | SCHULTZ | 1891982641 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03012018 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302070 | M48061 | M48061 | ICD10 | 03022018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T10:34:36+00:00 | Q20522860 | 000114277-01 | Peggy | Whitaker | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL HLTH SYS | 952877 | 1457617235 | SAMANTHA HEMBREE | 1215467105 | Radiology (HH) | OP RAD | Pre-Service | PRE | SAMANTHA | HEMBREE | 03022018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03022018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302074 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03022018 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T10:50:52+00:00 | Q20523208 | 000104675-01 | Russell | Cline | FAIRFIELD HLTHCARE PROFS | 915260 | CHRISTIAN T | TENCZA | 1336292085 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03022018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 03122018 | 04112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302079 | R911 | Solitary pulmonary nodule | ICD10 | 03022018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T10:51:38+00:00 | Q20523228 | 000094349-01 | Patricia | Carney | GENERAL SURG ASSOC INC | 935086 | JEFFREY K | YENCHAR | 1619963196 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03012018 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302080 | E340 | Carcinoid syndrome | ICD10 | 03022018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T11:58:52+00:00 | Q20524513 | 000051570-01 | JOHN | PARRILL | ADENA MEDICAL GROUP LLC | 926843 | EMILIA N | ANIGBO | 1083816953 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03062018 | 04052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302084 | R0789 | Other chest pain | ICD10 | 03022018 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
