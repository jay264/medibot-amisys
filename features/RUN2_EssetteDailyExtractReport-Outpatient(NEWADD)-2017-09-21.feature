Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-21
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: Run2-DailyExtractReport-Outpatient(NEWADD)-2017-09-21
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
| 08222017 | 2017-08-22T15:40:06+00:00 |  | 000082883-01 | Paul | Sager | OSU PSYCHIATRY LLC | 930340 | ERICA L | DAWSON | 1679917017 | OSU PSYCHIATRY LLC | 901065 | 1194773317 | OSU PSYCHIATRY LLC | 1194773317 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | OSU PSYCHIATRY LLC | 09212017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08312017 | 11302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170823057 | G20 | Parkinson's disease | ICD10 | 09212017 | 96118, 96119, 96120, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 92, 92, 92, 92 | HCPCS | HC | Call made to requesting provider office and spoke with Sharon.  Requested clinical documentation for request.  Sharon states she will fax it today. |  |  |  |  | 0 |
| 08042017 | 2017-08-04T16:43:00+00:00 |  | 000071983-01 | Donita | Mcfarland | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08152017 | 10012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170901115 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 09212017 | 73723, 71260, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 48, 48, 48 | HCPCS | HC |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T07:59:00+00:00 | Q19339539 | 000089930-01 | Britniee | McCormick | GENESIS MEDICAL GRP LLC | 906801 | BRYAN | BJORNSTAD | 1114025830 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 09212017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10022017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921018 | I671 | Cerebral aneurysm, nonruptured | ICD10 | 09212017 | 70496 | CT ANGIOGRAPHY, HEAD | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T12:36:44+00:00 |  | 000072507-01 | Teresa | Jakob | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09212017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 09262017 | 10262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170920024 | R102 | Pelvic and perineal pain | ICD10 | 09212017 | 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T07:27:00+00:00 | Q19339261 | 000068966-01 | LEE | FOGLE | UNIVERSITY RADIATION ONC | 918975 | MENG X | WELLIVER | 1053476283 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09192017 | 12182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921226 | C8201 | Follicular lymphoma grade I, nodes of head, face, and neck | ICD10 | 09212017 | 77412 | RADIATION TREATMENT DELIVERY; UP TO 5 MEV; TECH ONLY | CPT | 12 | 12 | Approved | 91 | CPT | C4 | 77412: 12: 77412 12 |  |  |  |  | 0 |
| 09192017 | 2017-09-19T13:57:00+00:00 | Q19346799 | 000009359-01 | YUVONNE | KNAPP | COPC CENTRAL OHIO PRIMAR | 937347 | NATALIA | PUSHKIN | 1861488876 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09192017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921090 | M25511 | Pain in right shoulder | ICD10 | 09212017 | 73223 | MRI JOINT UPR EXTR W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T13:58:05+00:00 |  | 000006245-01 | HELEN | HANEY | OSU INTERNAL MED LLC | 951744 | JOANNE M | JETER | 1871568444 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10122017 | 12122017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170919099 | C44722, C44729 | Squamous cell carcinoma skin/ left lower limb, including hip | ICD10 | 09212017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC | PC to ROI  Vickie Amirault   cell 740-739-1501., Advised of auth approval  she chatted for several minutes about her mother condition.  She and her mom are happy with the treatment and plan at OSU.  They started her on Prednison for the rash.  Another doctor awhile back wanted her to take it as well but she refused because it made her heart flutter.  She is now taking it and it is helping.  However  Vickie has discovered that she wasn't taking it correctly  didn't want to take the loading dose.  Vickie has her taking it the correct way now. |  |  |  |  | 0 |
| 09192017 | 2017-09-19T09:10:53+00:00 |  | 000115330-01 | DIANA | JOHNSON | ORTHO TRAUMA SRVS LTD | 911031 | JOAQUIN | CASTANEDA | 1801932447 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 09212017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10022017 | 11022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170919090 | S62102A, S7222XA | Displaced subtrochanteric fracture of left femur, init | ICD10 | 09212017 | 99214, 73510, 73550, 73110 | WRIST, COMPLETE, MIN. 3 VIEWS | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 08312017 | 2017-08-31T10:30:53+00:00 |  | 000064939-01 | Miriam | Hays | OSU OTOLARYNGOLOGISTS LL | 913908 | EUGENE | CHIO | 1790846012 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09212017 | Denied | Flexible Choice PPO | Fax | Not a Covered Benefit (PA) | Outpatient | 09212017 | 09222017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170831144 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 09212017 | 64568, 0466T, 95970 | ANALYZE NEUROSTIM, NO PROG | CPT | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 09212017 | 2017-09-21T06:34:12+00:00 |  | 000070376-01 | Thomas | Joyce | OSU INTERNAL MED LLC | 944258 | YAN | CHEN | 1255777470 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09212017 | 12212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921051 | C109, G4733, R1312, R21, R58, V679 | FOLLOW-UP EXAM NOS | ICD10 | 09212017 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T16:57:00+00:00 |  | 000109241-01 | PATRICIA | FRALEY | NEUROSCIENCE CENTER | 915908 | YASUSHI | KISANUKI | 1518182419 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09212017 | Approved | MediGold Essential Care | Member Representative | Medical Criteria Met | Outpatient | 07182017 | 08182017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170718036 | G119, G231, R760 | Raised antibody titer | ICD10 | 09212017 | 71020, 62270, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC | PHONE CALL TO OSU NEUROSCIENCE  REQUESTING CLINICALS SHOWING TREATMENT PLAN AND ONGOING CARE. AS THERE HAS NEVER BEEN A REFERRAL MADE TO MEDIGOLD FOR OON SERVICES WITH OSU NEUROLOGY. SPOKE TO JOSH  HE TOOK INFORMATION AND WILL FAX OVER DOCUMENTATION. |  |  |  |  | 0 |
| 09182017 | 2017-09-18T10:32:18+00:00 |  | 000054393-01 | MARGARET | PARKER | PICKAWAY HEALTH SERVICES | 932751 | ANUPREET | KAUR | 1417244393 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Hyperbaric Oxygen | HO | Pre-Service | PRE |  | BERGER HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09192017 | 10202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170918128 | E11621, L97423, L97922 | Non-prs chr ulc unsp prt of l low leg w fat layer exposed | ICD10 | 09212017 | G0277, 99183 | PHYSICIAN ATTENDANCE AND SUPERVISION OF HYPERBARIC OXYGEN THERAPY, PER | CPT | 30, 30 | 30, 30 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T10:54:00+00:00 | Q19343241 | 000063649-01 | VICTORIA | ATWOOD | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09222017 | 10222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921106 | M47896 | Other spondylosis, lumbar region | ICD10 | 09212017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09182017 | 2017-09-18T10:45:40+00:00 |  | 000080599-01 | Emagene | Fouty | OSU INTERNAL MED LLC | 909694 | THOMAS E | OLENCKI | 1710994280 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09212017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 10062017 | 01062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170918121 | C6931 | Malignant neoplasm of right choroid | ICD10 | 09212017 | 99201, 99202, 99203, 99204, 99205, 88305, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T10:34:31+00:00 | Q18905656 | 000055743-01 | Barbara | Morehouse | MOUNT CARMEL HLTH PRVDRS | 936223 | NAHID | DADMEHR | 1366552721 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170731001 | R260 | Ataxic gait | ICD10 | 09212017 | 72141, 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 0, 1 | 1, 1 | Void, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09122017 | 2017-09-12T07:41:00+00:00 | Q19285862 | 000064540-01 | JAMES | MCGLONE | ADENA MEDICAL GROUP LLC | 931577 | COURTNEY E | LITTLE | 1003101957 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09192017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921064 | D490 | Neoplasm of unspecified behavior of digestive system | ICD10 | 09212017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T18:45:00+00:00 | Q19350218 | 000003999-01 | BARBARA | PAUL | OSU INTERNAL MED LLC | 926990 | DAVID | CARBONE | 1558453977 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09192017 | 03182018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921188 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 09212017 | J9267, J9355 | TRASTUZUMAB, 10 MG | HCPCS | 2592, 504 | 2592, 504 | Approved, Approved | 181, 181 | HCPCS | HC | J9267: 2592: INJECTION  PACLITAXEL  1 MG  Dispensed as: 144.00 mg  3 treatment(s) each cycle  6 cycle(s): J9355: 504: INJECTION  TRASTUZUMAB  10 MG  Dispensed as: 275.00 mg  3 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 09192017 | 2017-09-19T12:07:00+00:00 | Q19344665 | 000063137-01 | Mary | Ulry | OH ONCOLOGY & HEMATOLOGY | 937209 | TIMOTHY D | MOORE | 1144278243 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 04092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921230 | C50212 | Malig neoplasm of upper-inner quadrant of left female breast | ICD10 | 09212017 | J9395 | INJECTION, FULVESTRANT, 25 MG | HCPCS | 120 | 120 | Approved | 181 | HCPCS | HC | J9395: 120: Fulvestrant 500 mg  IM  day 1  every 28 days  6 cycles |  |  |  |  | 0 |
| 09142017 | 2017-09-14T11:19:00+00:00 | Q19311864 | 000075805-01 | Jean | Kessler | CLEVELAND CLINIC FNDN | 910952 | SEAN | LYDEN | 1962508416 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09142017 | 10142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921009 | I716 | Thoracoabdominal aortic aneurysm, without rupture | ICD10 | 09212017 | 71275, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09182017 | 2017-09-18T14:31:00+00:00 | Q19336257 | 000104655-01 | David | Mccutcheon | COPC CENTRAL OHIO PRIMAR | 935014 | MICHAEL D | WALUZAK | 1053394601 | DUBLIN DIAGNOSTIC IMAGIN | 951370 | 1093249781 | PROSCAN IMAGING POLARIS | 1093249781 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING POLARIS | 09212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09192017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921081 | M5417 | Radiculopathy, lumbosacral region | ICD10 | 09212017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T08:17:00+00:00 | Q19339782 | 000054408-01 | CAROL | WALLAR | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | BRUCE L AUERBACH MD LLC | 902501 | 1770787723 | BRUCE L AUERBACH MD LLC | 1770787723 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BRUCE L AUERBACH MD LLC | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09202017 | 10202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921026 | R072 | Precordial pain | ICD10 | 09212017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T10:49:00+00:00 | Q19354265 | 000104730-01 | John | Vassar | KNOX COMMUNITY HOSP GRP | 904312 | JEFFREY J | BOWERS | 1013958552 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 09212017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09202017 | 10202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921180 | R079 | Chest pain, unspecified | ICD10 | 09212017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08232017 | 2017-08-23T09:52:59+00:00 | Q19154926 | 000090564-01 | Adam | Jones | MOUNT CARMEL HLTH PRVDRS | 935396 | MARK A | WHITE | 1649279837 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 09222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170824020 | M4722 | Other spondylosis with radiculopathy, cervical region | ICD10 | 09212017 | 72141, 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09152017 | 2017-09-15T06:48:39+00:00 |  | 000083505-01 | Mark | Caudill | MEM HSP OF UNION COUNTY | 935273 | ANTERPREET S | NEKI | 1407893555 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09212017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 09152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170918051 | C4442 | Squamous cell carcinoma of skin of scalp and neck | ICD10 | 09212017 | 99211, 99212, 99213, 99214, 99215, 84436, 84443, 84153, 84439, 85025, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 3 | 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T13:42:00+00:00 | Q19346401 | 000015338-01 | FRANCIS | SMITH | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10132017 | 11122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921007 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 09212017 | 75574, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T14:59:20+00:00 |  | 000053825-01 | JAMES | JUNE | NEUROSCIENCE CENTER | 911553 | ARIANE | PARK | 1093977431 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10242017 | 01242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170920014 | G243 | Spasmodic torticollis | ICD10 | 09212017 | J0585, 64616, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 09182017 | 2017-09-18T14:02:00+00:00 | Q19335671 | 000053125-01 | ELEANOR | GRUMMAN | MOUNT CARMEL HLTH PRVDRS | 935009 | STEVEN S | WALKER | 1861455131 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09182017 | 10182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921079 | I2609 | Other pulmonary embolism with acute cor pulmonale | ICD10 | 09212017 | 71270 | CAT SCAN THORAX W/WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T10:57:12+00:00 |  | 000091654-01 | Preston | Anderson Jr | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 09212017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09182017 | 10182017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170920021 | N200 | Calculus of kidney | ICD10 | 09212017 | 99203, 99204, 74000 | X-RAY ABDOMEN,SINGLE A-P | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09182017 | 2017-09-18T18:15:00+00:00 | Q19338880 | 000074824-01 | Larry | Howell | ORTHOPEDIC ONE INC | 907140 | ROBERT T | GORSLINE | 1003983743 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 09212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09182017 | 10182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921039 | M7672 | Peroneal tendinitis, left leg | ICD10 | 09212017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
