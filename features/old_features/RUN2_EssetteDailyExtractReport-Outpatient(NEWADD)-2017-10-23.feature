Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-23
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-23
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
| 10192017 | 2017-10-19T15:20:39+00:00 | Q19585406 | 000071777-01 | Connie | Fairchild | COPC CENTRAL OHIO PRIMAR | 936336 | ROBERT A | ECKER | 1194701284 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 10232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10192017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023023 | R1084 | Generalized abdominal pain | ICD10 | 10232017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10202017 | 2017-10-20T13:39:09+00:00 | Q19594084 | 000065768-01 | GEORGE | MEYER | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 10232017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10252017 | 11242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023025 | C8333 | Diffuse large B-cell lymphoma, intra-abdominal lymph nodes | ICD10 | 10232017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10202017 | 2017-10-20T13:04:52+00:00 | Q19593575 | 000110181-01 | LARRY | ALVIS | NEWARK RADIATION ONCOLOG | 936034 | CHUCK C | CHO | 1528069945 | LANCASTER RADIATION ONCO | 938347 | 1205837663 | LANCASTER RADIATION ONCOLOGY | 1205837663 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | LANCASTER RADIATION ONCOLOGY | 10232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10202017 | 01182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023032 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 10232017 | G6013 | RADIATION TREATMENT DELIVERY | HCPCS | 10 | 10 | Approved | 91 | HCPCS | HC | G6013: 10: G6013 10 |  |  |  |  | 0 |
| 10202017 | 2017-10-20T13:10:35+00:00 | Q19593625 | 000118976-01 | Debra | Peters | GENESIS MEDICAL GRP LLC | 923914 | FRED K | BRANDITZ | 1558347005 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 10232017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10272017 | 11262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023033 | Z87891 | Personal history of nicotine dependence | ICD10 | 10232017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 10162017 | 2017-10-16T13:37:21+00:00 | Q19550524 | 000084296-01 | Donald | Mcclain | ALLIANCE PHYSICIANS INC | 902333 | ALEJANDRO R | CALVO | 1457341760 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 10232017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10162017 | 11152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023040 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 10232017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10172017 | 2017-10-17T10:15:04+00:00 | Q19557604 | 000099711-01 | James | Knight | ALLIANCE PHYSICIANS INC | 913679 | JOHN F | MCCARTHY | 1063479947 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 10232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10172017 | 11162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023043 | D696 | Thrombocytopenia, unspecified | ICD10 | 10232017 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10182017 | 2017-10-18T11:35:44+00:00 | Q19570471 | 000024409-01 | William | Vacheresse | MOUNT CARMEL HLTH PRVDRS | 936315 | THOMAS P | ARCHER | 1336102888 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11012017 | 12012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023044 | I517 | Cardiomegaly | ICD10 | 10232017 | 75561 | CARDIAC MRI FOR MORPH W/DYE,19.65,19.65 | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10192017 | 2017-10-19T13:37:21+00:00 | Q19584223 | 000070269-01 | Robert | Webb | SWESTERN OH UROLOGY INC | 935542 | PHILIP C | ASCHI | 1467463695 | SWESTERN OH UROLOGY INC | 937844 | 1538346929 | SOUTHWESTERN OH UROLOGY INC | 1538346929 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SOUTHWESTERN OH UROLOGY INC | 10232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11072017 | 05062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023050 | C61 | Malignant neoplasm of prostate | ICD10 | 10232017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 10122017 | 2017-10-12T08:00:00+00:00 | Q19524428 | 000049807-01 | Esther | Giffin | PRIMARYONE HEALTH | 932075 | LINDORA S | HUBEL | 1609280205 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10122017 | 11112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023065 | Q639 | Congenital malformation of kidney, unspecified | ICD10 | 10232017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10202017 | 2017-10-20T12:14:57+00:00 | Q19592868 | 000088108-01 | RITA | BEACH | WHETSTONE MED CLINIC INC | 935035 | JAMES W | WHETSTONE | 1336197474 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 10232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10212017 | 11202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023073 | H8149 | Vertigo of central origin, unspecified ear | ICD10 | 10232017 | 70470 | CAT SCAN HEAD WO/W IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10202017 | 2017-10-20T12:15:24+00:00 | Q19592953 | 000042825-01 | Leon | Endicott | CEN OH UROLOGY GRP INC | 942974 | ROBERT J | PIROLI | 1730180662 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 10232017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10242017 | 01222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023074 | C61 | Malignant neoplasm of prostate | ICD10 | 10232017 | G6013 | RADIATION TREATMENT DELIVERY | HCPCS | 10 | 10 | Approved | 91 | HCPCS | HC | G6013: 10: G6013 10 |  |  |  |  | 0 |
| 10202017 | 2017-10-20T08:55:25+00:00 | Q19588416 | 000041188-01 | JEROLD | GALL | REYNOLDSBURG CHIRO | 908141 | JOHN | KOHL | 1821169426 | PROSCAN IMAGING PICKERINGTON LLC | 903474 | 1629036223 | PROSCAN IMAGING PICKERINGTON LLC | 1629036223 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING PICKERINGTON LLC | 10232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10212017 | 11202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023084 | M545 | Low back pain | ICD10 | 10232017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10202017 | 2017-10-20T07:53:26+00:00 | Q19587570 | 000096812-01 | Patricia | Jennings | CINCINNATI GI GREATER CI | 920883 | MARVIN J | LOPEZ | 1730183195 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL CLERMONT | 10232017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10202017 | 11192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023096 | R1032 | Left lower quadrant pain | ICD10 | 10232017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09082017 | 2017-09-08T06:36:32+00:00 | Q19265709 | 000011348-01 | DAVID | DRENNEN | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09082017 | 10082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170911102 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 10232017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09252017 | 2017-09-25T15:23:11+00:00 | Q19391187 | 000087354-01 | Tanya | Levering | KNOX COMMUNITY HOSPITAL | 936422 |  | KNOX COMMUNITY HOSPITAL | 1295761963 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 10232017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09262017 | 10262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170927098 | Z981 | Arthrodesis status | ICD10 | 10232017 | 72156 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST MORE SEQUENCES;CERVICAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Cannot find requesting provider. Please update with correct provider. Information can be found in the 279-5010 folder under the date 9/26 and in the initial folder. |  |  |  |  | 0 |
| 09212017 | 2017-09-21T11:36:27+00:00 | Q19365999 | 000037615-01 | CLARENCE | BENSON JR | KNOX COMMUNITY HOSPITAL | 936422 |  | KNOX COMMUNITY HOSPITAL | 1295761963 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09222017 | 10222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922034 | M5416 | Radiculopathy, lumbar region | ICD10 | 10232017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Provider cannot be found. Please update the provider information from the the 9/21 Initial 278-5010 folder. Thank you! |  |  |  |  | 0 |
| 08092017 | 2017-08-09T10:44:26+00:00 |  | 000066295-01 | BRENDA | PRITCHARD | CHESTER, MICHAEL E | 900208 | MICHAEL E | CHESTER | 1780686774 | OSU COLLEGE OF OPTOMETRY | 938836 | 1710900683 | OSU COLLEGE OF OPTOMETRY | 1710900683 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU COLLEGE OF OPTOMETRY | 10232017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08072017 | 11072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809109 | H532 | Diplopia | ICD10 | 10232017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | Note not included with request.  PC to requesting provider  VMM is full. Will try to reach them later., Phoned the providers office to please provide clinical documentation in regards to this request. Will fax over today., RECEIVED VOICE MAIL MESSAGE THAT AUTH IS BUILT FOR OSU OPHTHALMOLOGY AND SHOULD BE COLLEGE OF OPTOMETRY.  AUTH UPDATED. |  |  |  |  | 0 |
| 10092017 | 2017-10-09T09:14:55+00:00 | Q19492153 | 000089582-01 | Harry | McCall | VORA, SHASHI M | 922097 | SHASHI M | VORA | 1689776056 | SOUTHEASTERN OHIO REGION | 948133 | 1346247350 | SOUTHEASTERN OHIO REGIONAL MEDICAL C | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OHIO REGIONAL MEDICAL C | 10232017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10092017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010044 | M5126 | Other intervertebral disc displacement, lumbar region | ICD10 | 10232017 | 72133 | CAT SCAN LUMBAR SPINE W/WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Facility cannot be found. Please find the necessary information in the 278-5010 10/11 Changes folder and update the facility information. Thank you! |  |  |  |  | 0 |
| 10202017 | 2017-10-20T09:53:44+00:00 | Q19589492 | 000117141-01 | Saundra | Edwards | GENESIS MEDICAL GRP LLC | 921908 | BENJAMIN R | GIBSON | 1619257508 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 10232017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10242017 | 11232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023088 | R350 | Frequency of micturition | ICD10 | 10232017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
