Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-20
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-20
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
| 11162017 | 2017-11-16T15:01:00+00:00 | Q19797997 | 000102847-01 | Warren | Tomlin Jr | FAIRFIELD HLTHCARE PROFS | 919094 | ROOPA S | SRIKANTIAH-SAH | 1396856191 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 11202017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11162017 | 05152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120011 | C187 | Malignant neoplasm of sigmoid colon | ICD10 | 11202017 | J0640, J1100, J2469, J9190, J9035 | INJECTION, BEVACIZUMAB, 10 MG | HCPCS | 216, 960, 120, 144, 912 | 216, 960, 120, 144, 912 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC | J0640: 216: INJECTION  LEUCOVORIN CALCIUM  PER 50 MG  Dispensed as: 900.00 mg  1 treatment(s) each cycle  12 cycle(s): J9190: 144: INJECTION  FLUOROURACIL  500 MG  Dispensed as: 5900.00 mg  1 treatment(s) each cycle  12 cycle(s): J9035: 912: INJECTION  BEVACIZUMAB  10 MG  Dispensed as: 755.00 mg  1 treatment(s) each cycle  12 cycle(s): J1100: 960: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  12 cycle(s): J2469: 120: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 11172017 | 2017-11-17T12:17:23+00:00 | Q19804121 | 000111208-01 | Kelly | Elkins | CEN OH UROLOGY GRP INC | 908504 | WILLIAM E | BLOCH | 1023013505 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 11202017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11202017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120026 | N200 | Calculus of kidney | ICD10 | 11202017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T12:55:18+00:00 | Q19804756 | 000044977-01 | WERNER | SPIELBERGER | COPC CENTRAL OHIO PRIMAR | 936840 | MELISSA D | HARRIS | 1841267812 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 11202017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 11202017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120030 | M545 | Low back pain | ICD10 | 11202017 | 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T13:30:10+00:00 | Q19795047 | 000052347-01 | LINDA | GEHRING | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 11202017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11292017 | 05282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120039 | C50419 | Malig neoplasm of upper-outer quadrant of unsp female breast | ICD10 | 11202017 | J0897 | Denosumab injection | HCPCS | 720 | 720 | Approved | 181 | HCPCS | HC | J0897: 720: Denosumab 120 mg  SQ  day 1  every 28 days  6 cycles |  |  |  |  | 0 |
| 11092017 | 2017-11-09T08:32:08+00:00 |  | 000117158-01 | RALPH | COOK | ROTECH | 926720 |  | ROTECH | 1508837659 | ROTECH | 926720 | 1508837659 | ROTECH | 1508837659 | DME | DME | Pre-Service | PRE |  | ROTECH | 11202017 | Denied | MediGold Southwest OH Essential Care | Fax | Services Available In-Network | Outpatient | 11202017 | 11212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171109070 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 11202017 | A7035, A7037, A7038, A7039, A7030, A7031 | FACE MASK INTERFACE, REPLACEMENT FOR FULL FACE MASK, EACH | HCPCS | 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 11172017 | 2017-11-17T08:32:48+00:00 | Q19799837 | 000093370-01 | Dianne | Spivey | THE UROLOGY GROUP | 921457 | KEVIN G | CAMPBELL | 1700820776 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 11202017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11172017 | 12172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120072 | N1330 | Unspecified hydronephrosis | ICD10 | 11202017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T06:01:32+00:00 | Q19798923 | 000116022-01 | Christine | Geralds | MERCY HEALTH PHYSICIANS | 948582 | PATRICIA K | ADAMS | 1407237167 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 11202017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 11202017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120081 | M48061 | M48061 | ICD10 | 11202017 | 72133 | CAT SCAN LUMBAR SPINE W/WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T15:07:23+00:00 | Q19797108 | 000090560-01 | Robert | Hultgren | GENESIS MEDICAL GRP LLC | 932257 | TISHA N | ARCHER | 1194138370 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 11202017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11232017 | 12232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120092 | R937 | Abnormal findings on diagnostic imaging of prt ms sys | ICD10 | 11202017 | 72146 | MRI, SPINAL CANAL AND CONTENTS, THORACIC; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T14:26:00+00:00 | Q19796584 | 000082140-01 | Nancy | Daily | VISITING PODIATRY | 928761 | DARRELL F | BALLINGER | 1285952937 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11202017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11162017 | 12162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120113 | G5762 | Lesion of plantar nerve, left lower limb | ICD10 | 11202017 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T12:35:58+00:00 | Q19793979 | 000089412-01 | Elizabeth | Coffelt | MERCY HEALTH PHYSICIANS | 904113 | FAIQ S | AKHTER | 1801896303 | MERCY HEALTH PHYSICIANS | 911477 | 1205887023 | MERCY HEALTH PHYSICIANS CINCINNATI L | 1205887023 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HEALTH PHYSICIANS CINCINNATI L | 11202017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11162017 | 12162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120123 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 11202017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11092017 | 2017-11-09T12:10:56+00:00 |  | 000083297-01 | Wanda | Stevens | FAIRFIELD HLTHCARE PROFS | 910849 | JEREMY W | BUCKLEY | 1720106248 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 11202017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11032017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171109154 | R002 | Palpitations | ICD10 | 11202017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 59 | CPT | C4 |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T09:04:28+00:00 | Q19789933 | 000091590-01 | Gary | Henderson | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 11202017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11162017 | 05152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117056 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 11202017 | J0897 | Denosumab injection | HCPCS | 960 | 960 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T10:25:00+00:00 | Q19791645 | 000116839-01 | Jerome | Thibaut | PRADEEP K PANDYA MD INC | 937272 | PRADEEP K | PANDYA | 1396721486 | PRADEEP K PANDYA MD INC | 937272 | 1225347131 | PRADEEP K PANDYA | 1396721486 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | PRADEEP K | PANDYA | 11202017 | Approved | Flexible Choice PPO |  | Medical Criteria Met | Outpatient | 12112017 | 06092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117073 | C670 | Malignant neoplasm of trigone of bladder | ICD10 | 11202017 | J9031 | BCG (INTRAVESICAL) PER INSTALLATION | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T16:42:06+00:00 |  | 000100534-01 | Douglas | Ritchey | CONCORD PSYCHIATRY LLC | 943674 | SCOTT D | YOHO | 1821380809 | CONCORD PSYCHIATRY LLC | 943674 | 1134508260 | SCOTT D YOHO | 1821380809 | OP Behavioral Health | OP BH | Pre-Service | PRE | SCOTT D | YOHO | 11202017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 11272017 | 12272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117114 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 11202017 | 99204 | OFFICE CALL - NEW PATIENT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T09:12:14+00:00 | Q19800556 | 000075205-01 | Fred | Hahn | COSHOCTON COUNTY MEM HSP | 945722 | AHMED A | HABIB | 1447230859 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | COSHOCTON REGIONAL MEDICAL CENTER | 11202017 | Approved | MediGold Southeast OH Classic Preferred |  | Medical Criteria Met | Outpatient | 11202017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120055 | I480 | Paroxysmal atrial fibrillation | ICD10 | 11202017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T15:02:10+00:00 | Q19797045 | 000018569-01 | Charles | Dodge | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | HEMATOLOGY ONCOLOGY CONS | 938154 | 1780793901 | HEMATOLOGY ONCOLOGY CONSULTANT | 1780793901 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | HEMATOLOGY ONCOLOGY CONSULTANT | 11202017 | Approved | MediGold Essential Care |  | Medical Criteria Met | Outpatient | 11292017 | 05282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120091 | C61 | Malignant neoplasm of prostate | ICD10 | 11202017 | J0897 | Denosumab injection | HCPCS | 720 | 720 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 11142017 | 2017-11-14T10:07:00+00:00 |  | 000100569-01 | Daniel | Belcher | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | THE VINEYARDS AT CONCORD | 928631 | 1104905173 | THE VINEYARDS AT CONCORD | 1104905173 | Part B Therapy | OP THER | Pre-Service | PRE |  | THE VINEYARDS AT CONCORD | 11202017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11142017 | 12212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114162 | G20, R293, R2990, R2991, F3289 | OTHER SPECIFIED DEPRESSIVE EPISODES | ICD10 | 11202017 | 97116, 97110, 97112, 97530, 97535, 97530, 97532 | COGNITIVE SKILLS DEVELOPMENT | CPT | 16, 16, 16, 16, 16, 16, 16 | 16, 16, 16, 16, 16, 16, 16 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 38, 38, 38, 38, 38, 38, 38 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T12:29:00+00:00 | Q19804561 | 000046036-01 | JAMES | WALKER | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11202017 | Approved | MediGold Classic Preferred | HealthHelp | Services Not Available In-Network | Outpatient | 11272017 | 12272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120134 | J387 | Other diseases of larynx | ICD10 | 11202017 | 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T12:52:00+00:00 | Q19783695 | 000095811-01 | Gary | Conley | TRI-COUNTY UROLOGY | 902803 | SHARAT C | KALVAKOTA | 1457433831 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 11202017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11172017 | 12172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120139 | R9720 | ELEVATED PROSTATE SPECIFIC ANTIGEN [PSA] | ICD10 | 11202017 | 72195 | MRI PELVIS W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
