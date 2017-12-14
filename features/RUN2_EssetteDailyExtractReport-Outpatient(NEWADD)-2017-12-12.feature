Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-12
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-12
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
| 12042017 | 2017-12-04T12:10:29+00:00 |  | 000099940-01 | KATHLEEN | DURHAM | FAMILY PRACTICE ASSOC | 902127 | SALLY A | ABBOTT | 1891788626 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 12112017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12042017 | 01042019 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171204021 | G8191, I159, I63412, I69391, N393 | Stress incontinence (female) (male) | ICD10 | 12112017 | E1161, K0108, K0195, K0040, E0973, E0971, E2231, E0978, E0955, E1028, E2609, E0956, E2209, E2613 | POSITIONING WHEELCHAIR BACK CUSHION, POSTERIOR, WIDTH LESS T | HCPCS | 1, 2, 2, 2, 2, 1, 1, 1, 1, 3, 1, 2, 1, 1 | 1, 2, 2, 2, 2, 1, 1, 1, 1, 3, 1, 2, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 397, 397, 397, 397, 397, 397, 397, 397, 397, 397, 397, 397, 397, 397 | HCPCS | HC |  |  |  |  |  | 0 |
| 12052017 | 2017-12-05T10:19:02+00:00 | Q19908946 | 000106629-01 | Donna | Moore | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 12112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12062017 | 01052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171206063 | I25118 | Athscl heart disease of native cor art w oth ang pctrs | ICD10 | 12112017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12012017 | 2017-12-01T13:08:40+00:00 |  | 000038779-01 | MARY | SCHORR | OSU HLTH SYSTEM NEUROSUR | 939773 | PIERRE | GIGLIO | 1962450221 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12112017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12072017 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171201142 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 12112017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12062017 | 2017-12-06T10:16:13+00:00 | NCT# 03070093 | 000073201-01 | George | Hahnemann III | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12112017 | Approved | Flexible Choice PPO | Fax | Medical Criteria Met | Outpatient | 12082017 | 03062018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171206132 | C9202 | Acute myeloblastic leukemia, in relapse | ICD10 | 12112017 | Q9967, A9579, 71020, A9560, 78472, 93308, 93325, 93307, 93320, 85610, 85730, 84550, 83615, 84100, 82947, 83735, 85379, 85384, 82550, 84450, 84460, 84075, 82247, 99213, 36592, 36415, 99211, 93005, 88313, G0364, 81001, 84703, 80053, 85025, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89 | HCPCS | HC | All codes related to Health Help were sent by fax to then today., PON: member approved for clinical trial at OSU for Acute Myeloid Leukemia. |  |  |  |  | 0 |
| 12062017 | 2017-12-06T12:06:21+00:00 |  | 000111520-01 | Eugene | Ramey | OSU INTERNAL MED LLC | 910537 | VERONICA | FRANCO | 1962513796 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12112017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 12142017 | 01142018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171206142 | I2510, I313, R0789 | Other chest pain | ICD10 | 12112017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 11302017 | 2017-11-30T16:19:14+00:00 |  | 000095418-01 | Larry | Jones | UNIVERSITY RADIATION ONC | 928811 | DUKAGJIN | BLAKAJ | 1144483272 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12112017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12052017 | 03052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171201116 | K148 | Other diseases of tongue | ICD10 | 12112017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 31, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 31, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 11302017 | 2017-11-30T16:23:45+00:00 |  | 000095418-01 | Larry | Jones | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12112017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12052017 | 01052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171201117 | K148 | Other diseases of tongue | ICD10 | 12112017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12052017 | 2017-12-05T12:21:26+00:00 |  | 000095418-01 | Larry | Jones | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12112017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12062017 | 01062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205152 | C01, K148 | Other diseases of tongue | ICD10 | 12112017 | 92550, 92557, 92567, 92588, 92552, 92553, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T09:07:58+00:00 | Q19949360 | 000113940-01 | Gary | Yount | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 12122017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12122017 | 06102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212016 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 12122017 | J9060, J2469, J1453, J9181 | ETOPOSIDE, 10 MG | HCPCS | 96, 60, 900, 360 | 96, 60, 900, 360 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9060: 96: Cisplatin 75-80 mg/m2  IV  day 1  every 21 days  6 cycles: J9181: 360: Etoposide 80-100 mg/m2  IV  days 1-3  every 21 days  6 cycles: J2469: 60: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s): J1453: 900: Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 12112017 | 2017-12-11T12:11:16+00:00 | Q19952615 | 000037903-01 | ROSEMARY | LONGBERRY | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 12122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12112017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212018 | R262 | Difficulty in walking, not elsewhere classified | ICD10 | 12122017 | 72141, 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T13:27:22+00:00 | Q19954085 | 000114442-01 | Barbara | Snyder | MERCY HEALTH PHYSICIANS | 921359 | DIRK R | HINES | 1245286590 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 12122017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12112017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212026 | R1011 | Right upper quadrant pain | ICD10 | 12122017 | 74181 | MRI ABDOMEN | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T10:43:11+00:00 | Q19951235 | 000077186-01 | Randy | Gawelek | ADENA MEDICAL GROUP LLC | 902416 | JENNIFER L | KELLER | 1073576294 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 12122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12122017 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212035 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 12122017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T11:15:02+00:00 | Q19951863 | 000097178-01 | Steve | Hunter | COSHOCTON COUNTY MEM HSP | 949424 | SCOTT P | STEPHENS | 1770741902 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12112017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212038 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 12122017 | 73200 | CAT SCAN UPPER EXTREMITY UNENHANCED | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T09:28:04+00:00 | Q19949836 | 000118582-01 | Adriatha | Womack | GENESIS MEDICAL GRP LLC | 917348 | SCOTT A | WEGNER | 1699729434 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 12122017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12152017 | 06132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212041 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 12122017 | J9395 | INJECTION, FULVESTRANT, 25 MG | HCPCS | 120 | 120 | Approved | 181 | HCPCS | HC | J9395: 120: Fulvestrant 500 mg  IM  day 1  every 28 days  6 cycles |  |  |  |  | 0 |
| 12112017 | 2017-12-11T09:58:37+00:00 | Q19950251 | 000042290-01 | BARBARA | GARGARO | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12112017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212047 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 12122017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12082017 | 2017-12-08T14:33:00+00:00 | Q19946089 | 000093403-01 | Patricia | Burrell | OHIO ENT & ALLERGY PHYSI | 902632 | AKASH | GUPTA | 1245202324 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12082017 | 01072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212048 | R42 | Dizziness and giddiness | ICD10 | 12122017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T07:30:52+00:00 | Q19948049 | 000034762-01 | GLEN | JOHNSON | DAYTON INTERVENTIONAL RA | 906661 | MUBIN I | SYED | 1467438580 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 12122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12112017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212058 | M8008XA | Age-rel osteopor w current path fracture, vertebra(e), init | ICD10 | 12122017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T13:33:53+00:00 |  | 000022367-01 | ARNOLD | CRABTREE | COMMUNITY SURG SUPPLY OF TOMS RIVER | 919608 |  | COMMUNITY SURG SUPPLY OF TOMS RIVER | 1740436658 | COMMUNITY SURG SUPPLY OF TOMS RIVER | 919608 | 1740436658 | COMMUNITY SURG SUPPLY OF TOMS RIVER | 1740436658 | DME | DME | Pre-Service | PRE |  | COMMUNITY SURG SUPPLY OF TOMS RIVER | 12122017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12122017 | 06152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211109 | J449, J9611 | Chronic respiratory failure with hypoxia | ICD10 | 12122017 | E0466, E1390, K0738 | Portable gas oxygen system | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 186, 186, 186 | HCPCS | HC | This request is to start where the last one stops which is 12/13/2017 not the 08/18/2017 that is a error by the provider I spoke to Destiny McCloud and told her he would correct 12/11/2017 16:05:13. |  |  |  |  | 0 |
| 12072017 | 2017-12-07T12:32:24+00:00 | Q19933567 | 000109380-01 | ROBERT | SCHMIDT | HEMATOLOGY ONCOLOGY CONS | 933419 | ANITHA S | NALLARI | 1881649879 | HEMATOLOGY ONCOLOGY CONS | 938154 | 1780793901 | HEMATOLOGY ONCOLOGY CONSULTANT | 1780793901 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | HEMATOLOGY ONCOLOGY CONSULTANT | 12122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12072017 | 06052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212095 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 12122017 | J9041 | INJECTION, BORTEZOMIB, 0.1 MG | HCPCS | 896 | 896 | Approved | 181 | HCPCS | HC | J9041: 896: INJECTION  BORTEZOMIB  0.1 MG  Dispensed as: 2.80 mg  4 treatment(s) each cycle  8 cycle(s) |  |  |  |  | 0 |
| 11142017 | 2017-11-14T09:17:10+00:00 |  | 000093679-01 | James | Sheridan | OSU INTERNAL MED LLC | 907477 | STEVEN M | DEVINE | 1124036579 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Outpatient | 11072017 | 02072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114161 | C8599, Z9484 | Stem cells transplant status | ICD10 | 12122017 | 99215, 99205, 38221, 85025, 86140, 83615, 93005, 71020, 93320, 86803, 86703, 84703, 36415, 80076, 80053, 83615, 85610, 85730, J9999, J1642, 82310, 99211, 80051, 82947, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 5, 1, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 6, 6, 5, 6, 6, 6 | 5, 1, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 6, 6, 5, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | PHONE CALL TO JOELLE F AT OSU.  MESSAGE LEFT ON HER CONFIDENTIAL VM  REQUESTED CLINICALS  AND INFORMATION REGARDING REASON FOR REFERRAL., PC TO JOELLE  WITH PROVIDER   SHE WILL FACE CLINICAL DOCUMENTATION OVER  INFORMED JOELLLE THAT AN EXTENSION WOULD BE PLACED ON REQUEST., LAB/VISIT CODES FROM ADDITIONAL CLINICAL RECEIVED ADDED TO THE AUTHORIZATION., Letter is written in appropriate language with no abbreviations and is therefore approved., Authorization has no authorize start or end date. Please update this information for authorization to be processed in Amisys., STATUS UPDATED TO APPROVED  SECONDARY ONLY  PER REQUEST OF M JANES |  |  |  |  | 0 |
| 12042017 | 2017-12-04T16:48:18+00:00 |  | 000072517-01 | MARY | MARZLUF | DENTAL FACULTY PRACTICE | 931297 | COURTNEY A | JATANA | 1912125899 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12122017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 12122017 | 12132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171205063 | K136, Z972 | Presence of dental prosthetic device (complete) (partial) | ICD10 | 12122017 | 41828, 20926 | OBT. OTHER TIS. FOR GRAFT, | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 12062017 | 2017-12-06T15:00:03+00:00 |  | 000080221-01 | Carol | Frerick | MERCY HEALTH PHYSICIANS | 911073 | TAMER Y | ABOU-ELSAAD | 1255302808 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 12122017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 12062017 | 01062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171206158 | R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 12122017 | 99201, 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
