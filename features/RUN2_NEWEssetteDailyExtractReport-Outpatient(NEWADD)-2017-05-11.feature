Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-11
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-11
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

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

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
| 03142017 | 2017-03-14T13:43:10+00:00 | Q17967163 | 000091023-01 | Ronald | Cress | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03142017 | 04132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503231 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 05102017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T07:24:07+00:00 | Q17981715 | 000037269-01 | SANDRA | FURR | MOUNT CARMEL HLTH PRVDRS | 936887 | JOHN S | HEINTZ | 1255323440 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03162017 | 04152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503234 | M4854XA | Collapsed vertebra, NEC, thoracic region, init | ICD10 | 05102017 | 72157 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST MORE SEQUENCES;THORACIC | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T18:32:21+00:00 | Q17983921 | 000097727-01 | Ronald | Humphries | MADISON FAMILY HEALTH | 942170 | DOUGLAS R | CLOSSER | 1982839312 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03162017 | 04152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503235 | R590 | Localized enlarged lymph nodes | ICD10 | 05102017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T14:54:21+00:00 | Q17986535 | 000053947-01 | THEODORE | WETZEL | MADISON FAMILY HEALTH | 911210 | GINA N | MOODY | 1033378989 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03172017 | 04162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503236 | R590 | Localized enlarged lymph nodes | ICD10 | 05102017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03202017 | 2017-03-20T09:29:39+00:00 | Q18002711 | 000033268-01 | MARCIA | SELF | MADISON FAMILY HEALTH | 911210 | GINA N | MOODY | 1033378989 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03202017 | 04192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503244 | J189 | Pneumonia, unspecified organism | ICD10 | 05102017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03242017 | 2017-03-24T19:53:15+00:00 | Q18039372 | 000001735-01 | JACQULAN | ALEXANDER | OHIO ENT & ALLERGY PHYSI | 902632 | AKASH | GUPTA | 1245202324 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503255 | R42 | Dizziness and giddiness | ICD10 | 05102017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T10:52:44+00:00 | Q18067480 | 000055013-01 | LARKIN | MCCLELLAN | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03282017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503267 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 05102017 | 70498 | CT ANGIOGRAPHY, NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05052017 | 2017-05-05T12:55:16+00:00 | Q18364243 | 000071501-01 | Sherman | Boothe | OH ONCOLOGY & HEMATOLOGY | 928374 | SAMEH | MIKHAIL | 1447455720 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170508025 | C61 | Malignant neoplasm of prostate | ICD10 | 05102017 | 74177, 71260, 72157, 72156, 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05052017 | 2017-05-05T07:54:36+00:00 | Q18359115 | 000114944-01 | Samuel | Bundy | UNIVERSITY CARDIOLOGY | 904566 | MANMOHAN K | KATAPADI | 1528192820 | UNIVERSITY CARDIOLOGY | 937870 | 1730114851 | UNIVERSITY CARDIOLOGY | 1730114851 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNIVERSITY CARDIOLOGY | 05102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170508043 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 05102017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T15:56:18+00:00 |  | 000057684-01 | DENNIS | HARVEY | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05172017 | 07172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170508151 | C089 | Malignant neoplasm of major salivary gland, unspecified | ICD10 | 05112017 | 42415, 38724, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 05092017 | 2017-05-09T15:22:07+00:00 |  | 000114511-01 | Joyce | Althoff | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05302017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509166 | K7469 | Other cirrhosis of liver | ICD10 | 05112017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T14:51:56+00:00 | Q18377385 | 000093660-01 | Roger | Ballinger | COPC CENTRAL OHIO PRIMAR | 900845 | EMILY N | ROEDERSHEIMER | 1982646857 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170510019 | R1032 | Left lower quadrant pain | ICD10 | 05112017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05092017 | 2017-05-09T11:45:00+00:00 | Q18377479 | 000103160-01 | MARYANNE | FITZPATRICK | ONCOLOGY HEMATOLOGY CARE | 921204 | PATRICK J | WARD | 1093709297 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 05112017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 08072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170510020 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 05112017 | J9305 | INJECTION, PEMETREXED, 10 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T18:41:22+00:00 | Q18373035 | 000043038-01 | SHARON | BLACK | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05042017 | 06032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170510078 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 05112017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05052017 | 2017-05-05T08:23:38+00:00 | Q18359269 | 000114748-01 | Debra | Tepper | ALLIANCE PHYSICIANS INC | 913338 | PRIYA G | JAIN | 1912093360 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 05112017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 05052017 | 06042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511002 | C50112 | Malignant neoplasm of central portion of left female breast | ICD10 | 05112017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T09:25:34+00:00 | Q18392720 | 000105308-01 | William | Rhoads Jr | ADENA MEDICAL GROUP LLC | 906248 | AARON M | ROBERTS | 1114105715 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 05112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511003 | M25511 | Pain in right shoulder | ICD10 | 05112017 | 73221, 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T11:34:47+00:00 | Q18395546 | 000029000-01 | JUDITH | DICK | SPINAL TECHNOLOGY & PAIN | 912604 | DWIGHT | MOSLEY | 1033386982 | ADVANTAGE IMAGING LLC | 918155 | 1982918629 | ADVANTAGE IMAGING LLC | 1982918629 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADVANTAGE IMAGING LLC | 05112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511004 | M5124 | Other intervertebral disc displacement, thoracic region | ICD10 | 05112017 | 72146, 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05092017 | 2017-05-09T09:32:52+00:00 | Q18373795 | 000114300-01 | Sharen | Kensler | OSU INTERNAL MED LLC | 928059 | DAVID A | LIEBNER | 1174753537 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511005 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 05112017 | 74182 | MRI ABDOMEN W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T11:52:37+00:00 | Q18395975 | 000036631-01 | MARY | TAYLOR | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511007 | G4452 | New daily persistent headache (NDPH) | ICD10 | 05112017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T12:56:09+00:00 | Q18396822 | 000065023-01 | ERNEST | BRAMELL | ADENA MEDICAL GROUP LLC | 902416 | JENNIFER L | KELLER | 1073576294 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 05112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511016 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05112017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T11:03:14+00:00 | Q18394987 | 000054998-01 | WESLEY | WOOD | OSU INTERNAL MED LLC | 932446 | KHALID | MUMTAZ | 1265831689 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511041 | K830 | Cholangitis | ICD10 | 05112017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T08:29:47+00:00 | Q18380381 | 000071616-01 | Constantinos | Karatsoridis | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 08072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511044 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 05112017 | J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05092017 | 2017-05-09T13:34:44+00:00 | Q18386632 | 000076130-01 | Richard | Sayatovich | LICKING MEM ONCOLOGY HEM | 931839 | D'ANNA N | MULLINS | 1790946861 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 05112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05122017 | 06112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511050 | C154 | Malignant neoplasm of middle third of esophagus | ICD10 | 05112017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05092017 | 2017-05-09T14:37:12+00:00 | Q18387970 | 000094946-01 | Tina | Holloway | OH INSTITUTE OF CARDIAC | 900957 | SALIM O | DAHDAH | 1982608790 | CRYSTAL CLEAR IMAGING | 937806 | 1346220662 | CRYSTAL CLEAR IMAGING | 1346220662 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CRYSTAL CLEAR IMAGING | 05112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511060 | R51 | Headache | ICD10 | 05112017 | 70460 | COMP. TOMOG. HEAD WITH IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05092017 | 2017-05-09T15:48:27+00:00 | Q18389513 | 000101271-01 | Rosalie | McCoy | COPC CENTRAL OHIO PRIMAR | 903895 | AMY R | KELLEY | 1659321453 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05112017 | Approved | MediGold Essential Care | HealthHelp | Inpatient | Outpatient | 05182017 | 06172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511067 | M25561 | Pain in right knee | ICD10 | 05112017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T10:59:20+00:00 | Q18368927 | 000022176-01 | JOHN | ADKINS | MADISON COUNTY HSP PRIMA | 920716 | GARY P | ERDY | 1053487108 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MADISON COUNTY HOSPITAL | 05112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511108 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 05112017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T19:43:33+00:00 | Q18338744 | 000057624-01 | LINDA | TATMAN | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511117 | D119 | Benign neoplasm of major salivary gland, unspecified | ICD10 | 05112017 | 70542 | MRI ORBIT/FACE/NECK W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T10:56:21+00:00 |  | 000088534-01 | Mary | Craig | OHIOHEALTH PHYS GRP | 910645 | KAILASH K | NARAYAN | 1932214707 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Out of Network Services | OONS | Pre-Service | PRE |  | GRANT MEDICAL CENTER | 05112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05112017 | 05182017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511134 | S064X9A, S32001A | Stable burst fracture of unsp lumbar vertebra, init | ICD10 | 05112017 | 72080, 72114, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 8, 8, 8 | HCPCS | HC | per physican's office CPT's - 72080  72114 |  |  |  |  | 0 |
| 05112017 | 2017-05-11T11:09:34+00:00 | NCT02764593 | 000077275-01 | Donald | Chamberlain | MID OH ONCOLOGY HEMATOLO | 937410 | ROBERT | RUPERT | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Clinical Trial | Outpatient | 05222017 | 11222017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511140 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 05112017 | 85025, 80053, 84703, 99211, 36415, 36592, 99213, 83735, 82150, 83690, 92612, 31575, A9579, Q9966, A9552, 77012, 36415, 99149, 99145, 85730, 85610, 85049, 88309, 88342, 88360, 21550, 10022, 76942, 76536, 82247, 84460, 84450, 84075, 84443, 82565, 84156, 82570, 81050, 84295, 84132, 82435, 82947, 82310, 82040, 87340, 86706, 86704, 86705, 86803, 99214, 77290, 77014, 77334, 77301, 77300, 77336, 77418, 77417, 96413, 96415, 96417, 92551, 92610, 92611, S9991, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 1, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 1, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185 | HCPCS | HC |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T16:09:12+00:00 |  | 000115209-01 | Stephen Douglas | Matson | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05112017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05112017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511141 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 05112017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T15:46:56+00:00 |  | 000086130-01 | Burton | Miller | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05112017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05112017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511154 | C8330 | Diffuse large B-cell lymphoma, unspecified site | ICD10 | 05112017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 3 | 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T15:16:02+00:00 | Q18404107 | 000042333-01 | MARY | PLACE | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Initial Review | INIT |  | LICKING MEMORIAL HOSPITAL | 05112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170511158 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 05112017 | 71260, 70552 | MRI BRAIN; INCLUDING BRAIN STEM; WITH CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05092017 | 2017-05-09T16:28:17+00:00 |  | 000102108-01 | Angla | Scarano | OH MEDICAL TRANSPORT LLC | 922193 |  | OH MEDICAL TRANSPORT LLC | 1316267297 | OH MEDICAL TRANSPORT LLC | 922193 | 1316267297 | OH MEDICAL TRANSPORT LLC | 1316267297 | Out of Network Services | OONS | Pre-Service | PRE |  | OH MEDICAL TRANSPORT LLC | 05112017 | Denied | MediGold Essential Care | Fax | Administrative Denial | Outpatient | 05112017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170510086 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 05112017 | A0428, A0425 | GROUND MILEAGE, PER STATUTE MILE | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T14:18:05+00:00 |  | 000088174-01 | William | Kidder | OH MEDICAL TRANSPORT LLC | 922193 |  | OH MEDICAL TRANSPORT LLC | 1316267297 | OH MEDICAL TRANSPORT LLC | 922193 | 1316267297 | OH MEDICAL TRANSPORT LLC | 1316267297 | Out of Network Services | OONS | Pre-Service | PRE |  | OH MEDICAL TRANSPORT LLC | 05112017 | Denied | MediGold Essential Care | Fax | Administrative Denial | Outpatient | 05112017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170511131 | R531 | Weakness | ICD10 | 05112017 | A0428, A0425 | GROUND MILEAGE, PER STATUTE MILE | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC |  |  |  |  |  | 0 |
