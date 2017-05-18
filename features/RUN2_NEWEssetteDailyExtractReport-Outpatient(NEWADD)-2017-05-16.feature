Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-16
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-16
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
| 05122017 | 2017-05-12T13:51:01+00:00 |  | 000027910-01 | BONNIESUE | SMITH | ENT & SINUS INSTITUTE OF | 939545 | BORIS I | KARANFILOV | 1740244482 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Out of Network Services | OONS | Pre-Service | PRE |  | DUBLIN METHODIST HOSPITAL | 05162017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05162017 | 07152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512139 | D3162, H0520, J320, J321, J322 | Chronic ethmoidal sinusitis | ICD10 | 05162017 | 31276, 31255, 31256, 31292, 61782 | SCAN PROC CRANIAL EXTRA | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T14:20:34+00:00 |  | 000114300-01 | Sharen | Kensler | OSU INTERNAL MED LLC | 928059 | DAVID A | LIEBNER | 1174753537 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05162017 | Approved | MediGold Essential Care | Fax | Clinical Trial | Outpatient | 05162017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512142 | C4921, D4989 | Neoplasm of unspecified behavior of other specified sites | ICD10 | 05162017 | 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 46, 46 | HCPCS | HC |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T09:33:02+00:00 | Q18422026 | 000070376-01 | Thomas | Joyce | ROBERT D RUPERT JR MD IN | 906637 |  | ROBERT D RUPERT JR MD INC | 1437395183 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 05162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170515099 | C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 05162017 | J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 60 | 60 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T13:19:23+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05162017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05162017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515108 | C4011, Z96611 | Presence of right artificial shoulder joint | ICD10 | 05162017 | 73060, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T11:14:44+00:00 | Q18426124 | 000089461-01 | Marlin | Maddy | SPRINGFIELD HEMATOLOGY & | 908018 | FILIX | KENCANA | 1790709301 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05162017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05302017 | 06292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516005 | C4359 | Malignant melanoma of other part of trunk | ICD10 | 05162017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T12:13:15+00:00 | Q18427197 | 000065768-01 | GEORGE | MEYER | COPC CENTRAL OHIO PRIMAR | 934859 | WENDY L | SPARLING | 1780695783 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516013 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 05162017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T12:35:39+00:00 | Q18427582 | 000076219-01 | Betty | Hillyard | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516016 | M25461 | Effusion, right knee | ICD10 | 05162017 | 73723 | MRI JOINT LWR EXTR W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T07:31:16+00:00 | Q18404888 | 000038369-01 | JERRY | GARRISON | ADENA MEDICAL GROUP LLC | 925366 | JEYANTHI | RAMANARAYANAN | 1538269394 | ADENA MEDICAL GROUP LLC | 913325 | 1235468083 | ADENA MEDICAL GROUP LLC | 1235468083 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA MEDICAL GROUP LLC | 05162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 08092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516043 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 05162017 | J9031 | BCG (INTRAVESICAL) PER INSTALLATION | HCPCS | 6 | 6 | Approved | 91 | HCPCS | HC | J9031: 6 BCG 50 mg intravesical every 1 week x 6 weeks ( 6 treatments ).  Total billing units = 6 |  |  |  |  | 0 |
| 05152017 | 2017-05-15T07:32:40+00:00 | Q18406751 | 000091590-01 | Gary | Henderson | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 05162017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05182017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516045 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 05162017 | J0897 | Denosumab injection | HCPCS | 240 | 240 | Approved | 91 | HCPCS | HC | J0897: 240 Denosumab 120 mg SQ day 1 q3 months x2 cycles (2 treatments).  Total billing units = 240 |  |  |  |  | 0 |
| 05152017 | 2017-05-15T07:35:37+00:00 | Q18407996 | 000050511-01 | JOHNDELEE | DELOZIER | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516048 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 05162017 | J1442 | INJ, FILGRASTIM G-CSF 1MCG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC | J1442: 3360 Filgrastim 480mcg SQ days 8  10  12  15  18  22 and 25 x1 cycle (7 treatments).  Total billing units = 3360 |  |  |  |  | 0 |
| 05122017 | 2017-05-12T18:28:27+00:00 | Q18411660 | 000018570-01 | CAROL | KILLILEA | RADIOLOGY INC | 944216 | MALOLAN S | RAJAGOPALAN | 1316265960 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 08092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516052 | C541 | Malignant neoplasm of endometrium | ICD10 | 05162017 | 77386 | NTSTY MODUL RAD TX DLVR CPLX | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T11:03:44+00:00 | Q18416180 | 000086285-01 | June | Bruker-Elder | PARS NEUROSURG ASSOC INC | 924062 | SEYED ABDI | GHODSI | 1205803814 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 05162017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05122017 | 06112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516053 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 05162017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T17:20:48+00:00 |  | 000077275-01 | Donald | Chamberlain | OSU INTERNAL MED LLC | 908166 | SHALEEN U | ISLAM | 1497727739 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05162017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05172017 | 06172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516057 | R590 | Localized enlarged lymph nodes | ICD10 | 05162017 | 31659, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T09:20:51+00:00 | Q18423847 | 000069916-01 | Frances | Reber | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516083 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 05162017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T09:21:43+00:00 | Q18423863 | 000093221-01 | Patricia | Shonk | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516084 | R079 | Chest pain, unspecified | ICD10 | 05162017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T09:27:54+00:00 | Q18423942 | 000116696-01 | Evelyn | Tom-burgoon | GENESIS MEDICAL GRP LLC | 906801 | BRYAN | BJORNSTAD | 1114025830 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 05162017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516085 | R252 | Cramp and spasm | ICD10 | 05162017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T10:47:22+00:00 | Q18425595 | 000009012-01 | WILLIAM | SHAFLEY | MADISON FAMILY HEALTH | 904568 | WILLIAM P | GIANAKOPOULOS | 1841239142 | MADISON COUNTY COMMU ER | 938360 | 0 | MADISON COUNTY COMMU ER PHY | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MADISON COUNTY COMMU ER PHY | 05162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170516103 | R3129 | OTHER MICROSCOPIC HEMATURIA | ICD10 | 05162017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T12:16:56+00:00 | Q18433836 | 000039132-01 | OLIVER | PIGG | ALLIANCE PHYSICIANS INC | 913319 | GREGORY A | GORDON | 1518917301 | GRANDVIEW HOSPITAL & SOU | 902690 | 1053339507 | SOUTHVIEW MEDICAL CENTER | 0 | Radiology (HH) | OP RAD | Initial Review | INIT |  | SOUTHVIEW MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 08152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170516114 | C61 | Malignant neoplasm of prostate | ICD10 | 05162017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T10:15:38+00:00 |  | 000094707-01 | Janet | Vanfossen | OSU INTERNAL MED LLC | 909303 | JENNIFER A | SIPOS | 1033124813 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05162017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Services Available In-Network | Outpatient | 05162017 | 05172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170511162 | E041 | Nontoxic single thyroid nodule | ICD10 | 05162017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05122017 | 2017-05-12T11:11:09+00:00 |  | 000081249-01 | Anna | Horsman | OHIO PLASTIC SURGERY SPE | 935510 | WALTER L | BERNACKI | 1871664714 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05162017 | Denied | MediGold Southeast OH Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 05162017 | 05172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170512134 | L988 | Oth disrd of the skin and subcutaneous tissue | ICD10 | 05162017 | 15832, 15833, 14021 | RPR DFCT 10-30 10-30 SQ CM SC,AR,LG | CPT | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
