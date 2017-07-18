Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-14_thru_2017-07-16
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-14_thru_2017-07-16
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
| 07062017 | 2017-07-06T14:33:58+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07142017 | Approved | MediGold Southeast OH Essential Care | Fax | Transplant Evaluation | Outpatient | 08022017 | 10022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170706174 | D7581 | Myelofibrosis | ICD10 | 07142017 | 85025, 80053, 84703, 88313, 93005, 99211, 36415, 36592, 99213, 82947, 84100, 83615, 83730, 85610, 71020, 96413, 96415, 96417, 96409, Q9966, 86880, 80061, 80051, 82784, 80076, 81265, 38240, 36460, 38207, 38205, 86900, 86901, 81267, 86696, 86695, 86645, 86665, 86644, 86687, 87801, 86704, 86703, 87340, 86803, 88184, 88185, 36600, 82803, 94729, 94726, 94010, 81371, 93325, 93307, 93320, 83735, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 85730, 84550, 83891, 83909, 83900, 83912, 82728, 84165, 83890, 83894, 83898, 86850, 87081, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 2, 1, 2, 1, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 1, 1, 2, 1, 1, 2, 1, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1 | 2, 1, 2, 1, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 1, 1, 2, 1, 1, 2, 1, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC | CONTACTED PROVIDER TO CONFIRM START DATE OF REQUEST  AS ON REQUEST IT IS 5/13/17.  SPOKE TO JEFF GILL RN W/BMT TRANSPLANT  AND HE STATED MEMBER IS COMING IN ON 8/2 AND 8/3 FOR EVALUATION.  REQUEST IS NOT A RETRO., SPOKE TO JEFF W/BMT AT OSU  ADVISED HIM THAT CT WOULD NEED TO GO THROUGH HEALTHHELP  HE VERBALIZED UNDERSTANDING  ALSO CONFIRMED THAT MEMBER DID NOT NEED THE MULTIPLE XRAYS ON THE AUTH. |  |  |  |  | 0 |
| 07132017 | 2017-07-13T14:57:10+00:00 |  | 000101359-01 | RICKY | CRAIG | ONCOLOGY HEMATOLOGY CARE | 923344 | JAMES | ESSELL | 1265425078 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 07142017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 07172017 | 10172017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713166 | C8338 | Diffuse large B-cell lymphoma, lymph nodes of multiple sites | ICD10 | 07142017 | 36591, 80053, 86592, 86687, 86688, 86704, 86753, 86789, 86803, 86850, 86900, 87340, 87497, 87621, G0432, 82248, 83615, 83735, 84163, 84550, 86645, 86694, 86706, 86707, 86709, 86787, 85025, 85660, 85730, 81003, J1642, 99201, 77074, 71020, 94664, 94010, 94726, 94729, 94760, 93306, 93005, 38221, 38241 | BONE MARROW TRANSPLANTATION; AUTOLOGOUS | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | Spoke with Jennifer Haley at The Jewis Hospital Blood Cancer Center --  She stated physicians feel that MBR has failed conventional therapy and want to evaluate MBR for Stem Cell Transplant  Stated MBR has been on multiple Chemotherapy treatment plans  Aware that if MBR is admitted for Stem Cell Transplant that new auth must be requested, Confirmed Fax with Jennifer Haley  She gave me member's new phone # of 513-591-8907 |  |  |  |  | 0 |
| 07132017 | 2017-07-13T07:14:03+00:00 | Q18850640 | 000013884-01 | John | Link | ORTHO & NEURO CONSULTS I | 909495 | MICHAEL D | SKEELS | 1922213552 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07132017 | 08122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714009 | M5126 | Other intervertebral disc displacement, lumbar region | ICD10 | 07142017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07132017 | 2017-07-13T07:41:55+00:00 | Q18850813 | 000081081-01 | Sharon | Lynde | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 07142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07132017 | 08122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714010 | M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 07142017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07132017 | 2017-07-13T08:28:21+00:00 | Q18851399 | 000029021-01 | JAMES | BECK | MOUNT CARMEL HLTH PRVDRS | 937027 | ANDREW P | KLAUS | 1376545319 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07272017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714020 | R079 | Chest pain, unspecified | ICD10 | 07142017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07132017 | 2017-07-13T08:31:16+00:00 | Q18851433 | 000030862-01 | MARGARET | SEIDENSCHMIDT | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 07142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714021 | M25511 | Pain in right shoulder | ICD10 | 07142017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07132017 | 2017-07-13T10:49:59+00:00 | Q18853988 | 000049165-01 | BECKEY | RIDENOUR | FAIRFIELD HLTHCARE PROFS | 934808 | KANWALJIT | SINGH | 1679765770 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 07142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07132017 | 08122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714030 | Z853 | Personal history of malignant neoplasm of breast | ICD10 | 07142017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T15:25:25+00:00 | Q18848945 | 000085148-01 | James | Funk | OH INSTITUTE OF CARDIAC | 900957 | SALIM O | DAHDAH | 1982608790 | OH INSTITUTE OF CARDIAC | 900683 | 1477576619 | OH INSTITUTE OF CARDIAC CARE INC | 1801098512 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH INSTITUTE OF CARDIAC CARE INC | 07142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07142017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714080 | I25119 | Athscl heart disease of native cor art w unsp ang pctrs | ICD10 | 07142017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T09:05:43+00:00 |  | 000100342-01 | Becky | Shoults | ORTHO SPEC & SPORTS MED | 903844 | BRAD L | BERNACKI | 1356303481 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07172017 | 08172017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714094 | M2242, M67362, S838X2A | Sprain of other specified parts of left knee, init encntr | ICD10 | 07142017 | 29881, 29876, 29879, 29881 | ARTHRSCPY KNEE W MENISECTOMY | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T15:09:57+00:00 |  | 000091507-01 | Frank | Hall | OSU INTERNAL MED LLC | 913110 | JOSE A | BAZAN | 1326168832 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714120 | R7881 | Bacteremia | ICD10 | 07142017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07062017 | 2017-07-06T15:39:22+00:00 |  | 000043515-01 | PATRICIA | EISENMAN | HEART OF NEW ALBANY DIAL | 951448 |  | HEART OF NEW ALBANY DIALYSIS | 1700234184 | HEART OF NEW ALBANY DIAL | 951448 | 1700234184 | HEART OF NEW ALBANY DIALYSIS | 1700234184 | Out of Network Services | OONS | Post-Service | POST |  | HEART OF NEW ALBANY DIALYSIS | 07142017 | Denied | MediGold Classic Preferred | Fax | Administrative Denial | Outpatient | 07142017 | 07152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170706180 | N179 | Acute kidney failure, unspecified | ICD10 | 07142017 | 90999, 90935 | HEMODIALYSIS PROCED W/SINGL EVAL | CPT | 0, 0 | 1, 1 | ,  | 0, 0 | CPT | C4 |  |  |  |  |  | 0 |
