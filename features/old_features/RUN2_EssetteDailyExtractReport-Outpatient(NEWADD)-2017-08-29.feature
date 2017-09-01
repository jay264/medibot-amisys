Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-29
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-29
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
| 08182017 | 2017-08-18T14:17:53+00:00 |  | 000101519-01 | James | Wilson | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08212017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170818155 | C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 08292017 | 36561, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T15:13:05+00:00 |  | 000106579-01 | Joann | Reeves | OSU HLTH SYSTEM NEUROSUR | 915107 | DANIEL | PREVEDELLO | 1750391090 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08292017 | Approved | MediGold Essential Care | HealthHelp | Services Not Available In-Network | Outpatient | 08292017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170828142 | E237 | Disorder of pituitary gland, unspecified | ICD10 | 08292017 | 70496, 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T14:58:30+00:00 |  | 000101742-01 | JUDY | HARRIS | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08292017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Transplant Evaluation | Outpatient | 11012017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170828139 | R911 | Solitary pulmonary nodule | ICD10 | 08292017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 45 | CPT | C4 |  |  |  |  |  | 0 |
| 08162017 | 2017-08-16T16:05:14+00:00 |  | 000108922-01 | Sharon | Kohut | AMRIT LAL CHADHA MD INC | 935361 | AMRIT L | CHADHA | 1407948649 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08172017 | 11172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817069 | G20 | Parkinson's disease | ICD10 | 08292017 | 99201, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC | Clinical notes that were rec'd with request are hand written and difficult to read.  , PC to Jennifer at Dr. Chadha's office 937-325-0665., Inquired about time of diagnosis and Parkinson's meds that have been tried., Member was diagnosed in 2014 and has been on the following medications:, Gabapentin  premidone  sentimet  klonipin  paxil  etc. |  |  |  |  | 0 |
| 08282017 | 2017-08-28T10:43:15+00:00 | Q19186780 | 000086699-01 | Virginia | Oost | DAYTON EYE ASSOC INC | 911043 | AMY M | KOPP | 1205864519 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829036 | H532 | Diplopia | ICD10 | 08292017 | 70553, 70543 | MRI ORBT/FAC/NCK W/O&W DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T12:12:12+00:00 | Q19188433 | 000103901-01 | Patricia | Davis | MARIETTA MEM HSP | 947328 | SHINOJ | PATTALI JAYAVA | 1275849788 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 08292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829039 | C7800 | Secondary malignant neoplasm of unspecified lung | ICD10 | 08292017 | 71250, 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T12:58:35+00:00 | Q19189242 | 000088247-01 | Donald | Mcclain | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829062 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 08292017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T12:54:42+00:00 | Q19189258 | 000046721-01 | DWIGHT | DAVIS JR | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | JACK STANKO MD LLC | 902266 | 1194924431 | JACK STANKO MD LLC | 1194924431 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JACK STANKO MD LLC | 08292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09012017 | 10012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829063 | R0602 | Shortness of breath | ICD10 | 08292017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T13:10:45+00:00 | Q19189458 | 000101645-01 | Virginia | Milburn | MOUNT CARMEL HLTH PRVDRS | 926743 | LORI | WITTER | 1164474268 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 08292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829067 | M549 | Dorsalgia, unspecified | ICD10 | 08292017 | 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T13:14:59+00:00 | Q19189726 | 000024441-01 | RICHARD | MCKNIGHT | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 08292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829072 | R0602 | Shortness of breath | ICD10 | 08292017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T13:49:37+00:00 | Q19190227 | 000074668-01 | Michael | Holland | MID OH NEUROLOGY INC | 939558 | JOSHUA C | NELSON | 1609870344 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09062017 | 10062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829082 | M4802 | Spinal stenosis, cervical region | ICD10 | 08292017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T12:35:49+00:00 | Q19174573 | 000045666-01 | JAMES | DULMAGE | RADIOLOGY INC | 937388 | LOUIS J | RIVELLO | 1598754848 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 11262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829092 | C7A8 | Other malignant neuroendocrine tumors | ICD10 | 08292017 | 77412 | RADIATION TREATMENT DELIVERY; UP TO 5 MEV; TECH ONLY | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T13:34:38+00:00 | Q19176348 | 000014520-01 | GEORGE | DOUGLAS | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08292017 | 10282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829100 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 08292017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 08252017 | 2017-08-25T15:02:20+00:00 | 19139389 | 000114661-01 | Roberta | Chilcote | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 09222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829105 | M25551 | Pain in right hip | ICD10 | 08292017 | 72190 | PELVIS, COMPLETE, MIN 3 VIEWS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08252017 | 2017-08-25T14:54:27+00:00 | Q19161494 | 000108818-01 | Ruth | Smalley | MERCY HEALTH PHYSICIANS | 920927 | STEPHEN M | MEYERS | 1356340954 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 928906 | 1811988009 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 1811988009 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADAMS COUNTY REGIONAL MEDICAL CENTER | 08292017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 09222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829117 | R072 | Precordial pain | ICD10 | 08292017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08252017 | 2017-08-25T14:17:11+00:00 | Q19180869 | 000015502-01 | DORIS | SOLOMON | MOUNT CARMEL HLTH PRVDRS | 935536 | DOUGLAS D | MASSICK | 1881666287 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08292017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829126 | M47812 | Spondylosis w/o myelopathy or radiculopathy, cervical region | ICD10 | 08292017 | 72125 | CAT SCAN CERVICAL SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08252017 | 2017-08-25T14:34:05+00:00 | Q19181185 | 000060440-01 | DEAN | KITCHEN | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 08292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09012017 | 10012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829135 | I208 | Other forms of angina pectoris | ICD10 | 08292017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T11:33:37+00:00 | Q19187819 | 000085482-01 | Roger | Moore | MERCY HEALTH PHYSICIANS | 921034 | JONATHAN A | RAPP | 1437343407 | JEWISH HOSPITAL LLC | 949378 | 1609251891 | JEWISH HOSPITAL LLC | 1609251891 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JEWISH HOSPITAL LLC | 08292017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08292017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829179 | I359 | Nonrheumatic aortic valve disorder, unspecified | ICD10 | 08292017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T09:41:49+00:00 | Q19185853 | 000096829-01 | Bonnie | Bowman | CHASE, DANIEL W | 935922 | DANIEL W | CHASE | 1063483857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829186 | H818X2 | Other disorders of vestibular function, left ear | ICD10 | 08292017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T10:32:36+00:00 | Q19186661 | 000088190-01 | Marialana | Mannix | SOMC MED CARE FOUNDATION | 922226 | MUHAMMAD T | GILL | 1033323381 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 08292017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08292017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829190 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 08292017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T07:11:43+00:00 | Q19183566 | 000046838-01 | HAROLD | REESER | OHIOHEALTH PHYS GRP | 911198 | GREGORY K | LAM | 1255319760 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08292017 | 10282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829200 | R0602 | Shortness of breath | ICD10 | 08292017 | 93451 | RIGHT HEART CATH | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
