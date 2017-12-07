Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-05
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-05
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
| 12012017 | 2017-12-01T15:11:04+00:00 | Q19892978 | 000037159-01 | LOIS | JAMES | MADISON FAMILY HEALTH | 911210 | GINA N | MOODY | 1033378989 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12042017 | 01032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205040 | R911 | Solitary pulmonary nodule | ICD10 | 12052017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T08:18:30+00:00 | Q19895597 | 000033127-01 | MARGARET | DOPPES | MOUNT CARMEL HLTH PRVDRS | 932451 | JOSEPH S | DUFFY | 1386897544 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12182017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205050 | D3A00 | Benign carcinoid tumor of unspecified site | ICD10 | 12052017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T10:37:17+00:00 | Q19898226 | 000099374-01 | Arlene | Coldiron | MAYFIELD CLINIC | 921678 | BRADFORD A | CURT | 1003027392 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 12052017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12042017 | 01032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205096 | M545 | Low back pain | ICD10 | 12052017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T05:43:52+00:00 | Q19894768 | 000071515-01 | Michael | Brown | COSHOCTON COUNTY MEM HSP | 936690 | MARK E | GITTINS | 1598749699 | POLARIS OPEN MRI | 902664 | 1831154996 | POLARIS OPEN MRI | 1831154996 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | POLARIS OPEN MRI | 12052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12052017 | 01042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205098 | M25562 | Pain in left knee | ICD10 | 12052017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T13:01:29+00:00 |  | 000102073-01 | Regina | Miller | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12042017 | 01042018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171204019 | Z96612 | Presence of left artificial shoulder joint | ICD10 | 12052017 | 97530, 97110, 97112, 97116, 97035, 97161, 97162, 97163, 97164, 97760, 97140, 97535, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 12, 12, 12, 12, 12, 1, 1, 12, 12, 12, 12, 12, 1 | 12, 12, 12, 12, 12, 1, 1, 12, 12, 12, 12, 12, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T13:32:02+00:00 | Q19901567 | 000099961-01 | CHARLES | JOHNSON | MAYFIELD CLINIC | 921728 | ARTHUR G | ARAND | 1386652584 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 12052017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12042017 | 01032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205104 | M5441 | Lumbago with sciatica, right side | ICD10 | 12052017 | 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T13:39:26+00:00 | Q19901755 | 000053308-01 | IRMA | LEWIS | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | ORTHO & SPORTS MED CTR I | 938447 | 1801979976 | ORTHO & SPORTS MED CTR INC | 1801979976 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHO & SPORTS MED CTR INC | 12052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12042017 | 01032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205106 | M5412 | Radiculopathy, cervical region | ICD10 | 12052017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T07:05:49+00:00 | Q19894894 | 000088466-01 | Helen | Gotcher | SOUTHEASTERN OHIO PHYS | 921960 | MICHAEL | SARAP | 1275615296 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 12052017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12042017 | 01032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205107 | R1032 | Left lower quadrant pain | ICD10 | 12052017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T07:50:48+00:00 | Q19895259 | 000046643-01 | WALTER | WILLIAMS | MOUNT CARMEL HLTH PRVDRS | 932451 | JOSEPH S | DUFFY | 1386897544 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 12052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12062017 | 01052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205121 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 12052017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12052017 | 2017-12-05T08:32:12+00:00 |  | 000000240-01 | BARBARA | SHIVENER | OHIOHEALTH PHYS GRP | 910110 | SANJAY | MEHTA | 1265416374 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 12052017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12052017 | 01052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205076 | S72101D | Unsp trochan fx right femur, subs for clos fx w routn heal | ICD10 | 12052017 | 99214, 73550, 73560 | KNEE, A-P & LATERAL VIEWS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T12:10:55+00:00 | Q19900051 | 000058455-01 | JOANN | PRESLEY | MOUNT CARMEL HLTH PRVDRS | 906494 | TIMOTHY P | NUSS | 1982649232 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12112017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205136 | I208 | Other forms of angina pectoris | ICD10 | 12052017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T13:01:27+00:00 | Q19900957 | 000105295-01 | Peggy | Linville-Moore | COPC CENTRAL OHIO PRIMAR | 936781 | MARY S | GRULKOWSKI | 1760420707 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 12052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12042017 | 01032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205146 | R1900 | Intra-abd and pelvic swelling, mass and lump, unsp site | ICD10 | 12052017 | 72193 | CAT SCAN PELVIS C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
right great toe | ICD10 | 12052017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 11302017 | 2017-11-30T12:49:06+00:00 |  | 000101519-01 | James | Wilson | OSU INTERNAL MED LLC | 940739 | JESSICA | RUPLE | 1720424336 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12042017 | 01042018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171130135 | C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 12052017 | 43249, 43256, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 11292017 | 2017-11-29T11:01:04+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12122017 | 03122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171130127 | C4011 | Malignant neoplasm of short bones of right upper limb | ICD10 | 12052017 | 71020, 73080, 73060, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 3, 3, 3, 3, 3, 3 | 1, 1, 1, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 11282017 | 2017-11-28T12:44:50+00:00 |  | 000034642-01 | ELSIE | WILCOX | OSU OTOLARYNGOLOGISTS LL | 912050 | MATTHEW | OLD | 1699891242 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12012017 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171129053 | C7989 | Secondary malignant neoplasm of other specified sites | ICD10 | 12052017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 11282017 | 2017-11-28T13:07:35+00:00 |  | 000034642-01 | ELSIE | WILCOX | DENTAL FACULTY PRACTICE | 909908 | MEADE C | VANPUTTEN | 1407906712 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12052017 | 03052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171129065 | K1230 | Oral mucositis (ulcerative), unspecified | ICD10 | 12052017 | 97026, 97597, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
