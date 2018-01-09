Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-05_thru_2018-01-07
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-05_thru_2018-01-07
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
| 11302017 | 2017-11-30T09:04:27+00:00 |  | 000065432-01 | Krista | Overly | UTICA CARE CENTER | 941109 |  | UTICA CARE CENTER | 1386618494 | UTICA CARE CENTER | 941109 | 1386618494 | UTICA CARE CENTER | 1386618494 | Part B Therapy | OP THER | Pre-Service | PRE |  | UTICA CARE CENTER | 01052018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12042017 | 01042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171130153 | M1990, M24562, M545, R32 | Unspecified urinary incontinence | ICD10 | 01052018 | 97110, 97112, 97116, 97140, 97162, 97110, 97112, 97166, 97530, 97535 | SELF CARE/HOME MANAGEMENT TRAINING (EG, ACTIVITIES OF DAILY | CPT | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12062017 | 2017-12-06T14:55:24+00:00 |  | 000043343-01 | JACK | DODRILL | OSU H S MEDICAL NUTRITIO | 948681 | ANNA N | BERRY | 1154561603 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12062017 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171206156 | C44329 | Squamous cell carcinoma of skin of other parts of face | ICD10 | 01052018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12052017 | 2017-12-05T14:52:35+00:00 | Q19914646 | 000072657-01 | Wayne | Jenkins | FAIRFIELD HLTHCARE PROFS | 934808 | KANWALJIT | SINGH | 1679765770 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01052018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12062017 | 06042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171207018 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 01052018 | J9206, J2405, J0640, J9190 | FLUOROURACIL, 500 MG | HCPCS | 216, 768, 192, 144 | 216, 768, 192, 144 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T14:45:02+00:00 |  | 000064628-01 | JANICE | CALLAND | OSU OTOLARYNGOLOGISTS LL | 912050 | MATTHEW | OLD | 1699891242 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01082018 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180103112 | M8730, Y842 | Radiolog proc/radiothrpy cause abn react/compl, w/o misadvnt | ICD10 | 01052018 | 93000, 85730, 85025, 71020, 85610, 36415, 83036, G0463, 94760 | PULSE OXIMETRY FOR 02 SATURTN/SNGL | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T10:20:20+00:00 | Q20084907 | 000030085-01 | JOHN | GERMAINE | MOUNT CARMEL WEST PHYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01072018 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 02022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104046 | M25511 | Pain in right shoulder | ICD10 | 01072018 | 73200 | CAT SCAN UPPER EXTREMITY UNENHANCED | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T07:29:21+00:00 | Q20082172 | 000040258-01 | JUDITH | LITTLE | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 02022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104068 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 01072018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T09:37:55+00:00 |  | 000068753-01 | MARY | HAUSS | MOUNT CARMEL HLTH SYS | 935514 | BRIAN M | ISLER | 1225022569 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01082018 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104092 | Z86010 | Personal history of colonic polyps | ICD10 | 01052018 | 45378, 45380, 45385, 45384 | COLNSPY PAST SPLENIC FL C POLYP REM | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T16:10:15+00:00 |  | 000101742-01 | JUDY | HARRIS | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01052018 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 01052018 | 12312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104095 | Z942 | Lung transplant status | ICD10 | 01052018 | 99245, 99245, 94010, 94726, 77080, 94620, 71250, 71020, 93306, 93307, 93320, 31628, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 84100, 85730, 85610, 84439, 84443, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 83735, 84100, 85730, 85610, 84439, 84443, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 82310, 86808, 84550, 80197, 87497, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 18, 12, 6, 6, 2, 2, 14, 1, 1, 1, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 18 | 6, 18, 12, 6, 6, 2, 2, 14, 1, 1, 1, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 18 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361, 361 | HCPCS | HC |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T11:08:13+00:00 |  | 000097271-01 | Paul | Brown | OHIOHEALTH PHYS GRP | 910110 | SANJAY | MEHTA | 1265416374 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 01052018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 01182018 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104102 | S52571A, S52572A | Oth intartic fracture of lower end of left radius, init | ICD10 | 01052018 | 99024, 99214, 73110, 73110 | WRIST, COMPLETE, MIN. 3 VIEWS | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T10:00:15+00:00 |  | 000048277-01 | RONALD | BEACH | ORTHO TRAUMA SRVS LTD | 911031 | JOAQUIN | CASTANEDA | 1801932447 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 01052018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01182018 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104105 | S5290XA | Unsp fracture of unsp forearm, init for clos fx | ICD10 | 01052018 | 99214, 73090 | X-RAY FOREARM,A-P AND LATERAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T09:06:18+00:00 |  | 000034119-01 | CHARLES | FRANCIS | PSYCH360 | 943619 | NICOLE | CONIGLIO | 1457794166 | PSYCH360 | 943619 | 1093191322 | NICOLE CONIGLIO | 1457794166 | OP Behavioral Health | OP BH | Pre-Service | PRE | NICOLE | CONIGLIO | 01052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01052018 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104109 | G309, Z79899 | Other long term (current) drug therapy | ICD10 | 01052018 | 90844 | INDIVIDUAL PSYCHOTHERAPY 45-50 MIN. | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T14:30:56+00:00 | Q20089586 | 000049941-01 | ROBERT | PEER | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180105022 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 01052018 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T15:09:00+00:00 | Q20098509 | 000005682-01 | DAVID | LIEPACK | CANYON EYE ASSOC INC | 935090 | JENNIFER H | YOUNG | 1275528010 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180105036 | H05243 | Constant exophthalmos, bilateral | ICD10 | 01052018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T10:54:41+00:00 | Q20095437 | 000069791-01 | DONALD | RANNEY | MOUNT CARMEL HLTH PRVDRS | 934782 | DAVID G | BICHSEL | 1669474839 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 01052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180105050 | R079 | Chest pain, unspecified | ICD10 | 01052018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T09:28:04+00:00 | Q19949836 | 000118582-01 | Adriatha | Womack | GENESIS MEDICAL GRP LLC | 917348 | SCOTT A | WEGNER | 1699729434 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 01042018 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12152017 | 06132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212041 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 01042018 | J9395 | INJECTION, FULVESTRANT, 25 MG | HCPCS | 120 | 120 | Approved | 181 | HCPCS | HC | J9395: 120: Fulvestrant 500 mg  IM  day 1  every 28 days  6 cycles |  |  |  |  | 0 |
| 01032018 | 2018-01-03T13:03:44+00:00 | Q20087835 | 000104660-01 | Charles | Gillespie Jr. | MOUNT CARMEL HLTH PRVDRS | 937298 | SHAILESH R | PATEL | 1346235215 | COLS CARDIOVASC ASSOC IN | 907173 | 1184869646 | COLS CARDIOVASCULAR ASSOCIATES INC | 1184869646 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | COLS CARDIOVASCULAR ASSOCIATES INC | 01052018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 01092018 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104018 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 01052018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12292017 | 2017-12-29T07:31:21+00:00 | Q20065252 | 000089426-01 | Kerry | Pauley | MOUNT CARMEL HLTH SYS | 917387 | JULIE A | HOLINGA | 1558487330 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01022018 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104078 | K7460 | Unspecified cirrhosis of liver | ICD10 | 01072018 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T09:59:17+00:00 |  | 000027425-01 | E LEROY | BUNDY | OH GASTRO GRP INC | 909733 | BRUCE L | HENNESSY | 1891788386 | CENTRAL OH ENDOSCOPY CENTER | 917213 | 1295911154 | CENTRAL OH ENDOSCOPY CENTER | 1295911154 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CENTRAL OH ENDOSCOPY CENTER | 01052018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01082018 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104100 | Z86010 | Personal history of colonic polyps | ICD10 | 01052018 | 45378, 45380, 45384, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T09:06:18+00:00 |  | 000077361-01 | Jean | Delong | PSYCH360 | 943619 | NICOLE | CONIGLIO | 1457794166 | PSYCH360 | 943619 | 1093191322 | NICOLE CONIGLIO | 1457794166 | OP Behavioral Health | OP BH | Pre-Service | PRE | NICOLE | CONIGLIO | 01052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01052018 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104106 | F0390, F329, G4700, Z79899 | Other long term (current) drug therapy | ICD10 | 01052018 | 90834 | PSYTX PTAND/FAMILY 45 MINUTES | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12072017 | 2017-12-07T13:10:40+00:00 | Q19934301 | 000092298-01 | Jennie | Gordon | SPRINGFIELD HEMATOLOGY & | 908018 | FILIX | KENCANA | 1790709301 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 01052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12252017 | 06232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171208016 | D461 | Refractory anemia with ring sideroblasts | ICD10 | 01052018 | J0894, J1626 | INJECTION, GRANISETRON HYDROCHLORIDE, 100 MCG | HCPCS | 1200, 240 | 1200, 240 | Approved, Approved | 181, 181 | HCPCS | HC | J0894: 1200: Decitabine 20 mg/m2  IV  days 1-5  every 28 days  6 cycles: J1626: 240: Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 01032018 | 2018-01-03T11:40:42+00:00 | Q20086388 | 000075508-01 | Lennie | Pendley | COPC CENTRAL OHIO PRIMAR | 900922 | JULIANNE | BRACKIN | 1851360358 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 01052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104031 | Z87891 | Personal history of nicotine dependence | ICD10 | 01052018 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T09:06:18+00:00 |  | 000049237-01 | JANET | HAWK | PSYCH360 | 943619 | NICOLE | CONIGLIO | 1457794166 | PSYCH360 | 943619 | 1093191322 | NICOLE CONIGLIO | 1457794166 | OP Behavioral Health | OP BH | Pre-Service | PRE | NICOLE | CONIGLIO | 01052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01052018 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104110 | F0390, F329, Z79899 | Other long term (current) drug therapy | ICD10 | 01052018 | 90844 | INDIVIDUAL PSYCHOTHERAPY 45-50 MIN. | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T09:06:18+00:00 |  | 000011227-01 | CAROLYN | HARTLEY | PSYCH360 | 943619 | NICOLE | CONIGLIO | 1457794166 | PSYCH360 | 943619 | 1093191322 | NICOLE CONIGLIO | 1457794166 | OP Behavioral Health | OP BH | Pre-Service | PRE | NICOLE | CONIGLIO | 01052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01052018 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104116 | F329, F419, G309 | Alzheimer's disease, unspecified | ICD10 | 01052018 | 90844 | INDIVIDUAL PSYCHOTHERAPY 45-50 MIN. | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T08:15:00+00:00 | Q20080707 | 000116638-01 | Marvin | Dew | CEN OH UROLOGY GRP INC | 937031 | GREGORY S | KNUDSON | 1033284286 | NWEST COLS UROLOGY INC | 939084 | 1558436782 | NORTHWEST COLS UROLOGY INC | 1558436782 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | NORTHWEST COLS UROLOGY INC | 01052018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 07022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180105104 | C678 | Malignant neoplasm of overlapping sites of bladder | ICD10 | 01052018 | J9031 | BCG (INTRAVESICAL) PER INSTALLATION | HCPCS | 0 | 0 | Approved | 181 | HCPCS | HC | J9031: 0: BCG (INTRAVESICAL) PER INSTILLATION  Dispensed as: 1.00 instill  1 treatment(s) each cycle  3 cycle(s) |  |  |  |  | 0 |
| 01052018 | 2018-01-05T10:43:47+00:00 |  | 000121409-01 | Kristin | Baker | OSU OTOLARYNGOLOGISTS LL | 902915 |  | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01052018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 01082018 | 04082018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180105127 | H8111, H903, R42 | Dizziness and giddiness | ICD10 | 01052018 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91 | HCPCS | HC | PON: member qpproved to continue treatment at OSU Audiology department.  She also has another expedited authorization that has been approved: X180105128 |  |  |  |  | 0 |
