Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-17
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-17
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
| 02202017 | 2017-02-20T10:16:48+00:00 | Q17781647 | 000085396-01 | Erwin | Sehlhorst | MERCY HEALTH PHYSICIANS | 920790 | MARK R | JENNINGS | 1578538955 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 05172017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02162017 | 03182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170220021 | R1031 | Right lower quadrant pain | ICD10 | 05172017 | 74177, 74176, 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 | Changed start date from 2/17 to 2/16/2017. |  |  |  |  | 0 |
| 05122017 | 2017-05-12T08:36:59+00:00 |  | 000048633-01 | SHARON | JAMES | OSU INTERNAL MED LLC | 928269 | BRENT C | LAMPERT | 1700024577 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05222017 | 06222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512119 | Z941 | Heart transplant status | ICD10 | 05172017 | 93306 | TTE W/DOPPLER, COMPLETE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 11102016 | 2016-11-10T13:46:23+00:00 | Q17096080 | 000028393-01 | SAMMY | JUNK | RADIOLOGY INC | 914289 | ABHAY S | GOKHALE | 1528371937 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11102016 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513014 | D320 | Benign neoplasm of cerebral meninges | ICD10 | 05172017 | 70553, 70553, 77373 | STEROTACTIC BODY RADIATION THERAPY TREATMENT DELIVERY PER FRACTION TO 1 | CPT | 0, 1, 1 | 1, 1, 1 | Void, Approved, Approved | 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T15:49:42+00:00 |  | 000057876-01 | BEVERLY | LITTLE | MOUNT CARMEL HLTH SYS | 944092 | BRITTON D | RINK | 1811034242 | AMBRY GENETICS CORPORATION | 929192 | 1861568784 | AMBRY GENETICS CORPORATION | 1861568784 | Genetic Testing | OP GEN | Pre-Service | PRE |  | AMBRY GENETICS CORPORATION | 05172017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04182017 | 07182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513039 | C189, Z803, Z8041 | Family history of malignant neoplasm of ovary | ICD10 | 05172017 | 81292, 81295, 81298 | MSH6 GENE FULL SEQ | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T12:16:56+00:00 | Q18433836 | 000039132-01 | OLIVER | PIGG | ALLIANCE PHYSICIANS INC | 913319 | GREGORY A | GORDON | 1518917301 | GRANDVIEW HOSPITAL & SOU | 902690 | 1053339507 | SOUTHVIEW MEDICAL CENTER | 0 | Radiology (HH) | OP RAD | Initial Review | INIT |  | SOUTHVIEW MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 08152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170516114 | C61 | Malignant neoplasm of prostate | ICD10 | 05172017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 4 | 4 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T12:57:48+00:00 | Q18438838 | 000108971-01 | Mildred | Wolfskill | CEN OH UROLOGY GRP INC | 937030 | RICHARD | KLUMP | 1114971512 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 05172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517016 | R310 | Gross hematuria | ICD10 | 05172017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T11:15:56+00:00 | Q18433002 | 000074256-01 | David | Hoffer | COSHOCTON COUNTY MEM HSP | 913615 | DUANE P | POOL | 1073599031 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 05172017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517025 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05172017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T09:20:29+00:00 | Q18434433 | 000043818-01 | DAVID | SERIO | MOUNT CARMEL HLTH PRVDRS | 945630 | STACIE | CARRUTH | 1578920815 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517037 | R0789 | Other chest pain | ICD10 | 05172017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T10:02:05+00:00 | Q18435163 | 000111463-01 | BARBARA | FLOYD | SOMC MED CARE FOUNDATION | 902851 | ELIE M | SAAB | 1447218169 | SOUTHERN OH MEDICAL CTR | 936402 | 1053342816 | SOUTHERN OHIO MEDICAL CENTER | 1053342816 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHERN OHIO MEDICAL CENTER | 05172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517042 | R911 | Solitary pulmonary nodule | ICD10 | 05172017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T10:20:10+00:00 | Q18435787 | 000113013-01 | Donald | Lewis | SPFLD ORTHO SPORTS MED L | 927402 | KEVIN C | ZARTMAN | 1710173885 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517046 | M19071 | Primary osteoarthritis, right ankle and foot | ICD10 | 05172017 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T10:39:57+00:00 | Q18436210 | 000016136-01 | LORETTA | WIRTH | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 05172017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517048 | R1907 | Generalized intra-abd and pelvic swelling, mass and lump | ICD10 | 05172017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T14:41:52+00:00 | Q18430149 | 000102193-01 | Clarence | Estridge Jr | MERCY HEALTH PHYSICIANS | 930374 | AARTI A | SINGLA | 1063555639 | FORT HAMILTON HOSPITAL | 926711 | 1104867167 | FORT HAMILTON HOSPITAL | 1063447167 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FORT HAMILTON HOSPITAL | 05172017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517056 | M47816 | Spondylosis w/o myelopathy or radiculopathy, lumbar region | ICD10 | 05172017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T16:38:25+00:00 | Q18426489 | 000026013-01 | GOLDIE | EDMONDS | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | BRUCE L AUERBACH MD LLC | 902501 | 1770787723 | BRUCE L AUERBACH MD LLC | 1770787723 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BRUCE L AUERBACH MD LLC | 05172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517072 | R072 | Precordial pain | ICD10 | 05172017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T16:32:48+00:00 |  | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05172017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05242017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517090 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 05172017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T15:59:21+00:00 | Q18414993 | 000088418-01 | Samuel | Watters | TAJ MEDICAL INC | 907161 | ASHFAQ T | AHMED | 1578565214 | TAJ MEDICAL INC | 902712 | 1811914765 | TAJ MEDICAL INC | 1811914765 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | TAJ MEDICAL INC | 05172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05132017 | 06122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517091 | I255 | Ischemic cardiomyopathy | ICD10 | 05172017 | 78472 | BL PL IMG,REST,WAL MTN SDY/REG EJ F | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T10:00:28+00:00 | Q18415385 | 000103644-01 | LINDA | MOORE | SPRINGFIELD HEMATOLOGY & | 901547 | DALJEET | SINGH | 1598784092 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 05172017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517092 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 05172017 | J9045 | CARBOPLATIN, 50 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC | J9045: 24 Carboplatin 600mg IV day 1 Q21 days x 2 cycles (2 treatments).  Total billing units = 24 |  |  |  |  | 0 |
| 05162017 | 2017-05-16T10:02:24+00:00 | Q18415492 | 000103644-01 | LINDA | MOORE | SPRINGFIELD HEMATOLOGY & | 901547 | DALJEET | SINGH | 1598784092 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 05172017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517093 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 05172017 | J9267 | PACLITAXEL INJECTION | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC | J9267: 600 Taxol 300mg IV day 1 q 21 x 2 cycles (2 treatments).  Total billing units = 600 |  |  |  |  | 0 |
| 05162017 | 2017-05-16T10:10:06+00:00 | Q18415577 | 000103644-01 | LINDA | MOORE | SPRINGFIELD HEMATOLOGY & | 901547 | DALJEET | SINGH | 1598784092 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 05172017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517094 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 05172017 | J1453 | Fosaprepitant injection | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC | J1453: 300 Emend 150 mg day  1 q 21 days x 2 cycles (2 treatments).  Total billing units = 300 |  |  |  |  | 0 |
| 05162017 | 2017-05-16T10:11:11+00:00 | Q18415705 | 000103644-01 | LINDA | MOORE | SPRINGFIELD HEMATOLOGY & | 901547 | DALJEET | SINGH | 1598784092 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 05172017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517095 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 05172017 | J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC | J2469: 20 Aloxi 0.25mg day 1 q 21 days x 2 cycles (2 treatments).  Total billing units = 20 |  |  |  |  | 0 |
| 05162017 | 2017-05-16T16:02:25+00:00 |  | 000103842-01 | Geraldine | Woodring | ADENA MEDICAL GROUP LLC | 922384 | JAYA | THAKUR | 1457589277 | HENDERSON PHARMACY SERVICES INC | 903207 | 1962570945 | HENDERSON PHARMACY SERVICES INC | 1962570945 | DME | DME | Pre-Service | PRE |  | HENDERSON PHARMACY SERVICES INC | 05172017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517102 | C50112 | Malignant neoplasm of central portion of left female breast | ICD10 | 05172017 | L8000, L8030 | BREAST PROSTHESIS, SILICONE OR EQUAL | HCPCS | 3, 1 | 3, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T08:39:11+00:00 |  | 000053825-01 | JAMES | JUNE | NEUROSCIENCE CENTER | 911553 | ARIANE | PARK | 1093977431 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05172017 | 06172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517110 | G250 | Essential tremor | ICD10 | 05172017 | 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T11:02:00+00:00 |  | 000109475-01 | Myron | Calendine | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Clinical Trial | TRIAL | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 05172017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 05082017 | 08082017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517119 | C450 | Mesothelioma of pleura | ICD10 | 05172017 | 99215, 99205 | OFFICE CALL - NEW PATIENT | CPT | 10, 1 | 10, 1 | Approved, Approved | 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T15:15:15+00:00 | Q18450265 | 000117833-01 | George | Hammock | THE UROLOGY GROUP | 921693 | MARK G | DELWORTH | 1275579856 | THE UROLOGY GROUP | 922524 | 1568404846 | THE UROLOGY GROUP | 1568404846 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | THE UROLOGY GROUP | 05172017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 08152017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517133 | C61 | Malignant neoplasm of prostate | ICD10 | 05172017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T15:16:59+00:00 | Q18450697 | 000106462-01 | Louise E | Cooper | DAYTON PHYSICIANS LLC | 908901 | BURHAN | YANES | 1275572869 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 05172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 08152017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517136 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 05172017 | J9299 | INJECTION, NIVOLUMAB | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T14:56:49+00:00 |  | 000096883-01 | LLOYD | REED | COLON & RECTAL DISEASE C | 923302 | MAHENDRA | MATTA | 1518936814 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA HOSPITAL INC | 1396714663 | Out of Network Services | OONS | Pre-Service | PRE |  | BETHESDA HOSPITAL INC | 05172017 | Denied | MediGold Southwest OH Essential Care | Fax | Services Available In-Network | Outpatient | 05172017 | 05182017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170511152 | Z1211 | Encounter for screening for malignant neoplasm of colon | ICD10 | 05172017 | 45385, 45380, 45378 | COLONOSCOPY PAST SPL FLEX-DIAG. | CPT | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05162017 | 2017-05-16T08:18:00+00:00 |  | 000011660-01 | FOLLET | LEE | OSU SURGERY LLC | 946941 | DESMOND M | DSOUZA | 1841472842 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05172017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 05172017 | 05182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170516104 | R911 | Solitary pulmonary nodule | ICD10 | 05172017 | 32405, 77012, 93351, 94010, 94060, 94240, 94260, 94720 | CARBON MONOXIDE DIFFUSING CAPACITY | CPT | 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
