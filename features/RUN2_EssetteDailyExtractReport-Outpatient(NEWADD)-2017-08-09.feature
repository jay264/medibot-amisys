Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-09
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-09
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
| 08082017 | 2017-08-08T10:39:39+00:00 | Q19040195 | 000095260-01 | James | Laspisa | COPC CENTRAL OHIO PRIMAR | 936336 | ROBERT A | ECKER | 1194701284 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 08092017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809055 | M25362 | Other instability, left knee | ICD10 | 08092017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07312017 | 2017-07-31T15:15:18+00:00 |  | 000038773-01 | PHILLIP | RICHCREEK | OH EAR INSTITUTE LLC | 904433 | JOHN M | RYZENMAN | 1871501437 | COCHLEAR AMERICA GROUP | 904032 | 1336149426 | COCHLEAR AMERICA GROUP | 1336149426 | DME | DME | Pre-Service | PRE |  | COCHLEAR AMERICA GROUP | 08092017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07312017 | 01272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170801088 | H905 | Unspecified sensorineural hearing loss | ICD10 | 08092017 | L8691 | Aud osseo dev ext snd proces | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 08032017 | 2017-08-03T16:00:51+00:00 |  | 000043746-01 | NANCY | DAY | KATZ, STEVEN E | 936995 | STEVEN E | KATZ | 1518906866 | KATZ, STEVEN E | 936995 | 1518906866 | STEVEN E KATZ | 1518906866 | Out of Network Services | OONS | Pre-Service | PRE | STEVEN E | KATZ | 08092017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10172017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803153 | E0500, H0520, H16213 | Exposure keratoconjunctivitis, bilateral | ICD10 | 08092017 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 08082017 | 2017-08-08T08:50:58+00:00 | Q19037835 | 000033468-01 | RONALD | FINK | ADENA MEDICAL GROUP LLC | 926843 | EMILIA N | ANIGBO | 1083816953 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 09102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809041 | Z87891 | Personal history of nicotine dependence | ICD10 | 08092017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 08082017 | 2017-08-08T09:44:53+00:00 | Q19022193 | 000110528-01 | Pete | Pizzino | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08042017 | 09032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809092 | M545 | Low back pain | ICD10 | 08092017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T10:56:49+00:00 |  | 000091722-01 | BARBARA | TIMMS | OSU HLTH SYSTEM NEUROSUR | 908648 | PUNIT | AGRAWAL | 1578787990 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 08092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08072017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802130 | G250 | Essential tremor | ICD10 | 08092017 | 95978, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 08042017 | 2017-08-04T15:26:42+00:00 |  | 000101580-01 | LEE | WHITMER | OSU INTERNAL MED LLC | 907477 | STEVEN M | DEVINE | 1124036579 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08092017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08152017 | 11152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804182 | C8310, Z9481 | Bone marrow transplant status | ICD10 | 08092017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 92565, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82947, 84439, 84443, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 08072017 | 2017-08-07T09:56:28+00:00 | Q19026355 | 000028393-01 | SAMMY | JUNK | MOUNT CARMEL HLTH PRVDRS | 904972 | BRADFORD B | MULLIN | 0 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 08092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 09072017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170807007 | C320 | Malignant neoplasm of glottis | ICD10 | 08092017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08072017 | 2017-08-07T14:32:26+00:00 | Q19033801 | 000113421-01 | JOSEPH | BECKER | MOUNT CARMEL HLTH PRVDRS | 942981 | ESSA M | ESSA | 1992966113 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08072017 | 10062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809074 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 08092017 | 93461 | R&L HRT ART/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 08082017 | 2017-08-08T08:50:31+00:00 | Q19037870 | 000111120-01 | Max | Pierce | CARDIOVASCULAR SPEC LLC | 937026 | RICHARD M | BARDALES | 1619978889 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 08092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809042 | R079 | Chest pain, unspecified | ICD10 | 08092017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08072017 | 2017-08-07T14:34:36+00:00 | Q19001252 | 000111929-01 | Larry | Gibson | S ZANESVILLE FAM MED CTR | 922007 | BRADLEY A | COLMAN | 1972593176 | GENESIS HEALTHCARE SYSTEM DME | 924099 | 1972640332 | GENESIS HEALTHCARE SYSTEM DME | 1972640332 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM DME | 08092017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809009 | R410 | Disorientation, unspecified | ICD10 | 08092017 | 70450, 74150 | CAT SCAN ABDOMEN WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T08:05:54+00:00 | Q18708473 | 000032663-01 | DONALD | GANTT SR | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07062017 | 09042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626025 | I255 | Ischemic cardiomyopathy | ICD10 | 08092017 | 33249, C1721, C1722, C1777, C1895 | LEAD, CARDIOVERTER-DEFIBRILLATOR, ENDOCARDIAL DUAL COIL (IMPLANTABLE) | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 07052017 | 2017-07-05T09:46:45+00:00 | Q18789299 | 000108940-01 | James | Dilley | GENESIS MEDICAL GRP LLC | 917348 | SCOTT A | WEGNER | 1699729434 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 08092017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07052017 | 08042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170706001 | C7A8 | Other malignant neuroendocrine tumors | ICD10 | 08092017 | 71260, 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 0, 1 | 1, 1 | Void, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T17:31:32+00:00 |  | 000110482-01 | Dennis | Donovan | OSU PHYSICAL MED LLC | 928551 | SARAH | GROVE | 1962721506 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04072017 | 08302017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412039 | H543, I63512, I639, I69351, I6990, R269, R279, R41841, R4189, R5381, Z7409 | Other reduced mobility | ICD10 | 08092017 | 97110, 97112, 97116, 97530, 97001, 97535, 97530, 97760, 97032, 92507, 92526, 92611, 97110, 97112, 97116, 97530, 97001, 97535, 97530, 97760, 97032 | APPLICATION OF A MODALITY, ELECTRICAL STIMULATION | CPT | 72, 72, 36, 72, 36, 36, 0, 36, 36, 36, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 72, 72, 36, 72, 36, 36, 54, 36, 36, 36, 36, 1, 54, 54, 30, 30, 30, 24, 24, 24, 24 | Approved, Approved, Approved, Approved, Approved, Approved, Denied, Approved, Approved, Approved, Approved, Approved, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146 | CPT | C4 | MESSAGE LEFT FOR JANIE WHEELER RN MC NEUROSCIENCE COORDINATOR FOR INQUIRY OF OUTPT STROKE REHAB  LEFT ON CONFIDENTIAL VM AND MESSAGE FOR RETURN CALL ALSO LEFT ON CELL PHONE., PHONE CALL PLACED TO KIM PREECE RN AT OSU SEEKING CLARIFICATION. MESSAGE LEFT ON CONFIDENTIAL VM. FOR RETURN CALL., PHONE CALL PLACED TO OUTPT STROKE REHAB AT MT CARMEL EAST.  SPOKE TO BRITTANY (SPEECH THERAPIST) SHE CONSULTED W/JEFF DIRECTOR AT EAST. THEY ARE ABLE TO PROVIDE INTENSE PT  OT AND SPEECH THERAPY.  THEY DO NOT HAVE BWST.  SOCIAL WORKER AND REHAB PSYCH IS NOT PART OF THE STROKE REHAB WITHIN MT CARMEL., REC'D FAXED REQUEST 6/12/17 @ 13:16:16 FOR AUTH EXTENSION TO 8/30/17.  MBR HAS NOT USED ALL OF APPROVED VISITS.  EXTENSION IS TO ALLOW MBR TO USE HIS REMAINING VISITS FROM ORIGINAL APPROVAL.  CONFIRMATION FAXED TO PROVIDER AND TO MEMBER VIA USPS. |  |  |  |  | 0 |
| 07272017 | 2017-07-27T11:08:22+00:00 |  | 000082872-01 | Kathy | Sullivan | SUPERIOR MED LLC | 921937 | EYAD | MAHAYRI | 1316999477 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08092017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 07272017 | 10272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727127 | C50912, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 08092017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, 85025, 82378, 84156, 82378, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07182017 | 2017-07-18T07:50:18+00:00 |  | 000109241-01 | PATRICIA | FRALEY | NEUROSCIENCE CENTER | 915908 | YASUSHI | KISANUKI | 1518182419 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08092017 | Approved | MediGold Essential Care | Member Representative | Medical Criteria Met | Outpatient | 07182017 | 08182017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170718036 | G119, G231, R760 | Raised antibody titer | ICD10 | 08092017 | 71020, 62270, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC | PHONE CALL TO OSU NEUROSCIENCE  REQUESTING CLINICALS SHOWING TREATMENT PLAN AND ONGOING CARE. AS THERE HAS NEVER BEEN A REFERRAL MADE TO MEDIGOLD FOR OON SERVICES WITH OSU NEUROLOGY. SPOKE TO JOSH  HE TOOK INFORMATION AND WILL FAX OVER DOCUMENTATION. |  |  |  |  | 0 |
| 08082017 | 2017-08-08T11:07:58+00:00 | Q19040595 | 000096375-01 | Candy | Rafferty | MOUNT CARMEL HLTH PRVDRS | 932449 | TYLER B | ANDERSON | 1720240633 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809056 | R042 | Hemoptysis | ICD10 | 08092017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T10:03:44+00:00 | Q18422358 | 000103644-01 | LINDA | MOORE | SPRINGFIELD HEMATOLOGY & | 901547 | DALJEET | SINGH | 1598784092 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 08092017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 12122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517002 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 08092017 | J9267, J9045 | CARBOPLATIN, 50 MG | HCPCS | 300, 12 | 300, 12 | Approved, Approved | 510, 510 | HCPCS | HC | J9045: 12 Carboplatin 600mg IV day x 1 cycle (1 treatment).  Total billing units = 12; J9267: 300 Taxol 300mg IV x1 cycle (1 treatment).  Total billing units = 300 |  |  |  |  | 0 |
| 07312017 | 2017-07-31T09:09:29+00:00 |  | 000010090-01 | FRANKIE | CHAN | COLS EYE CONSULTANTS INC | 935516 | THOMAS F | MAUGER | 1295762623 | COLS EYE CONSULTANTS INC | 935516 | 1295762623 | THOMAS F MAUGER | 1295762623 | Out of Network Services | OONS | Pre-Service | PRE | THOMAS F | MAUGER | 08092017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07312017 | 10312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170731100 | B0052, H16212, H40051, H53021 | Refractive amblyopia, right eye | ICD10 | 08092017 | 99213, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T11:45:03+00:00 |  | 000081944-01 | RAYMOND | LEIENDECKER | OSU SURGERY LLC | 934871 | JEAN E | STARR | 1770530693 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Clinical Trial | TRIAL | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05262017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503292 | I10 | Essential (primary) hypertension | ICD10 | 08092017 | C1820, 0268T, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T18:03:41+00:00 | Q18660933 | 000070176-01 | Sue | Collins | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07242017 | 10242017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616052 | C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 08092017 | J1442 | INJ, FILGRASTIM G-CSF 1MCG | HCPCS | 3360 | 3360 | Approved | 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 08082017 | 2017-08-08T12:49:08+00:00 | Q19042555 | 000091158-01 | Ellen | Estridge | ALLIANCE PHYSICIANS INC | 917251 | MANISHA M | NANDA | 1164634937 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | INJU & RAJ SOIN MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809063 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 08092017 | 70460 | COMP. TOMOG. HEAD WITH IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07062017 | 2017-07-06T13:59:12+00:00 |  | 000091151-01 | Paula | Seevers | ANDREWS, DEBORAH | 944881 | DEBORAH | ANDREWS | 1114968807 | ANDREWS, DEBORAH | 944881 | 1114968807 | DEBORAH ANDREWS | 1114968807 | OP Behavioral Health | OP BH | Pre-Service | PRE | DEBORAH | ANDREWS | 08092017 | Approved | MediGold Southwest OH Essential Care | Member | Medical Criteria Met | Outpatient | 06172017 | 10172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170706170 | F4323 | Adjustment disorder with mixed anxiety and depressed mood | ICD10 | 08092017 | 90837 | PSYTX PTAND/FAMILY 60 MINUTES | CPT | 8 | 8 | Approved | 123 | CPT | C4 | PHONE CALL PLACED THE NUMBER THE MEMBER PROVIDED FOR DR ANDREWS AT 513-561-5507  THIS NUMBER IS NOT A WORKING NUMBER., I LOCATED DR ANDREWS OFFICE NUMBER (513) 225-0155  AND LEFT A MESSAGE ON CONFIDENTIAL VOICE MAIL REQUESTING INFORMATION FOR MEMBER.  REQUESTED A RETURN CALL., RECEIVED RETURN CALL FROM DR ANDREWS  SHE IS OUT OF OFFICE UNTIL 7/20/17.  SHE IS HAPPY TO SEND INFORMATION AND REQUEST FOR ADDITIONAL VISITS  OBTAINED HER FAX NUMBER  WILL FAX HER PRIOR AUTH FORM.  REQUESTED TO EXTENDED DECISION PERIOD UNTIL ABLE TO GET INFORMATION TO MEDIGOLD. |  |  |  |  | 0 |
| 07142017 | 2017-07-14T10:28:42+00:00 | Q18863947 | 000094451-01 | Tanya | Jasinski | UNIVERSITY HOSPITAL | 945440 | DAVID S | FELDMAN | 1386688711 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | UNKNOWN PROVIDER | 08092017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 09172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717083 | Z941 | Heart transplant status | ICD10 | 08092017 | 93451 | RIGHT HEART CATH | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 08082017 | 2017-08-08T12:52:11+00:00 | Q19003223 | 000057233-01 | DONNA | TODD | RADIOLOGY INC | 944216 | MALOLAN S | RAJAGOPALAN | 1316265960 | RADIOLOGY INC | 938484 | 1609865708 | RADIOLOGY INC | 1609865708 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | RADIOLOGY INC | 08092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 10312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809031 | C50412 | Malig neoplasm of upper-outer quadrant of left female breast | ICD10 | 08092017 | 77424 | IO RAD TX DELIVERY BY X-RAY | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T08:14:22+00:00 |  | 000056964-01 | LOUIS | SHAHEEN | OHIOHEALTH PHYS GRP | 907826 | STEVEN J | YAKUBOV | 1316942782 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Clinical Trial | TRIAL | Pre-Service | PRE |  | RIVERSIDE METHODIST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07202017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714081 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 08092017 | 71034 | CHEST INCLUDING FLUOROSCOPY | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
