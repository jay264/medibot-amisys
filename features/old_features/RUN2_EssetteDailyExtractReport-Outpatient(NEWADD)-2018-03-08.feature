Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-03-08
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-03-08
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
| 10252017 | 2017-10-25T08:30:06+00:00 | Q19620330 | 000005948-01 | RALPH | RISTER | CEN OH UROLOGY GRP INC | 942974 | ROBERT J | PIROLI | 1730180662 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 03082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11212017 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026101 | C61 | Malignant neoplasm of prostate | ICD10 | 03082018 | G6015 | RADIATION TX DELIVERY IMRT | HCPCS | 45 | 45 | Approved | 91 | HCPCS | HC | G6015: 45: G6015 45 |  |  |  |  | 0 |
| 03062018 | 2018-03-06T14:16:09+00:00 | Q20560519 | 000100258-01 | Gloria | Morgan | SHILOH FAMILY MEDICINE | 912995 | ERIC S | NORDIN | 1053420612 | USD DAYTON INC | 901931 | 1861685802 | DAYTON MEDICAL IMAGING VANDALIA | 1306823638 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON MEDICAL IMAGING VANDALIA | 03082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03062018 | 04052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308027 | M5441 | Lumbago with sciatica, right side | ICD10 | 03082018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03062018 | 2018-03-06T14:20:48+00:00 | Q20560822 | 000034200-01 | SHIRLEY | KUSAN | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL HLTH PRVDRS | 952415 | 1134154750 | JEFFREY L GRESH | 1104891639 | Radiology (HH) | OP RAD | Pre-Service | PRE | JEFFREY L | GRESH | 03082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03222018 | 04212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308031 | M4802 | Spinal stenosis, cervical region | ICD10 | 03082018 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03062018 | 2018-03-06T14:45:15+00:00 | Q20561279 | 000036639-01 | SAMANTHA | KINSER | MOUNT CARMEL HLTH PRVDRS | 934782 | DAVID G | BICHSEL | 1669474839 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03072018 | 04062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308033 | R079 | Chest pain, unspecified | ICD10 | 03082018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03062018 | 2018-03-06T15:34:41+00:00 | Q20562393 | 000063067-01 | GLADYS | CAUDILL | GRADY MEMORIAL HOSPITAL | 939552 | JERRY W | MITCHELL | 1750339651 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 03082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02272018 | 08262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308042 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 03082018 | J9201, J1453, J1100, J9060, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 160, 3600, 640, 96, 240 | 160, 3600, 640, 96, 240 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC | J9201: 160: Gemcitabine 1000 mg/m2  IV  days 1  8  every 21 days  8 cycles: J9060: 96: Cisplatin 30 mg/m2  IV  days 1  8  every 21 days  8 cycles: J1453: 3600: Fosaprepitant 150 mg  IV  up to 3 days  Dispensed as: 150.00 mg  3 treatment(s) each cycle  8 cycle(s): J1100: 640: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  8 cycle(s): J2469: 240: Palonosetron 0.25 mg  IV  up to 3 days  Dispensed as: 0.25 mg  3 treatment(s) each cycle  8 cycle(s) |  |  |  |  | 0 |
| 03062018 | 2018-03-06T16:08:36+00:00 | Q20562976 | 000083782-01 | Joyce | Snider | AHMED, AIJAZ | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY MEMORIAL HOSPITAL - CAH | 03082018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03062018 | 04052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308043 | D329 | Benign neoplasm of meninges, unspecified | ICD10 | 03082018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03072018 | 2018-03-07T08:13:40+00:00 | Q20564647 | 000072532-01 | DAVID | WARD | MOUNT CARMEL HLTH PRVDRS | 949510 | MARK W | BYRGE | 1053307389 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03082018 | 04072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308061 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 03082018 | 70498 | CT ANGIOGRAPHY, NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03072018 | 2018-03-07T08:29:19+00:00 | Q20564910 | 000046801-01 | LARRY | BARNHART | ADENA MEDICAL GROUP LLC | 914059 | STEPHEN C | JOHNSON | 1699828400 | ADENA HEALTH SYSTEMS | 937209 | 1144278243 | TIMOTHY D MOORE | 1144278243 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | TIMOTHY D | MOORE | 03082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04022018 | 09292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308066 | C61 | Malignant neoplasm of prostate | ICD10 | 03082018 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:30:56+00:00 |  | 000118882-01 | Vickie | Cordell | SUNBURY CHIROPRACTIC CTR | 941344 | AMANDA | GOLDEN | 1013246362 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Predetermination Request | PR | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 03082018 | Denied | MediGold Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 03082018 | 03092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180206137 | M545, M546, S336XXA | Sprain of sacroiliac joint, initial encounter | ICD10 | 03082018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:30:56+00:00 |  | 000069613-01 | SUSAN | WITHROW | SUNBURY CHIROPRACTIC CTR | 907032 | AARON E | ERNDT | 1386620177 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Predetermination Request | PR | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 03082018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 03082018 | 03092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180206139 | M9901, R51, M50321 | OTHER CERVICAL DISC DEGENERATION AT C4-C5 LEVEL | ICD10 | 03082018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:30:56+00:00 |  | 000069646-01 | ROBERT | WOLFE | SUNBURY CHIROPRACTIC CTR | 910242 | GABRIEL M | MENDENHALL | 1518151299 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Predetermination Request | PR | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 03082018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 03082018 | 03092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180206142 | M5033, M5135, M546, M9901, M9902, M9903, M9905, S336XXA | Sprain of sacroiliac joint, initial encounter | ICD10 | 03082018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02162018 | 2018-02-16T09:51:44+00:00 |  | 000036603-01 | BARBARA | SMITH | AMERICAN MEDICAL EQUIPMENT INC | 903661 |  | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 903661 | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | DME | DME | Pre-Service | PRE |  | AMERICAN MEDICAL EQUIPMENT INC | 03082018 | Approved | MediGold Classic Preferred | Fax | With Additional Info | Outpatient | 02162018 | 03162019 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216037 | E119, G609, M4800 | Spinal stenosis, site unspecified | ICD10 | 03082018 | K0823 | PWC gp 2 std cap chair | HCPCS | 1 | 1 | Overturned on Appeal | 394 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved., Call to Brandy at American Medical  at 614-237-1133 x 103. Left msg requesting a call back.  Need to inquire about the process of returning the scooter to them and receiving credit back to medigold., Received notification of expedited appeal. Case presented to Dr. Robert Durbin and overturned. The request was approved. Appeal dept notified., Call from Brandy at American Medical  at 614-237-1133 x 103.  Mbr never received the Scooter.  It was not billed. |  |  |  |  | 0 |
| 03052018 | 2018-03-05T17:04:14+00:00 |  | 000072535-01 | STEPHEN | JOHNSON | ORTHOPEDIC ONE INC | 936517 | JONATHAN B | FEIBEL | 1578556817 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | DME | DME | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 03082018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 03082018 | 03092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180306066 | M19071, M19072 | Primary osteoarthritis, left ankle and foot | ICD10 | 03082018 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC |  |  |  |  |  | 0 |
| 03072018 | 2018-03-07T07:50:00+00:00 | Q20564915 | 000079717-01 | Mary | Miller | LONDON FAMILY MED INC | 937382 | STEVEN G | RICHARDSON | 1629030838 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MADISON COUNTY HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03072018 | 04062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308067 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 03082018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03072018 | 2018-03-07T08:45:54+00:00 | Q20565226 | 000086816-01 | Jerry | Ault | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | DUBLIN DIAGNOSTIC IMAGING | 905251 | 1760447924 | DUBLIN DIAGNOSTIC IMAGING | 1760447924 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DUBLIN DIAGNOSTIC IMAGING | 03082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03082018 | 04072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308071 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 03082018 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03072018 | 2018-03-07T09:14:44+00:00 | Q20565820 | 000039719-01 | HARRIET | MCBRIDE | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | COPC CENTRAL OHIO PRIMAR | 948084 | 1194705194 | SVETLANA NOVAK | 1598008179 | Radiology (HH) | OP RAD | Pre-Service | PRE | SVETLANA | NOVAK | 03082018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03082018 | 04072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308076 | R0789 | Other chest pain | ICD10 | 03082018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03072018 | 2018-03-07T13:32:23+00:00 | Q20571274 | 000071942-01 | Helen | Adams | FAIRFIELD HLTHCARE PROFS | 918916 | ALYSON A | ADAMS | 1477820462 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03082018 | 04072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308109 | I472 | Ventricular tachycardia | ICD10 | 03082018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03082018 | 2018-03-08T13:06:13+00:00 |  | 000117607-01 | DAVID | DENNEHY | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03082018 | 05082018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180308132 | C220, K7460 | Unspecified cirrhosis of liver | ICD10 | 03082018 | 75726, 36247, 36248, 75726, 75774, C1887, C1769 | GUIDE WIRE | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC | Eric Elliott 1427251545 is a Radiologist |  |  |  |  | 0 |
