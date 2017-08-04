Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-02
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-02
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
| 02102017 | 2017-02-10T14:31:13+00:00 | Q177724041 | 000086995-01 | Deborah | Chapman | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02132017 | 08122017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170210031 | D46C | Myelodysplastic syndrome w isolated del(5q) chromsoml abnlt | ICD10 | 08022017 | J0894 | INJECTION DECITABINE 1 MG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T15:13:25+00:00 |  | 000043343-01 | JACK | DODRILL | DERM SKIN SURG CTR | 937108 | LARRY J | LITTLE | 1669651816 | OSU OTOLARYNGOLOGISTS LL | 908507 | 1861449407 | THEODOROS N TEKNOS | 1265521496 | Out of Network Services | OONS | Pre-Service | PRE | THEODOROS N | TEKNOS | 08022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07242017 | 10242017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721147 | C44309 | Unsp malignant neoplasm of skin of other parts of face | ICD10 | 08022017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | Second request was duplicate leslie Polk on 072517 at 09:25:16 did not realized the other provider had already submitted request as expedited. |  |  |  |  | 0 |
| 07102017 | 2017-07-10T16:42:24+00:00 | Q18828120 | 000051049-01 | AUDRIN | DALRYMPLE | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 08022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07282017 | 01242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712036 | C61 | Malignant neoplasm of prostate | ICD10 | 08022017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 07112017 | 2017-07-11T10:18:15+00:00 | Q18831912 | 000029708-01 | JERALD | MCKENZIE | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 08022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 08102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712097 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 08022017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T17:06:07+00:00 |  | 000084039-01 | Harold | Elkins | OSU HLTH SYSTEM NEUROSUR | 942972 | VIBNOR | KRISHNA | 1114008364 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 08022017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07252017 | 10252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726101 | M62838 | Other muscle spasm | ICD10 | 08022017 | 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T09:03:48+00:00 |  | 000067831-01 | THOMAS | SCHWARTZ | OSU UROLOGY LLC | 943281 | FARA M | BELLOWS | 1083935118 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03282017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403093 | G8250 | Quadriplegia, unspecified | ICD10 | 08022017 | 97530, 97110, 97112, 97113, 97116, 97140, 97542, 97750, 97760, 97535, 97110, 97530, 97112 | PT NEUROMUSCULAR REEDUCATION, | CPT | 59, 59, 59, 59, 59, 59, 59, 59, 59, 29, 29, 29, 29 | 59, 59, 59, 59, 59, 59, 59, 59, 59, 29, 29, 29, 29 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185 | CPT | C4 | RECEIVED PHONE CALL 7/11/17 @ 09:44:23 FROM KIM PREECE RN W/OSU REHAB   REQUESTING DATE EXTENSION OF AUTH  MEMBER HAS USED 29/59 PT VISITS  AND 18/29 OT VISITS.  THERE IS NO OTHER CHANGE REQUESTED  JUST EXTENSION FOR MEMBER TO RECEIVE ALREADY AUTHORIZED VISITS.  AUTH EXTENDED TO 9/28/17. |  |  |  |  | 0 |
| 07262017 | 2017-07-26T09:42:47+00:00 |  | 000053909-01 | RICHARD | TURNER | ELECTROPHYSIOLOGY | 908604 | RALPH S | AUGOSTINI | 1104821552 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08022017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08072017 | 11072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726127 | I472 | Ventricular tachycardia | ICD10 | 08022017 | 99212, 99213, 99214, 99215, 93000, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T08:48:57+00:00 |  | 000083063-01 | Rosemary | Ziegler | KNOX COMMUNITY HSP PHYS | 904052 | GANGARAM | RASA | 1982716379 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08022017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 07102017 | 08102017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710012 | V4502 | AUTOMATIC IMPLANTABLE CARDIAC DEFIBRILLATOR IN SITU | ICD10 | 08022017 | 33218, 33264, 33225, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T07:29:42+00:00 | Q18984420 | 000027259-01 | ROSEMARY | LINDSEY | COPC CENTRAL OHIO PRIMAR | 936952 | JEANNINE M | HUGHES | 1457320434 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 08022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08012017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802022 | R109 | Unspecified abdominal pain | ICD10 | 08022017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07032017 | 2017-07-03T15:29:00+00:00 |  | 000030042-01 | JANET | FOSTER | ORTHO & SPINE CTR LLC | 907844 | KEDAR K | DESHPANDE | 1801891007 | OSU HLTH SYSTEM NEUROSUR | 911215 | 1619935525 | MILIND DEOGAONKAR | 1780871327 | Out of Network Services | OONS | Pre-Service | PRE | MILIND | DEOGAONKAR | 08022017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 08022017 | 08032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170703144 | M5416 | Radiculopathy, lumbar region | ICD10 | 08022017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 |  |  |  |  |  | 0 |
| 07272017 | 2017-07-27T16:31:24+00:00 | Q18894364 | 000005842-01 | RUTH | KEEVER | MOUNT CARMEL HLTH PRVDRS | 932451 | JOSEPH S | DUFFY | 1386897544 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | TRINITY HEALTH | HealthHelp | Inpatient | Outpatient | 07312017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170731097 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 08022017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07312017 | 2017-07-31T15:30:03+00:00 | Q18982806 | 000097248-01 | Brenda | Leroy | MERCY HEALTH PHYSICIANS | 949234 | LAUREN N | GETTELFINGER | 1972052306 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 08022017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802071 | R319 | Hematuria, unspecified | ICD10 | 08022017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T10:08:10+00:00 | Q18957566 | 000100547-01 | James | Bigham | JEFFREY J HAGGENJOS | 916460 | JEFFREY J | HAGGENJOS | 1417940172 | MOUNT CARMEL HLTH PRVDRS | 935942 | 1356384143 | BOGDAN A TOPLAK | 1518945971 | Radiology (HH) | OP RAD | Pre-Service | PRE | BOGDAN A | TOPLAK | 08022017 | Approved | MediGold Southeast OH Classic Preferred |  | Medical Criteria Met | Outpatient | 07272017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802040 | R079 | Chest pain, unspecified | ICD10 | 08022017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T00:50:29+00:00 | Q18932798 | 000093502-01 | Wayne | Johnson | LICKING MEM HLTH PROF | 906427 | WILLIAM A | STALLWORTH | 1457312597 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08042017 | 01312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727115 | C61 | Malignant neoplasm of prostate | ICD10 | 08022017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 06132017 | 2017-06-13T17:32:33+00:00 | Q18625584 | 000057532-01 | KENNETH | HARMAN | CAHILL, KENNETH V | 935582 | KENNETH V | CAHILL | 1164408852 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06162017 | 07162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615058 | G709 | Myoneural disorder, unspecified | ICD10 | 08022017 | 70490 | CAT SCAN SFT TIS NECK WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T11:38:41+00:00 | Q18974891 | 000101855-01 | William | Packard | MOUNT CARMEL HLTH PRVDRS | 934981 | DOUGLAS B | VAN FOSSEN | 1629039698 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802043 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 08022017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T10:34:31+00:00 | Q18905656 | 000055743-01 | Barbara | Morehouse | MOUNT CARMEL HLTH PRVDRS | 936223 | NAHID | DADMEHR | 1366552721 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170731001 | R260 | Ataxic gait | ICD10 | 08022017 | 72141, 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T11:14:20+00:00 |  | 000049570-01 | JAMES | WALLER | SMITH JR, STEPHEN P | 908002 | STEPHEN P | SMITH JR | 1518923119 | SMITH JR, STEPHEN P | 908002 | 1518923119 | STEPHEN P SMITH JR | 1518923119 | Predetermination Request | PR | Pre-Service | PRE | STEPHEN P | SMITH JR | 08022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07122017 | 09112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621146 | H02021, H02024, H02831, H02834 | Dermatochalasis of left upper eyelid | ICD10 | 08022017 | 15823, 15823 | BLEPHAROPLASTY UPPER LD C EXCSV SKN | CPT | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | CPT | C4 | PHONE CALL TO OFFICE REQUESTING ADDITIONAL INFORMATION  REQUESTED TAPED/UNTAPED VISUAL FIELD STUDIES. SPOKE TO JOY  SHE WAS GOING TO GIVE MESSAGE TO SHANNON AND HAVE HER RETURN MY CALL., PHONE CALL PLACED TO SHANNON  SHE STATED THAT VISUAL FIELD STUDY WAS SCHEDULED FOR LATER THIS WEEK OR NEXT.  REQUESTED EXTENSION LETTER BE SENT TO MEMBER  TO ALLOW TIME FOR TEST AND RESULTS TO BE SENT OVER.  GAVE HER MY NUMBER TO CALL IF ANY CHANGES OR QUESTIONS., VISUAL FIELD STUDIES  TAPED/UNTAPED RECEIVED 7/5/17 @ 09:19:25 |  |  |  |  | 0 |
| 08022017 | 2017-08-02T14:11:31+00:00 | Q19000813 | 000061237-01 | ALEX | KUSHKIN | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 01292018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802144 | C9140 | Hairy cell leukemia not having achieved remission | ICD10 | 08022017 | J9025, J1626 | INJECTION, GRANISETRON HYDROCHLORIDE, 100 MCG | HCPCS | 12, 48 | 12, 48 | Approved, Approved | 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T16:29:02+00:00 |  | 000064628-01 | JANICE | CALLAND | OSU OTOLARYNGOLOGISTS LL | 908507 | THEODOROS N | TEKNOS | 1265521496 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08032017 | 11032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727053 | M272 | Inflammatory conditions of jaws | ICD10 | 08022017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07312017 | 2017-07-31T15:45:17+00:00 | Q18965131 | 000029394-01 | JUDY | MCCLELLAND | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07312017 | 01272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802018 | C180 | Malignant neoplasm of cecum | ICD10 | 08022017 | J9263, J1100, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1200, 160, 40 | 1200, 160, 40 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9263: 1200 INJECTION  OXALIPLATIN  0.5 MG  Dispensed as: 150.00 mg  2 treatment(s) each cycle  2 cycle(s); J1100: 160 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  2 cycle(s); J2469: 40 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 07312017 | 2017-07-31T15:33:00+00:00 | 18982935 | 000111171-01 | WILLIAM | EWING | TRI HLTH HEART INSTITUTE | 914193 | SIMON C | JUNG | 1992708556 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | BETHESDA NORTH HOSPITAL | 08022017 | Approved | MediGold Essential Care | HealthHelp | Services Not Available In-Network | Outpatient | 08022017 | 09022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170801144 | I255 | Ischemic cardiomyopathy | ICD10 | 08022017 | 33263, C1721 | CARDIOVERTER-DEFIBRILLATOR, DUAL CHAMBER (IMPLANTABLE) | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC | Called the office of Dr. Jung and requested clinical.  They requested I fax a request for that clinical.  Fax was sent to the office of Dr. Jung at 16:15 on 8/01/17. |  |  |  |  | 0 |
| 07262017 | 2017-07-26T08:16:36+00:00 |  | 000114300-01 | Sharen | Kensler | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08022017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 07312017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726114 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 08022017 | 27364, 77470, 14021, 15738, 15734, 97606, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T13:23:00+00:00 | Q19000284 | 000043194-01 | GLORIA | WATTERS | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 09012017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802141 | R51 | Headache | ICD10 | 08022017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07052017 | 2017-07-05T14:52:27+00:00 | Q18769354 | 000069562-01 | SANDRA | SLONAKER | MIDWEST SPINE & PAIN CNS | 945890 | FELICIA | CIAMACCO | 1922484294 | PROSCAN IMAGING PICKERINGTON LLC | 903474 | 1629036223 | PROSCAN IMAGING PICKERINGTON LLC | 1629036223 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING PICKERINGTON LLC | 08022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707023 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 08022017 | 72156 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST MORE SEQUENCES;CERVICAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02072017 | 2017-02-07T16:54:58+00:00 | Q17694053 | 000085236-01 | Judith | Riedel | FAMILY PRACTICE ASSOC | 931452 | CATHERINE A | EARL | 1942626874 | CRYSTAL CLEAR IMAGING | 937806 | 1346220662 | CRYSTAL CLEAR IMAGING | 1346220662 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CRYSTAL CLEAR IMAGING | 08022017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02072017 | 03092017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170207242 | R791 | Abnormal coagulation profile | ICD10 | 08022017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07282017 | 2017-07-28T13:53:44+00:00 |  | 000046036-01 | JAMES | WALKER | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08092017 | 11092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170728128 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 08022017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T12:04:26+00:00 |  | 000078295-01 | Mary | Rogers | DENTAL FACULTY PRACTICE | 909908 | MEADE C | VANPUTTEN | 1407906712 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08022017 | 11022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726137 | C410 | Malignant neoplasm of bones of skull and face | ICD10 | 08022017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T09:05:43+00:00 |  | 000100342-01 | Becky | Shoults | ORTHO SPEC & SPORTS MED | 903844 | BRAD L | BERNACKI | 1356303481 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07172017 | 08172017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714094 | M2242, M67362, S838X2A | Sprain of other specified parts of left knee, init encntr | ICD10 | 08022017 | 29881, 29876, 29879, 29881 | ARTHRSCPY KNEE W MENISECTOMY | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T10:45:40+00:00 |  | 000116281-01 | Rena | Brown | OSU INTERNAL MED LLC | 951289 | LEVI | GEIGER | 1871973446 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07282017 | 10282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170724122 | C20 | Malignant neoplasm of rectum | ICD10 | 08022017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07312017 | 2017-07-31T15:48:15+00:00 | Q18983068 | 000026268-01 | NORMA | SELVAGE | MOUNT CARMEL HLTH PRVDRS | 937287 | DONNA M | PARSLEY | 1437192952 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07312017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802074 | R51 | Headache | ICD10 | 08022017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T08:00:56+00:00 | Q18984695 | 000047839-01 | JOYCE | REED | MOUNT CARMEL HLTH PRVDRS | 936578 | JOHN A | FISHER | 1013970599 | MOUNT CARMEL HEALTH SYSTEM | 939801 | 1578622023 | MOUNT CARMEL HEALTH SYSTEM | 1578622023 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYSTEM | 08022017 | Approved | MediGold Classic Preferred |  | Medical Criteria Met | Outpatient | 08082017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802027 | R079 | Chest pain, unspecified | ICD10 | 08022017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T09:53:06+00:00 | Q18986703 | 000075290-01 | Dixie | Wright | COSHOCTON COUNTY MEM HSP | 922045 | BRENDA K | LOZOWSKI | 1346245388 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | COSHOCTON REGIONAL MEDICAL CENTER | 08022017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08012017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802109 | R413 | Other amnesia | ICD10 | 08022017 | 70470 | CAT SCAN HEAD WO/W IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05052017 | 2017-05-05T19:24:46+00:00 | Q18318140 | 000098653-01 | Kathleen | Jackson | ALLIANCE PHYSICIANS INC | 902333 | ALEJANDRO R | CALVO | 1457341760 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 08022017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 11062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170622176 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 08022017 | J9045, J9305, J1453 | Fosaprepitant injection | HCPCS | 60, 492, 900 | 60, 492, 900 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
