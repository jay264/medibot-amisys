Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-02
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-02
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
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
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
| 02222017 | 2017-02-22T15:59:04+00:00 | Q17773553 | 000087721-01 | Shirley | Tennant | MERCY HEALTH PHYSICIANS | 926848 | MUHAMMAD S | ASHRAF | 1891765038 | MERCY HEALTH PHYSICIANS | 911477 | 1205887023 | MERCY HEALTH PHYSICIANS CINCINNATI L | 1205887023 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MERCY HEALTH PHYSICIANS CINCINNATI L | 03312017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03282017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170223160 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 03312017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01262017 | 2017-01-26T13:55:51+00:00 | Q17578960 | 000083421-01 | Jollene | Hoffer | COSHOCTON COUNTY MEM HSP | 922139 | ABDULHAY | ALBIRINI | 1174509160 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Initial Review | INIT |  | GENESIS HEALTHCARE SYSTEM | 03312017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03062017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170301029 | R079 | Chest pain, unspecified | ICD10 | 03312017 | 93454 | CORONARY ARTERY ANGIO S&I | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T06:38:55+00:00 | Q18011355 | 000085633-01 | Carol | Kenney | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 03312017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03282017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170322092 | K439 | Ventral hernia without obstruction or gangrene | ICD10 | 03312017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T07:41:07+00:00 |  | 000095615-01 | PHYLLIS | AUGST | SOMC MED CARE FOUNDATION | 922226 | MUHAMMAD T | GILL | 1033323381 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 03312017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03282017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170329084 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 03312017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T11:39:43+00:00 |  | 000000571-01 | ALBERTA | SHAL | AMERICAN HLTH NETWORK OF | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03312017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03292017 | 06292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170329110 | I739 | Peripheral vascular disease, unspecified | ICD10 | 03312017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T14:06:09+00:00 |  | 000070691-01 | Jerome | Dague | OH MEDICAL TRANSPORT LLC | 922193 |  | OH MEDICAL TRANSPORT LLC | 1316267297 | OH MEDICAL TRANSPORT LLC | 922193 | 1316267297 | OH MEDICAL TRANSPORT LLC | 1316267297 | Out of Network Services | OONS | Pre-Service | PRE |  | OH MEDICAL TRANSPORT LLC | 03312017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03242017 | 03242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330010 | J189 | Pneumonia, unspecified organism | ICD10 | 03312017 | A0425, A0428 | AMBULANCE SERVICE, BASIC LIFE SUPPORT, NON-EMERGENCY TRANSPORT, (BLS) | HCPCS | 7, 1 | 7, 1 | Approved, Approved | 1, 1 | HCPCS | HC |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T11:22:34+00:00 |  | 000089512-01 | Bruce | Lee | DAYTON SPINE & REHABILIT | 901552 | DAVID S | SEYMOUR | 1487656005 | DAYTON ARTIFICIAL LIMB | 908137 | 1720089253 | DAYTON ARTIFICIAL LIMB | 1720089253 | Out of Network Services | OONS | Pre-Service | PRE |  | DAYTON ARTIFICIAL LIMB | 03312017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03302017 | 05302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330016 | Z89511 | Acquired absence of right leg below knee | ICD10 | 03312017 | L5700, L5637, L5671, L5673, L5685, L5781, L8400, L8420, L8440, L5629, L5940, L5620 | ADDITION TO LOWER EXTREMITY, TEST SOCKET, BELOW KNEE | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T11:09:52+00:00 |  | 000066657-01 | MARLANE | KARR | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03312017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04032017 | 07032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330018 | D490, K0511 | Chronic gingivitis, non-plaque induced | ICD10 | 03312017 | 92507, 92610, 92612, 92526, 31575, 31579, 92599, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T10:07:00+00:00 |  | 000085235-01 | Patricia | Roberts | COSHOCTON COUNTY MEM HSP | 922094 | NICHOLAS V | VARRATI | 1932165230 | COSHOCTON COUNTY MEM HSP | 922094 | 1053398099 | NICHOLAS V VARRATI | 1932165230 | Out of Network Services | OONS | Pre-Service | PRE | NICHOLAS V | VARRATI | 03312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03312017 | 04282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330021 | M47817 | Spondyls w/o myelopathy or radiculopathy, lumbosacr region | ICD10 | 03312017 | 64493, 64494 | INJ PARAVERT F JNT L/S 2 LEV | CPT | 1, 1 | 1, 1 | Approved, Approved | 29, 29 | CPT | C4 | Called Dr Adesioye & Dr Sayegh offices and they are currently not accepting patients   Stated this may change in next month   Member lives in SE Region |  |  |  |  | 0 |
| 03292017 | 2017-03-29T16:05:26+00:00 |  | 000117165-01 | HOLLY | WENDELL | OPHTHALMIC SURGEONS & CN | 937084 | DAVID M | LEHMANN | 1861478562 | CEN OHIO NEURO OPHTHALMO | 936377 | 1396822334 | AVROM D EPSTEIN | 1831118363 | Out of Network Services | OONS | Pre-Service | PRE | AVROM D | EPSTEIN | 03312017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 06142017 | 09142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330023 | G43109 | Migraine with aura, not intractable, w/o status migrainosus | ICD10 | 03312017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 | 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T06:56:57+00:00 |  | 000054475-01 | Thomas | Keane | FAIRFIELD HLTHCARE PROFS | 943028 | RYAN K | HARRISON | 1528295169 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03312017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331002 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 03312017 | 73502 | X-RAY EXAM HIP UNI 2-3 VIEWS | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Called Angie(Angela Ayala-Griffin) @ Dr Harrison's office   She states MBR is still in hospital  this am but Dr Harrison wants f/u appointment scheduled for 4/5 as anticipated d/c this weekend.  She really is requesting AP & Lateral hip x-ray  CPT code 73502 |  |  |  |  | 0 |
| 03302017 | 2017-03-30T17:43:29+00:00 |  | 000040479-01 | PATRICIA | PIERCE | OSU RADIOLOGY LLC | 907434 | NIDHI J | GUPTA | 1336342153 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03312017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04142017 | 05142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331003 | I2692 | Saddle embolus of pulmonary artery w/o acute cor pulmonale | ICD10 | 03312017 | 37193, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T08:30:56+00:00 | q18091249 | 000099144-01 | Linda | Bourland | ONCOLOGY HEMATOLOGY CARE | 921640 | CYNTHIA C | CHUA | 1700879582 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 03312017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 06292017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331007 | C561 | Malignant neoplasm of right ovary | ICD10 | 03312017 | J2505 | INJECTION, PEGFILGRASTIM, 6 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T10:37:58+00:00 | Q18093715 | 000078247-01 | Judy | Cox | MERCY HEALTH PHYSICIANS | 901616 | DAVID G | MONJOT | 1316906811 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03312017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 04302017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331008 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 03312017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T12:24:31+00:00 | Q18088711 | 000070376-01 | Thomas | Joyce | ROBERT D RUPERT JR MD IN | 906637 |  | ROBERT D RUPERT JR MD INC | 1437395183 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03312017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 06282017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331009 | C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 03312017 | J9045, J9267, J9055 | INJECTION, CETUXIMAB, 10 MG | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T12:20:44+00:00 | Q18098808 | 000103357-01 | Bertha | Hays | KNOX COMMUNITY HSP PHYS | 905528 | HUSAIN A | RASHEED | 1437144029 | KNOX COMMUNITY HSP PHYS | 911677 | 1154483022 | KNOX COMMUNITY HOSPITAL PHYS PRCTS | 1154483022 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL PHYS PRCTS | 03312017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 07022017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331010 | C8590 | Non-Hodgkin lymphoma, unspecified, unspecified site | ICD10 | 03312017 | J2505 | INJECTION, PEGFILGRASTIM, 6 MG | HCPCS | 0 | 1 |  | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T14:06:14+00:00 | Q18098601 | 000103357-01 | Bertha | Hays | KNOX COMMUNITY HSP PHYS | 905528 | HUSAIN A | RASHEED | 1437144029 | KNOX COMMUNITY HSP PHYS | 911677 | 1154483022 | KNOX COMMUNITY HOSPITAL PHYS PRCTS | 1154483022 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL PHYS PRCTS | 03312017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 07022017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331011 | C8590 | Non-Hodgkin lymphoma, unspecified, unspecified site | ICD10 | 03312017 | J9070, J9000, J9370, J9310, J1453 | Fosaprepitant injection | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T14:39:47+00:00 | 18083429 | 000073283-01 | Mary | Lilly | OSU HLTH SYS ORTHO ONC P | 925160 | RUPA | GHOSH-BERKEBIL | 1417172032 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03312017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03292017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331013 | M25561 | Pain in right knee | ICD10 | 03312017 | 73723 | MRI JOINT LWR EXTR W/O&W DYE | CPT | 0 | 1 |  | 33 | CPT | C4 | Approved OON for Arthur James Cancer Hospital Auth X170316108 |  |  |  |  | 0 |
| 03312017 | 2017-03-31T15:38:56+00:00 |  | 000102255-01 | Harold | Estep | CEN OH UROLOGY GRP INC | 942974 | ROBERT J | PIROLI | 1730180662 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Predetermination Request | PR | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 03312017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04172017 | 07172017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331015 | C61, C7951 | Secondary malignant neoplasm of bone | ICD10 | 03312017 | A9606 | RADIUM RA223 DICHLORIDE THER | HCPCS | 1 | 1 | Approved | 92 | HCPCS | HC | P/c to Jody L w/ Dr. Piroli office  let her know that CPT code A9609 is not an active code.  She said the code should read A9606.  She first tried health help but this not one they do.  I thanked her for the corrected information. |  |  |  |  | 0 |
| 03312017 | 2017-03-31T16:07:43+00:00 | Q18068817 | 000112593-01 | Robert | Long | ALLIANCE PHYSICIANS INC | 917471 | PHILLIP M | PORCELLI | 1629287677 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 03312017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 03292017 | 04282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331016 | M4722 | Other spondylosis with radiculopathy, cervical region | ICD10 | 03312017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T10:40:15+00:00 |  | 000102496-01 | DOROTHY | THOMAS | NEAST DERM & COSMETIC | 906211 | JOEL B | HERRON | 1154323681 | NEAST DERM & COSMETIC | 906211 | 1609882836 | JOEL B HERRON | 1154323681 | Predetermination Request | PR | Pre-Service | PRE | JOEL B | HERRON | 03312017 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Outpatient | 03312017 | 04012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170321113 | L700 | Acne vulgaris | ICD10 | 03312017 | 10040 | ACNE SURGERY | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Message left for provider to obtain additional clinical information, Message left for member to obtain additional clinical information |  |  |  |  | 0 |
| 03242017 | 2017-03-24T16:11:21+00:00 |  | 000114443-01 | Richard | Rees | ADENA MEDICAL GROUP LLC | 934075 | ANDREW C | PORTER | 1609016344 | ADVANCED INFUSION SOLUTIONS | 914790 | 1336243393 | ADVANCED INFUSION SOLUTIONS | 1336243393 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | ADVANCED INFUSION SOLUTIONS | 03312017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Outpatient | 03312017 | 04012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170327026 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 03312017 | J3010, A9900, A9901 | DME DELIVERY, SET UP, AND/OR DISPENSING SERVICE COMPONENT OF ANOTHER HCP | HCPCS | 0, 0, 0 | 240, 6, 6 | Denied, Denied, Denied | 0, 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03272017 | 2017-03-27T16:03:19+00:00 |  | 000031767-01 | MARJORIE | THORNTON | MOUNT CARMEL HLTH PRVDRS | 929338 | GENEVIEVE T | CO-FAUSTINO | 1689905150 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 03312017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 03312017 | 04012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170328097 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03312017 | E0570 | NEBULIZER, WITH COMPRESSOR | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03282017 | 2017-03-28T16:37:37+00:00 |  | 000062993-01 | JO | STEIGERWALD | BOSTON HEART DIAGNOSTICS CORPORATION | 927706 |  | BOSTON HEART DIAGNOSTICS CORPORATION | 1922259753 | BOSTON HEART DIAGNOSTICS CORPORATION | 927706 | 1922259753 | BOSTON HEART DIAGNOSTICS CORPORATION | 1922259753 | Out of Network Services | OONS | Pre-Service | PRE |  | BOSTON HEART DIAGNOSTICS CORPORATION | 03312017 | Denied | TRINITY HEALTH | Fax | Services Available In-Network | Outpatient | 03312017 | 04012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170329051 | Z955 | Presence of coronary angioplasty implant and graft | ICD10 | 03312017 | 83721 | LIPOPROTEIN, DIRECT MEASUREMENT; LDL | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03292017 | 2017-03-29T07:54:06+00:00 |  | 000013831-01 | RUTH | PARRISH | MADISON FAMILY HEALTH | 911210 | GINA N | MOODY | 1033378989 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 03312017 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Outpatient | 03312017 | 04012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170329093 | G4733, J439, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03312017 | E0466, E0562 | HUMIDIFIER, HEATED, USED WITH POSITIVE AIRWAY PRESSURE DEVICE | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | Spoke with Melissa @ Cornerstone (614-866-5520_ as progress note on 3/24/17 states that She improved with BiPAP and Diuresis  OK for Discharge with taper for prednisone and orders for BiPAP at SNF  Melissa stated she will call back after she checks something out, Left VM message for Carrie; CM Manager of SW at Darby Glen (614-777-6001) SNF MBR was discharged to to clarify did she have BiPap or a Non Invasive Ventilator  how she is tolerating and is she compliant  Await a call back, Called left vmm for Melissa @ Cornerstone and also for Carrie; Director of SW @ Darby Glen Await CB, Called Gina Moody DO's office at Mount Carmel Pulmonary & Sleep  614-464-0788 ext 2705 left message for why member needs a Trilogy 100/200 Non Invasive Ventilator vs. Bi-Pap  Await Call back/fax, Spoke with Carrie @ Darby Glen then spoke with nurse (Lori Bolen LPN) stated MBR is using BiPap at night and tolerates this well.  She has not had any Respiratory Distress since admission.  Discharge will not be till at least next week, Melissa Poindexter Respiratory Therapist @ Cornerstone stated that her medical director also is questioning the Trilogy  Stated Trilogy does allow for better control of Tidal Volume but since she is responding to BiPAP it 'probably isn't necessary'  She did e-mail info on it, Left another message for Dr Moody's Medical Assistant requesting more clinical to document why member needs the Trilogy instead of BiPAP, Letter is written in appropriate language with no abbreviations and is therefore approved., Left message for Melissa Poindexter @ Cornerstone (614-866-5520 ext 15220) that Trilogy 100 Non Invasive Ventilator was denied but we would approve a BiPAP, Left message for Gina Moody DO's Medical Assistant(No name on vm and no name on clinical information) @Mount Carmel Central Ohio Pulmonary & Sleep (614-464-0788 ext 2705) that Trilogy 100 Non Invasive Ventilator was denied but we would approve a BiPAP, Received a call from Ericka Dr Moody's Medical Assistant;  stated she will be ordering BiPAP but Dr Moody is currently off today.  She now has Melissa Poindexter @ Cornerstone phone # |  |  |  |  | 0 |
