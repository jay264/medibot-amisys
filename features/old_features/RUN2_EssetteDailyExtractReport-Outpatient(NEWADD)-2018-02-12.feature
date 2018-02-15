Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-12
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-12
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
| 02062018 | 2018-02-06T12:07:26+00:00 |  | 000029591-01 | RICHARD | SHUPE | OH STATE PAIN MGMT CTR I | 907497 | SACHIDA | MANOCHA | 1821036435 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Predetermination Request | PR | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 02122018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 02122018 | 02132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180206117 | G588, R102 | Pelvic and perineal pain | ICD10 | 02122018 | 63650, 95972, 63685, L8687 | IMPLANTABLE NEUROSTIMULATOR PULSE GENERATOR, DUAL ARRAY, REC | HCPCS | 0, 0, 0, 0 | 2, 1, 1, 1 | Denied, Denied, Denied, Denied | 0, 0, 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 01252018 | 2018-01-25T11:22:04+00:00 |  | 000040515-01 | ERNEST | YOUNG | 41 GULF COAST KIDNEY ASS | 939792 | JANIS S | LAWRENCE-JACKS | 1063640126 | FRESENIUS SARASOTA | 941742 | 1578963211 | FRESENIUS MEDICAL CARE SARASOTA | 1578963211 | Out of Network Services | OONS | Pre-Service | PRE |  | FRESENIUS MEDICAL CARE SARASOTA | 02122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01252018 | 04252018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125127 | N186 | End stage renal disease | ICD10 | 02122018 | 90937, 90999, 90960, 90961, 90962, 90970 | ESRD HOME PT SERV P DAY, 20+ | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T11:34:34+00:00 |  | 000082199-01 | Paul | Brill | DENTAL FACULTY PRACTICE | 909908 | MEADE C | VANPUTTEN | 1407906712 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02122018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02222018 | 05222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212095 | C139 | Malignant neoplasm of hypopharynx, unspecified | ICD10 | 02122018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 97026, 97597 | ACTIVE WOUND CARE/20 CM OR < | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T14:22:24+00:00 | Q20364436 | 000070746-01 | Myrna | Ventress | MOIN A RANGINWALA MD INC | 902304 |  | MOIN A RANGINWALA MD INC | 1073635587 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02162018 | 03182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212018 | J189 | Pneumonia, unspecified organism | ICD10 | 02122018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T14:56:20+00:00 | Q20365133 | 000108171-01 | Joanne | Schiller | CARDIOLOGISTS OF C&CC IN | 904146 | SAGAR S | SATYAVOLU | 1699775270 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02082018 | 03102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212021 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 02122018 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T15:22:30+00:00 | Q20365743 | 000089362-01 | Glenna | Perry | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL HLTH PRVDRS | 952415 | 1134154750 | JEFFREY L GRESH | 1104891639 | Radiology (HH) | OP RAD | Pre-Service | PRE | JEFFREY L | GRESH | 02082018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02272018 | 03292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212022 | S065X0D | Traum subdr hem w/o loss of consciousness, subs | ICD10 | 02122018 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T09:27:18+00:00 | Q20369378 | 000053754-01 | LOIS | MOORE | ADENA MEDICAL GROUP LLC | 931862 | WILLIAM A | WILSON | 1619101086 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02132018 | 03152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212050 | K769 | Liver disease, unspecified | ICD10 | 02122018 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T09:55:27+00:00 | Q20369801 | 000091537-01 | John | Rorabaugh | CEN OH PRIMARY CARE SPEC | 936587 | DOUGLAS D | FOSSELMAN | 1679556229 | COPC CENTRAL OHIO PRIMAR | 948084 | 1194705194 | SVETLANA NOVAK | 1598008179 | Radiology (HH) | OP RAD | Pre-Service | PRE | SVETLANA | NOVAK | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212053 | K420 | Umbilical hernia with obstruction, without gangrene | ICD10 | 02122018 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T10:51:26+00:00 | Q20370964 | 000062875-01 | DONNA | KEATON | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212061 | R1012 | Left upper quadrant pain | ICD10 | 02122018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T11:02:36+00:00 | Q20371218 | 000101758-01 | HORACE | SINGLETON | MIAMI VALLEY HSPISTS GRP | 903755 | JOSEPH R | SEE | 1649226085 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212063 | C61 | Malignant neoplasm of prostate | ICD10 | 02122018 | 71250, 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T11:24:11+00:00 | Q20371611 | 000071827-01 | ELLARIE | WILSON | ALLIANCE PHYSICIANS INC | 939959 | BEKA L | ABRAHAM | 1326183773 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212064 | M25562 | Pain in left knee | ICD10 | 02122018 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T11:18:00+00:00 | Q20371920 | 000054327-01 | JOYCE | MAYNARD | MOUNT CARMEL HLTH PRVDRS | 907033 | PATRINA V | YAO | 1578719639 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212065 | R51 | Headache | ICD10 | 02122018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T11:55:53+00:00 | Q20372243 | 000091468-01 | Lowell | Gray | TAJ MEDICAL INC | 907161 | ASHFAQ T | AHMED | 1578565214 | TAJ MEDICAL INC | 907161 | 1811914765 | ASHFAQ T AHMED | 1578565214 | Radiology (HH) | OP RAD | Pre-Service | PRE | ASHFAQ T | AHMED | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02132018 | 03152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212066 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 02122018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T12:03:08+00:00 | Q20372312 | 000039181-01 | KENNETH | SIDERS | UNION COUNTY PHYS CORP | 932727 | ADAM D | BARKER | 1225203896 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MEMORIAL HOSPITAL OF UNION COUNTY | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02122018 | 03142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212067 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 02122018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T12:14:19+00:00 | Q20372490 | 000006729-01 | CHARLES | STEVERS | CARDIO TERRA, LTD | 935087 | JERRY J | BOLEY | 1962465435 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02122018 | 03142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212068 | R911 | Solitary pulmonary nodule | ICD10 | 02122018 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T12:14:26+00:00 | Q20372508 | 000119538-01 | Rosa | Estep | RANGANATHAN, VADAK H | 905298 | VADAK H | RANGANATHAN | 1992773212 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02132018 | 03152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212069 | I671 | Cerebral aneurysm, nonruptured | ICD10 | 02122018 | 70551, 70544 | MR ANGIOGRAPHY HEAD W/O DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T12:14:26+00:00 | Q20372508 | 000119538-01 | Rosa | Estep | RANGANATHAN, VADAK H | 905298 | VADAK H | RANGANATHAN | 1992773212 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02132018 | 03152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212069 | I671 | Cerebral aneurysm, nonruptured | ICD10 | 02122018 | 70551, 70544 | MR ANGIOGRAPHY HEAD W/O DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T12:28:51+00:00 | Q20372734 | 000098945-01 | Ina | Curtis | ALLIANCE PHYSICIANS INC | 901968 | MARK S | COLLINS | 1962451021 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02142018 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212070 | Z853 | Personal history of malignant neoplasm of breast | ICD10 | 02122018 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T12:34:16+00:00 | Q20372862 | 000116298-01 | DONITA | TOTH | MOUNT CARMEL HLTH PRVDRS | 909299 | PATRICIA C | GARCIA | 1184833436 | EAST BROAD ADULT URG CAR | 934847 | 1184602484 | MARK A SMITH | 1184602484 | Radiology (HH) | OP RAD | Pre-Service | PRE | MARK A | SMITH | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02122018 | 03142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212071 | M4850XA | Collapsed vertebra, NEC, site unsp, init | ICD10 | 02122018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T12:57:05+00:00 | Q20373188 | 000041302-01 | WILLIAM | DEARTH | MOUNT CARMEL HLTH SYS | 925995 | JEFFREY R | BACKES | 1457689101 | CENTRAL OHIO SURG ASSOC | 947112 | 1780994970 | CHARLES H DABBS | 1992020598 | Radiology (HH) | OP RAD | Pre-Service | PRE | CHARLES H | DABBS | 02092018 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212072 | M25511 | Pain in right shoulder | ICD10 | 02122018 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T12:54:00+00:00 | Q20373339 | 000072486-01 | PATRICIA | ELLIOTT | MOUNT CARMEL EAST PHYS | 917803 | CAROL E | GARWOOD | 1598044737 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 04102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212073 | I2720 | I2720 | ICD10 | 02122018 | 93451 | RIGHT HEART CATH | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T13:31:48+00:00 | Q20373780 | 000003615-01 | AHARON | GANON | MOUNT CARMEL HLTH PRVDRS | 935805 | MARC L | CARROLL | 1639131329 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212074 | R634 | Abnormal weight loss | ICD10 | 02122018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T13:40:31+00:00 | Q20373952 | 000044640-01 | DEAN | EUCKER | CARDIOVASCULAR SPEC LLC | 925351 | MOBUSHER | MAHMUD | 1558466227 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02082018 | 04092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212076 | I351 | Nonrheumatic aortic (valve) insufficiency | ICD10 | 02122018 | 93459 | L HRT ART/GRFT ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T13:48:26+00:00 | Q20374103 | 000082837-01 | Karen | Monroe | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212078 | M75111 | Incomplete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 02122018 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T13:52:42+00:00 | Q20374182 | 000070410-01 | Marjorie | Kleer | KNOX COMMUNITY HOSP GRP | 920510 | TAMMY A | JOSEPH | 1538475181 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02142018 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212079 | C50919 | Malignant neoplasm of unsp site of unspecified female breast | ICD10 | 02122018 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T13:55:28+00:00 | Q20374253 | 000099687-01 | Judith | Gibson | CANYON MEDICAL CENTER | 919993 | MICHELE L | ALTHOUSE | 1831483643 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212080 | R109 | Unspecified abdominal pain | ICD10 | 02122018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T13:53:41+00:00 | Q20374259 | 000091396-01 | Paul | Price | OH INSTITUTE OF CARDIAC | 900957 | SALIM O | DAHDAH | 1982608790 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02122018 | 03142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212081 | R55 | Syncope and collapse | ICD10 | 02122018 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
