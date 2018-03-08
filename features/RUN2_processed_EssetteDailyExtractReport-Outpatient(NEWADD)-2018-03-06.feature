Feature: RUN 2 Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-03-06
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: RUN2_EssetteDailyExtractReport-Outpatient(NEWADD)-2018-03-06
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
| 03022018 | 2018-03-02T09:13:00+00:00 | Q20532539 | 000119787-01 | Ricky | Swinehart | AMERICAN HLTH NETWORK OF | 941605 | MELISSA K | KING | 1760896716 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03062018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03022018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180306009 | R05 | Cough | ICD10 | 03062018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T14:46:45+00:00 | Q18207727 | 000044837-01 | RICHARD | MILLS | ADENA MEDICAL GROUP LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05022017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418063 | R0789 | Other chest pain | ICD10 | 03062018 | 93458, 93459 | L HRT ART/GRFT ANGIO | CPT | 0, 1 | 1, 1 | Void, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 02222018 | 2018-02-22T10:19:44+00:00 | Q20467492 | 000070968-01 | Sandra | Keyse | LICKING MEM FAM PRCT HEB | 903573 | MEGAN E | MILLER | 1255330072 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 03062018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02232018 | 03252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180226015 | R222 | Localized swelling, mass and lump, trunk | ICD10 | 03062018 | 72147, 72157 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST MORE SEQUENCES;THORACIC | CPT | 0, 1 | 1, 1 | Void, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02282018 | 2018-02-28T09:05:36+00:00 |  | 000058062-01 | DAVID | DERINGER | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Predetermination Request | PR | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 03062018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 03062018 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180228109 | B351, E1140 | Type 2 diabetes mellitus with diabetic neuropathy, unsp | ICD10 | 03062018 | 11721 | DEBRIDEMENT OF NAIL(S) BY ANY METHOD(S); SIX OR MORE | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02282018 | 2018-02-28T09:17:57+00:00 |  | 000071097-01 | Lonnie | Bateman Jr | FIRST CARE OF OHIO | 922788 |  | FIRST CARE OF OHIO | 1578546891 | FIRST CARE OF OHIO | 922788 | 1578546891 | FIRST CARE OF OHIO | 1578546891 | Out of Network Services | OONS | Pre-Service | PRE |  | FIRST CARE OF OHIO | 03062018 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Outpatient | 03062018 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180228110 | C3431, G8250 | Quadriplegia, unspecified | ICD10 | 03062018 | A0428, A0425 | GROUND MILEAGE, PER STATUTE MILE | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | PC to First Care of Ohio  requested service date.  Date was 2/23/18., This company is aware that they must go through Columbus Connection in the future., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03022018 | 2018-03-02T14:11:14+00:00 | Q20537978 | 000068549-01 | LARRY | RICHARDS | COLONNADE MED GRP INC | 900819 | BRIAN L | HENDRICKSON | 1710961412 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03022018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180306019 | C61 | Malignant neoplasm of prostate | ICD10 | 03062018 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03022018 | 2018-03-02T14:52:05+00:00 | Q20538583 | 000057871-01 | KATHERINE | GOLDBERG | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | COPC CENTRAL OHIO PRIMAR | 948084 | 1194705194 | SVETLANA NOVAK | 1598008179 | Radiology (HH) | OP RAD | Pre-Service | PRE | SVETLANA | NOVAK | 03062018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03022018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180306022 | R42 | Dizziness and giddiness | ICD10 | 03062018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03022018 | 2018-03-02T14:40:44+00:00 | Q20538858 | 000106609-01 | Lonnie | Hall | ALLIANCE PHYSICIANS INC | 902849 | THOMAS M | RUFF | 1639178304 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 03062018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 03052018 | 05042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180306025 | I495 | Sick sinus syndrome | ICD10 | 03062018 | 33212, C1786, C2620 | PACEMAKER, SINGLE CHAMBER, NON RATE-RESPONSIVE (IMPLANTABE) | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 03032018 | 2018-03-03T10:58:10+00:00 | Q20540615 | 000111500-01 | Melnee | Tisdale | ADENA MEDICAL GROUP LLC | 922384 | JAYA | THAKUR | 1457589277 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 03062018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03062018 | 04052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180306035 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 03062018 | 74177, 70491, 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03022018 | 2018-03-02T13:42:24+00:00 |  | 000017755-01 | ANN | BROSSMAN | OSU INTERNAL MED LLC | 914471 | KONSTANTINOS | BOUDOULAS | 1003976507 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03082018 | 04082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302123 | D496, R9431, R9439, Z01818 | Encounter for other preprocedural examination | ICD10 | 03062018 | 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 03052018 | 2018-03-05T09:34:08+00:00 | Q20542960 | 000101416-01 | Donald | Tucker | FAM PHYS OF SPRINGFIELD | 907238 | MICHAEL S | MCKEE | 1124043625 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03062018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03052018 | 04042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180306060 | M546 | Pain in thoracic spine | ICD10 | 03062018 | 72128, 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03052018 | 2018-03-05T10:00:07+00:00 | Q20543530 | 000106609-01 | Lonnie | Hall | ALLIANCE PHYSICIANS INC | 903054 | ROBERT E | BULOW | 1477552271 | ALLIANCE PHYSICIANS INC | 912194 | 1437125572 | ANDREW H GABRIEL | 1205990033 | Cardiology (HH) | OP CARD | Pre-Service | PRE | ANDREW H | GABRIEL | 03062018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 03052018 | 05042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180306064 | I441 | Atrioventricular block, second degree | ICD10 | 03062018 | 33208, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 03062018 | 2018-03-06T07:50:21+00:00 |  | 000003999-01 | BARBARA | PAUL | OSU INTERNAL MED LLC | 926990 | DAVID | CARBONE | 1558453977 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03072018 | 06072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180306065 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 03062018 | 99211, 99212, 99213, 99214, 99215, 85025 | HMOGRM/PLTLT CT,AUTO/AUTO CMP DIFFT | CPT | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03052018 | 2018-03-05T12:32:23+00:00 | Q20546865 | 000082883-01 | Paul | Sager | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | OSU HOSPITAL | 902254 | 1447359997 | THE OH STATE UNIVERSITY HSP HARDING | 1790876183 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HSP HARDING | 03062018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05232018 | 06222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180306094 | G20 | Parkinson's disease | ICD10 | 03062018 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03052018 | 2018-03-05T11:57:00+00:00 | Q20546605 | 000051895-01 | GIDDIONS | MARCUM | CLEVELAND CLINIC FNDN | 931849 | MARC A | SHAPIRO | 1689894230 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 03062018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03052018 | 04042018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180306144 | C33, C3480 | Malignant neoplasm of ovrlp sites of unsp bronchus and lung | ICD10 | 03062018 | 99215, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
