Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-27
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-27
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
| 12202017 | 2017-12-20T11:59:05+00:00 | Q20022802 | 000082417-01 | Julia | Moore | MOUNT CARMEL HLTH SYS | 937383 | PHILIP D | BERGER | 1851339725 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12272017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12202017 | 01192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227013 | M25551 | Pain in right hip | ICD10 | 12272017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12262017 | 2017-12-26T09:59:31+00:00 | Q20044165 | 000084945-01 | Vaclav | Faktor | COPC CENTRAL OHIO PRIMAR | 919870 | PIOTR | KLODA | 1821107715 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 12272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12262017 | 01252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227017 | R1900 | Intra-abd and pelvic swelling, mass and lump, unsp site | ICD10 | 12272017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12222017 | 2017-12-22T08:20:40+00:00 | Q20036560 | 000033657-01 | CAROL | DAVIS | MOUNT CARMEL HLTH PRVDRS | 945630 | STACIE | CARRUTH | 1578920815 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01082018 | 02072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227024 | R0609 | Other forms of dyspnea | ICD10 | 12272017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12222017 | 2017-12-22T08:21:00+00:00 | Q20037851 | 000039329-01 | LARRY | HARRIS | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | SCIOTO VALLEY UROLOGY IN | 938633 | 1346254976 | SCIOTO VALLEY UROLOGY INC | 1346254976 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SCIOTO VALLEY UROLOGY INC | 12272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01172018 | 07162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227028 | C61 | Malignant neoplasm of prostate | ICD10 | 12272017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 4 | 4 | Approved | 181 | HCPCS | HC | J9217: 4: Leuprolide 30 mg  IM  day 1  every 4 months  1 cycle |  |  |  |  | 0 |
| 12202017 | 2017-12-20T13:23:09+00:00 | Q20023906 | 000079278-01 | Carman | Seevers | MARIETTA MEM HSP | 912903 | UTPAL K | BHANJA | 1003801689 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 12272017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01012018 | 06302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227036 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 12272017 | J9271 | INJ PEMBROLIZUMAB | HCPCS | 1600 | 1600 | Approved | 181 | HCPCS | HC | J9271: 1600: Pembrolizumab 200 mg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 12212017 | 2017-12-21T09:38:00+00:00 | Q20033603 | 000110030-01 | Barry | Frazier | THE UROLOGY GROUP | 920823 | GARY M | KIRSH | 1770525073 | THE UROLOGY GROUP | 922524 | 1568404846 | THE UROLOGY GROUP | 1568404846 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | THE UROLOGY GROUP | 12272017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12212017 | 06192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227041 | C61 | Malignant neoplasm of prostate | ICD10 | 12272017 | J9217, J0897 | Denosumab injection | HCPCS | 8, 60 | 8, 60 | Approved, Approved | 181, 181 | HCPCS | HC | J9217: 8: LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION)  7.5 MG  Dispensed as: 30.00 mg  1 treatment(s) each cycle  2 cycle(s): J0897: 60: INJECTION  DENOSUMAB  1 MG  Dispensed as: 60.00 mg  1 treatment(s) each cycle  1 cycle(s) |  |  |  |  | 0 |
| 12222017 | 2017-12-22T14:11:00+00:00 | Q20041731 | 000108665-01 | Bonnie | Stanforth | OSU INTERNAL MED LLC | 943776 | KATHY J | FLORENCE | 1972657286 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 12272017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12272017 | 06252018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227045 | C8338 | Diffuse large B-cell lymphoma, lymph nodes of multiple sites | ICD10 | 12272017 | J2505 | INJECTION, PEGFILGRASTIM, 6 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J2505: 6: PegFilgrastim (Neulasta) 6 mg  SQ  day 2  every 28 days  6 cycles |  |  |  |  | 0 |
| 12262017 | 2017-12-26T06:51:54+00:00 | Q20042795 | 000119513-01 | SHIRLEY | MOORE | COSHOCTON COUNTY MEM HSP | 949424 | SCOTT P | STEPHENS | 1770741902 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 12272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12262017 | 01252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227054 | M5412 | Radiculopathy, cervical region | ICD10 | 12272017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12262017 | 2017-12-26T08:31:09+00:00 | Q20043218 | 000115205-01 | Sharon | Smith | MOUNT CARMEL HLTH SYS | 919157 | DANA P | HOUSER | 1982857165 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 12272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12262017 | 01252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227065 | S42201A | Unsp fracture of upper end of right humerus, init | ICD10 | 12272017 | 73200 | CAT SCAN UPPER EXTREMITY UNENHANCED | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T11:07:17+00:00 |  | 000005149-01 | ROBERT | FULTON | OSU HLTH SYSTEM NEUROSUR | 929919 | BARBARA K | CHANGIZI | 1609075175 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01012018 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220118 | G250 | Essential tremor | ICD10 | 12272017 | 95978, 95979, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12222017 | 2017-12-22T12:58:00+00:00 | Q20040915 | 000077003-01 | Diane | Saxton | ADENA MEDICAL GROUP LLC | 925366 | JEYANTHI | RAMANARAYANAN | 1538269394 | ADENA MEDICAL GROUP LLC | 913325 | 1235468083 | ADENA MEDICAL GROUP LLC | 1235468083 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA MEDICAL GROUP LLC | 12272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12222017 | 06202018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227083 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 12272017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 24 | 24 | Approved | 181 | HCPCS | HC | J3489: 24: Zoledronic Acid 4 mg  IV  day 1  every 28 days  6 cycles |  |  |  |  | 0 |
| 12082017 | 2017-12-08T15:05:00+00:00 |  | 000042374-01 | Harold | Sanford | THE VINEYARDS AT CONCORD | 928631 |  | THE VINEYARDS AT CONCORD | 1104905173 | THE VINEYARDS AT CONCORD | 928631 | 1104905173 | THE VINEYARDS AT CONCORD | 1104905173 | Part B Therapy | OP THER | Pre-Service | PRE |  | THE VINEYARDS AT CONCORD | 12272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12052017 | 01162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171208118 | I10, I6990, R296, Z736 | Limitation of activities due to disability | ICD10 | 12272017 | 97530, 97535, 97112 | PT NEUROMUSCULAR REEDUCATION, | CPT | 7, 7, 7 | 7, 7, 7 | Approved, Approved, Approved | 43, 43, 43 | CPT | C4 | SENT TO CONTRACTING FOR SCA  SIGNED SCA REQUIRED BEFORE FINAL APPROVAL., MESSAGE LEFT FOR BARB NORMAN W/VINEYARD PER REQUEST OF CONTRACTING.  SHE LEFT MESSAGE FOR CONTRACTING REGARDING DATES OF SERVICE.  THE DATE OF SERVICE REQUESTED WAS 12/5/17 FOR 7 ADDITIONAL OT VISITS.  REQUEST WAS RECEIVED BY MEDIGOLD ON 12/8/17.  THIS INFORMATION WAS LEFT IN THE MESSAGE., EXTENSION LETTER ISSUED  QUESTION REGARDING DOS HAS NOT BEEN CLARIFIED., RECEIVED SIGNED SCA FROM CONTRACTING, RECEIVED E-MAIL FROM BARB NORMAN FROM FACILITY STATING FAMILY WAS REQUESTING AN ADDITIONAL 16 VISITS.  I DISCUSSED THIS WITH MY DIRECTOR RHONDA MADDERN RN  AND INTAKE SUPERVISOR LINDSEY GLASS  THEY BOTH REVIEWED MY E-MAIL RESPONSE TO BARB AND APPROVED THE CONTENT AND LANGUAGE., E-MAIL COMMUNICATION UPLOADED AND ATTACHED TO AUTH. |  |  |  |  | 0 |
| 12202017 | 2017-12-20T12:29:09+00:00 |  | 000070034-01 | Bobby | Higginbotham | MOUNT CARMEL HLTH PRVDRS | 907556 | BRAD W | DESILVA | 1467494401 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12202017 | 03202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220128 | C320 | Malignant neoplasm of glottis | ICD10 | 12272017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12212017 | 2017-12-21T14:00:00+00:00 |  | 000082199-01 | Paul | Brill | ROBERT D RUPERT JR MD IN | 906637 |  | ROBERT D RUPERT JR MD INC | 1437395183 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12272017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01032018 | 04032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221162 | C139, C7989 | Secondary malignant neoplasm of other specified sites | ICD10 | 12272017 | 99211, 99212, 99213, 99214, 99215, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 82310, 82565, 84520, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12212017 | 2017-12-21T14:57:25+00:00 |  | 000092603-01 | DONALD | BOWERS JR | UNIVERSITY RADIATION ONC | 949435 | JESSICA L | WOBB | 1356653984 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12202017 | 03202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221172 | C01 | Malignant neoplasm of base of tongue | ICD10 | 12272017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
