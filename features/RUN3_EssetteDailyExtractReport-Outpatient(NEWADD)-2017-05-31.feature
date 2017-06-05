Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-31 RUN 3
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-31 Run 3
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
| 05162017 | 2017-05-16T09:36:07+00:00 | Q18434574 | 000098964-01 | Robert | Long Jr | NEUROLOGY DIAGNOSTICS IN | 901098 | JOEL | VANDERSLUIS | 1114922390 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 05312017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170531009 | G3109 | Other frontotemporal dementia | ICD10 | 05312017 | 78608, 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T09:27:54+00:00 | Q18434933 | 000075694-01 | James | Marsh | RADIOLOGY INC | 935042 | DOUGLAS W | WIDMAN | 1669461828 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05312017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518138 | C61 | Malignant neoplasm of prostate | ICD10 | 05312017 | 72195 | MRI PELVIS W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04182017 | 2017-04-18T15:19:51+00:00 |  | 000093581-01 | Frances | Southers | ADVANCED CARE SOLUTIONS INC | 927080 |  | ADVANCED CARE SOLUTIONS INC | 1164410635 | ADVANCED CARE SOLUTIONS INC | 927080 | 1164410635 | ADVANCED CARE SOLUTIONS INC | 1164410635 | DME | DME | Pre-Service | PRE |  | ADVANCED CARE SOLUTIONS INC | 05312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04192017 | 07192017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418128 | C7802, J910 | Malignant pleural effusion | ICD10 | 05312017 | A7048 | VACUUM DRAIN BOTTLE/TUBE KIT | HCPCS | 90 | 90 | Approved | 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 05252017 | 2017-05-25T10:39:31+00:00 | Q18086091 | 000077409-01 | Roger | Osborn | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05302017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170525106 | I420 | Dilated cardiomyopathy | ICD10 | 05302017 | 33249, 33225, 33241, C1900, C1721, C1722, C1882, C1777, C1895, C1896, 33264, C1882 | CARDIOVERTER-DEFIBRILLATOR, OTHER THAN SINGLE OR DUAL CHAMBER (IMPLANTAB | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Void | 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 04262017 | 2017-04-26T10:18:25+00:00 | Q18286700 | 000039966-01 | GEORGE | PORTER | COPC CENTRAL OHIO PRIMAR | 904015 | SCOTT A | PRENGER | 1639133234 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05312017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04262017 | 05262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170427094 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 05312017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05262017 | 2017-05-26T15:08:02+00:00 | Q18525482 | 000079105-01 | Georgia | Jones | ADENA MEDICAL GROUP LLC | 928524 | CHRISTIN L | SPAHN | 1861654105 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 05312017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05262017 | 06252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170531053 | R1031 | Right lower quadrant pain | ICD10 | 05312017 | 72192 | CAT SCAN PELVIS WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03202017 | 2017-03-20T15:06:11+00:00 |  | 000008379-01 | KENT | AMLIN | SWEST FLORIDA UROLOGY AS | 932937 | BLAKE J | EVANS | 1093971467 | SWEST FLORIDA UROLOGY AS | 932937 | 1225074115 | BLAKE J EVANS | 1093971467 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | BLAKE J | EVANS | 05312017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03232017 | 04232017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320120 | R339 | Retention of urine, unspecified | ICD10 | 05312017 | 99214, 51798, 81003 | URINALYSIS, WITHOUT MICROSCOPY, AUTOMATED | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 04182017 | 2017-04-18T10:14:54+00:00 |  | 000033528-01 | JOHN | PHILLIPS | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | MYRIAD GENETIC LABORATORIES | 903741 | 1669484473 | MYRIAD GENETIC LABORATORIES | 1669484473 | Genetic Testing | OP GEN | Pre-Service | PRE |  | MYRIAD GENETIC LABORATORIES | 05312017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03302017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170419040 | C61 | Malignant neoplasm of prostate | ICD10 | 05312017 | 84999 | UNLSTD CHEMISTRY OR TOXICOLOGY PROC | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T10:12:21+00:00 |  | 000083505-01 | Mark | Caudill | MEM HSP OF UNION COUNTY | 935273 | ANTERPREET S | NEKI | 1407893555 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05312017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03212017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170321112 | C4442 | Squamous cell carcinoma of skin of scalp and neck | ICD10 | 05312017 | 92557, 92552, 92553, 92588, 92567, 92550, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05302017 | 2017-05-30T13:15:43+00:00 | Q18532815 | 000106341-01 | Wilbur | Kirkendall | LICKING MEMORIAL ER MED | 901197 | ANDREW C | SEIPEL | 1578530127 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170531030 | R42 | Dizziness and giddiness | ICD10 | 05312017 | 70544 | MR ANGIOGRAPHY HEAD W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T11:45:03+00:00 |  | 000081944-01 | RAYMOND | LEIENDECKER | OSU SURGERY LLC | 934871 | JEAN E | STARR | 1770530693 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Clinical Trial | TRIAL | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05262017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503292 | I10 | Essential (primary) hypertension | ICD10 | 05312017 | C1820, 0268T, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 04202017 | 2017-04-20T08:58:18+00:00 | Q18242561 | 000085936-01 | Tona | Moyer | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05312017 | Approved | MediGold Essential Care | HealthHelp | Services Not Available In-Network | Outpatient | 04202017 | 05202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170421145 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05312017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03122017 | 2017-03-12T12:25:30+00:00 |  | 000022595-01 | FREDA | GORNALL | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1013165174 | TUSCANY GARDENS | 905810 | 1073634788 | TUSCANY GARDENS | 1073634788 | Part B Therapy | OP THER | Pre-Service | PRE |  | TUSCANY GARDENS | 05312017 | Approved | MediGold Classic Preferred | Fax | SNF | Outpatient | 03102017 | 04082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170313028 | M159 | Polyosteoarthritis, unspecified | ICD10 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  | NOMNC received |  |  |  |  | 0 |
| 05152017 | 2017-05-15T08:47:38+00:00 | Q18423269 | 000074824-01 | Larry | Howell | MOUNT CARMEL HLTH PRVDRS | 910451 | MICHAEL G | MONCMAN | 1114927571 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05312017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518010 | R260 | Ataxic gait | ICD10 | 05312017 | 72146, 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05262017 | 2017-05-26T08:14:30+00:00 |  | 000063213-01 | DENNIS | WAUGH | KLISOVIC, REBECCA B | 908494 | REBECCA B | KLISOVIC | 1417962945 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06152017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526054 | C9100, D89811, Z9481, V4281 | BONE MARROW REPLACED BY TRANSPLANT | ICD10 | 05312017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82947, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83907, 83900, 83901, 83909, 83912, 92565, 85652, G0463, 35266 | RPR BV/A-V FIS C GR NOT VN, UP.EXT. | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 26 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 26 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05052017 | 2017-05-05T10:44:42+00:00 |  | 000059577-01 | SHERRY | DRAKE | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | MYRIAD GENETIC LABORATORIES | 903741 | 1669484473 | MYRIAD GENETIC LABORATORIES | 1669484473 | Genetic Testing | OP GEN | Pre-Service | PRE |  | MYRIAD GENETIC LABORATORIES | 05312017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04202017 | 07202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170505154 | Z853, Z8041, Z808, Z8052 | Family history of malignant neoplasm of bladder | ICD10 | 05312017 | 81211, 81213 | BRCA1&2 UNCOM DUP/DEL VAR | CPT | 1, 1 | 1, 1 | Approved, Approved | 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 05232017 | 2017-05-23T14:33:22+00:00 |  | 000080453-01 | William | McCullen | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | FIDELITY MEDICAL PRODUCT | 949465 | 1689859860 | FIDELITY MEDICAL PRODUCTS LLC | 1689859860 | DME | DME | Pre-Service | PRE |  | FIDELITY MEDICAL PRODUCTS LLC | 05312017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05312017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170523134 | I872, I890, L97514 | Non-prs chronic ulcer oth prt right foot w necrosis of bone | ICD10 | 05312017 | E0652, E0667 | SEGMENTAL PNEUMATIC APPLIANCE FOR USE WITH PNEUMATIC COMPRESSOR, FULL | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC | Spoke with Doug at Fidelity.  Additional information to be submitted including documentation on ulcers and edema beyond the lower extremities., Spoke with Doug at Fidelity.  Acknowledged receiving faxed request and stated additional information on ulcers will be sent over with documentation going back to December 2016 |  |  |  |  | 0 |
| 05262017 | 2017-05-26T18:54:19+00:00 | Q18499353 | 000028032-01 | Carolyn | Riley | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05312017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05242017 | 08222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170531003 | C8203 | Follicular lymphoma grade I, intra-abdominal lymph nodes | ICD10 | 05312017 | J9310, J9070, J9370 | VINCRISTINE SULFATE, 1 MG | HCPCS | 1, 36, 6 | 1, 36, 6 | Approved, Approved, Approved | 91, 91, 91 | HCPCS | HC | J9310: 18 Rituximab 555 mg IV every 21 Days x 3 cycles ( 3 treatments ).  Total billing units = 18; J9070: 36 Cyclophosphamide  1110 mg IV every 21 days x 3 cycles (3 treatments).  Total billing units = 36; J9370: 6 Vincristine 2 mg IV every 21 days x 3 cycles ( 3 treatments ).  Total billing units = 6 |  |  |  |  | 0 |
