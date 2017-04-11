Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-23
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-23
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
	And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
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
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

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
| 02022017 | 2017-02-02T14:50:00+00:00 |  | 000057267-01 | PAULINE | RESCH | CANYON MEDICAL CENTER | 904476 | BEATA K | STERKOWICZ | 1477659993 | CEN OH NUTRITION CTR INC | 938164 | 1225197262 | CENTRAL OH NUTRUTION CTR INC | 1225197262 | Out of Network Services | OONS | Pre-Service | PRE |  | CENTRAL OH NUTRUTION CTR INC | 03232017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03142017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170206008 | E6601 | Morbid (severe) obesity due to excess calories | ICD10 | 03232017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 3 | 3 | Approved | 93 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., Corrected note from David Atkins on 2/6/17:, No CPT codes supplied.  Called and left message for provider.  Description is Continuation of weight loss therapy, Notified of appeal. Case reviewed with Dr. Robert Durbin  associate medical director. Request was approved. Appeals department notified. Physician review referral uploaded into Essette., Auth update as requested by the appeals department for dates of service of 3/14/17 to 6/14/17 |  |  |  |  | 0 |
| 03122017 | 2017-03-12T10:18:36+00:00 |  | 000081787-01 | Linda | Edwards | OSU SURGERY LLC | 932725 | ASHRAF M | EL HINNAWI | 1841577087 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03232017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03222017 | 06222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170313020 | N186 | End stage renal disease | ICD10 | 03232017 | 99205, 99499, 99354, 99291 | CRITICAL CARE; FIRST HOUR | CPT | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T10:12:21+00:00 |  | 000083505-01 | Mark | Caudill | MEM HSP OF UNION COUNTY | 935273 | ANTERPREET S | NEKI | 1407893555 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03232017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03212017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170321112 | C4442 | Squamous cell carcinoma of skin of scalp and neck | ICD10 | 03232017 | 92557, 92552, 92553, 92588, 92567, 92550, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T15:21:27+00:00 |  | 000093789-01 | Leila | Hollett | OSU INTERNAL MED LLC | 916695 | ANTHONY J | MICHAELS | 1003998642 | OSU INTERNAL MED LLC | 916695 | 1740231448 | ANTHONY J MICHAELS | 1003998642 | Transplant Eval | TRANS | Pre-Service | PRE | ANTHONY J | MICHAELS | 03232017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03212017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170321134 | K760, N185 | Chronic kidney disease, stage 5 | ICD10 | 03232017 | 99205 | OFFICE CALL - NEW PATIENT | CPT | 1 | 1 | Approved | 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T10:32:03+00:00 | Q18014592 | 000006468-01 | MARTHA | BROWN | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | HEARTLAND CARDIOLOGY LLC | 913080 | 1538488564 | HEARTLAND CARDIOLOGY LLC | 1538488564 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | HEARTLAND CARDIOLOGY LLC | 03232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170322054 | R079 | Chest pain, unspecified | ICD10 | 03232017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T10:48:08+00:00 | Q18015081 | 000017942-01 | EDITH | FREEMAN | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | HEARTLAND CARDIOLOGY LLC | 913080 | 1538488564 | HEARTLAND CARDIOLOGY LLC | 1538488564 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | HEARTLAND CARDIOLOGY LLC | 03232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170322055 | I4891 | Unspecified atrial fibrillation | ICD10 | 03232017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T07:44:11+00:00 |  | 000083505-01 | Mark | Caudill | OSU INTERNAL MED LLC | 933949 | NATHAN L | JENKINS | 1508272147 | OSU INTERNAL MED LLC | 933949 | 1740231448 | NATHAN L JENKINS | 1508272147 | Out of Network Services | OONS | Pre-Service | PRE | NATHAN L | JENKINS | 03232017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03212017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170322093 | 1950.0, 7383.0, 75612.0, 7962.0, C4442, M954, R030 | Elevated blood-pressure reading, w/o diagnosis of htn | ICD10 | 03232017 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03202017 | 2017-03-20T16:03:55+00:00 |  | 000082872-01 | Kathy | Sullivan | SEASTERN OH RGNL MED CTR | 923984 | NABIEL | ALKHOURI | 1497728489 | GENESIS HEALTHCARE SYSTEM DME | 924099 | 1972640332 | GENESIS HEALTHCARE SYSTEM DME | 1972640332 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM DME | 03232017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170322103 | C50812 | Malignant neoplasm of ovrlp sites of left female breast | ICD10 | 03232017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T13:26:50+00:00 | Q18028782 | 000035453-01 | MARY | KNISLEY | ADENA MEDICAL GROUP LLC | 927435 | ZION | OSHIKANLU | 1750522694 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03272017 | 04262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323001 | C8580 | Oth types of non-Hodgkin lymphoma, unspecified site | ICD10 | 03232017 | 74177, 71260, 70492 | CAT SCAN SFT TIS NECK W/WO CNTRST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T09:37:22+00:00 | Q18024260 | 000111640-01 | DONALD | CRENSHAW | CHRIST HSP MED SPEC II L | 932210 | ROBERT L | CODY | 1295721215 | THE CHRIST HOSPITAL | 924156 | 1932157385 | THE CHRIST HOSPITAL | 1932157385 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 03232017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03242017 | 04232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323002 | C20 | Malignant neoplasm of rectum | ICD10 | 03232017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T19:29:09+00:00 |  | 000102871-01 | Barbara | Pence | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03162017 | 04152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323004 | C220 | Liver cell carcinoma | ICD10 | 03232017 | 74183, 71552 | MRI CHEST W/O&W DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T10:07:23+00:00 | Q18024931 | 000049749-01 | CLELL | MOWERY | MOUNT CARMEL HLTH PRVDRS | 937298 | SHAILESH R | PATEL | 1346235215 | COLS CARDIOVASC ASSOC IN | 907173 | 1184869646 | COLS CARDIOVASCULAR ASSOCIATES INC | 1184869646 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | COLS CARDIOVASCULAR ASSOCIATES INC | 03232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03242017 | 04232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323011 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 03232017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T10:18:12+00:00 | Q18025178 | 000030752-01 | THERESA | GIDDINGS | MOUNT CARMEL HLTH PRVDRS | 937298 | SHAILESH R | PATEL | 1346235215 | COLS CARDIOVASC ASSOC IN | 907173 | 1184869646 | COLS CARDIOVASCULAR ASSOCIATES INC | 1184869646 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | COLS CARDIOVASCULAR ASSOCIATES INC | 03232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03242017 | 04232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323013 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 03232017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T10:48:54+00:00 | Q18025850 | 000031506-01 | JAMES | CASTO | ADENA MEDICAL GROUP LLC | 915352 | JAMES T | THOMPSON | 1578774691 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323019 | M25561 | Pain in right knee | ICD10 | 03232017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T10:54:37+00:00 |  | 000109575-01 | Marie | Wood | CEN OHIO GERIATRICS LLC | 905034 | JENIFER K | SCHALLER | 1144264144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 03232017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323020 | Z122 | Encntr screen for malignant neoplasm of respiratory organs | ICD10 | 03232017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T15:23:36+00:00 |  | 000015730-01 | JUANITA | SCHLUEP | MOUNT CARMEL HLTH PRVDRS | 934981 | DOUGLAS B | VAN FOSSEN | 1629039698 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 03232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323032 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 03232017 | 93460 | R&L HRT ART/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T07:54:54+00:00 |  | 000009430-01 | Neil | Pritchard | OSU INTERNAL MED LLC | 930475 | ANNE M | NOONAN | 1477887479 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03232017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03232017 | 06232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323039 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 03232017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463, 82310, 82247, 82565, 84520, 82435, 82040, 84075, 84155, 84295, 84450, 84132, 82374, 84460, 86301, 85730, 85610 | PROTHROMBIN TIME | CPT | 1, 1, 1, 1, 1, 5, 5, 5, 5, 5, 6, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | 1, 1, 1, 1, 1, 5, 5, 5, 5, 5, 6, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T16:10:10+00:00 |  | 000094708-01 | John | Walters | EYE SURGICAL & MED CARE | 936834 | WESLEY | HARNISH | 1619979911 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Out of Network Services | OONS | Pre-Service | PRE |  | RIVERSIDE METHODIST HOSPITAL | 03232017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04042017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323051 | 366.0 | CATARACT | ICD9 | 03232017 | 66984 | EXTRCAPSULAR CATARACT RMVL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T08:39:15+00:00 |  | 000063656-01 | MICHAEL | ALLEN | MEM HSP OF UNION COUNTY | 935273 | ANTERPREET S | NEKI | 1407893555 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03232017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04132017 | 07132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323061 | C01, C3490, R911 | Solitary pulmonary nodule | ICD10 | 03232017 | 99211, 99212, 99213, 99214, 99215, G0463, 84443, 82310, 83735, 84100, 85025, 84132, 82947, 82565, 84520, 82374 | CO2 COMBINING POWER OR CONTENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T11:06:40+00:00 | Q18013287 | 000111461-01 | Stacy | Baughman | THE PAIN MANAGEMENT CLIN | 919804 | MICHAEL F | SAYEGH | 1033282207 | THE PAIN MANAGEMENT CLIN | 919803 | 1750435905 | THE PAIN MANAGEMENT CLINIC LLC | 1750435905 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE PAIN MANAGEMENT CLINIC LLC | 03232017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323074 | M4327 | Fusion of spine, lumbosacral region | ICD10 | 03232017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T11:50:13+00:00 | Q18019147 | 000086710-01 | Carl | Wilmot | FAIRFIELD HLTHCARE PROFS | 905120 | STEPHANIE J | OTT | 1215154562 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03212017 | 04202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323084 | M25561 | Pain in right knee | ICD10 | 03232017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T15:02:45+00:00 | Q18019816 | 000097612-01 | Georgia | Walker | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 03232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03212017 | 04202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323087 | F17290 | Nicotine dependence, other tobacco product, uncomplicated | ICD10 | 03232017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC | Approval letter edited and sent to member.  See attached documents. |  |  |  |  | 0 |
| 03232017 | 2017-03-23T09:50:28+00:00 |  | 000063394-01 | BOBBY | KELLEY | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03232017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03292017 | 06292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323097 | C01 | Malignant neoplasm of base of tongue | ICD10 | 03232017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T13:08:57+00:00 | Q18006114 | 000042462-01 | Martha | Gobert | FAIRFIELD MED ASSOC LLC | 935412 | SARAH J | ALLEY | 1902882095 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Initial Review | INIT |  | FAIRFIELD MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03212017 | 04202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170323109 | M5412 | Radiculopathy, cervical region | ICD10 | 03232017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T10:50:12+00:00 | Q18033045 | 000069012-01 | Cheryl | Harshbarger | SPRINGFIELD HEMATOLOGY & | 908018 | FILIX | KENCANA | 1790709301 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Initial Review | INIT |  | OH ONCOLOGY & HEMATOLOGY LLC | 03232017 | Approved | Flexible Choice PPO | Fax | Medical Criteria Met | Outpatient | 03232017 | 09192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170323131 | C8339 | Diffuse large B-cell lymphoma, extrnod and solid organ sites | ICD10 | 03232017 | J9310, J9201, J9060, J1453, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T10:40:27+00:00 |  | 000088761-01 | Nancy | Atkinson | ADENA MEDICAL GROUP LLC | 948442 | ROBERT E | LEETH | 1881657237 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Radiology (HH) | OP RAD | Initial Review | INIT |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 03232017 | Denied | MediGold Classic Preferred | HealthHelp | Criteria Not Met | Outpatient | 03232017 | 03242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170321092 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 03232017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03202017 | 2017-03-20T11:33:45+00:00 |  | 000075690-01 | David | Stenger | MERCY HEALTH PHYSICIANS | 921063 | BRIAN | ROTTINGHAUS | 1912238890 | KINEX MEDICAL COMPANY | 905947 | 1942238514 | KINEX MEDICAL COMPANY | 1942238514 | Out of Network Services | OONS | Pre-Service | PRE |  | KINEX MEDICAL COMPANY | 03232017 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Outpatient | 03232017 | 03242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170321097 | Z96651 | Presence of right artificial knee joint | ICD10 | 03232017 | E0935, E0188, E0650, E0236, E0249, E0673, L1833 | KO ADJ JNT POS R SUP PRE OTS | HCPCS | 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03202017 | 2017-03-20T14:30:23+00:00 |  | 000044370-01 | TERRY | SELBY | MEDICAL SOLUTIONS SUPPLI | 949666 |  | MEDICAL SOLUTIONS SUPPLIER | 1760459010 | MEDICAL SOLUTIONS SUPPLI | 949666 | 1760459010 | MEDICAL SOLUTIONS SUPPLIER | 1760459010 | DME | DME | Pre-Service | PRE |  | MEDICAL SOLUTIONS SUPPLIER | 03232017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 03232017 | 03242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170321102 | I890 | Lymphedema, not elsewhere classified | ICD10 | 03232017 | E0651, E0667 | SEGMENTAL PNEUMATIC APPLIANCE FOR USE WITH PNEUMATIC COMPRESSOR, FULL | HCPCS | 0, 0 | 1, 2 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03212017 | 2017-03-21T15:12:48+00:00 |  | 000036885-01 | RICHARD | WARDELL | OSU INTERNAL MED LLC | 935343 | WILLIAM E | MAHER | 1376559872 | OSU INTERNAL MED LLC | 935343 | 1740231448 | WILLIAM E MAHER | 1376559872 | Out of Network Services | OONS | Pre-Service | PRE | WILLIAM E | MAHER | 03232017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 03232017 | 03242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170321135 | 99666.0 | INFECTION/INFLAM-INTERN JT DEVICE | ICD9 | 03232017 | 90600 | INITIAL CONSULTATION; LIMITED | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
