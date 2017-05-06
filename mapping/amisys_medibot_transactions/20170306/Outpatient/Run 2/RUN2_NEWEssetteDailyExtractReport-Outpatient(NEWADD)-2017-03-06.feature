Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-06
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-06
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
	And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
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
	And the test pauses for "5" seconds
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
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And I input the notes if any are contained in "<notes>"
	And the test pauses for "5" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
#| 02072017 | 2017-02-07T13:52:05+00:00 | Q17703077 | 000071655-01 | Gary | Dilts | NEUROSCIENCE CENTER | 917108 | JAQUELYNE S | CIOS | 1609094226 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03062017 | 04052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170208086 | G40911 | Epilepsy, unspecified, intractable, with status epilepticus | ICD10 | 03062017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02272017 | 2017-02-27T15:01:58+00:00 | Q17851229 | 000018669-01 | RALPH | REYNOLDS | COPC CENTRAL OHIO PRIMAR | 937347 | NATALIA | PUSHKIN | 1861488876 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Initial Review | INIT |  | CENTRAL OH PRIMARY CARE PHYS INC | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02272017 | 03292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170228085 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 03062017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 02272017 | 2017-02-27T15:07:38+00:00 | Q17851292 | 000018669-01 | RALPH | REYNOLDS | COPC CENTRAL OHIO PRIMAR | 937347 | NATALIA | PUSHKIN | 1861488876 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Initial Review | INIT |  | CENTRAL OH PRIMARY CARE PHYS INC | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02272017 | 03292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170228086 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 03062017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 02282017 | 2017-02-28T08:03:46+00:00 | Q17853683 | 000028171-01 | CHARLES | ZAGORSKI | MOUNT CARMEL HLTH PRVDRS | 936731 | NANCY | GRAESSER | 1336252071 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02282017 | 03302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170228105 | M545 | Low back pain | ICD10 | 03062017 | 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 02282017 | 2017-02-28T14:16:08+00:00 | Q17860624 | 000031131-01 | LOU | PARKINSON | COPC CENTRAL OHIO PRIMAR | 936781 | MARY S | GRULKOWSKI | 1760420707 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Initial Review | INIT |  | CENTRAL OH PRIMARY CARE PHYS INC | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02282017 | 03302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170301081 | R3121 | ASYMPTOMATIC MICROSCOPIC HEMATURIA | ICD10 | 03062017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03012017 | 2017-03-01T14:10:10+00:00 | Q17871174 | 000079100-01 | Larry | Griffith | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Initial Review | INIT |  | LICKING MEMORIAL HOSPITAL | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03022017 | 04012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170302082 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 03062017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03022017 | 2017-03-02T09:02:22+00:00 | Q17875784 | 000065581-01 | ROGER | SIDDERS | ROBERT GNADE MD | 936692 | ROBERT | GNADE | 1659301281 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03022017 | 04012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170302129 | R51 | Headache | ICD10 | 03062017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03032017 | 2017-03-03T10:02:41+00:00 |  | 000049483-01 | ROY | MAPLE | OSU INTERNAL MED LLC | 911166 | MAHMOUD | HOUMSSE | 1780630129 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03062017 | Approved | MediGold Classic Preferred | Fax | Clinical Trial | Outpatient | 03132017 | 06132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170303027 | I480, I509 | Heart failure, unspecified | ICD10 | 03062017 | 93280, 99214, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 1 | 3, 3, 1 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
#| 03032017 | 2017-03-03T08:54:56+00:00 | Q17807337 | 000085629-01 | Shirley | Kirkbride | MUSKINGUM VALLEY HLTH CT | 905433 | MICHAEL D | BOBB JR | 1588612006 | MUSKINGUM VALLEY HLTH CT | 932201 | 1902237084 | MUSKINGUM VALLEY HEALTH CENTERS | 1902237084 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MUSKINGUM VALLEY HEALTH CENTERS | 03062017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03032017 | 04022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170304012 | M5417 | Radiculopathy, lumbosacral region | ICD10 | 03062017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03032017 | 2017-03-03T12:38:32+00:00 | Q17890547 | 000052098-01 | JANET | MCCARVILLE | RIVER VALLEY ORTHOS & SP | 935651 | STEVEN V | PRIANO | 1447238944 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03032017 | 04022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170304047 | M25511 | Pain in right shoulder | ICD10 | 03062017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03022017 | 2017-03-02T15:17:29+00:00 | Q17866561 | 000093212-01 | Pamela | Smith | ADENA MEDICAL GROUP LLC | 911234 | COLLINS N | OKOLIE | 1235331224 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Initial Review | INIT |  | ADENA REGIONAL MEDICAL CENTER | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02232017 | 03252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170304050 | R0602 | Shortness of breath | ICD10 | 03062017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03022017 | 2017-03-02T14:59:01+00:00 | Q17868616 | 000116676-01 | Anna | Grigsby | MERCY HEALTH PHYSICIANS | 926848 | MUHAMMAD S | ASHRAF | 1891765038 | MERCY HEALTH PHYSICIANS | 911477 | 1205887023 | MERCY HEALTH PHYSICIANS CINCINNATI L | 1205887023 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MERCY HEALTH PHYSICIANS CINCINNATI L | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03032017 | 04022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170304051 | R55 | Syncope and collapse | ICD10 | 03062017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03032017 | 2017-03-03T08:42:30+00:00 | Q17871748 | 000065907-01 | MARY | HOWARD | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Initial Review | INIT |  | OH ONCOLOGY & HEMATOLOGY LLC | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04042017 | 10012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170304054 | C8216 | Follicular lymphoma grade II, intrapelvic lymph nodes | ICD10 | 03062017 | J9310 | RITUXIMAB, 100 MG | HCPCS | 21 | 21 | Approved | 181 | HCPCS | HC | J9310: 21 Rituxan: 604 mg IV Day 1 q 56 days x 3 cycles (3 treatments).  Total billing units = 21 |  |  |  |  | 0 |
#| 03022017 | 2017-03-02T14:01:20+00:00 | Q17881578 | 000031122-01 | EARL | MCCOMBS | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | HEARTLAND CARDIOLOGY LLC | 913080 | 1538488564 | HEARTLAND CARDIOLOGY LLC | 1538488564 | Radiology (HH) | OP RAD | Initial Review | INIT |  | HEARTLAND CARDIOLOGY LLC | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03062017 | 04052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170304064 | R079 | Chest pain, unspecified | ICD10 | 03062017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03022017 | 2017-03-02T16:19:22+00:00 | Q17828941 | 000088477-01 | David | Paulus | SELBY GENERAL HOSPITAL | 922103 | RONNIE H | WILLIAMSON | 1730137357 | BARNESVILLE HOSPITAL | 904409 | 1235135450 | BARNESVILLE HOSPITAL | 1235135450 | Radiology (HH) | OP RAD | Initial Review | INIT |  | BARNESVILLE HOSPITAL | 03062017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02232017 | 03252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170304077 | R911 | Solitary pulmonary nodule | ICD10 | 03062017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03022017 | 2017-03-02T14:41:44+00:00 | Q17857237 | 000087644-01 | Leonard | Dickerson | FAIRFIELD HLTHCARE PROFS | 915260 | CHRISTIAN T | TENCZA | 1336292085 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Initial Review | INIT |  | FAIRFIELD MEDICAL CENTER | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170304091 | R911 | Solitary pulmonary nodule | ICD10 | 03062017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03032017 | 2017-03-03T16:21:52+00:00 |  | 000044053-01 | ROBERTA | DALEY ARMSTRONG | OSU OTOLARYNGOLOGISTS LL | 908507 | THEODOROS N | TEKNOS | 1265521496 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03062017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03092017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170306001 | L438 | Other lichen planus | ICD10 | 03062017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
#| 03062017 | 2017-03-06T08:35:33+00:00 | 17825977 | 000103695-01 | MARCIA | RICCOBENE | SUPERIOR MED LLC | 947966 | HILARY | HAACK | 1861839623 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 03062017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02232017 | 03252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170306002 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 03062017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03032017 | 2017-03-03T13:59:27+00:00 |  | 000083064-01 | Larry | Ruff | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03062017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03062017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170306012 | C062 | Malignant neoplasm of retromolar area | ICD10 | 03062017 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 | LAURA SKORICKI PA-C PROVIDER INFO SUBMITTED TO CREDENTIALING.  HER PROVIDER NUMBER IS 949743 |  |  |  |  | 0 |
| 03062017 | 2017-03-06T09:47:47+00:00 |  | 000046362-01 | NORMAN | COLLIER | OSU CAMBRIDGE HEART | 917495 | MICHAEL R | DONNALLY | 1245359520 | OSU INTERNAL MED LLC | 914553 | 1740231448 | SINDHU B MUKKU | 1073799045 | Out of Network Services | OONS | Pre-Service | PRE | SINDHU B | MUKKU | 03062017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03062017 | 06062017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170306014 | 518.0, J449, R0600 | Dyspnea, unspecified | ICD10 | 03062017 | G0463, 99204 | OFFICE CALL - NEW PATIENT | CPT | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | CPT | C4 | Unable to reach member at phone number.  Phone rings busy, 2nd attempt to contact member.  Phone ringing busy |  |  |  |  | 0 |
#| 03062017 | 2017-03-06T10:39:17+00:00 | Q17886559 | 000110365-01 | Karon | O'dell | COPC CENTRAL OHIO PRIMAR | 904614 | ROBIN L | FRANZ | 1285748806 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03062017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 03062017 | 04052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170306015 | H543 | Unqualified visual loss, both eyes | ICD10 | 03062017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03062017 | 2017-03-06T12:29:01+00:00 | Q17893098 | 000041201-01 | ROGER | SMITH | OSU HLTH SYSTEM NEUROSUR | 948800 | JENNIFER E | GADAWSKI | 1538517370 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03032017 | 04022017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170306018 | I6203 | Nontraumatic chronic subdural hemorrhage | ICD10 | 03062017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03062017 | 2017-03-06T12:59:33+00:00 | Q17854026 | 000053396-01 | EVELYN | NEWLAND | SWEST OH ENT SPECIALTIST | 901744 | ROBERT A | GOLDENBERG | 1831179514 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02282017 | 03302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170306021 | R42 | Dizziness and giddiness | ICD10 | 03062017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03062017 | 2017-03-06T13:04:48+00:00 | Q17860579 | 000079057-01 | Ned | Miller II | VASCULAR SRVS OF OH INC | 935228 | PATRICK S | VACCARO | 1871540880 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03212017 | 04202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170306022 | I7103 | Dissection of thoracoabdominal aorta | ICD10 | 03062017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03062017 | 2017-03-06T13:17:19+00:00 | Q17861643 | 000043166-01 | DIANE | DEIBERT | ADENA MEDICAL GROUP LLC | 904046 | SHAILESH C | PATEL | 1760499594 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 03062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02282017 | 03302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170306023 | R079 | Chest pain, unspecified | ICD10 | 03062017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03062017 | 2017-03-06T12:57:15+00:00 | Q17899051 | 000081893-01 | James | Lowrey | DAYTON PHYSICIANS LLC | 908829 | TAREK M | SABAGH | 1851348841 | DAYTON PHYSICIANS LLC | 908829 | 1902844947 | TAREK M SABAGH | 1851348841 | Radiology (HH) | OP RAD | Initial Review | INIT | TAREK M | SABAGH | 03062017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03062017 | 04022017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170306024 | C61 | Malignant neoplasm of prostate | ICD10 | 03062017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1 | 1 | Approved | 28 | HCPCS | HC |  |  |  |  |  | 0 |
#| 03062017 | 2017-03-06T15:38:29+00:00 | Q17246842 | 000082795-01 | LAWRENCE | RIESTENBERG | ONCOLOGY HEMATOLOGY CARE | 920870 | KURT P | LEUENBERGER | 1194765800 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 03062017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12052016 | 06032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170306033 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 03062017 | J9034 | INJ., BENDEKA 1 MG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
#| 03062017 | 2017-03-06T15:34:37+00:00 |  | 000048498-01 | ROGER | MCCONNELL | WAKE SPECIALTY PHYS LLC | 949668 | STUART D | GINN | 1609194802 | WAKEMED | 936366 | 1114993086 | WAKEMED | 1114993086 | Out of Network Services | OONS | Pre-Service | PRE |  | WAKEMED | 03062017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03072017 | 04072017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170306035 | R040 | Epistaxis | ICD10 | 03062017 | 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
#| 03032017 | 2017-03-03T10:03:53+00:00 |  | 000112339-01 | Mary | Eddy | NEPHROLOGY ASSOCIATES IN | 945079 | THOMAS G | KENAMOND | 1750342341 | NEPHROLOGY ASSOCIATES IN | 945079 | 1457430134 | THOMAS G KENAMOND | 1750342341 | Out of Network Services | OONS | Pre-Service | PRE | THOMAS G | KENAMOND | 03062017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Services Available In-Network | Outpatient | 03062017 | 03072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170306003 | N990 | Postprocedural (acute) (chronic) kidney failure | ICD10 | 03062017 | 90060 | OFFICE VISIT- ESTABLISHED PATIENT | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
