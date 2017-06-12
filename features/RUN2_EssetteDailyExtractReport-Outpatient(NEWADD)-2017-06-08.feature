Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-08
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-08
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
| 03302017 | 2017-03-30T17:31:26+00:00 |  | 000113294-01 | LESLIE | WARD | DRIGGS, EARL L | 900349 | EARL L | DRIGGS | 1033109418 | OBLENESS MEMORIAL HSP | 936407 | 1710913462 | OBLENESS MEMORIAL HOSPITAL | 1710913462 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | OBLENESS MEMORIAL HOSPITAL | 06082017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 04202017 | 05172017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331001 | E1152, I708 | Atherosclerosis of other arteries | ICD10 | 06082017 | G0277 | HBOT, FULL BODY CHAMBER, 30M | HCPCS | 20 | 20 | Approved | 28 | HCPCS | HC | Spoke with Fairfield Medical Center Wound Clinic.  Only appointment notes available are for appointment on 3/15.  Nurse notes including wound measurements to be faxed to MediGold., Message left for nurse at Dr Ulrich's office to obtain additional clinical information for wounds on great toes., Message left for member in order to obtain additional information., RECVD REQUEST TO CHANGE DATES TO  04/20/17-05/17/17 FROM 04/3/17-04/28/17. UPDATED ESTIMATED START DATE TO 04/20/17. |  |  |  |  | 0 |
| 03312017 | 2017-03-31T14:06:14+00:00 | Q18098601 | 000103357-01 | Bertha | Hays | KNOX COMMUNITY HSP PHYS | 905528 | HUSAIN A | RASHEED | 1437144029 | KNOX COMMUNITY HSP PHYS | 911677 | 1154483022 | KNOX COMMUNITY HOSPITAL PHYS PRCTS | 1154483022 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL PHYS PRCTS | 06082017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 07022017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331011 | C8590 | Non-Hodgkin lymphoma, unspecified, unspecified site | ICD10 | 06082017 | J9070, J9000, J9370, J9310, J1453 | Fosaprepitant injection | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05262017 | 2017-05-26T10:22:55+00:00 | Q18521022 | 000030550-01 | CAROL | BROWN | COPC CENTRAL OHIO PRIMAR | 933156 | MATTHEW J | SKOMOROWSKI | 1184916256 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05262017 | 06252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170530087 | R05 | Cough | ICD10 | 06082017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T15:18:43+00:00 |  | 000100451-01 | Eugene | Allen | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607146 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 06082017 | 92611, 74220, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T16:24:34+00:00 |  | 000069585-01 | PAUL | VITTITOW | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 06132017 | 09132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608002 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06082017 | G0424, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T06:24:59+00:00 |  | 000114101-01 | Lenora | Bolinger | MID OH ONCOLOGY HEMATOLO | 937410 | ROBERT | RUPERT | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06082017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 06142017 | 09142017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608004 | C311 | Malignant neoplasm of ethmoidal sinus | ICD10 | 06082017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T07:53:08+00:00 |  | 000097196-01 | Richard | Kulp | UNIVERSITY RADIATION ONC | 919516 | VIRGINIA M | DIAVOLITSIS | 1275799181 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06092017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608007 | C321 | Malignant neoplasm of supraglottis | ICD10 | 06082017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T11:17:06+00:00 | Q18596781 | 000076629-01 | Angela | Hicks | MERCY HEALTH PHYSICIANS | 921497 | JO A | SPARNALL | 1780612416 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 06082017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608025 | R1032 | Left lower quadrant pain | ICD10 | 06082017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T11:31:06+00:00 | Q18597109 | 000078605-01 | Phillip | Badger | GROVE CITY FAM HLTH INC | 937407 | GREGORY | RUNSER | 1750320347 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608028 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 06082017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T10:39:01+00:00 |  | 000092603-01 | DONALD | BOWERS JR | UNIVERSITY RADIATION ONC | 919516 | VIRGINIA M | DIAVOLITSIS | 1275799181 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06232017 | 09232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608029 | C01 | Malignant neoplasm of base of tongue | ICD10 | 06082017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T12:27:33+00:00 | Q18598126 | 000096638-01 | Billie | Conkle | KNOX COMMUNITY HSP PHYS | 935404 | TIMOTHY P | OBARSKI | 1962463927 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 06082017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608033 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06082017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T11:08:06+00:00 | Q18597485 | 000105647-01 | Daniel | Conway | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06082017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06072017 | 07072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608056 | R0602 | Shortness of breath | ICD10 | 06082017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T09:35:35+00:00 | Q18591127 | 000081311-01 | James | Harvey | GENESIS MEDICAL GRP LLC | 927959 | SHALINI | GUPTA | 1740446343 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06082017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 09062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608071 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 06082017 | 77372 | RADIATION TREATMENT DELIVERY STEROTACTIC RADIOSURGERY LINEAR ACCELERATOR | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T10:58:02+00:00 |  | 000104972-01 | Delores | Ellison | OSU SURGERY LLC | 908443 | AMER | RAJAB | 1700831864 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06082017 | Approved | MediGold Essential Care | Fax | Transplant Evaluation | Outpatient | 06152017 | 08152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608084 | Z01818, Z5181 | Encounter for therapeutic drug level monitoring | ICD10 | 06082017 | 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T13:31:32+00:00 | Q18581992 | 000108147-01 | Gloria | Steinbrenner | MOUNT CARMEL HLTH PRVDRS | 904976 | WILLIAM R | ZERICK | 1568469609 | MOUNT CARMEL HLTH PRVDRS | 901263 | 1134154750 | MOUNT CARMEL HEALTH PROVIDERS INC II | 1134154750 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH PROVIDERS INC II | 06082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06222017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608113 | S065X0D | Traum subdr hem w/o loss of consciousness, subs | ICD10 | 06082017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T10:36:54+00:00 | Q18585781 | 000118079-01 | Renae | Walls | RIVER VALLEY ORTHOS & SP | 936928 | KEITH A | HOLLINGSWORTH | 1063490647 | RIVER VALLEY ORTHOS & SP | 938435 | 1669450961 | RIVER VALLEY ORTHOS & SPORTS MED | 1669450961 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | RIVER VALLEY ORTHOS & SPORTS MED | 06082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06062017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608122 | M25511 | Pain in right shoulder | ICD10 | 06082017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T09:39:14+00:00 | Q18573536 | 000032883-01 | JANET | FOREMAN | MOUNT CARMEL HLTH PRVDRS | 917545 | BRIAN J | HAMBURG | 1437270709 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 06082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06052017 | 07052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608128 | R911 | Solitary pulmonary nodule | ICD10 | 06082017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T13:50:36+00:00 | Q18552251 | 000008717-01 | MARY | HAMPTON | MOUNT CARMEL HLTH PRVDRS | 936578 | JOHN A | FISHER | 1013970599 | MOUNT CARMEL HLTH PRVDRS | 901263 | 1134154750 | MOUNT CARMEL HEALTH PROVIDERS INC II | 1134154750 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH PROVIDERS INC II | 06082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06062017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608137 | R079 | Chest pain, unspecified | ICD10 | 06082017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T18:55:00+00:00 | Q18559583 | 000110024-01 | Norma | Kohman | COSHOCTON COUNTY MEM HSP | 913615 | DUANE P | POOL | 1073599031 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 06082017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 07182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608140 | I420 | Dilated cardiomyopathy | ICD10 | 06082017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T12:16:04+00:00 |  | 000109076-01 | Gary | Lowry | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06082017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 06132017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608146 | C8330 | Diffuse large B-cell lymphoma, unspecified site | ICD10 | 06082017 | 73560, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T12:59:44+00:00 |  | 000100451-01 | Eugene | Allen | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06132017 | 09132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608148 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 06082017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T13:03:09+00:00 |  | 000053571-01 | DENNIE | MOSLEY | OSU OTOLARYNGOLOGISTS LL | 927444 | AARON | MOBERLY | 1083872022 | OSU EYE PHYS & SURGEONS | 939010 | 1861437923 | OSU EYE PHYSICIANS & SURGEONS INC | 1861437923 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU EYE PHYSICIANS & SURGEONS INC | 06082017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 06082017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170607074 | H903, H9190 | Unspecified hearing loss, unspecified ear | ICD10 | 06082017 | 99202, 99201, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06072017 | 2017-06-07T15:04:30+00:00 |  | 000034180-01 | RESDEN | TALBERT | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06082017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 06082017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170607144 | M542 | Cervicalgia | ICD10 | 06082017 | 97124 | PT MASSAGE | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
