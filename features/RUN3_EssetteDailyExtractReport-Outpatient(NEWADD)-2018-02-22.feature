Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-22
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-22
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
| 02202018 | 2018-02-20T10:25:46+00:00 | Q20445322 | 000108231-01 | Sally | Barailloux | MOUNT CARMEL HLTH PRVDRS | 934938 | FRANK D | TICE IV | 1639131501 | ZOLL LIFECOR CORPORATION | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 02222018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02202018 | 04212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222011 | I420 | Dilated cardiomyopathy | ICD10 | 02222018 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 02202018 | 2018-02-20T14:37:44+00:00 | Q20450547 | 000115597-01 | Gary | Hill | CARROLL, FREDERICK C | 900430 | FREDERICK C | CARROLL | 1962431957 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 02222018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02212018 | 03232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222021 | R634 | Abnormal weight loss | ICD10 | 02222018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T07:11:25+00:00 | Q20453275 | 000048342-01 | JANE | COLE | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02212018 | 03232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222035 | C20 | Malignant neoplasm of rectum | ICD10 | 02222018 | 72197, 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T07:19:27+00:00 | Q20453342 | 000070641-01 | Thelma | Derefield | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL HLTH SYS | 937331 | 1457617235 | JAMES E POPP | 1639162753 | Radiology (HH) | OP RAD | Pre-Service | PRE | JAMES E | POPP | 02222018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02262018 | 03282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222036 | M87051 | Idiopathic aseptic necrosis of right femur | ICD10 | 02222018 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T08:01:23+00:00 | Q20454286 | 000075473-01 | Lawrence | Smith | CENTRAL OH HSPISTS INC | 911210 | GINA N | MOODY | 1033378989 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 02222018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03012018 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222048 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 02222018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T09:10:04+00:00 | Q20454996 | 000036746-01 | THOMAS | KUHN | CANYON MEDICAL CENTER | 936901 | ROBERT | HERSHFIELD | 1316955636 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02212018 | 03232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222053 | R1031 | Right lower quadrant pain | ICD10 | 02222018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T09:17:45+00:00 | Q20455108 | 000095325-01 | Paul | Osborne Jr | MERCY HEALTH PHYSICIANS | 914330 | DANIEL C | ECKERT | 1275742728 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 02222018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222055 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 02222018 | 71275, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T09:27:08+00:00 | Q20455282 | 000070881-01 | Bonnie | Walters | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL HLTH PRVDRS | 952415 | 1134154750 | JEFFREY L GRESH | 1104891639 | Radiology (HH) | OP RAD | Pre-Service | PRE | JEFFREY L | GRESH | 02222018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03012018 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222059 | M5416 | Radiculopathy, lumbar region | ICD10 | 02222018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02142018 | 2018-02-14T15:40:10+00:00 |  | 000107384-01 | Robert | Graham | JOINT ACTIVE SYSTEMS INC | 920700 |  | JOINT ACTIVE SYSTEMS INC | 1639172331 | JOINT ACTIVE SYSTEMS INC | 920700 | 1639172331 | JOINT ACTIVE SYSTEMS INC | 1639172331 | DME | DME | Pre-Service | PRE |  | JOINT ACTIVE SYSTEMS INC | 02222018 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 02142018 | 04142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180214115 | M24661, Z96651 | Presence of right artificial knee joint | ICD10 | 02222018 | E1811 | BI-DIRECTIONAL STATIC PROGRESSIVE STRETCH KNEE DEVICE WITH RANGE OF MOTI | HCPCS | 1 | 1 | Approved | 60 | HCPCS | HC | Pc to Hanger DME to inquire about HCPC E1811  no answer vmm left along with name and number, Received an vmm from Hanger Supplies stating that they do not carry the E1811 brace.   Pc to  Cornerstone vmm left inquiring about E181.  Vmm left along with name and number, PC to Elana at Cornerstone 614-866-5520  EXT 15200  inquiring if they carry the E1811 brace   vmm  left along with name and number, SPOKE WITH ELANA FROM CORNERSTONE THEY DO NOT CARRY ANY ORTHOTICS, SCA FORM COMPLETED AND FORWARDED TO CONTRACTS |  |  |  |  | 0 |
| 02152018 | 2018-02-15T18:32:29+00:00 |  | 000015287-01 | LAWRENCE | LEONARD | VOHRA WOUND PHYS OF FL L | 919034 | DAVID F | KASSERMAN | 1427127000 | EDINBURG CARE RESOURCES | 939458 | 1518141902 | ECHO MANOR EXTENDED CC | 1437252194 | Out of Network Services | OONS | Pre-Service | PRE |  | ECHO MANOR EXTENDED CC | 02222018 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 02222018 | 02232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180216018 | L89894 | Pressure ulcer of other site, stage 4 | ICD10 | 02222018 | 97597 | ACTIVE WOUND CARE/20 CM OR < | CPT | 0 | 1 | Denied | 0 | CPT | C4 | LEFT VM FOR YVONNE GONZALEZ 954-399-4646 FOR CPT CODES, Contacted Yvonne for CPT.  She is going to fax over medical records, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02162018 | 2018-02-16T10:43:44+00:00 |  | 000061766-01 | RUBIN | CABINESS | ORTHO SPEC & SPORTS MED | 903844 | BRAD L | BERNACKI | 1356303481 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02222018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03122018 | 04122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216082 | M2241, M67361, S838X1A | Sprain of other specified parts of right knee, init encntr | ICD10 | 02222018 | 29881, 29876, 29879 | ARTHRSCPY KNEE ABR ARTHRO/MULT DRLL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 02162018 | 2018-02-16T12:12:11+00:00 |  | 000085715-01 | Harold | Huber | OSU OTOLARYNGOLOGISTS LL | 933405 | OLIVER F | ADUNKA | 1316975444 | OSU OTOLARYNGOLOGISTS LL | 902915 | 1861449407 | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU OTOLARYNGOLOGISTS LLC | 02222018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02202018 | 05202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216118 | H65491 | Other chronic nonsuppurative otitis media, right ear | ICD10 | 02222018 | 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1 | 1 | Approved | 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02132018 | 2018-02-13T14:32:22+00:00 | Q20396441 | 000111139-01 | Richard | Kuhlman | CEN OH UROLOGY GRP INC | 941719 | JOHN K | BURGERS | 1982622353 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 02222018 | Denied | MediGold Classic Preferred | HealthHelp | Criteria Not Met | Outpatient | 02222018 | 02232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180221133 | C61 | Malignant neoplasm of prostate | ICD10 | 02222018 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T14:01:07+00:00 |  | 000020565-01 | EVELYN | MILLINGTON | MERITAS MEDICAL INC | 913868 | RAJU | FATEHCHAND | 1346201407 | TUSCANY GARDENS | 905810 | 1073634788 | TUSCANY GARDENS | 1073634788 | Part B Therapy | OP THER | Pre-Service | PRE |  | TUSCANY GARDENS | 02222018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02212018 | 04272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180221139 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02222018 | 97110, 97530, 97535 | SELF CARE/HOME MANAGEMENT TRAINING (EG, ACTIVITIES OF DAILY | CPT | 16, 16, 16 | 16, 16, 16 | Approved, Approved, Approved | 66, 66, 66 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T09:50:27+00:00 | Q20455884 | 000117319-01 | DONNA | HUNT | MERCY HEALTH PHYSICIANS | 904113 | FAIQ S | AKHTER | 1801896303 | MERCY HEALTH PHYSICIANS | 948350 | 1205887023 | SAYED TARIQ RIZVI | 1114198348 | Radiology (HH) | OP RAD | Pre-Service | PRE | SAYED | TARIQ RIZVI | 02222018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222063 | R079 | Chest pain, unspecified | ICD10 | 02222018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T10:33:02+00:00 | Q20456871 | 000040501-01 | NANCY | HOUSER | HEMATOLOGY ONCOLOGY CONS | 903590 | SANJAY | YADAV | 1528177714 | HEMATOLOGY ONCOLOGY CONS | 944154 | 1780793901 | JENNA L HOFFMAN | 1164894242 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | JENNA L | HOFFMAN | 02222018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02212018 | 08202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222076 | C50411 | Malig neoplm of upper-outer quadrant of right female breast | ICD10 | 02222018 | J9267, J1100, J2405, J9045 | CARBOPLATIN, 50 MG | HCPCS | 3840, 640, 512, 1 | 3840, 640, 512, 1 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9267: 3840: Paclitaxel 80 mg/m2  IV  days 1  8  15  every 21 days  8 cycles: J9045: 144: Carboplatin AUC 2 (max 300 mg)  IV  days 1  8  15  every 21 days  8 cycles: J9355: 317: Trastuzumab 6 mg/kg  IV  day 1  every 21 days  7 cycles; Trastuzumab 8 mg/kg  IV  day 1  every 21 days  1 cycle (cycle 1): J1100: 640: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  8 cycle(s): J2405: 512: Ondansetron up to 16 mg  IV  up to 4 days  Dispensed as: 16.00 mg  4 treatment(s) each cycle  8 cycle(s) |  |  |  |  | 0 |
| 02212018 | 2018-02-21T10:19:00+00:00 | Q20457048 | 000074491-01 | Sharon | Hughes | ALLIANCE PHYSICIANS INC | 910681 | RAYMOND J | POELSTRA | 1972530848 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 02222018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02262018 | 05272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222078 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 02222018 | 77371 | RADIATION TREATMENT DELIVERY STEROTACTIC RADIOSURGERY COMPLETE COURSE OF | CPT | 1 | 1 | Approved | 91 | CPT | C4 | 77371: 1: 77371 1 |  |  |  |  | 0 |
| 02212018 | 2018-02-21T10:46:09+00:00 | Q20457057 | 000078168-01 | Eddie | Perkins | MERCY HEALTH PHYSICIANS | 943993 | JESSICA A | SMITH | 1275769614 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 02222018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222079 | J8410 | Pulmonary fibrosis, unspecified | ICD10 | 02222018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T11:40:14+00:00 | Q20458071 | 000069374-01 | JAMES | SPAULDING | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222091 | C760 | Malignant neoplasm of head, face and neck | ICD10 | 02222018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T12:03:35+00:00 | Q20458507 | 000012954-01 | SANDRA | AYRES | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02212018 | 03232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180222098 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 02222018 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
