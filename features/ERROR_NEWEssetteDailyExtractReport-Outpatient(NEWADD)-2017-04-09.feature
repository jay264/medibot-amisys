Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-09
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-09
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
| 03302017 | 2017-03-30T14:06:20+00:00 |  | 000012593-01 | CHARLES | SCHRADER | MOUNT CARMEL HLTH PRVDRS | 909299 | PATRICIA C | GARCIA | 1184833436 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 04072017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04072017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403054 | R94131 | Abnormal electromyogram [EMG] | ICD10 | 04072017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 61, 61 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04052017 | 2017-04-05T09:31:15+00:00 |  | 000077536-01 | Marjorie | Hicks | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 04072017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04072017 | 05072017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405014 | C7931, C7949, S22009A, S32009A | Unsp fracture of unsp lumbar vertebra, init for clos fx | ICD10 | 04072017 | 22513, 22514, 22515, 64635, 64636, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T12:38:41+00:00 |  | 000114558-01 | ROBERT | MOSEL | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04072017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04112017 | 07112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405154 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 04072017 | 99211, 99212, 99213, 99214, 99215, G0463, 31575, 31579, 92507, 92610, 92612, 92526, 92597 | TINITUS MASKER TRIAL | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T08:47:16+00:00 | Q18097073 | 000073696-01 | Jane | Mcgrew | OSU INTERNAL MED LLC | 935661 | JOHN C | BYRD | 1770599664 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04102017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170406017 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 04072017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 | MediBot did not recognize the procedure code that was to be entered - 74177, Sorry - previous note was in error. MediBot did not process 74177 due to another authorization existed for this procedure code. |  |  |  |  | 0 |
| 04062017 | 2017-04-06T12:49:12+00:00 | Q18100588 | 000100451-01 | Eugene | Allen | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170406110 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 04072017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 | 4/07/2017 @ 09:06:00 received call from Taneka with HealthHelp.  Member has appointment today and provider requests procedure be changed from 74170 to 74177.  I have changed  and asked Taneka to send documentation on spreadsheet requesting the procedure change. |  |  |  |  | 0 |
| 04062017 | 2017-04-06T20:19:03+00:00 |  | 000099055-01 | Brent | Lisk | OH ONCOLOGY & HEMATOLOGY | 935093 | JEFFREY | ZANGMEISTER | 1871541979 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04072017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 04072017 | 07072017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170407001 | D7581 | Myelofibrosis | ICD10 | 04072017 | 93304, 93306, 93300, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 92, 92, 92, 92 | HCPCS | HC | P/c to Tracy R w/ Dr. Zangmeister to get the CPT code that they are wanting to use for this Transplant Evaluation.  Left VM with my contact information., R/VM from Tracy R w/ Dr. Zangmeisters office  she said the CPT codes would be 99241 - 99245.  Call her back wit further questions. 614-383-6218 |  |  |  |  | 0 |
| 04052017 | 2017-04-05T14:38:11+00:00 | Q18135049 | 000077831-01 | Carol | Pryor | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 04072017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170407007 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 04072017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T14:47:14+00:00 | Q18127229 | 000114912-01 | James | Harrison | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 04072017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170407019 | I200 | Unstable angina | ICD10 | 04072017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T16:57:13+00:00 | Q18144321 | 000039520-01 | LLOYD | GOSSETT | RADIOLOGY INC | 935042 | DOUGLAS W | WIDMAN | 1669461828 | RADIOLOGY INC | 938484 | 1609865708 | RADIOLOGY INC | 1609865708 | Radiology (HH) | OP RAD | Initial Review | INIT |  | RADIOLOGY INC | 04072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04062017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170407028 | C61 | Malignant neoplasm of prostate | ICD10 | 04072017 | 72195 | MRI PELVIS W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T12:25:53+00:00 | Q18143316 | 000110326-01 | Larry | Havens | NORTHRIDGE FAM PRCT LLC | 935033 | JOHN G | BOHLEN | 1689665242 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04062017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170407033 | M545 | Low back pain | ICD10 | 04072017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T13:01:37+00:00 | Q18143933 | 000063860-01 | BERNICE | RIFFLE | PICKAWAY HEALTH SERVICES | 929496 | ROBERT G | KLOOS | 1912950197 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 05072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170407040 | R109 | Unspecified abdominal pain | ICD10 | 04072017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T13:33:51+00:00 | Q18072957 | 000058406-01 | David | Richards | SIMONA L MOORE CNP | 930511 | SHERI L | THARP | 1811245111 | KNOX COMMUNITY ANESTHESI | 916470 | 1679626287 | KNOX COMMUNITY ANESTHESIA GROUP | 1679626287 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY ANESTHESIA GROUP | 04072017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03282017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170407051 | R4781 | Slurred speech | ICD10 | 04072017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T10:38:16+00:00 | Q18118218 | 000000905-01 | JAMES | NOLL | MOUNT CARMEL HLTH PRVDRS | 932440 | SYED ALI SHAN | IDRIS | 1942317060 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04042017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170407067 | M542 | Cervicalgia | ICD10 | 04072017 | 72156 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST MORE SEQUENCES;CERVICAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T18:05:35+00:00 |  | 000098817-01 | Mary | Wilson | ORTHO ASSOC OF SW OH INC | 912566 | JAN E | SAUNDERS | 1174525901 | KINEX MEDICAL COMPANY | 905947 | 1942238514 | KINEX MEDICAL COMPANY | 1942238514 | DME | DME | Pre-Service | PRE |  | KINEX MEDICAL COMPANY | 04072017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 04072017 | 04082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170405015 | M75111 | Incomplete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 04072017 | E0936, E0188 | SYNTHETIC SHEEPSKIN PAD | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04032017 | 2017-04-03T09:15:20+00:00 |  | 000048840-01 | ROBERT | BLACK | ORTHO & NEURO CONSULTS I | 910550 | DAVID A | THOMPSON | 1760407514 | MEDICAL SOLUTIONS SUPPLI | 949666 | 1760459010 | MEDICAL SOLUTIONS SUPPLIER | 1760459010 | DME | DME | Pre-Service | PRE |  | MEDICAL SOLUTIONS SUPPLIER | 04072017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 04072017 | 04082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170405018 | I890 | Lymphedema, not elsewhere classified | ICD10 | 04072017 | E0651, E0667 | SEGMENTAL PNEUMATIC APPLIANCE FOR USE WITH PNEUMATIC COMPRESSOR, FULL | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04032017 | 2017-04-03T15:22:42+00:00 |  | 000098119-01 | Arthur | Burkhard Jr | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 555555 | 0 | UNKNOWN PROVIDER | 0 | Predetermination Request | PR | Pre-Service | PRE |  | UNKNOWN PROVIDER | 04072017 | Denied | MediGold Southwest OH Essential Care | Fax | Services Available In-Network | Outpatient | 04072017 | 04082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170405027 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 04072017 | 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0 | CPT | C4 | Refer to auth A170309081 for clinical information., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04052017 | 2017-04-05T11:38:11+00:00 |  | 000098860-01 | Cynthia | Mccue | ALLIANCE PHYSICIANS INC | 913677 | J MICHAEL | THUNEY | 1215993415 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 04072017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Outpatient | 04072017 | 04082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170406009 | R413 | Other amnesia | ICD10 | 04072017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04062017 | 2017-04-06T15:02:48+00:00 |  | 000106206-01 | Emory | Harrod | DR. RICHARD B DARR M.D. | 908667 | RICHARD B | DARR | 1477565133 | TAJ MEDICAL INC | 902712 | 1811914765 | TAJ MEDICAL INC | 1811914765 | Radiology (HH) | OP RAD | Initial Review | INIT |  | TAJ MEDICAL INC | 04072017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Outpatient | 04072017 | 04082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170406139 | R0600 | Dyspnea, unspecified | ICD10 | 04072017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04072017 | 2017-04-07T08:40:16+00:00 |  | 000010602-01 | BEVERLY | WAY | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MEADOW GROVE TRANSITIONA | 947774 | 1326407339 | MEADOW GROVE TRANSITIONAL CARE | 1326407339 | Part B Therapy | OP THER | Pre-Service | PRE |  | MEADOW GROVE TRANSITIONAL CARE | 04072017 | Interim Approval | MediGold Classic Preferred | Fax | PPO - Approved Out-of-Network Rate | Outpatient |  |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Interim Approval | X170407003 | E119, R1312, R4182 | Altered mental status, unspecified | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
