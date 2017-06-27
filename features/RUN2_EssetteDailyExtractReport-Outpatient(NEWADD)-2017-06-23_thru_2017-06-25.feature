Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-23_thru_2017-06-25
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-23_thru_2017-06-25
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
| 06152017 | 2017-06-15T15:01:46+00:00 |  | 000100187-01 | Diana | Conley | UNIVERSITY OF CINCINNATI | 932181 | MARTHA A | FERGUSON | 1447208392 | UNIVERSITY OF CINCINNATI | 917758 | 1417108697 | UNIVERSITY OF CINCINNATI PHYSICIANS | 1417108697 | Out of Network Services | OONS | Pre-Service | PRE |  | UNIVERSITY OF CINCINNATI PHYSICIANS | 06232017 | Approved | MediGold Southwest OH Essential Care | Fax | With Additional Info | Outpatient | 06232017 | 09222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615125 | C210, Z933 | Colostomy status | ICD10 | 06232017 | 99213, 46600 | ANOSCOPY, DGNSTC, W/WO BIOPSY | CPT | 0, 0 | 1, 1 | Denied, Denied | 92, 92 | CPT | C4 | Contacted Janice Brady at 513-475-4863 left message to fax additonal clinical documentation., Letter is written in appropriate language with no abbreviations and is therefore approved., Received notification of expedited appeal. The case was presented to Dr. Greg Wise and approved. Please ensure transition letter is mailed to the member. Approved for DOS 6/23-9/22/17. |  |  |  |  | 0 |
| 06212017 | 2017-06-21T14:15:07+00:00 |  | 000091195-01 | Constance | Holtz | OHIO ENT & ALLERGY PHYSI | 936640 | ROGER | FRIEDMAN | 1336147982 | OHIO ENT & ALLERGY PHYSI | 936640 | 1750330551 | ROGER FRIEDMAN | 1336147982 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | ROGER | FRIEDMAN | 06232017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06232017 | 09232017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621156 | D839 | Common variable immunodeficiency, unspecified | ICD10 | 06232017 | J3490, 90780, 90781 | IV INFUSION THERAPY/@ ADDTL HOUR | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 93, 93, 93 | CPT | C4 | PHONE CALL PLACED TO JAN W/DR FRIEDMAN.  CUVITRU IS AN ONGOING SQ INFUSION  2 SITES CONNECTED TO ONE PUMP.  MBR WILL HAVE HOME CARE INITIALLY TO LEARN CARE.  INFUSION THROUGH COREM.  JAN APPLIED TO DRUG MANUFACTURER FOR FINANCIAL WAIVER FOR MBR FOR INITIATION. |  |  |  |  | 0 |
| 06222017 | 2017-06-22T10:18:14+00:00 | 18710559 | 000070723-01 | James | Peterson | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 06232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623002 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06232017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T16:36:50+00:00 | Q18706958 | 000034531-01 | INGRID | ROBB | MOUNT CARMEL HLTH PRVDRS | 900585 | ANGELA R | CAFFARATTI | 1629010632 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 06232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06212017 | 07212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623010 | R0602 | Shortness of breath | ICD10 | 06232017 | 78454, 78453 | HT MUSCLE IMAGE,PLANAR,SING | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T13:52:09+00:00 | Q18714513 | 000060982-01 | CARL | FLOOD | OH ONCOLOGY & HEMATOLOGY | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623012 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 06232017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T08:28:17+00:00 | Q18697652 | 000101118-01 | Floyd | Boyd | DAYTON PHYSICIANS LLC | 908829 | TAREK M | SABAGH | 1851348841 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 06232017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 06222017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623013 | C160 | Malignant neoplasm of cardia | ICD10 | 06232017 | 71260, 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T10:54:54+00:00 | Q18697955 | 000110950-01 | Darlene | Allen | ADENA MEDICAL GROUP LLC | 925366 | JEYANTHI | RAMANARAYANAN | 1538269394 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 06232017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07032017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623014 | C8590 | Non-Hodgkin lymphoma, unspecified, unspecified site | ICD10 | 06232017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T07:30:42+00:00 | Q18681279 | 000071586-01 | Raymond | Shell | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07052017 | 08042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623016 | C20 | Malignant neoplasm of rectum | ICD10 | 06232017 | 71260, 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T08:17:47+00:00 | Q18708228 | 000058431-01 | FREDA | ONEY | ALLIANCE PHYSICIANS INC | 917251 | MANISHA M | NANDA | 1164634937 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06222017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623020 | M25551 | Pain in right hip | ICD10 | 06232017 | 72197, 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T08:09:18+00:00 | Q18708296 | 000051842-01 | GARRY | BIRD | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06232017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 06222017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623021 | R319 | Hematuria, unspecified | ICD10 | 06232017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T08:18:34+00:00 | Q18708391 | 000005233-01 | JACQUELINE | TOTTEN | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06232017 | 07232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623023 | I255 | Ischemic cardiomyopathy | ICD10 | 06232017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T10:14:04+00:00 | Q18708418 | 000070045-01 | Richard | Davis | MARIETTA HLTH CARE PHYS | 907862 | ALEXANDRU M | VAIDA | 1285703124 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06222017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623024 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 06232017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T13:50:45+00:00 | Q18709742 | 000087147-01 | Margaret | Smith | GENESIS PRIMARY CARE PHY | 922058 | DOUGLAS A | MYERS | 1134105729 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06232017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06212017 | 07212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623031 | I10 | Essential (primary) hypertension | ICD10 | 06232017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T10:00:18+00:00 | Q18710183 | 000101976-01 | Jean | Hoyt | LICKING MEM HLTH PROF | 932994 | AARON J | KIBLER | 1891081295 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 06232017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06282017 | 07282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623034 | R079 | Chest pain, unspecified | ICD10 | 06232017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T10:22:18+00:00 | Q18710522 | 000070869-01 | Charlotte | Barker | OSU HLTH SYSTEM NEUROSUR | 929919 | BARBARA K | CHANGIZI | 1609075175 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 06232017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06222017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623036 | G20 | Parkinson's disease | ICD10 | 06232017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T09:33:48+00:00 | Q18699070 | 000077625-01 | Rex | Gray | SEASTERN OH RGNL MED CTR | 923984 | NABIEL | ALKHOURI | 1497728489 | SEASTERN OH RGNL MED CTR | 923983 | 1922138981 | SOUTHEASTERN OH RGNL MED CTR 1500 | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SOUTHEASTERN OH RGNL MED CTR 1500 | 06232017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06222017 | 12192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623059 | C182 | Malignant neoplasm of ascending colon | ICD10 | 06232017 | J1447 | INJ TBO FILGRASTIM 1 MICROG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC | J1447: 24000 Tbo-Filgrastim (Granix) 300 mcg  SQ  days 2-11  every 21 days  8 cycles |  |  |  |  | 0 |
| 06222017 | 2017-06-22T07:49:49+00:00 | Q18700067 | 000071216-01 | Wanda | Carman-Long | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GREENE MEMORIAL HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06302017 | 07302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623062 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06232017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T18:08:19+00:00 | Q18692298 | 000050387-01 | JAMES | PAUGH | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06212017 | 07212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623071 | H9192 | Unspecified hearing loss, left ear | ICD10 | 06232017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T15:01:44+00:00 | Q18696369 | 000066283-01 | Patricia | Mccurdy | COLONNADE MED GRP INC | 907233 | H STEVEN | MELIOTES | 1194883165 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06202017 | 07202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623076 | D378 | Neoplasm of uncertain behavior of oth digestive organs | ICD10 | 06232017 | 74181 | MRI ABDOMEN | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T10:59:30+00:00 |  | 000093046-01 | Thomas | Gardner | OHIOHEALTH PHYS GRP | 942682 | DANIEL T | FRIEDMAN | 1629122916 | OHIOHEALTH PHYS GRP | 937944 | 1578545273 | OHIOHEALTH PHYSICIAN GROUP | 1578545273 | Out of Network Services | OONS | Pre-Service | PRE |  | OHIOHEALTH PHYSICIAN GROUP | 06232017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06232017 | 07232017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623125 | I8290 | Acute embolism and thrombosis of unspecified vein | ICD10 | 06232017 | 93925 | DUPLEX SCAN, LOWER EXTREMITY ARTERIES/BYPASS GRAFTS; COMPLETE BILAT. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T12:00:32+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06232017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 06292017 | 09292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623131 | D7581 | Myelofibrosis | ICD10 | 06232017 | 99211, 99212, 99213, 99214, 99215, 85025, 80053, 82040, 82247, 82310, 82374, 82435, 82565, 82947, 84075, 84132, 84155, 84295, 84460, 84450, 84520, 36415 | ROUTINE VENIPUNCTURE FOR SPEC COL. | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | SPOKE TO MICHELLE AT OSU  EXPEDITED WITHDRAWN |  |  |  |  | 0 |
| 06232017 | 2017-06-23T14:00:02+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06232017 | Approved | MediGold Medical Only | Fax | Clinical Trial | Outpatient | 06212017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623138 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 06232017 | 99211, 99212, 99213, 99214, 99215, G0463, 85025, 80053, 36415, 36592, 82947, 84100, 83615, 84550, 85730, 85610 | PROTHROMBIN TIME | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | SPOKE TO MICHELL AT OSU  EXPEDITED WITHDRAWN. |  |  |  |  | 0 |
| 06222017 | 2017-06-22T16:04:35+00:00 |  | 000065768-01 | GEORGE | MEYER | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Predetermination Request | PR | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06232017 | Denied | MediGold Essential Care | Fax | Not Medically Necessary | Outpatient | 06232017 | 06242017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170623047 | C8333 | Diffuse large B-cell lymphoma, intra-abdominal lymph nodes | ICD10 | 06232017 | J1190 | INJECTION, DEXRAZOXANE HCL, PER 250 MG | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | PHONE CALL TO JESSICA W/ DR RIOS-PEREZ  CONFIRMED THAT MEMBER RECEIVED 1ST DOSE OF DOXORUBICIN 50.75 MG ON 6/22/17  AS WELL AS INITIAL DOSE OF ZINECARD INJECTION., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
