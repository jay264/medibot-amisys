Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-11
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-11
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
| 08242017 | 2017-08-24T09:15:38+00:00 |  | 000078923-01 | Nancy | Ugie | OSU INTERNAL MED LLC | 950537 | MAYUMI | ENDO | 1285946541 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09112017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 09012017 | 12012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170827002 | C021 | Malignant neoplasm of border of tongue | ICD10 | 09112017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08152017 | 2017-08-15T13:12:49+00:00 |  | 000091578-01 | Rhonda | Kaatz | HAMIRANI, MIRZA T | 925661 | MIRZA T | HAMIRANI | 1861460099 | HAMIRANI, MIRZA T | 925661 | 1861460099 | MIRZA T HAMIRANI | 1861460099 | Out of Network Services | OONS | Pre-Service | PRE | MIRZA T | HAMIRANI | 09112017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Services Available In-Network | Outpatient | 09112017 | 09122017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170815166 | I10, N183, R809 | Proteinuria, unspecified | ICD10 | 09112017 | 99211 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Reached out to Dr. Mahyar Tahbaz 304-422-6999  who is in network and in OHio.  Will accept patient., Letter is written in appropriate language with no abbreviations and is therefore approved., Case presented to senior associate medical director Dr. Robert Durbin. Denial upheld. Appeals notified. |  |  |  |  | 0 |
| 09112017 | 2017-09-11T09:49:10+00:00 |  | 000106964-01 | Melvin | Hill | HAND & MICROSURG ASSOC I | 910659 | LAWRENCE M | LUBBERS | 1639177512 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Out of Network Services | OONS | Pre-Service | PRE |  | RIVERSIDE METHODIST HOSPITAL | 09112017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 09112017 | 11102017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170911111 | S62621B, S62637B | Disp fx of dist phalanx of l little finger, init for opn fx | ICD10 | 09112017 | 20680, 20600 | ASP &/OR INJ SMALL JNT BURSA GNGLN | CPT | 2, 1 | 2, 1 | Approved, Approved | 61, 61 | CPT | C4 |  |  |  |  |  | 0 |
| 08302017 | 2017-08-30T06:26:54+00:00 | Q19204255 | 000004591-01 | DELORES | HAY | MOUNT CARMEL HLTH PRVDRS | 926568 | VICTORIA | GREY | 1538405238 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08312017 | 09302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170831083 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 09112017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08072017 | 2017-08-07T14:31:19+00:00 | Q19031551 | 000077152-01 | Mildred | Massie | ALLIANCE PHYSICIANS INC | 902322 | JOHN M | DUCHAK III | 1841269057 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 09012017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170807023 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 09112017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07022017 | 2017-07-02T16:37:00+00:00 |  | 000089229-01 | Veverly | Luckett | MERCY HEALTH PHYSICIANS | 921770 | RICHARD B | FRIES | 1033321567 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 09112017 | Denied | MediGold Southwest OH Essential Care | Member | Not a Covered Benefit (PA) | Outpatient | 09112017 | 09122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170703138 | I872 | Venous insufficiency (chronic) (peripheral) | ICD10 | 09112017 | A6450 | LIGHT COMPRESSION BANDAGE, ELASTIC, KNITTED/WOVEN, WIDTH GREATER THAN OR | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Spoke to office staff who will send over clinical information and appropriate codes.  States that patient has history of DVT's and venous insufficiency.  WIll send information to PA fax Queue., Letter is written in appropriate language with no abbreviations and is therefore approved., Received notification of standard appeal. Case to be reviewed by Dr. Durbin., Case presented to senior associate medical director Dr. Robert Durbin. Denial upheld. Appeals notified. |  |  |  |  | 0 |
| 09012017 | 2017-09-01T16:39:03+00:00 |  | 000077223-01 | Mitchell | Mayle | AMERICAN MEDICAL EQUIPMENT INC | 903661 |  | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 903661 | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | DME | DME | Pre-Service | PRE |  | AMERICAN MEDICAL EQUIPMENT INC | 09112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09012017 | 12012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170905011 | S149XXA | Injury of unspecified nerves of neck, initial encounter | ICD10 | 09112017 | E2365, K0108, E2392, E2374, E2374, E2366, E1340 | REPAIR OR NON-ROUTINE SVC FOR DME REQRG SKILL OF TECHNCN,LABOR / 15 MINS | HCPCS | 1, 1, 2, 1, 1, 1, 8 | 1, 1, 2, 1, 1, 1, 8 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08252017 | 2017-08-25T13:13:32+00:00 |  | 000114101-01 | Lenora | Bolinger | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09112017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09122017 | 10122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170827037 | C311 | Malignant neoplasm of ethmoidal sinus | ICD10 | 09112017 | 92550, 92552, 92553, 92557, 92567, 92588, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T09:20:01+00:00 | Q19185210 | 000084466-01 | Lawrence | Moody | FIRST SETTLEMENT ORTHOS | 924541 | GEORGE | TOKODI JR | 1215933700 | FIRST SETTLEMENT ORTHOS | 924319 | 1215992458 | FIRST SETTLEMENT ORTHOPAEDICS INC | 1215992458 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FIRST SETTLEMENT ORTHOPAEDICS INC | 09112017 | Approved | MediGold Southeast OH Essential Care | Member Representative | Medical Criteria Met | Outpatient | 08302017 | 09292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829160 | M5416 | Radiculopathy, lumbar region | ICD10 | 09112017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09082017 | 2017-09-08T13:24:02+00:00 |  | 000103703-01 | Elaine | Haubeil | ADENA MEDICAL GROUP LLC | 931939 | KEVIN M | PARGETER | 1861629420 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09072017 | 12072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908117 | N186 | End stage renal disease | ICD10 | 09112017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC | PC to Joelle regarding Urgent request for an appointment two weeks away for an initial consultation.  She relays the word URGENT was mistakenly left on the fax., She adds that Chrissi Moore will be covering her next week  ph 614-293-9254 and the same fax. |  |  |  |  | 0 |
| 09012017 | 2017-09-01T11:13:16+00:00 |  | 000049168-01 | ABAGAIL | MALONE | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE RAD ASSOC | 938497 | 1093718496 | RIVERSIDE RADIOLOGY ASSOC | 1093718496 | Out of Network Services | OONS | Pre-Service | PRE |  | RIVERSIDE RADIOLOGY ASSOC | 09112017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09152017 | 10152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170901106 | I8290 | Acute embolism and thrombosis of unspecified vein | ICD10 | 09112017 | 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T20:52:53+00:00 | Q19184235 | 000047566-01 | HELEN | MARCUM | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 09112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09182017 | 03172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170830014 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 09112017 | J9000, J2469, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 96, 240, 1920 | 96, 240, 1920 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9000: 96 Doxorubicin 20 mg/m2  IV  day 1  every 7 days  24 cycles; J2469: 240 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  24 cycle(s); J1100: 1920 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  24 cycle(s) |  |  |  |  | 0 |
| 08152017 | 2017-08-15T15:09:03+00:00 |  | 000078069-01 | Nora | Mollohan | RADIOLOGY INC | 914410 | ETHAN C | HANSEN | 1447486899 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Essential Care | HealthHelp | With Additional Info | Outpatient | 08152017 | 10112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170819003 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 09112017 | 77778 | INTERSTITIAL ISOTOPE APPLCTN CMPLX | CPT | 0 | 1 | Denied | 58 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., Received notification of expedited appeal. Case presented to Dr. Wise and he approved the requested treatment. |  |  |  |  | 0 |
| 09062017 | 2017-09-06T14:13:00+00:00 | Q19252432 | 000042503-01 | ELEANOR | KASLER | SRINIVAS KOLLI MD INC | 937037 | SRINIVAS | KOLLI | 1619948585 | SRINIVAS KOLLI MD INC | 909989 | 1053588855 | SRINIVAS KOLLI MD INC | 1053588855 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SRINIVAS KOLLI MD INC | 09112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09062017 | 10062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908021 | R110 | Nausea | ICD10 | 09112017 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09082017 | 2017-09-08T11:16:18+00:00 |  | 000012661-01 | SHIRLEY | CONLEY | OSU PHYSICAL MED LLC | 941881 | DANIEL | KIM | 1013147255 | OSU PHYSICAL MED LLC | 941881 | 1003029455 | DANIEL KIM | 1013147255 | DME | DME | Pre-Service | PRE | DANIEL | KIM | 09112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09082017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908105 | Z4689 | Encounter for fitting and adjustment of oth devices | ICD10 | 09112017 | 97542 | WHEELCHAIR MANAGEMENT/PROPULSION TRAINING, EACH 15 MINUTES | CPT | 1 | 1 | Approved | 62 | CPT | C4 |  |  |  |  |  | 0 |
| 08252017 | 2017-08-25T13:12:30+00:00 |  | 000077339-01 | Carol | Papson | OSU INTERNAL MED LLC | 948426 | LYNN A | FUSSNER | 1548581200 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09112017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 08252017 | 11252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170827036 | J84112 | Idiopathic pulmonary fibrosis | ICD10 | 09112017 | 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
