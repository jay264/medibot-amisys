Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-22
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-22
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
| 10272017 | 2017-10-27T13:51:33+00:00 | Q19647394 | 000022259-01 | FRANCIS | ALLOWAY | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11152017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031155 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 11212017 | 93460, 75574 | CT ANGIO HRT W/3D IMAGE | CPT | 1, 1 | 1, 1 | Approved, Approved | 61, 61 | CPT | C4 |  |  |  |  |  | 0 |
| 11212017 | 2017-11-21T10:23:18+00:00 | Q19823081 | 000115862-01 | Danny | Lhamon | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11222017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11282017 | 12282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122009 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 11222017 | 70553, 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11202017 | 2017-11-20T14:49:37+00:00 | Q19817235 | 000056398-01 | RONALD | ZIMMERMAN | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 11222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12142017 | 01132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122026 | C8339 | Diffuse large B-cell lymphoma, extrnod and solid organ sites | ICD10 | 11222017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11202017 | 2017-11-20T14:58:00+00:00 | Q19818229 | 000060943-01 | REBECCA | HUGHES | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11272017 | 05262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122028 | C531 | Malignant neoplasm of exocervix | ICD10 | 11222017 | J9060, J1100, J2469, J1453 | Fosaprepitant injection | HCPCS | 48, 480, 60, 900 | 48, 480, 60, 900 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9060: 48: Cisplatin 40 mg/m2  IV  day 1  every 7 days  6 cycles: J1100: 480: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  6 cycle(s): J2469: 60: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s): J1453: 900: Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 11212017 | 2017-11-21T10:17:54+00:00 | Q19822875 | 000093527-01 | Rickey | Harper | MOUNT CARMEL HLTH PRVDRS | 934996 | G STEPHEN | VINCENT | 1043251218 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 11222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11212017 | 12212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122036 | I719 | Aortic aneurysm of unspecified site, without rupture | ICD10 | 11222017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11202017 | 2017-11-20T15:50:32+00:00 | Q19818437 | 000099083-01 | Sandra | Nobel | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11272017 | 12272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122038 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 11222017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11212017 | 2017-11-21T09:17:26+00:00 | Q19821600 | 000077094-01 | Vivian | Williams | MOUNT CARMEL HLTH PRVDRS | 936382 | ANGELA A | EUBANKS | 1386681104 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 11222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11212017 | 12212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122065 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 11222017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11202017 | 2017-11-20T14:48:14+00:00 | Q19817234 | 000117341-01 | Joseph | Hale | TAJ MEDICAL INC | 907161 | ASHFAQ T | AHMED | 1578565214 | TAJ MEDICAL INC | 902712 | 1811914765 | TAJ MEDICAL INC | 1811914765 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | TAJ MEDICAL INC | 11222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11212017 | 12212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122089 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 11222017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11202011 | 2011-11-20T14:00:20+00:00 | Q19816189 | 000070513-01 | Robert | Hoffer | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 11222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11202017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122091 | Z87891 | Personal history of nicotine dependence | ICD10 | 11222017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 11212017 | 2017-11-21T13:06:41+00:00 | Q19826196 | 000081487-01 | David | Adams | MERCY HEALTH PHYSICIANS | 906244 | PAUL S | BUCHANAN | 1275533861 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11272017 | 12272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122100 | G451 | Carotid artery syndrome (hemispheric) | ICD10 | 11222017 | 70498 | CT ANGIOGRAPHY, NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11212017 | 2017-11-21T11:23:23+00:00 | Q19824283 | 000093536-01 | James | Burwell | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12072017 | 01062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122108 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 11222017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11212017 | 2017-11-21T10:25:26+00:00 | Q19823148 | 000072871-01 | Ronald | Ratliff | CEN OH UROLOGY GRP INC | 914520 | FREDERICK L | TAYLOR | 1558527192 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 11222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11282017 | 12282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122112 | R339 | Retention of urine, unspecified | ICD10 | 11222017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11142017 | 2017-11-14T16:40:36+00:00 |  | 000087221-01 | Nancy | Baker | HAAR, JAY D | 925027 | JAY D | HAAR | 1508930629 | HAAR, JAY D | 925027 | 1508930629 | JAY D HAAR | 1508930629 | OP Behavioral Health | OP BH | Pre-Service | PRE | JAY D | HAAR | 11222017 | Approved | MediGold Classic Preferred | Member | Services Not Available In-Network | Outpatient | 12052017 | 03052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171115136 | F200, F329 | Major depressive disorder, single episode, unspecified | ICD10 | 11222017 | 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T12:06:25+00:00 |  | 000107548-01 | Larry | Green | OSU HLTH SYSTEM NEUROSUR | 948800 | JENNIFER E | GADAWSKI | 1538517370 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11222017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116103 | G250 | Essential tremor | ICD10 | 11222017 | 99213, 99214, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T14:59:57+00:00 |  | 000118733-01 | Brigitte | Puckett | OSU INTERNAL MED LLC | 935408 | GREGORY A | OTTERSON | 1215945548 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11222017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 11292017 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120125 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 11222017 | 99211, 99212, 99213, 99214, 99215, 80053, 85025, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04252017 | 2017-04-25T14:26:21+00:00 | Q18281225 | 000094174-01 | Patricia | Monroe | MOUNT CARMEL HLTH PRVDRS | 932440 | SYED ALI SHAN | IDRIS | 1942317060 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 11222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04262017 | 05262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122165 | R251 | Tremor, unspecified | ICD10 | 11222017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 | This was missed by Medibot back in April.  Claim was denied in error. |  |  |  |  | 0 |
| 11152017 | 2017-11-15T14:37:38+00:00 |  | 000061212-01 | THELMA | JOHNSON | MIDWEST DYSPHAGIA CONSUL | 942344 | ANGELA R | HARDY | 1083048474 | THE VINEYARDS AT CONCORD | 928631 | 1104905173 | THE VINEYARDS AT CONCORD | 1104905173 | Part B Therapy | OP THER | Pre-Service | PRE |  | THE VINEYARDS AT CONCORD | 11222017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11252017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116173 | G309, G4089, R262, R296 | Repeated falls | ICD10 | 11222017 | 97010, 97035, 97110, 97110, 97112, 97110, 97530, 97535, 92526, 92610 | EVALUATE SWALLOWING FUNCTION | CPT | 16, 16, 16, 16, 16, 16, 16, 16, 16, 16 | 16, 16, 16, 16, 16, 16, 16, 16, 16, 16 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 37, 37, 37, 37, 37, 37, 37, 37, 37, 37 | CPT | C4 |  |  |  |  |  | 0 |
