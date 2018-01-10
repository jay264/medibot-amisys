Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-08
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-08
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
| 01032018 | 2018-01-03T10:17:43+00:00 | Q20084879 | 000012603-01 | LILLIAN | POCHEDLEY | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01172018 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104045 | I4891 | Unspecified atrial fibrillation | ICD10 | 01072018 | 75574 | CT ANGIO HRT W/3D IMAGE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T08:36:32+00:00 | Q20082973 | 000006109-01 | GEORGIA | WARD | MOUNT CARMEL HLTH PRVDRS | 934617 | IRINA | RYAZANSKY | 1073550893 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 02022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104047 | R109 | Unspecified abdominal pain | ICD10 | 01072018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T08:40:28+00:00 | Q20083011 | 000031567-01 | WILLIAM | IDEN | MOUNT CARMEL HLTH PRVDRS | 925886 | DYLAN J | WIRTZ | 1982895975 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104048 | R911 | Solitary pulmonary nodule | ICD10 | 01072018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T08:39:13+00:00 | Q20083027 | 000114454-01 | William | Thorpe | DUBLIN FAMILY CARE INC | 937105 | JAMES J | BARR | 1255370581 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01072018 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 02022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104049 | N281 | Cyst of kidney, acquired | ICD10 | 01072018 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T08:58:44+00:00 | Q20083346 | 000062558-01 | VICTORIA | HAMMOND | MOUNT CARMEL HLTH PRVDRS | 925886 | DYLAN J | WIRTZ | 1982895975 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01042018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104054 | R911 | Solitary pulmonary nodule | ICD10 | 01072018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T08:02:00+00:00 | Q20083577 | 000096266-01 | Danny | Hill | TAJ MEDICAL INC | 907161 | ASHFAQ T | AHMED | 1578565214 | TAJ MEDICAL INC | 902712 | 1811914765 | TAJ MEDICAL INC | 1811914765 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | TAJ MEDICAL INC | 01072018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01042018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104055 | I201 | Angina pectoris with documented spasm | ICD10 | 01072018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T09:11:31+00:00 | Q20083588 | 000027324-01 | JUNE | BEARD | MOUNT CARMEL HLTH PRVDRS | 934617 | IRINA | RYAZANSKY | 1073550893 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 02022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104056 | R109 | Unspecified abdominal pain | ICD10 | 01072018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T09:28:53+00:00 | Q20083922 | 000041900-01 | HERBERT | PERKINS | PICKAWAY HEALTH SERVICES | 937168 | DAVID E | MCMAHON | 1033174339 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01042018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104059 | J984 | Other disorders of lung | ICD10 | 01072018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T09:39:50+00:00 | Q20084117 | 000088309-01 | Judith | Alten | RECONSTRUCTIVE ORTHOS & | 924273 | MATTHEW A | LANGENDERFER | 1194731398 | RECONSTRUCTIVE ORTHOS & | 940532 | 1780619288 | RECONSTRUCTIVE ORTHOPAEDICS & SPORTS | 1780619288 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | RECONSTRUCTIVE ORTHOPAEDICS & SPORTS | 01072018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 02022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104060 | M25512 | Pain in left shoulder | ICD10 | 01072018 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T19:39:14+00:00 | Q20081866 | 000108617-01 | Emma | Guild | ALLIANCE PHYSICIANS INC | 902849 | THOMAS M | RUFF | 1639178304 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 01072018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01112018 | 03122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104063 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 01072018 | 93461 | R&L HRT ART/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T15:08:00+00:00 | Q20081868 | 000081444-01 | George | Gill | MOIN A RANGINWALA MD INC | 902205 | MOIN A | RANGINWALA | 1134166317 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01072018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01112018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104064 | R911 | Solitary pulmonary nodule | ICD10 | 01072018 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T06:42:32+00:00 | Q20081964 | 000052667-01 | JACQUELINE | ROBERTS | COPC CENTRAL OHIO PRIMAR | 935072 | CAMERON M | WOODLIEF | 1922083633 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01042018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104066 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 01072018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T07:23:27+00:00 | Q20082128 | 000090890-01 | William | Glover | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 01072018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01022018 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104067 | R109 | Unspecified abdominal pain | ICD10 | 01072018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T07:29:21+00:00 | Q20082172 | 000040258-01 | JUDITH | LITTLE | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 02022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104068 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 01072018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T08:16:16+00:00 | Q20082673 | 000087933-01 | Diane | Bereczky | SPRINGFIELD CTR FOR FAM | 913218 | KEVIN | MACY | 1194763193 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 01072018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 02022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104070 | M25551 | Pain in right hip | ICD10 | 01072018 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T08:23:40+00:00 | Q20082785 | 000075796-01 | Freda | Thompson | MARIETTA MEM HSP | 921978 | SRINI | VASAN | 1376541649 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 01072018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01082018 | 02072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104071 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 01072018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T13:03:38+00:00 | Q20077656 | 000069913-01 | Lovona | Zimmer | MOUNT CARMEL HLTH PRVDRS | 934617 | IRINA | RYAZANSKY | 1073550893 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01022018 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104073 | R911 | Solitary pulmonary nodule | ICD10 | 01072018 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T13:36:00+00:00 | Q20078309 | 000106903-01 | Kathleen | Cooksey | FOOT & ANKLE SPEC OF CEN | 942541 | AMANDA L | QUISNO | 1265799217 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 01072018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01022018 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104074 | M19071 | Primary osteoarthritis, right ankle and foot | ICD10 | 01072018 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T13:59:19+00:00 | Q20078791 | 000091022-01 | Gary | Flora | TAJ MEDICAL INC | 907161 | ASHFAQ T | AHMED | 1578565214 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 01072018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01122018 | 02112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104075 | I7102 | Dissection of abdominal aorta | ICD10 | 01072018 | 74175 | CT ANGIO ABDOM W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12262017 | 2017-12-26T12:13:55+00:00 | Q20045834 | 000074281-01 | Virgie | Meade | LICKING MEMORIAL ER MED | 915534 | KEVIN T | GRAHAM | 1457559692 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01042018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104076 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 01072018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12292017 | 2017-12-29T07:31:21+00:00 | Q20065252 | 000089426-01 | Kerry | Pauley | MOUNT CARMEL HLTH SYS | 917387 | JULIE A | HOLINGA | 1558487330 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01022018 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104078 | K7460 | Unspecified cirrhosis of liver | ICD10 | 01072018 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T09:12:19+00:00 | Q20073751 | 000119461-01 | DOUGLAS | BOYD SR | MOUNT CARMEL HLTH PRVDRS | 942981 | ESSA M | ESSA | 1992966113 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01072018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104079 | I5041 | Acute combined systolic and diastolic (congestive) hrt fail | ICD10 | 01072018 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T08:49:00+00:00 | Q20075183 | 000093502-01 | Wayne | Johnson | LICKING MEM HLTH PROF | 906427 | WILLIAM A | STALLWORTH | 1457312597 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02012018 | 07312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104081 | C61 | Malignant neoplasm of prostate | ICD10 | 01072018 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 4 | 4 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T10:14:00+00:00 | Q20075245 | 000091218-01 | Barbara | Clay | RIVERSIDE RADIATION ONCO | 914533 | JASON | SEAVOLT | 1013947456 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01072018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01022018 | 04022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104082 | C321 | Malignant neoplasm of supraglottis | ICD10 | 01072018 | 77386 | NTSTY MODUL RAD TX DLVR CPLX | CPT | 35 | 35 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T10:29:00+00:00 | Q20075349 | 000038168-01 | MONA | BOGGS | OHIOHEALTH PHYS GRP | 919273 | BRIAN F | SEAMAN | 1952510968 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02152018 | 03172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104083 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 01072018 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T08:47:00+00:00 | Q20075386 | 000039175-01 | Joyce | Brunner | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01242018 | 07232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104084 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 01072018 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T11:09:56+00:00 | Q20075990 | 000102204-01 | Robin | Cross Jr | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEM ONCOLOGY HEM | 914126 | 1124048566 | LICKING MEMORIAL ONCOLOGY HEMATOLOGY | 1124048566 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL ONCOLOGY HEMATOLOGY | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01022018 | 07012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104085 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 01072018 | J1569 | Gammagard liquid injection | HCPCS | 540 | 540 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T14:11:29+00:00 | Q20089359 | 000074064-01 | Paul | Deshaies | FAIRFIELD HLTHCARE PROFS | 934808 | KANWALJIT | SINGH | 1679765770 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 07022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108009 | C50912 | Malignant neoplasm of unspecified site of left female breast | ICD10 | 01082018 | J2505, J2469, J9171, J3489, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 8, 60, 870, 24, 480 | 8, 60, 870, 24, 480 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC | J9171: 870: INJECTION  DOCETAXEL  1 MG  Dispensed as: 145.00 mg  1 treatment(s) each cycle  6 cycle(s): J3489: 24: INJECTION  ZOLEDRONIC ACID  1 MG  Dispensed as: 4.00 mg  1 treatment(s) each cycle  6 cycle(s): J2505: 8: PegFilgrastim (Neulasta) 6 mg  SQ  once  every 21 days  8 cycles: J2469: 60: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s): J1100: 480: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 01052018 | 2018-01-05T10:55:20+00:00 | Q20105567 | 000009627-01 | RACHEL | HATFIELD | ORTHOPEDIC ONE INC | 928359 | ELLA M | KING | 1972936599 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 01082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01102018 | 02092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108012 | M5030 | Other cervical disc degeneration, unsp cervical region | ICD10 | 01082018 | 72141, 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12292017 | 2017-12-29T15:14:06+00:00 | Q20070873 | 000084441-01 | John | Dewitt | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 01082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01082018 | 07072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108013 | C61 | Malignant neoplasm of prostate | ICD10 | 01082018 | Q2043 | Sipuleucel-T auto CD54+ | HCPCS | 3 | 3 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T15:20:28+00:00 | Q20100262 | 000069387-01 | LORETTA | MCCAFFERTY | FAIRFIELD HLTHCARE PROFS | 916318 | JARROD T | BRUCE | 1134162563 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01082018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108020 | R911 | Solitary pulmonary nodule | ICD10 | 01082018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01052018 | 2018-01-05T13:22:06+00:00 | Q20108015 | 000006484-01 | PAULINE | HARRISON | MOUNT CARMEL HLTH PRVDRS | 919157 | DANA P | HOUSER | 1982857165 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 01082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108045 | R109 | Unspecified abdominal pain | ICD10 | 01082018 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01052018 | 2018-01-05T09:18:43+00:00 | Q20103661 | 000116921-01 | Linda | Allen | MARIETTA HLTH CARE PHYS | 952163 | MICHAEL | VASILAKIS | 1356570287 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 01082018 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108054 | M546 | Pain in thoracic spine | ICD10 | 01082018 | 72146 | MRI, SPINAL CANAL AND CONTENTS, THORACIC; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01052018 | 2018-01-05T10:35:22+00:00 | Q20105254 | 000030995-01 | WILMA | NEWTON | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108067 | K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 01082018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T16:14:56+00:00 | Q20101100 | 000059111-01 | CHARLENE | KEITH | CARDIOLOGISTS OF GREENE | 904143 | ASHRAF | KORAYM | 1760471692 | CARDIOLOGISTS OF GREENE | 918558 | 1619146859 | CARDIOLOGISTS OF GREENE COUNTY LLC | 1619146859 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOLOGISTS OF GREENE COUNTY LLC | 01082018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108077 | R072 | Precordial pain | ICD10 | 01082018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01052018 | 2018-01-05T07:40:45+00:00 | Q20102143 | 000107600-01 | Mary | Gaines | PICKAWAY HEALTH SERVICES | 913727 | KEVIN M | SELLERS | 1306085220 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108086 | R569 | Unspecified convulsions | ICD10 | 01082018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01052018 | 2018-01-05T07:31:20+00:00 | Q20102338 | 000113178-01 | Joanna | Fuls | ALLIANCE PHYSICIANS INC | 906600 | MALEK M | SAFA | 1427016914 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 01082018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108092 | D150 | Benign neoplasm of thymus | ICD10 | 01082018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T11:36:41+00:00 | Q20096221 | 000119893-01 | Patricia | Anderson | FAIRFIELD HLTHCARE PROFS | 927434 | ALAEDDIN | AYYAD | 1548434046 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01082018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 02022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108097 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01082018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T13:59:03+00:00 | Q20098717 | 000064868-01 | BERNIECE | OWENS | FAIRFIELD HLTHCARE PROFS | 916056 | ANDREW R | TWEHUES | 1346457355 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108101 | J849 | Interstitial pulmonary disease, unspecified | ICD10 | 01082018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01052018 | 2018-01-05T16:47:35+00:00 | Q20109134 | 000115935-01 | Clarence | Harper | MARIETTA HLTH CARE PHYS | 946848 | SOLOMON D | BAGAE | 1104842061 | ZOLL LIFECOR CORPORATION | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 01082018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 03062018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108108 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01082018 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
