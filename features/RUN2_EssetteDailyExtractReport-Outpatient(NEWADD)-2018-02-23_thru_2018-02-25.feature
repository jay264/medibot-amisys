Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-23_thru_2018-02-25
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-23_thru_2018-02-25
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
| 02202018 | 2018-02-20T07:57:00+00:00 | Q20442390 | 000079013-01 | Juanita | Gibson | MARIETTA HLTH CARE PHYS | 953135 | ALAINA JO | PHILLIS | 1902315260 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 02232018 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02202018 | 03222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223010 | M79672 | Pain in left foot | ICD10 | 02232018 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T13:33:22+00:00 | Q20460274 | 000065787-01 | DONNA | ABEL | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 02232018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02272018 | 03292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223019 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 02232018 | 70460, 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T08:49:17+00:00 |  | 000027886-01 | JANICE | MOORE | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02232018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03142018 | 06142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222093 | C069 | Malignant neoplasm of mouth, unspecified | ICD10 | 02232018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T07:41:54+00:00 | Q20464553 | 000108294-01 | Karen | Boles | TRIHEALTH G LLC | 944553 | IAN S | RICE | 1730314238 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | HIGHLAND DISTRICT HOSPITAL - CAH | 02232018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223036 | R2232 | Localized swelling, mass and lump, left upper limb | ICD10 | 02232018 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T07:49:09+00:00 | Q20464593 | 000110138-01 | Nancy | Montgomery | GRADY MEMORIAL HOSPITAL | 939552 | JERRY W | MITCHELL | 1750339651 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 02232018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03142018 | 04132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223037 | C8208 | Follicular lymphoma grade I, lymph nodes of multiple sites | ICD10 | 02232018 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T08:35:30+00:00 | Q20465255 | 000097038-01 | Deanne | Miller | MOUNT CARMEL EAST PHYS | 934970 | LUIS | VACCARELLO | 1225034622 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 02232018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02272018 | 03292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223042 | C541 | Malignant neoplasm of endometrium | ICD10 | 02232018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T08:53:55+00:00 | Q20465575 | 000113895-01 | Patricia | Boehnlein | THE CHRIST HSP MED ASSOC | 944497 | GERALDINE M | VEHR | 1306809736 | THE CHRIST HOSPITAL | 924156 | 1932157385 | THE CHRIST HOSPITAL | 1932157385 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 02232018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02262018 | 03282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223046 | M5440 | Lumbago with sciatica, unspecified side | ICD10 | 02232018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T10:47:30+00:00 | Q20468052 | 000028185-01 | ROBERT | STEWART | MOUNT CARMEL HLTH SYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02232018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223055 | M25512 | Pain in left shoulder | ICD10 | 02232018 | 73202 | CAT SCAN UPPER EXTREMITY W/WO CONT. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T10:35:00+00:00 | Q20468103 | 000034523-01 | LARRY | HAMILTON | MADISON FAMILY HEALTH | 951293 | MHD Y | AL-MARRAWI | 1588602627 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MEMORIAL HOSPITAL OF UNION COUNTY | 02232018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223056 | C155 | Malignant neoplasm of lower third of esophagus | ICD10 | 02232018 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T11:01:31+00:00 | Q20468357 | 000104724-01 | Mary | Westlake | CEN OH PRIMARY CARE SPEC | 905522 | AUDRA J | PARKER | 1073737763 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02232018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223058 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 02232018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T11:31:32+00:00 | Q20468969 | 000071810-01 | Shirley | Green | ORTHO ASSOC OF SW OH INC | 913140 | JEFFREY S | ROGERS | 1770699829 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 02232018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223060 | M5137 | Other intervertebral disc degeneration, lumbosacral region | ICD10 | 02232018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T11:43:23+00:00 | Q20469142 | 000097437-01 | Carol | Hohensheldt | ALLIANCE PHYSICIANS INC | 900999 | DAVID S | PAGE | 1407834153 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 02232018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223061 | M5441 | Lumbago with sciatica, right side | ICD10 | 02232018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T12:32:55+00:00 | Q20469968 | 000059433-01 | ELIZABETH | POSTEL | LICKING MEM HLTH PROF | 941939 | EVEN F | WANG | 1871813691 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 02232018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02282018 | 03302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223066 | G20 | Parkinson's disease | ICD10 | 02232018 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02162018 | 2018-02-16T16:22:19+00:00 |  | 000102386-01 | Eloise | Trump | OHIO ENT & ALLERGY PHYSI | 952500 | MICHAEL | LOOCHTAN | 1093014300 | OHIO ENT & ALLERGY PHYSI | 952500 | 1750330551 | MICHAEL LOOCHTAN | 1093014300 | Out of Network Services | OONS | Pre-Service | PRE | MICHAEL | LOOCHTAN | 02232018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03052018 | 06052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216131 | J3802 | Paralysis of vocal cords and larynx, bilateral | ICD10 | 02232018 | 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3 | 3 | Approved | 93 | CPT | C4 | Left VM 614-275-4300 Karrie for missing CPT codes, Contacted Karrie for missing CPT codes |  |  |  |  | 0 |
| 02162018 | 2018-02-16T16:39:14+00:00 |  | 000018487-01 | RUBY | BUTT | ORTHOPEDIC ONE INC | 900607 |  | ORTHOPEDIC ONE INC | 1548289697 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 02232018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02162018 | 04302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180219102 | S52251D, S52351D | Displ commnt fx shaft of rad, r arm, 7thD | ICD10 | 02232018 | 97165, 97110, 97112, 97140, 97760, 97530 | DYNAMIC ACTIVITES TO IMPROVE FUNCTIONAL PERFORMANCE, EACH 15 MINUTES | CPT | 20, 20, 20, 20, 20, 20 | 20, 20, 20, 20, 20, 20 | Approved, Approved, Approved, Approved, Approved, Approved | 74, 74, 74, 74, 74, 74 | CPT | C4 | The Upper Arlington Location is out of network., LVMM for Karen Brewer at Orthopedic One 614-545-7900 ext: 6665, Need to inquire about OON status and why mbr must go to this location for OT., Research of past authorizations:, 2/2/18 MVC  driver.  She was emergently taken to RMH at a trauma admit., 2/3/18 had ORIF of Right arm by Dr. Micael Rerko., He is in the Sawmill location of OrthopedicOne where he wants her to get hand therapy.  She was approved for a custom elbow splint earlier. |  |  |  |  | 0 |
| 02192018 | 2018-02-19T10:50:37+00:00 |  | 000101417-01 | CYNTHIA | TUCKER | DAYTON EYE ASSOC INC | 908860 | WALTER C | HARTEL | 1194744698 | DAYTON EYE SURGERY CENTER | 909365 | 1235285628 | DAYTON EYE SURGERY CENTER | 1235285628 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | DAYTON EYE SURGERY CENTER | 02232018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03272018 | 04272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180219118 | H02831, H02834, H53453 | Other localized visual field defect, bilateral | ICD10 | 02232018 | 15823 | BLEPHAROPLASTY UPPER LD C EXCSV SKN | CPT | 2 | 2 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 02202018 | 2018-02-20T09:01:10+00:00 |  | 000097271-01 | Paul | Brown | ORTHO TRAUMA SRVS LTD | 910110 | SANJAY | MEHTA | 1265416374 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Out of Network Services | OONS | Pre-Service | PRE |  | GRANT MEDICAL CENTER | 02252018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02262018 | 03262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180220120 | S52572D, Z472 | Encounter for removal of internal fixation device | ICD10 | 02252018 | 20680, 20670, 20680 | REMOVAL OF IMPLANT; DEEP(EG, BURIED WIRE, PIN, SCREW, ROD, PLATE) | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
Sarcoidosis, unspecified | ICD10 | 02232018 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 1 | 1 | Approved | 60 | CPT | C4 | PC to Davona at CCF  216-445-1112 opt 4  inquired about CPT code., She wasn't sure  she just said the member has seen the doctor in the past and this is for one visit., She is okay with 99210-99215 or 99499. |  |  |  |  | 0 |
| 02212018 | 2018-02-21T15:50:08+00:00 |  | 000053909-01 | RICHARD | TURNER | CLEVELAND CLINIC FNDN | 942148 | KHALDOUN | TARAKJI | 1356517957 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 02232018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02212018 | 04212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222041 | D869 | Sarcoidosis, unspecified | ICD10 | 02232018 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 1 | 1 | Approved | 60 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T15:21:39+00:00 |  | 000053909-01 | RICHARD | TURNER | CLEVELAND CLINIC FNDN | 915500 | ERIC D | COBER | 1215054358 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 02232018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02212018 | 04212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222046 | D869 | Sarcoidosis, unspecified | ICD10 | 02232018 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 1 | 1 | Approved | 60 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T13:35:05+00:00 |  | 000031721-01 | JANET | RICHCREEK | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Predetermination Request | PR | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 02232018 | Denied | MediGold Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 02232018 | 02242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180222129 | B351 | Tinea unguium | ICD10 | 02232018 | 11721 | DEBRIDEMENT OF NAIL(S) BY ANY METHOD(S); SIX OR MORE | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02222018 | 2018-02-22T09:41:59+00:00 | Q20466626 | 000112835-01 | Patty | Hinterschied | MOUNT CARMEL HLTH SYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL HLTH SYS | 937331 | 1457617235 | JAMES E POPP | 1639162753 | Radiology (HH) | OP RAD | Pre-Service | PRE | JAMES E | POPP | 02232018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03052018 | 04042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223095 | R262 | Difficulty in walking, not elsewhere classified | ICD10 | 02232018 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T09:38:37+00:00 | Q20466636 | 000073955-01 | James | Riley | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02232018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223096 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02232018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02232018 | 2018-02-23T11:55:59+00:00 |  | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948088 | JOHN | CURFMAN | 1780039412 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02252018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02282018 | 04282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223113 | C9000, Z9481 | Bone marrow transplant status | ICD10 | 02252018 | G0364, 38222, 38222, 88184, 38221, 88313, 88305, 88237, 88262, 88271, 88275 | CYTOGENETICS, 100-300 | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60 | CPT | C4 |  |  |  |  |  | 0 |
