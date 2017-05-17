Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-15
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-15
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
| 03232017 | 2017-03-23T11:14:39+00:00 | Q18024979 | 000090505-01 | Thomas | Collins II | MARIETTA MEM HSP | 933767 | JEREMY W | WATERS | 1043536261 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 05152017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324006 | G44009, M542 | Cervicalgia | ICD10 | 05152017 | 70460, 72125 | CAT SCAN CERVICAL SPINE WO CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04202017 | 2017-04-20T14:47:12+00:00 | Q18249540 | 000066068-01 | SHARON | BAYLESS | ADENA MEDICAL GROUP LLC | 917808 | STACEY L | LLOYD | 1265740872 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 05152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170423024 | R042 | Hemoptysis | ICD10 | 05152017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02162017 | 2017-02-16T17:08:19+00:00 | Q17740026 | 000101118-01 | Floyd | Boyd | NEUROLOGY DIAGNOSTICS IN | 901098 | JOEL | VANDERSLUIS | 1114922390 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05152017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 02132017 | 03152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503077 | G5631 | Lesion of radial nerve, right upper limb | ICD10 | 05152017 | 70551, 70544 | MR ANGIOGRAPHY HEAD W/O DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T10:32:11+00:00 |  | 000053825-01 | JAMES | JUNE | NEUROSCIENCE CENTER | 911553 | ARIANE | PARK | 1093977431 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05042017 | 08042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504172 | G243 | Spasmodic torticollis | ICD10 | 05152017 | J0585, 64616 | CHEMODENERV MUSC NECK DYSTON | CPT | 300, 1 | 300, 1 | Approved, Approved | 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T09:27:03+00:00 |  | 000083597-01 | Stanley | Dudek | MERCY HEALTH PHYSICIANS | 921410 | CHRISTOPHER J | MEIER | 1730178401 | JOHN G QUINLAN MD | 950859 | 1508893637 | JOHN G QUINLAN | 1508893637 | Out of Network Services | OONS | Pre-Service | PRE | JOHN G | QUINLAN | 05152017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 05082017 | 08082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170508018 | R269, R270 | Ataxia, unspecified | ICD10 | 05152017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T15:56:18+00:00 |  | 000057684-01 | DENNIS | HARVEY | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05172017 | 07172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170508151 | C089 | Malignant neoplasm of major salivary gland, unspecified | ICD10 | 05152017 | 42415, 38724, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T07:58:43+00:00 | Q18326111 | 000086216-01 | Dennis | Inlow | MOUNT CARMEL HLTH PRVDRS | 904421 | MARIA C | COURSER | 1275544611 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05152017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05022017 | 06012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509025 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 05152017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05092017 | 2017-05-09T13:22:30+00:00 |  | 000083518-01 | Rose | Dorsey | OSU UROLOGY LLC | 913349 | GEOFFREY N | BOX | 1871509406 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05152017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 05252017 | 07252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509149 | C7A8, C7B8, N1330 | Unspecified hydronephrosis | ICD10 | 05152017 | 52005, 52332, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 0 | 1, 1, 1 | Approved, Approved, Void | 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 05092017 | 2017-05-09T15:22:07+00:00 |  | 000114511-01 | Joyce | Althoff | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05302017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509166 | K7469 | Other cirrhosis of liver | ICD10 | 05152017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05052017 | 2017-05-05T08:23:38+00:00 | Q18359269 | 000114748-01 | Debra | Tepper | ALLIANCE PHYSICIANS INC | 913338 | PRIYA G | JAIN | 1912093360 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 05152017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 05052017 | 06042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511002 | C50112 | Malignant neoplasm of central portion of left female breast | ICD10 | 05152017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T09:25:34+00:00 | Q18392720 | 000105308-01 | William | Rhoads Jr | ADENA MEDICAL GROUP LLC | 906248 | AARON M | ROBERTS | 1114105715 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 05152017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511003 | M25511 | Pain in right shoulder | ICD10 | 05152017 | 73221, 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T16:09:12+00:00 |  | 000115209-01 | Stephen Douglas | Matson | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05152017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05112017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511141 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 05152017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T15:42:32+00:00 |  | 000068645-01 | WILLIS | YOAKUM | OSU OTOLARYNGOLOGISTS LL | 907556 | BRAD W | DESILVA | 1467494401 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05152017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05242017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511151 | C3492, R1319, R499 | Unspecified voice and resonance disorder | ICD10 | 05152017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 92597, 31579, 31575, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 1, 3, 1, 1, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 1, 3, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T15:46:56+00:00 |  | 000086130-01 | Burton | Miller | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05152017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05112017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511154 | C8330 | Diffuse large B-cell lymphoma, unspecified site | ICD10 | 05152017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 3 | 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T07:53:17+00:00 |  | 000114558-01 | ROBERT | MOSEL | MID OH ONCOLOGY HEMATOLO | 937410 | ROBERT | RUPERT | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05152017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05312017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511169 | C329, D380, J387 | Other diseases of larynx | ICD10 | 05152017 | 99211, 99212, 99213, 99214, 99215, 83735, 80053, 85025, 82565, 84520, 82374, 82435, 84295, 84132, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T08:16:30+00:00 |  | 000044800-01 | LARRY | DAVIS | OSU SURGERY LLC | 930984 | RAPHAEL E | POLLOCK | 1083719694 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05152017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05122017 | 08122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512101 | C413 | Malignant neoplasm of ribs, sternum and clavicle | ICD10 | 05152017 | 76604, 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T10:42:12+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05152017 | Approved | MediGold Southeast OH Essential Care | Fax | Transplant Evaluation | Outpatient | 05132017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512133 | D7581 | Myelofibrosis | ICD10 | 05152017 | 38204, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10102016 | 2016-10-10T11:24:18+00:00 | Q16842274 | 000093639-01 | Pauline | Jackson | RADIOLOGY INC | 943494 | JOHN A | MASINO | 1659674083 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10132016 | 01112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513020 | C50212 | Malig neoplasm of upper-inner quadrant of left female breast | ICD10 | 05152017 | 77412 | RADIATION TREATMENT DELIVERY; UP TO 5 MEV; TECH ONLY | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T12:58:17+00:00 | Q18175172 | 000048506-01 | ETHEL | FAIRCHILD | OHIO ENT & ALLERGY PHYSI | 934941 | EVAN J | TOBIN | 1588636989 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513026 | R1313 | Dysphagia, pharyngeal phase | ICD10 | 05152017 | 71260, 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T11:20:18+00:00 | Q18372800 | 000034115-01 | JAMES | ALBERT | OH ONCOLOGY & HEMATOLOGY | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515002 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 05152017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T15:12:48+00:00 | Q18379787 | 000095014-01 | Paul | Dattilo | FAIRFIELD HLTHCARE PROFS | 935249 | JUDITH L | BRATTON | 1447236302 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05152017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515003 | M542 | Cervicalgia | ICD10 | 05152017 | 70553, 72156 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST MORE SEQUENCES;CERVICAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T12:35:31+00:00 | Q18417713 | 000107519-01 | Betty | Baker-Barnett | DAYTON PHYSICIANS LLC | 908833 | MARK A | MARINELLA | 1801888482 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 05152017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05122017 | 06112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515005 | C8334 | Diffuse large B-cell lymph, nodes of axilla and upper limb | ICD10 | 05152017 | 74176, 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T14:03:39+00:00 | Q18409072 | 000048384-01 | THEODORE | TAYLOR | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515007 | C4359 | Malignant melanoma of other part of trunk | ICD10 | 05152017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T09:20:32+00:00 | Q18414023 | 000043752-01 | BILLY | PROFFIT | LICKING MEM HLTH PROF | 910574 | SUELLYWN | STEWART | 1679536932 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 05152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05252017 | 06242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515012 | F17210 | Nicotine dependence, cigarettes, uncomplicated | ICD10 | 05152017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T09:25:50+00:00 | Q18414231 | 000042454-01 | DONALD | PETTITT | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05122017 | 06112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515015 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 05152017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T09:37:01+00:00 | Q18414436 | 000056956-01 | PAUL | BEERY | MOUNT CARMEL HLTH PRVDRS | 934938 | FRANK D | TICE IV | 1639131501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05122017 | 06112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515017 | I200 | Unstable angina | ICD10 | 05152017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T10:26:15+00:00 | Q18381624 | 000030490-01 | WALTER | JINKS | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 07302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515022 | R079 | Chest pain, unspecified | ICD10 | 05152017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T14:53:05+00:00 | Q18410116 | 000101920-01 | Brenda | Barnett | JAMES P JOHNSTON DO INC | 922037 | JAMES P | JOHNSTON | 1922095264 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 05152017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515030 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 05152017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T16:04:08+00:00 | Q18411475 | 000028978-01 | BETTYE | PENDLETON | ORTHOPEDIC ONE INC | 927311 | DAVID M | WITTER | 1518992510 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 05152017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 05122017 | 06112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515034 | M5416 | Radiculopathy, lumbar region | ICD10 | 05152017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T08:06:54+00:00 | Q18412945 | 000091705-01 | Mae | Roser | OH INSTITUTE OF CARDIAC | 900957 | SALIM O | DAHDAH | 1982608790 | CRYSTAL CLEAR IMAGING | 937806 | 1346220662 | CRYSTAL CLEAR IMAGING | 1346220662 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CRYSTAL CLEAR IMAGING | 05152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515039 | R109 | Unspecified abdominal pain | ICD10 | 05152017 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T09:27:09+00:00 | Q18401336 | 000091190-01 | Earl | Stauffer | BATTEN, WILLIAM H | 937179 | WILLIAM H | BATTEN | 1437124112 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05122017 | 06112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515050 | R3129 | OTHER MICROSCOPIC HEMATURIA | ICD10 | 05152017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T19:54:03+00:00 | Q18328019 | 000102822-01 | Sandra | Rickett | WRIGHT STATE PHYSICIANS | 902701 | ELISABETH L | RIGHTER | 1851373286 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 05152017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05022017 | 06012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515059 | R079 | Chest pain, unspecified | ICD10 | 05152017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T12:43:40+00:00 | Q18417931 | 000116719-01 | MARY | OBRYAN HAYNES | MERCY HEALTH PHYSICIANS | 930374 | AARTI A | SINGLA | 1063555639 | JEWISH HOSPITAL LLC | 949378 | 1609251891 | JEWISH HOSPITAL LLC | 1609251891 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JEWISH HOSPITAL LLC | 05152017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05122017 | 06112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515068 | S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 05152017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T10:05:05+00:00 |  | 000086130-01 | Burton | Miller | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05152017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05232017 | 07232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515096 | C8331, R590 | Localized enlarged lymph nodes | ICD10 | 05152017 | 38510, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 05152017 | 2017-05-15T12:13:25+00:00 |  | 000099600-01 | Michael | Rieser | UNIVERSITY RADIATION ONC | 928137 | AASHISH | BHATT | 1790953297 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05152017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 05172017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170515104 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 05152017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T00:00:00+00:00 |  | 000095620-01 | Donald | DeMaria | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05152017 | Denied | MediGold Southwest OH Essential Care | Member | Services Available In-Network | Outpatient | 05152017 | 05162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170405003 | R6889 | Other general symptoms and signs | ICD10 | 05152017 | 04910, 01110 | POSTERIOR INTEGUMENT PELVIS EXC GEN | CPT | 0, 0 | 4, 4 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04042017 | 2017-04-04T10:28:00+00:00 |  | 000095618-01 | Danguole | DeMaria | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05152017 | Denied | MediGold Southwest OH Essential Care | Member | Services Available In-Network | Outpatient | 05152017 | 05162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170405004 | R6889 | Other general symptoms and signs | ICD10 | 05152017 | 04910, 01110 | POSTERIOR INTEGUMENT PELVIS EXC GEN | CPT | 0, 0 | 4, 4 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
