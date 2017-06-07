Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-05
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-05
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
| 06022017 | 2017-06-02T10:25:41+00:00 | Q18562975 | 000032681-01 | FLORENCE | STACY | SPRINGFIELD HEMATOLOGY & | 901547 | DALJEET | SINGH | 1598784092 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06152017 | 07152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605109 | C182 | Malignant neoplasm of ascending colon | ICD10 | 06052017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T13:20:07+00:00 | Q18563794 | 000081311-01 | James | Harvey | GENESIS MEDICAL GRP LLC | 927959 | SHALINI | GUPTA | 1740446343 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06052017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06052017 | 07052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605110 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 06052017 | 70552 | MRI BRAIN; INCLUDING BRAIN STEM; WITH CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T11:08:27+00:00 | Q18563935 | 000048475-01 | HAROLD | CLIFFORD | CEN OH UROLOGY GRP INC | 936013 | ANDY J | CHO | 1063451367 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 06052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06092017 | 07092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605111 | R310 | Gross hematuria | ICD10 | 06052017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T11:42:30+00:00 | Q18564507 | 000109553-01 | Kent | Ritterholz | THE UROLOGY GROUP | 921176 | KARL B | BRAUN | 1508802257 | MONITOR MEDICAL INC | 922542 | 1619315371 | MONITOR MEDICAL INC | 1619315371 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MONITOR MEDICAL INC | 06052017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06062017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605112 | R310 | Gross hematuria | ICD10 | 06052017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T11:43:40+00:00 | Q18564561 | 000038459-01 | MARIE | RING | COPC CENTRAL OHIO PRIMAR | 937059 | DAVID S | LAHUE | 1861476327 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 06052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605113 | I259 | Chronic ischemic heart disease, unspecified | ICD10 | 06052017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T12:01:36+00:00 | Q18564777 | 000115551-01 | THOMAS | GORMLEY | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06052017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605114 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 06052017 | 75635 | CT ANGIO ABDOMINAL ARTERIES | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T12:00:41+00:00 | Q18564796 | 000076719-01 | Raymond | King | MERCY HEALTH PHYSICIANS | 921770 | RICHARD B | FRIES | 1033321567 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 06052017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06052017 | 07052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605115 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 06052017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T12:16:45+00:00 | Q18565027 | 000069552-01 | CARL | HENDERSON | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 06052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605116 | I70213 | Athscl native arteries of extrm w intrmt claud, bi legs | ICD10 | 06052017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T12:16:42+00:00 | Q18565035 | 000065350-01 | JAMES | GRIFFITH | DR JOHN Y ROBERTSON FAM | 901129 | JOHN Y | ROBERTSON | 1770571804 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 06052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605117 | R109 | Unspecified abdominal pain | ICD10 | 06052017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T12:23:30+00:00 | Q18565147 | 000112268-01 | TIMOTHY | STOKES | GENESIS MEDICAL GRP LLC | 909216 | THOMAS H | DIEHL | 1851329528 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06052017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06062017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605118 | R1031 | Right lower quadrant pain | ICD10 | 06052017 | 72194 | CAT SCAN PELVI W/WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T12:31:09+00:00 | Q18565316 | 000058080-01 | JAMES | PAELTZ | COPC CENTRAL OHIO PRIMAR | 935067 | ROBERT F | WOLF | 1992781579 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 06052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605119 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 06052017 | 74175 | CT ANGIO ABDOM W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T12:39:45+00:00 | Q18565346 | 000076070-01 | Charles | Milam | CLINTONVILLE FOOT & ANKL | 934267 | COREY J | GRIFFITH | 1669419826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605120 | L03115 | Cellulitis of right lower limb | ICD10 | 06052017 | 73720 | MRI LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T12:57:07+00:00 | Q18565737 | 000072146-01 | Joseph | Bova | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605121 | R160 | Hepatomegaly, not elsewhere classified | ICD10 | 06052017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T12:58:22+00:00 | Q18565756 | 000028210-01 | LILLIAN | MOWERY | RIVER VALLEY ORTHOS & SP | 909075 | DAVID M | VAZIRI | 1144211137 | RIVER VALLEY ORTHOS & SP | 938435 | 1669450961 | RIVER VALLEY ORTHOS & SPORTS MED | 1669450961 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | RIVER VALLEY ORTHOS & SPORTS MED | 06052017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605122 | M25511 | Pain in right shoulder | ICD10 | 06052017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T13:09:45+00:00 | Q18565819 | 000071783-01 | Robert | Connor | ALLIANCE PHYSICIANS INC | 902628 | KATHERINE A | CLARK | 1366424798 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | GREENE MEMORIAL HOSPITAL | 06052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605123 | Z87891 | Personal history of nicotine dependence | ICD10 | 06052017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T13:11:26+00:00 | Q18565838 | 000116921-01 | Linda | Allen | MARIETTA HLTH CARE PHYS | 931383 | LEAH G | HOPKINS | 1548239932 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 06052017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605124 | R079 | Chest pain, unspecified | ICD10 | 06052017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T13:12:18+00:00 | Q18565880 | 000101566-01 | Ronald | Cruikshank | OH ONCOLOGY & HEMATOLOGY | 937209 | TIMOTHY D | MOORE | 1144278243 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605125 | C4362 | Malignant melanoma of left upper limb, including shoulder | ICD10 | 06052017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04212017 | 2017-04-21T15:33:38+00:00 |  | 000049262-01 | ARLENE | WADKOWSKI | CANYON MEDICAL CENTER | 904476 | BEATA K | STERKOWICZ | 1477659993 | OSU EYE PHYS & SURGEONS | 908886 | 1861437923 | FREDERICK H DAVIDORF | 1548204555 | Out of Network Services | OONS | Pre-Service | PRE | FREDERICK H | DAVIDORF | 06052017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 06052017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170425134 | Z0100 | Encounter for exam of eyes and vision w/o abnormal findings | ICD10 | 06052017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04242017 | 2017-04-24T09:42:51+00:00 |  | 000116226-01 | Richard | Ruff | OSU SURGERY LLC | 923244 | JOHN H | HOWARD | 1952515736 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06052017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Outpatient | 06052017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170426094 | C4330, C4339 | Malignant melanoma of other parts of face | ICD10 | 06052017 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05232017 | 2017-05-23T15:06:43+00:00 |  | 000097209-01 | Audrey | Rawlings | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06052017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Outpatient | 06052017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170523137 | J320 | Chronic maxillary sinusitis | ICD10 | 06052017 | 07210 | SURGICAL REMOVAL OF ERUPTED TOOTH | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., Per Supervisor Lindsey G this dental service must go through Delta Dental. |  |  |  |  | 0 |
| 06012017 | 2017-06-01T17:17:29+00:00 |  | 000044180-01 | JOAN | COUSINS | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 06052017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 06052017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170602113 | M4806 | Spinal stenosis, lumbar region | ICD10 | 06052017 | K0800 | POV group 1 std up to 300 lbs | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06022017 | 2017-06-02T09:04:20+00:00 |  | 000104150-01 | LILLIAN | CUNNINGHAM | OSU INTERNAL MED LLC | 942507 | KELLIE A | KIDD | 1952306318 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06052017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Outpatient | 06052017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170602121 | I482 | Chronic atrial fibrillation | ICD10 | 06052017 | 99214, 93000 | ELECTROCARDIOGRAM C INTERP & RPT | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06022017 | 2017-06-02T10:22:38+00:00 |  | 000055345-01 | ERIC | CROKER | OSU INTERNAL MED LLC | 930983 | AMANDA | HETTINGA | 1710320528 | TACTILE SYSTEMS TECHNOLOGY | 914949 | 1427131424 | TACTILE SYSTEMS TECHNOLOGY | 1427131424 | DME | DME | Pre-Service | PRE |  | TACTILE SYSTEMS TECHNOLOGY | 06052017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 06052017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170602130 | I890 | Lymphedema, not elsewhere classified | ICD10 | 06052017 | E0652, E0667 | SEGMENTAL PNEUMATIC APPLIANCE FOR USE WITH PNEUMATIC COMPRESSOR, FULL | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06022017 | 2017-06-02T16:33:18+00:00 |  | 000117668-01 | Harold | Bell | MOUNT CARMEL HLTH PRVDRS | 925886 | DYLAN J | WIRTZ | 1982895975 | LINCARE | 942624 | 1467537456 | LINCARE | 1467537456 | DME | DME | Pre-Service | PRE |  | LINCARE | 06052017 | Denied | MediGold Essential Care | Fax | Not Medically Necessary | Outpatient | 06052017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170602147 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06052017 | E1392 | PORTABLE OXYGEN CONCENTRATOR, RENTAL | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Mbr states he has both the stationary oxygen concentrator and the portable tanks with Lincare.  The stationary oxygen concentrator is putting off heat and beeps.  The concentrator is approximately 2 months old and he is on 2 liters of oxygen., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06052017 | 2017-06-05T10:51:43+00:00 |  | 000113024-01 | CAROL | DENNIS | OSU OTOLARYNGOLOGISTS LL | 933405 | OLIVER F | ADUNKA | 1316975444 | OSU OTOLARYNGOLOGISTS LL | 902915 | 1861449407 | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU OTOLARYNGOLOGISTS LLC | 06052017 | Denied | MediGold Southeast OH Essential Care | Fax | Services Available In-Network | Outpatient | 06052017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170605010 | H905 | Unspecified sensorineural hearing loss | ICD10 | 06052017 | 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
