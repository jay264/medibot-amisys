Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-05
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-05
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
| 02012018 | 2018-02-01T11:40:47+00:00 |  | 000102814-01 | Sandra | Cohn | OSU OTOLARYNGOLOGISTS LL | 902915 |  | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | OSU OTOLARYNGOLOGISTS LL | 902915 | 1861449407 | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU OTOLARYNGOLOGISTS LLC | 02052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02092018 | 05092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201119 | H903 | Sensorineural hearing loss, bilateral | ICD10 | 02052018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02022018 | 2018-02-02T14:13:46+00:00 |  | 000001043-01 | ELSIE | EDWARDS | OSU INTERNAL MED LLC | 935827 | CURTIS J | DANIELS | 1407833320 | OSU INTERNAL MED LLC | 937566 | 1740231448 | OSU INTERNAL MEDICINE LLC | 1740231448 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU INTERNAL MEDICINE LLC | 02052018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02202018 | 05202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202147 | I272, N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 02052018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02022018 | 2018-02-02T10:08:20+00:00 |  | 000078714-01 | Katherine | Casterline | OSU INTERNAL MED LLC | 908604 | RALPH S | AUGOSTINI | 1104821552 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 02052018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02192018 | 03192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202133 | I639 | Cerebral infarction, unspecified | ICD10 | 02052018 | 93280 | PM DEVICE PROGR EVAL, DUAL | CPT | 1 | 1 | Approved | 29 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T15:29:35+00:00 | Q20311868 | 000034101-01 | GLADYS | MCFARLAND | SURG INTERVENTIONS LLC | 905158 | CARLOS B | DOMINGO | 1770615528 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 02052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205036 | R079 | Chest pain, unspecified | ICD10 | 02052018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T15:56:32+00:00 | Q20312248 | 000084057-01 | Gordon | Cydrus | MOUNT CARMEL HLTH PRVDRS | 943692 | COLLEEN J | YOUNG | 1730556374 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02012018 | 03032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205038 | R911 | Solitary pulmonary nodule | ICD10 | 02052018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T18:39:10+00:00 | Q20313243 | 000077469-01 | Vernon | Williams | MERCY HEALTH PHYSICIANS | 928571 | JENNIFER S | RADCLIFFE | 1578990990 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 02052018 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02022018 | 03042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205041 | I480 | Paroxysmal atrial fibrillation | ICD10 | 02052018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02022018 | 2018-02-02T07:52:21+00:00 | Q20313718 | 000102227-01 | Nicki | Bernard | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 02052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205046 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 02052018 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02022018 | 2018-02-02T08:19:24+00:00 | Q20314027 | 000078605-01 | Phillip | Badger | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02052018 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205050 | D49512 | NEOPLASM OF UNSPECIFIED BEHAVIOR OF LEFT KIDNEY | ICD10 | 02052018 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02022018 | 2018-02-02T07:05:00+00:00 | Q20314239 | 000088345-01 | Freda | Hartley | LANCASTER SURGICAL ASSOC | 936974 | SCOTT O | JOHNSON | 1528058971 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02022018 | 03042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205053 | Z7901 | Long term (current) use of anticoagulants | ICD10 | 02052018 | 74261 | CT COLONOGRAPHY, W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01292018 | 2018-01-29T09:31:22+00:00 |  | 000049608-01 | MARY ANN | BUCKLES | CEN OH PRIMARY CARE SPEC | 937059 | DAVID S | LAHUE | 1861476327 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 02052018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01232018 | 02232019 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129029 | I6990 | Unspecified sequelae of unspecified cerebrovascular disease | ICD10 | 02052018 | E2601, E0971, K0001 | STANDARD WHEELCHAIR | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 397, 397, 397 | HCPCS | HC | Spoke to Gloria Hector and she gave me the CPT Codes for DME of E2601  E0971  K0001 and these were added to the file.  I told her a I also neede clinical documentation with this request and I would fax to her a letter. |  |  |  |  | 0 |
| 01312018 | 2018-01-31T11:09:36+00:00 |  | 000107736-01 | James | Gehring | ALLIANCE PHYSICIANS INC | 908980 | JOHN J | HALUSCHAK | 1407895535 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02052018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02052018 | 03052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131108 | C9310 | Chronic myelomonocytic leukemia not achieve remission | ICD10 | 02052018 | 99205 | OFFICE CALL - NEW PATIENT | CPT | 1 | 1 | Approved | 29 | CPT | C4 | Fax sent to facility(The James 937-281-3908) and (Kettering 937-281-3908) for clinicals and procedure codes, I contact several people at OSU in Pre-certification and they were not able to help or assist me with trying to locate who completed this form or what area is requesting this appointment.  Also was not able to locate the member in OSU computer system with having an appointment., Received rtc from Angie with provider stating that the code that they are requesting is 99205. |  |  |  |  | 0 |
| 01312018 | 2018-01-31T14:12:01+00:00 |  | 000032452-01 | RODERICK | GLENN | FAIRFIELD HLTHCARE PROFS | 910849 | JEREMY W | BUCKLEY | 1720106248 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 02052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02052018 | 03052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131128 | I482 | Chronic atrial fibrillation | ICD10 | 02052018 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 29 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T09:29:01+00:00 |  | 000026846-01 | ROBERT | SCARBOROUGH | ATOS MEDICAL INC | 938182 |  | ATOS MEDICAL INC | 1962452755 | ATOS MEDICAL INC | 938182 | 1962452755 | ATOS MEDICAL INC | 1962452755 | DME | DME | Pre-Service | PRE |  | ATOS MEDICAL INC | 02052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02012018 | 05012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201102 | Z930 | Tracheostomy status | ICD10 | 02052018 | A7507, A7508, A7520 | TRACHEOSTOMY/LARYNGECTOMY TUBE, NON-CUFFED, POLYVINYLCHLORIDE (PVC), SIL | HCPCS | 180, 180, 2 | 180, 180, 2 | Approved, Approved, Approved | 90, 90, 90 | HCPCS | HC | REQUESTS FOR SCA FAILED  SENT VIA E-MAIL |  |  |  |  | 0 |
| 02022018 | 2018-02-02T13:48:05+00:00 |  | 000081135-01 | Sandra | Bonsall | COLLIER BOULEVARD HMA PH | 952846 | RONALDO | CARNEIRO | 1528018694 | COLLIER BOULEVARD HMA PH | 952846 | 1508098344 | RONALDO CARNEIRO | 1528018694 | Out of Network Services | OONS | Pre-Service | PRE | RONALDO | CARNEIRO | 02052018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02082018 | 03102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202146 | S52501D | Unsp fx the lower end r rad, subs for clos fx w routn heal | ICD10 | 02052018 | 97167, 97140, 97530, 97014, 97010, 97035 | APPLICATION OF A MODALITY, ULTRASOUND, | CPT | 8, 8, 8, 8, 8, 8 | 8, 8, 8, 8, 8, 8 | Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31 | CPT | C4 | Provider calling asking for status.  Told her auth was in process. |  |  |  |  | 0 |
| 02022018 | 2018-02-02T09:27:59+00:00 | Q20315314 | 000120715-01 | EGMONT | FRIEDRICH JR | FAIRFIELD HLTHCARE PROFS | 918916 | ALYSON A | ADAMS | 1477820462 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02052018 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205070 | Z87442 | Personal history of urinary calculi | ICD10 | 02052018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02022018 | 2018-02-02T10:02:13+00:00 | Q20316053 | 000077478-01 | William | Hall | MARIETTA HLTH CARE PHYS | 921978 | SRINI | VASAN | 1376541649 | MARIETTA HLTH CARE PHYS | 933767 | 1912965732 | JEREMY W WATERS | 1043536261 | Radiology (HH) | OP RAD | Pre-Service | PRE | JEREMY W | WATERS | 02052018 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02162018 | 05172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205083 | C50422 | Malig neoplasm of upper-outer quadrant of left male breast | ICD10 | 02052018 | 77424 | IO RAD TX DELIVERY BY X-RAY | CPT | 1 | 1 | Approved | 91 | CPT | C4 | 77424: 1: 77424 1 |  |  |  |  | 0 |
| 02022018 | 2018-02-02T11:01:52+00:00 | Q20317662 | 000107206-01 | Gloria | Chaney-Marino | ONCOLOGY HEMATOLOGY CARE | 921215 | PAULA F | WEISENBERGER | 1083608285 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL CLERMONT | 02052018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02052018 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205091 | C541 | Malignant neoplasm of endometrium | ICD10 | 02052018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02052018 | 2018-02-05T07:17:12+00:00 |  | 000023694-01 | BETTY | COOPER | OSU PLASTIC SURGERY LLC | 947537 | ROMAN J | SKORACKI | 1477651966 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02162018 | 05162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205107 | C499 | Malignant neoplasm of connective and soft tissue, unsp | ICD10 | 02052018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02052018 | 2018-02-05T11:22:31+00:00 |  | 000003999-01 | BARBARA | PAUL | OSU INTERNAL MED LLC | 926990 | DAVID | CARBONE | 1558453977 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02132018 | 05132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205126 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 02052018 | 99211, 99212, 99213, 99214, 99215, 85025 | HMOGRM/PLTLT CT,AUTO/AUTO CMP DIFFT | CPT | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02052018 | 2018-02-05T12:00:12+00:00 |  | 000046933-01 | ANNA | MOORE | OSU INTERNAL MED LLC | 918882 | ERIN M | BERTINO | 1043355688 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02162018 | 05162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205128 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 02052018 | 99211, 99212, 99213, 99214, 99215, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02052018 | 2018-02-05T13:44:45+00:00 |  | 000120144-01 | Dale | Watson | OSU UROLOGY LLC | 911712 | AHMAD | SHABSIGH | 1407025042 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02132018 | 05132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205141 | C61 | Malignant neoplasm of prostate | ICD10 | 02052018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
