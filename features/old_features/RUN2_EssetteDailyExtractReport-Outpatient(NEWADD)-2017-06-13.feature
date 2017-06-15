Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-13
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-13
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
| 05302017 | 2017-05-30T08:58:05+00:00 |  | 000053825-01 | JAMES | JUNE | NEUROSCIENCE CENTER | 911553 | ARIANE | PARK | 1093977431 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05302017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170530093 | G250 | Essential tremor | ICD10 | 06132017 | 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06012017 | 2017-06-01T12:58:53+00:00 |  | 000100451-01 | Eugene | Allen | MID OH ONCOLOGY HEMATOLO | 937410 | ROBERT | RUPERT | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06072017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601136 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 06132017 | 99211, 99212, 99213, 99214, 99215, 99201, 99202, 99203, 99204, 99205, 82310, 84100, 82565, 82374, 84520, 82435, 84295, 84132, 82947, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06012017 | 2017-06-01T16:21:37+00:00 |  | 000113549-01 | Ronald | Bering | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06132017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 06052017 | 09052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170602114 | K1379 | Other lesions of oral mucosa | ICD10 | 06132017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | PHONE CALL TO PLACE TO BRANDI C W/OSU PRE-CERT  MESSAGE LEFT ON CONFIDENTIAL VM REQUESTING CLINICAL DOCUMENTATION. CALL BACK NUMBER LEFT AS WELL., RETURN CALL FROM BRANDI  THIS REQUEST IS ADDENDUM TO AUTH X170516118.  NO ADDITIONAL CLINICALS TO BE SENT. |  |  |  |  | 0 |
| 06022017 | 2017-06-02T09:27:50+00:00 |  | 000067121-01 | Robert | Hickman IV | ORTHO TRAUMA SRVS LTD | 909385 | BRUCE G | FRENCH | 1568447696 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 06132017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05242017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170602122 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 06132017 | 99024, 99214, 73510, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T14:21:24+00:00 |  | 000078757-01 | Rose | Donaldson | LICKING MEM ONCOLOGY HEM | 931839 | D'ANNA N | MULLINS | 1790946861 | MYRIAD GENETIC LABORATORIES | 903741 | 1669484473 | MYRIAD GENETIC LABORATORIES | 1669484473 | Genetic Testing | OP GEN | Pre-Service | PRE |  | MYRIAD GENETIC LABORATORIES | 06132017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05222017 | 08222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605037 | C50919, Z803 | Family history of malignant neoplasm of breast | ICD10 | 06132017 | 81211, 81213 | BRCA1&2 UNCOM DUP/DEL VAR | CPT | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | CPT | C4 | Spoke with Julie.  Phone numbr is 800.469.7423 extension 1226.  She would like the date of this auth to start on 5/22/17 instead of 6/05/17., updated date from 3/05 - 9/05 to 5/22 - 8/22 as requested. |  |  |  |  | 0 |
| 06122017 | 2017-06-12T14:24:31+00:00 |  | 000065429-01 | JAMES | RAINEY | BUCKEYE HEART AND VASCUL | 902332 | SUKIRTHARAN | SINNATHAMBY | 1538138037 | BUCKEYE HEART AND VASCUL | 902332 | 1982805610 | SUKIRTHARAN SINNATHAMBY | 1538138037 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | SUKIRTHARAN | SINNATHAMBY | 06132017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08302017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612155 | I83893, I872, R600 | Localized edema | ICD10 | 06132017 | 36478, 36471 | INJ. SCLEROSING SOL.,MULT VNS, 1 LG | CPT | 1, 2 | 1, 2 | Approved, Approved | 124, 124 | CPT | C4 | Previously approved under auth 170428140.  Mbr unable to schedule all services prior to auth expiring. |  |  |  |  | 0 |
| 06102017 | 2017-06-10T09:34:26+00:00 | 18615557 | 000072533-01 | LYNN | HAWTHORNE | UNIVERSITY CARDIOLOGY | 904566 | MANMOHAN K | KATAPADI | 1528192820 | UNIVERSITY CARDIOLOGY | 937870 | 1730114851 | UNIVERSITY CARDIOLOGY | 1730114851 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNIVERSITY CARDIOLOGY | 06132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06152017 | 07152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170613002 | R072 | Precordial pain | ICD10 | 06132017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06122017 | 2017-06-12T12:44:58+00:00 | Q18629169 | 000097745-01 | Eddie | Sharp Jr | SPINAL TECHNOLOGY & PAIN | 912604 | DWIGHT | MOSLEY | 1033386982 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170613007 | M542 | Cervicalgia | ICD10 | 06132017 | 72141, 72146, 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06122017 | 2017-06-12T13:29:42+00:00 | Q18593637 | 000056321-01 | VIVIAN | MEYER | ORTHO FOOT & ANKLE CNTR | 948886 | MARK A | PRISSEL | 1700178035 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 06132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170613038 | M25374 | Other instability, right foot | ICD10 | 06132017 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06132017 | 2017-06-13T07:07:39+00:00 |  | 000082331-01 | Robert | Kattine | OSU SURGERY LLC | 914209 | SHERIF R | ABDEL-MISIH | 1255501250 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06132017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06142017 | 07142017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170613045 | C169, K669 | Disorder of peritoneum, unspecified | ICD10 | 06132017 | 49320, 49422, 49419, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T14:26:34+00:00 | Q18621275 | 000051842-01 | GARRY | BIRD | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06132017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 06092017 | 07092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170613060 | R319 | Hematuria, unspecified | ICD10 | 06132017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T14:32:38+00:00 | Q18621366 | 000086036-01 | Ronald | Kingery | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06132017 | 08122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170613062 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 06132017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 06122017 | 2017-06-12T08:46:41+00:00 | Q18621810 | 000100695-01 | Sandra | Bushong | KNOX COMMUNITY HSP PHYS | 905528 | HUSAIN A | RASHEED | 1437144029 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 06132017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170613068 | R599 | Enlarged lymph nodes, unspecified | ICD10 | 06132017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06122017 | 2017-06-12T16:16:21+00:00 |  | 000069360-01 | VINCENT | DEFILIPPO | OPHTHALMIC SURGEONS & CN | 937084 | DAVID M | LEHMANN | 1861478562 | CEN OHIO NEURO OPHTHALMO | 936377 | 1396822334 | AVROM D EPSTEIN | 1831118363 | Out of Network Services | OONS | Pre-Service | PRE | AVROM D | EPSTEIN | 06132017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08102017 | 11112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170613108 | H53123 | Transient visual loss, bilateral | ICD10 | 06132017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 94, 94, 94, 94, 94, 94, 94, 94, 94, 94 | CPT | C4 | MBR APPROVAL LETTER DID NOT PRINT.  PRINTED MANUALLY AND GIVEN TO DAVID W/INTAKE FOR MAILING. |  |  |  |  | 0 |
| 06132017 | 2017-06-13T14:57:48+00:00 | Q18640784 | 000062041-01 | DAVID | HAYS | ADENA MEDICAL GROUP LLC | 906495 | GANAPATHY | KRISHNAN | 1063537645 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Initial Review | INIT |  | ADENA REGIONAL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06132017 | 12102017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170613143 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 06132017 | J9267, J9045, J9267, J9045, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
