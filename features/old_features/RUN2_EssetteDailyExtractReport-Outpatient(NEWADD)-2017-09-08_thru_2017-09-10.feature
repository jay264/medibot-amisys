Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-08_thru_2017-09-10
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-08_thru_2017-09-10
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
| 08282017 | 2017-08-28T13:07:51+00:00 |  | 000064499-01 | ALBERT | KEECHLE | OSU HLTH SYS ORTHO ONC P | 951434 | MENGNAI | LI | 1538189733 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09082017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 09082017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170828135 | G8929, M25562, Z96641 | Presence of right artificial hip joint | ICD10 | 09082017 | 73564, 73502 | X-RAY EXAM HIP UNI 2-3 VIEWS | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Received a call back from Angela ayala-Griffin (Phone 614-257-2016)  MBR was referred by VA Clinic and has VA service related injury coverage, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08292017 | 2017-08-29T14:23:04+00:00 |  | 000081308-01 | Kathy | Shaw | NEUROSCIENCE CENTER | 907332 | JOHN | KISSEL | 1285718130 | ADVANCED RESPIRATORY INC | 937839 | 1053357905 | ADVANCED RESPIRATORY INC | 1053357905 | DME | DME | Pre-Service | PRE |  | ADVANCED RESPIRATORY INC | 09082017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07182017 | 08182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829022 | G710 | Muscular dystrophy | ICD10 | 09082017 | E0482 | COUGH STIMULATING DEVICE, ALTERNATING POSITIVE AND NEGATIVE AIRWAY PRESS | HCPCS | 1 | 1 | Approved | 397 | HCPCS | HC | Called Cornerstone and spoke with Ericka who stated they do not cover E0482 cough stimulator stated she was not sure  who has this equipment but she repeated they do not cover it, Called OSU Department of Neurology/Neuroscience center ( Phone 614-293-4969 ) and was told Dr Kissel's fax at Neuroscience Center is 614-685-7495 |  |  |  |  | 0 |
| 09062017 | 2017-09-06T15:12:00+00:00 | Q19253547 | 000081798-01 | Robert | Corbin | COPC CENTRAL OHIO PRIMAR | 903633 | JUSTIN K | KRUEGER | 1528024197 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 09082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09062017 | 10062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908027 | I725 | ANEURYSM OF OTHER PRECEREBRAL ARTERIES | ICD10 | 09082017 | 70496 | CT ANGIOGRAPHY, HEAD | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09082017 | 2017-09-08T09:13:23+00:00 | Q19265805 | 000082164-01 | Glenn | Anderson | ADENA MEDICAL GROUP LLC | 948914 | MICHELLE A | ADKINS | 1326402421 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09082017 | 10082017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908111 | R310 | Gross hematuria | ICD10 | 09082017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T15:49:07+00:00 |  | 000036877-01 | Chun | Sachs | EYE SURGICAL & MED CARE | 936834 | WESLEY | HARNISH | 1619979911 | UPPER ARLINGTON SURGERY CENTER | 939327 | 1477558641 | UPPER ARLINGTON SURGERY CENTER | 1477558641 | Out of Network Services | OONS | Pre-Service | PRE |  | UPPER ARLINGTON SURGERY CENTER | 09082017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 09082017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170828148 | H25813 | Combined forms of age-related cataract, bilateral | ICD10 | 09082017 | 66984, 66984 | EXTRCAPSULAR CATARACT RMVL | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08302017 | 2017-08-30T08:08:44+00:00 |  | 000046644-01 | KATHERINE | KUHN | ORTHO ASSOC OF ZANESVILL | 933437 | LACIE D | BAKER | 1194126797 | ORTHOPEDIC ONE INC | 927947 | 1396178620 | ORTHOPEDIC ONE INC | 1396178620 | DME | DME | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 09082017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 09082017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170830060 | G5762, M2042 | Other hammer toe(s) (acquired), left foot | ICD10 | 09082017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 09052017 | 2017-09-05T12:47:00+00:00 | Q19239913 | 000083151-01 | Deborah | Dauber | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 09082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09112017 | 03102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908008 | C530 | Malignant neoplasm of endocervix | ICD10 | 09082017 | J2505, J1100, J9060, J9267, J1453, J2469, J9035 | INJECTION, BEVACIZUMAB, 10 MG | HCPCS | 8, 640, 80, 2800, 1200, 80, 1312 | 8, 640, 80, 2800, 1200, 80, 1312 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181, 181 | HCPCS | HC | J9060: 80: Cisplatin 50 mg/m2  IV  day 1  every 21 days  8 cycles: J9267: 2800: Paclitaxel 135-175 mg/m2  IV  day 1  every 21 days  8 cycles: J9035: 1312: Bevacizumab 15 mg/kg  IV  day 1  every 21 days  8 cycles: J2505: 8: PegFilgrastim (Neulasta) 6 mg  SQ  once  every 21 days  8 cycles: J1100: 640: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  8 cycle(s): J1453: 1200: Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  8 cycle(s): J2469: 80: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  8 cycle(s) |  |  |  |  | 0 |
| 08312017 | 2017-08-31T09:00:43+00:00 |  | 000118832-01 | Kathy | Heminger | PICKAWAY HEALTH SERVICES | 902502 | FAROOQ | SATTAR | 1972597821 | GENESIS OXYGEN & HOME MEDICAL EQUIPM | 941332 | 1700958196 | GENESIS OXYGEN & HOME MEDICAL EQUIPM | 1700958196 | DME | DME | Pre-Service | PRE |  | GENESIS OXYGEN & HOME MEDICAL EQUIPM | 09082017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08012017 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170831135 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 09082017 | E0601, E0562, A7038, A7046, A7035, A7037 | TUBING USED WITH POSITIVE AIRWAY PRESSURE DEVICE | HCPCS | 1, 1, 12, 1, 1, 2 | 1, 1, 12, 1, 1, 2 | Approved, Approved, Approved, Approved, Approved, Approved | 185, 185, 185, 185, 185, 185 | HCPCS | HC |  |  |  |  |  | 0 |
| 08292017 | 2017-08-29T13:34:41+00:00 |  | 000032984-01 | LAWRENCE | FATHBRUCKNER | MOUNT CARMEL HLTH PRVDRS | 904820 | ANNE MARIE | BRINKMAN | 1912949991 | OSU OTOLARYNGOLOGISTS LL | 912050 | 1861449407 | MATTHEW OLD | 1699891242 | Out of Network Services | OONS | Pre-Service | PRE | MATTHEW | OLD | 09082017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08292017 | 10292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829020 | D72821 | Monocytosis (symptomatic) | ICD10 | 09082017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62 | HCPCS | HC | Called Kayleen Joneikis asked for clinical documentation for this request., LVMM to Tammy at Dr. Brinkmans office  740-953-4100  requested clinical information., VMM from members daughter  Tonya  740-369-2847. Not listed as ROI, She relayed that her father has been a patient of Dr. Old for a long time., She wanted to offer any clinical information that I needed to help get the auth processed.  , Researched claims and older auths. Member has been a patient of Dr. Old and an established patient of Dr. Old., RC to Tonya  did not release any HIPAA related information., Recommended that her parents call member services to complete ROI information., Did relay that I had everything I needed to process what she had called in about. |  |  |  |  | 0 |
| 09072017 | 2017-09-07T13:12:00+00:00 | Q19261778 | 000069583-01 | CLYDE | BILLINGSLEY | PRADEEP K PANDYA MD INC | 937272 | PRADEEP K | PANDYA | 1396721486 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09072017 | 10072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908072 | R310 | Gross hematuria | ICD10 | 09082017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09072017 | 2017-09-07T09:39:00+00:00 | Q19257671 | 000095233-01 | Roy | Arnett | MOUNT CARMEL HLTH PRVDRS | 937298 | SHAILESH R | PATEL | 1346235215 | TAYLOR STATION SURGICAL CENTER | 936507 | 1942231493 | TAYLOR STATION SURGICAL CENTER | 1942231493 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | TAYLOR STATION SURGICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09112017 | 11102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908052 | Z95810 | Presence of automatic (implantable) cardiac defibrillator | ICD10 | 09082017 | 33263, C1721 | CARDIOVERTER-DEFIBRILLATOR, DUAL CHAMBER (IMPLANTABLE) | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 09072017 | 2017-09-07T09:34:00+00:00 | Q19257562 | 000110010-01 | Robert | Robinson | LICKING MEM HLTH PROF | 941939 | EVEN F | WANG | 1871813691 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09152017 | 10152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908049 | M5416 | Radiculopathy, lumbar region | ICD10 | 09082017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
