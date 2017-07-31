Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-27
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-27
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
| 05112017 | 2017-05-11T16:40:25+00:00 |  | 000020762-01 | FLORENCE | HARDESTY | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Part B Therapy | OP THER | Pre-Service | PRE |  | ZANESVILLE HEALTH AND REHABILITATION | 07272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05112017 | 05312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512123 | G309, I214, M545 | Low back pain | ICD10 | 07272017 | 97161, 97116, 97112, 97110, 97165, 97530, 97110 | THERAPEUTIC PROCEDURE, ONE OR MORE AREAS, | CPT | 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1 | , , , , , ,  | 21, 21, 21, 21, 21, 21, 21 | CPT | C4 | Spoke with Tracy at the SNF  asked about the contract that was sent on friday 5/12/16 but not rec. back yet. Tracy states it had to be sent to the Administrator for review and they had some questions about the contract  directed them to contact JP and states she will do that., Non Compliant NOMNC received |  |  |  |  | 0 |
| 05162017 | 2017-05-16T10:03:44+00:00 | Q18422358 | 000103644-01 | LINDA | MOORE | SPRINGFIELD HEMATOLOGY & | 901547 | DALJEET | SINGH | 1598784092 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07272017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 10312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517002 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 07272017 | J9267, J9045 | CARBOPLATIN, 50 MG | HCPCS | 300, 12 | 300, 12 | Approved, Approved | 210, 210 | HCPCS | HC | J9045: 12 Carboplatin 600mg IV day x 1 cycle (1 treatment).  Total billing units = 12; J9267: 300 Taxol 300mg IV x1 cycle (1 treatment).  Total billing units = 300 |  |  |  |  | 0 |
| 05182017 | 2017-05-18T07:54:09+00:00 | Q18440428 | 000028032-01 | Carolyn | Riley | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05232017 | 11192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519005 | C8203 | Follicular lymphoma grade I, intra-abdominal lymph nodes | ICD10 | 07272017 | J9034, J2469, J9310 | RITUXIMAB, 100 MG | HCPCS | 1596, 60, 36 | 1596, 60, 36 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9310: 36 Rituxan: 555 mg IV Day 1 q 28 days x 6 cycles (6 treatments).  Total billing units = 36; J9034: 1596 Bendeka: 133 mg IV Day 1 and Day 2 q 28 days x 6 cycles (12 treatments).  Total billing units = 1596; J2469: 60 Aloxi: 0.25 mg IV Day 2 q 28 days x 6 cycles (6 treatments).  Total billing units = 60 |  |  |  |  | 0 |
| 05222017 | 2017-05-22T10:03:52+00:00 | Q18477167 | 000045678-01 | JAMES | FALLER | HEMATOLOGY ONCOLOGY CONS | 933419 | ANITHA S | NALLARI | 1881649879 | HEMATOLOGY ONCOLOGY CONS | 938154 | 1780793901 | HEMATOLOGY ONCOLOGY CONSULTANT | 1780793901 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | HEMATOLOGY ONCOLOGY CONSULTANT | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05242017 | 11202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170523005 | C188 | Malignant neoplasm of overlapping sites of colon | ICD10 | 07272017 | J9263, J0640, J9035 | INJECTION, BEVACIZUMAB, 10 MG | HCPCS | 300, 15, 32 | 300, 15, 32 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9263: 300 Oxaliplatin 150mg IV every day 1 every 14 days x 1 cycles ( 1 treatments ).  Total billing units = 300; J0640: 15 Leucovorin Calcium 720 IV every 14 days x 1 cycle (1 treatment ).  Total billing units = 15; J9035: 32 Bevacizumab 320 mg IV every 14 days x 1 cycles (1 treatment ).  Total billing units = 32 |  |  |  |  | 0 |
| 06022017 | 2017-06-02T22:22:51+00:00 | Q18566224 | 000078247-01 | Judy | Cox | SPRINGFIELD HEMATOLOGY & | 920373 | ZAW M | BO | 1578701116 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05252017 | 11212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606073 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 07272017 | J9045, J9267 | PACLITAXEL INJECTION | HCPCS | 72, 2340 | 72, 2340 | Approved, Approved | 181, 181 | HCPCS | HC | J9045: 72 Carboplatin AUC 2 180 mg IV Days 1  8  15 every 28 days x 6 cycles ( 18 treatments ). Total billing units = 72; J9267: 2340 Paclitaxel 130 mg IV Days 1  8  15 every 28 days x 6 cycles ( 18 treatments ). Total billing units = 2340 |  |  |  |  | 0 |
| 06022017 | 2017-06-02T15:59:18+00:00 | Q18568281 | 000091896-01 | Fred | Thomas | SPRINGFIELD HEMATOLOGY & | 920373 | ZAW M | BO | 1578701116 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02062017 | 11292017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606088 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 07272017 | J9041 | INJECTION, BORTEZOMIB, 0.1 MG | HCPCS | 600 | 600 | Approved | 297 | HCPCS | HC | J9041: 600 Velcade 2.5mg subq day 1  8  15  22 Q28 days x 6 cycles (24 treatments). Total billing units = 600, Canceled.  Built in error |  |  |  |  | 0 |
| 06132017 | 2017-06-13T17:32:33+00:00 | Q18625584 | 000057532-01 | KENNETH | HARMAN | CAHILL, KENNETH V | 935582 | KENNETH V | CAHILL | 1164408852 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07272017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06162017 | 07162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615058 | G709 | Myoneural disorder, unspecified | ICD10 | 07272017 | 70490 | CAT SCAN SFT TIS NECK WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06192017 | 2017-06-19T10:46:06+00:00 | Q18679179 | 000040992-01 | PATRICIA | HOLZER | OHIOHEALTH PHYS GRP | 914865 | MONICA R | RIFFLE | 1568770808 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06212017 | 07212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170620112 | R079 | Chest pain, unspecified | ICD10 | 07272017 | 78452, 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T11:14:20+00:00 |  | 000049570-01 | JAMES | WALLER | SMITH JR, STEPHEN P | 908002 | STEPHEN P | SMITH JR | 1518923119 | SMITH JR, STEPHEN P | 908002 | 1518923119 | STEPHEN P SMITH JR | 1518923119 | Predetermination Request | PR | Pre-Service | PRE | STEPHEN P | SMITH JR | 07272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07122017 | 09112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621146 | H02021, H02024, H02831, H02834 | Dermatochalasis of left upper eyelid | ICD10 | 07272017 | 15823, 15823 | BLEPHAROPLASTY UPPER LD C EXCSV SKN | CPT | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | CPT | C4 | PHONE CALL TO OFFICE REQUESTING ADDITIONAL INFORMATION  REQUESTED TAPED/UNTAPED VISUAL FIELD STUDIES. SPOKE TO JOY  SHE WAS GOING TO GIVE MESSAGE TO SHANNON AND HAVE HER RETURN MY CALL., PHONE CALL PLACED TO SHANNON  SHE STATED THAT VISUAL FIELD STUDY WAS SCHEDULED FOR LATER THIS WEEK OR NEXT.  REQUESTED EXTENSION LETTER BE SENT TO MEMBER  TO ALLOW TIME FOR TEST AND RESULTS TO BE SENT OVER.  GAVE HER MY NUMBER TO CALL IF ANY CHANGES OR QUESTIONS., VISUAL FIELD STUDIES  TAPED/UNTAPED RECEIVED 7/5/17 @ 09:19:25 |  |  |  |  | 0 |
| 06292017 | 2017-06-29T13:15:57+00:00 | Q18749832 | 000084416-01 | Judith | Stump | ALLIANCE PHYSICIANS INC | 932718 | JOSEPHINE | RANDAZZO | 1659315216 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | INJU & RAJ SOIN MEDICAL CENTER | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06282017 | 07282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170630084 | R0602 | Shortness of breath | ICD10 | 07272017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07052017 | 2017-07-05T09:42:18+00:00 | Q18785811 | 000046933-01 | ANNA | MOORE | OSU INTERNAL MED LLC | 918882 | ERIN M | BERTINO | 1043355688 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07052017 | 08042017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170705085 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 07272017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T08:16:36+00:00 |  | 000114300-01 | Sharen | Kensler | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07272017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07312017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726114 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 07272017 | 27364, 77470, 14021, 15738, 15734, 97606, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T12:11:49+00:00 | Q18918314 | 000062509-01 | FRANK | TANZILLO | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727005 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 07272017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T11:04:38+00:00 | Q18934677 | 000117745-01 | Leslie | Cordray | MARIETTA HLTH CARE PHYS | 939659 | SPENCER W | GALE | 1780969360 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 07272017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08012017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727007 | M4854XA | Collapsed vertebra, NEC, thoracic region, init | ICD10 | 07272017 | 72128, 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T07:34:13+00:00 | Q18944581 | 000083445-01 | Betty | Dadum | AKSM HEALTHCARE COLLABO | 934886 | DAVID W | STEWART | 1720029903 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727023 | N281 | Cyst of kidney, acquired | ICD10 | 07272017 | 74170 | CAT SCAN ABDOMEN W/WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T09:09:42+00:00 | Q18946021 | 000017364-01 | THERMAN | ELLIS | MOUNT CARMEL HLTH PRVDRS | 901005 | ARTHUR N | COLE | 1891799698 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727040 | S12112D | Nondisplaced Type II dens fracture, subs for fx w routn heal | ICD10 | 07272017 | 72125 | CAT SCAN CERVICAL SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T09:21:51+00:00 | Q18946251 | 000006229-01 | PHYLLIS | LEWIS | MOUNT CARMEL HLTH PRVDRS | 936223 | NAHID | DADMEHR | 1366552721 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07272017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727044 | D320 | Benign neoplasm of cerebral meninges | ICD10 | 07272017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T14:05:17+00:00 | Q18913515 | 000118370-01 | Michael | Love | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727096 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 07272017 | 72197 | MRI PELVIS W/O & W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T11:33:11+00:00 | Q18923082 | 000084581-01 | Dora | Westfall | VILLAGE GREEN PRIMARY CA | 921256 | SUSAN A | ALCASID | 1275596132 | FORT HAMILTON HOSPITAL | 926711 | 1104867167 | FORT HAMILTON HOSPITAL | 1063447167 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FORT HAMILTON HOSPITAL | 07272017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07232017 | 08222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727102 | R911 | Solitary pulmonary nodule | ICD10 | 07272017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T12:14:11+00:00 | Q18928499 | 000092891-01 | Claudia | Jones | ONCOLOGY HEMATOLOGY CARE | 902238 | SANDRA J | VICTOR | 1215939525 | MERCY HEALTH PHYSICIANS | 911477 | 1205887023 | MERCY HEALTH PHYSICIANS CINCINNATI L | 1205887023 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HEALTH PHYSICIANS CINCINNATI L | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 09102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727111 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 07272017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T00:50:29+00:00 | Q18932798 | 000093502-01 | Wayne | Johnson | LICKING MEM HLTH PROF | 906427 | WILLIAM A | STALLWORTH | 1457312597 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08042017 | 01312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727115 | C61 | Malignant neoplasm of prostate | ICD10 | 07272017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
