Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-13
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-13
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
| 05162017 | 2017-05-16T10:11:11+00:00 | Q18415705 | 000103644-01 | LINDA | MOORE | SPRINGFIELD HEMATOLOGY & | 901547 | DALJEET | SINGH | 1598784092 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07132017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 11152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517095 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 07132017 | J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 20 | 20 | Approved | 181 | HCPCS | HC | J2469: 20 Aloxi 0.25mg day 1 q 21 days x 2 cycles (2 treatments).  Total billing units = 20 |  |  |  |  | 0 |
| 07102017 | 2017-07-10T10:45:39+00:00 |  | 000070376-01 | Thomas | Joyce | RCHP WILMINGTON LLC | 949038 | STEVEN A | WALSTON | 1053623397 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07112017 | 10112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710105 | C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 07132017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T12:19:25+00:00 |  | 000069585-01 | PAUL | VITTITOW | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 07102017 | 08102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710111 | Z23 | Encounter for immunization | ICD10 | 07132017 | 90471, 90472, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T13:38:43+00:00 |  | 000070205-01 | Marva | Booker | MOUNT CARMEL HLTH SYS | 946261 | SEAN E | LINDSEY | 1306147475 | OSU PATHOLOGY SRVS LLC | 916426 | 1538490966 | OSU PATHOLOGY SERVICES LLC | 1538490966 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU PATHOLOGY SERVICES LLC | 07132017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07132017 | 08132017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170711143 | D1039 | Benign neoplasm of other parts of mouth | ICD10 | 07132017 | 88312, 88305, 88346, 88342 | IMUNOCYTOCHEMISTRY EA ANTIBODY | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T11:55:07+00:00 | Q18844772 | 000058127-01 | SANDRA | ROBSON | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07242017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713010 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 07132017 | 71260, 74177, 70460 | COMP. TOMOG. HEAD WITH IV CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T15:27:45+00:00 | Q18829103 | 000027785-01 | ZACHARIAH | DEHART | MOUNT CARMEL HLTH PRVDRS | 909299 | PATRICIA C | GARCIA | 1184833436 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07122017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713017 | R270 | Ataxia, unspecified | ICD10 | 07132017 | 70551, 70549 | MR ANGIOGRAPH NECK W/O&W DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T15:35:20+00:00 | Q18831645 | 000007911-01 | JIM | EFTIMOFF | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07122017 | 01082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713018 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 07132017 | J9045, J1100, J2469, J9305 | INJECTION, PEMETREXED, 10 MG | HCPCS | 60, 320, 40, 400 | 60, 320, 40, 400 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9045: 60 Carboplatin AUC 5 (max 750 mg)  IV  day 1  every 21 days  4 cycles; J9305: 400 Pemetrexed 500 mg/m2  IV  day 1  every 21 days  4 cycles; J1100: 320 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  4 cycle(s); J2469: 40 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 07122017 | 2017-07-12T07:08:02+00:00 | Q18830657 | 000075520-01 | Dorian | Sealock | MARIETTA HLTH CARE PHYS | 945687 | WARNER | WANG | 1831358464 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 07132017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07252017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713032 | Z87891 | Personal history of nicotine dependence | ICD10 | 07132017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T14:25:36+00:00 | Q18836827 | 000116378-01 | Roger | Sigman | SEASTERN OH RGNL MED CTR | 923984 | NABIEL | ALKHOURI | 1497728489 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07132017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 08102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713066 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 07132017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T09:55:10+00:00 | Q18842384 | 000081635-01 | Wladyslaw | Piper | MOUNT CARMEL HLTH PRVDRS | 906705 | FAREED R | SHAIKH | 1609990779 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 09182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713086 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 07132017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T10:08:12+00:00 | Q18842663 | 000081594-01 | Barbara | Shirkey | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713090 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 07132017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T10:10:38+00:00 | Q18842739 | 000093513-01 | Susan | Lehman | LICKING MEM HLTH PROF | 903542 | MICHAEL D | BARTH | 1326046541 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07122017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713091 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 07132017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T08:11:03+00:00 | Q18840438 | 000100182-01 | BENNETT | WISE | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | JACK STANKO MD LLC | 902266 | 1194924431 | JACK STANKO MD LLC | 1194924431 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JACK STANKO MD LLC | 07132017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07142017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713109 | I25118 | Athscl heart disease of native cor art w oth ang pctrs | ICD10 | 07132017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T12:57:05+00:00 | Q18845929 | 000081387-01 | Barbara | Blackstone | MED HOME PRIMARY CARE CT | 924542 | JANELL M | POTTS | 1144239765 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 07132017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07122017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713119 | R945 | Abnormal results of liver function studies | ICD10 | 07132017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T12:27:23+00:00 | Q18845446 | 000095814-01 | Robert | Read | SOMC MED CARE FOUNDATION | 922226 | MUHAMMAD T | GILL | 1033323381 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 07132017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07182017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713136 | R55 | Syncope and collapse | ICD10 | 07132017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T12:28:46+00:00 | Q18845481 | 000087247-01 | Keith | Sheridan | RCHP WILMINGTON LLC | 901968 | MARK S | COLLINS | 1962451021 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 07132017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07312017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713137 | C6902 | Malignant neoplasm of left conjunctiva | ICD10 | 07132017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07132017 | 2017-07-13T09:26:30+00:00 |  | 000114300-01 | Sharen | Kensler | OSU INTERNAL MED LLC | 928059 | DAVID A | LIEBNER | 1174753537 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07132017 | Approved | MediGold Essential Care | Fax | Clinical Trial | Outpatient | 07122017 | 10122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170713141 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 07132017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 92565, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82040, 82075, 84460, 84450, 82248, 82247, 84155, 83735, 84100, 82150, 83690, 81001, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07062017 | 2017-07-06T09:10:26+00:00 |  | 000046868-01 | THOMAS | COCHENOUR | ADENA MEDICAL GROUP LLC | 902839 | CHRISTOPHER J | SKOCIK | 1104829126 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 07132017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 07132017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170706079 | J440 | Chronic obstructive pulmon disease w acute lower resp infct | ICD10 | 07132017 | K0823 | PWC gp 2 std cap chair | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
