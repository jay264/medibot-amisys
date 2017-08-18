Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-15
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-15
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
| 08122017 | 2017-08-12T10:48:05+00:00 | Q19078458 | 000005570-01 | DELORES | SMITH | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 02242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815016 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 08152017 | J9264, J2469, J9045 | CARBOPLATIN, 50 MG | HCPCS | 3600, 60, 108 | 3600, 60, 108 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9264: 3600 Albumin-bound Paclitaxel 100 mg/m2  IV  days 1  8  15  every 21 days  6 cycles; J9045: 108 Carboplatin AUC 6 (max 900 mg)   IV  day 1  every 21 days  6 cycles; J2469: 60 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 08112017 | 2017-08-11T09:12:26+00:00 | Q19062642 | 000103547-01 | James | Tabler | LICKING MEM HLTH PROF | 906427 | WILLIAM A | STALLWORTH | 1457312597 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09072017 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815032 | C61 | Malignant neoplasm of prostate | ICD10 | 08152017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 08142017 | 2017-08-14T07:57:21+00:00 | Q19079183 | 000065309-01 | SHARON | GRIFFITH | KNOX COMMUNITY HSP PHYS | 912126 | BARRY S | GEORGE | 1386605319 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08182017 | 09172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815059 | R079 | Chest pain, unspecified | ICD10 | 08152017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08142017 | 2017-08-14T08:05:26+00:00 | Q19079247 | 000033148-01 | CONNIE | SPALDING | LICKING MEM HLTH PROF | 917807 | HASSAN | RAJJOUB | 1811060999 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08212017 | 09202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815061 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 08152017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T17:51:04+00:00 |  | 000051592-01 | GERDA | PFISTER | AMERICAN MEDICAL EQUIPMENT INC | 903661 |  | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 903661 | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | DME | DME | Pre-Service | PRE |  | AMERICAN MEDICAL EQUIPMENT INC | 08152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08072014 | 10072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726120 | G35 | Multiple sclerosis | ICD10 | 08152017 | E2365, E2312, E2375, K0739 | Repair/svc DME non-oxygen eq | HCPCS | 2, 1, 1, 6 | 2, 1, 1, 6 | Approved, Approved, Approved, Approved | 1158, 1158, 1158, 1158 | HCPCS | HC |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T12:55:39+00:00 |  | 000034728-01 | JAMES | VITITOE | ADENA MEDICAL GROUP LLC | 902839 | CHRISTOPHER J | SKOCIK | 1104829126 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08152017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 08152017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170725160 | G44321, M542 | Cervicalgia | ICD10 | 08152017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 72050 | SPINE, CERVICAL MIN. OF 4 VIEWS | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08042017 | 2017-08-04T10:19:09+00:00 | Q19010304 | 000100483-01 | Joseph | Mcclain | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08152017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 08072017 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170805010 | C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 08152017 | J1100, J9060, J9190, J2405, J2469, J0640, J1453 | Fosaprepitant injection | HCPCS | 480, 120, 60, 384, 60, 210, 900 | 480, 120, 60, 384, 60, 210, 900 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 07272017 | 2017-07-27T10:33:59+00:00 |  | 000056728-01 | BEVERLY | FERNEAU | OSU INTERNAL MED LLC | 911868 | STEVEN M | DEAN | 1053305284 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08142017 | 11142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727124 | I890, L97921 | Non-prs chr ulc unsp prt of l low leg limited to brkdwn skin | ICD10 | 08152017 | 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 2, 2, 2, 2, 2 | 2, 2, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 08142017 | 2017-08-14T13:04:15+00:00 | Q19060646 | 000104266-01 | Maynard | Naylor | MERCY HEALTH PHYSICIANS | 927835 | BRET A | FERREE | 1548601461 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL CLERMONT | 08152017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815123 | M4806 | Spinal stenosis, lumbar region | ICD10 | 08152017 | 72132 | CAT SCAN LUMBAR SPINE C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08042017 | 2017-08-04T14:40:02+00:00 |  | 000114300-01 | Sharen | Kensler | OSU PLASTIC SURGERY LLC | 942006 | DAVID S | CABILING | 1578761128 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08152017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 08082017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804183 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 08152017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T13:31:41+00:00 |  | 000010488-01 | JACQUELINE | OXLEY | MOUNT CARMEL HLTH PRVDRS | 936731 | NANCY | GRAESSER | 1336252071 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08152017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 08152017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170726159 | Z024 | Encounter for examination for driving license | ICD10 | 08152017 | 99499, 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., VMM rec'd from Molly 614-546-3734 regarding denial and options to appeal., LVMM for Molly  advised that denial letter that was faxed to her and sent to member has the appeal rules and contact numbers. |  |  |  |  | 0 |
| 08112017 | 2017-08-11T14:50:34+00:00 | Q19076597 | 000010519-01 | JACKIE | WOODS | RADIOLOGY INC | 904246 | TIMOTHY | SMULLEN | 1376500298 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 09102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815137 | M8008XA | Age-rel osteopor w current path fracture, vertebra(e), init | ICD10 | 08152017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08032017 | 2017-08-03T16:00:51+00:00 |  | 000043746-01 | NANCY | DAY | KATZ, STEVEN E | 936995 | STEVEN E | KATZ | 1518906866 | KATZ, STEVEN E | 936995 | 1518906866 | STEVEN E KATZ | 1518906866 | Out of Network Services | OONS | Pre-Service | PRE | STEVEN E | KATZ | 08152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10172017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803153 | E0500, H0520, H16213 | Exposure keratoconjunctivitis, bilateral | ICD10 | 08152017 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T10:56:49+00:00 |  | 000091722-01 | BARBARA | TIMMS | OSU HLTH SYSTEM NEUROSUR | 908648 | PUNIT | AGRAWAL | 1578787990 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 08152017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08072017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802130 | G250 | Essential tremor | ICD10 | 08152017 | 95978, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 08072017 | 2017-08-07T14:34:36+00:00 | Q19001252 | 000111929-01 | Larry | Gibson | S ZANESVILLE FAM MED CTR | 922007 | BRADLEY A | COLMAN | 1972593176 | GENESIS HEALTHCARE SYSTEM DME | 924099 | 1972640332 | GENESIS HEALTHCARE SYSTEM DME | 1972640332 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM DME | 08152017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809009 | R410 | Disorientation, unspecified | ICD10 | 08152017 | 70450, 74150 | CAT SCAN ABDOMEN WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T17:31:32+00:00 |  | 000110482-01 | Dennis | Donovan | OSU PHYSICAL MED LLC | 928551 | SARAH | GROVE | 1962721506 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04072017 | 08302017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412039 | H543, I63512, I639, I69351, I6990, R269, R279, R41841, R4189, R5381, Z7409 | Other reduced mobility | ICD10 | 08152017 | 97110, 97112, 97116, 97530, 97001, 97535, 97530, 97760, 97032, 92507, 92526, 92611, 97110, 97112, 97116, 97530, 97001, 97535, 97530, 97760, 97032 | APPLICATION OF A MODALITY, ELECTRICAL STIMULATION | CPT | 72, 72, 36, 72, 36, 36, 0, 36, 36, 36, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 72, 72, 36, 72, 36, 36, 54, 36, 36, 36, 36, 1, 54, 54, 30, 30, 30, 24, 24, 24, 24 | Approved, Approved, Approved, Approved, Approved, Approved, Denied, Approved, Approved, Approved, Approved, Approved, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146, 146 | CPT | C4 | MESSAGE LEFT FOR JANIE WHEELER RN MC NEUROSCIENCE COORDINATOR FOR INQUIRY OF OUTPT STROKE REHAB  LEFT ON CONFIDENTIAL VM AND MESSAGE FOR RETURN CALL ALSO LEFT ON CELL PHONE., PHONE CALL PLACED TO KIM PREECE RN AT OSU SEEKING CLARIFICATION. MESSAGE LEFT ON CONFIDENTIAL VM. FOR RETURN CALL., PHONE CALL PLACED TO OUTPT STROKE REHAB AT MT CARMEL EAST.  SPOKE TO BRITTANY (SPEECH THERAPIST) SHE CONSULTED W/JEFF DIRECTOR AT EAST. THEY ARE ABLE TO PROVIDE INTENSE PT  OT AND SPEECH THERAPY.  THEY DO NOT HAVE BWST.  SOCIAL WORKER AND REHAB PSYCH IS NOT PART OF THE STROKE REHAB WITHIN MT CARMEL., REC'D FAXED REQUEST 6/12/17 @ 13:16:16 FOR AUTH EXTENSION TO 8/30/17.  MBR HAS NOT USED ALL OF APPROVED VISITS.  EXTENSION IS TO ALLOW MBR TO USE HIS REMAINING VISITS FROM ORIGINAL APPROVAL.  CONFIRMATION FAXED TO PROVIDER AND TO MEMBER VIA USPS. |  |  |  |  | 0 |
| 07062017 | 2017-07-06T13:59:12+00:00 |  | 000091151-01 | Paula | Seevers | ANDREWS, DEBORAH | 944881 | DEBORAH | ANDREWS | 1114968807 | ANDREWS, DEBORAH | 944881 | 1114968807 | DEBORAH ANDREWS | 1114968807 | OP Behavioral Health | OP BH | Pre-Service | PRE | DEBORAH | ANDREWS | 08152017 | Approved | MediGold Southwest OH Essential Care | Member | Medical Criteria Met | Outpatient | 06172017 | 10172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170706170 | F4323 | Adjustment disorder with mixed anxiety and depressed mood | ICD10 | 08152017 | 90837 | PSYTX PTAND/FAMILY 60 MINUTES | CPT | 8 | 8 | Approved | 123 | CPT | C4 | PHONE CALL PLACED THE NUMBER THE MEMBER PROVIDED FOR DR ANDREWS AT 513-561-5507  THIS NUMBER IS NOT A WORKING NUMBER., I LOCATED DR ANDREWS OFFICE NUMBER (513) 225-0155  AND LEFT A MESSAGE ON CONFIDENTIAL VOICE MAIL REQUESTING INFORMATION FOR MEMBER.  REQUESTED A RETURN CALL., RECEIVED RETURN CALL FROM DR ANDREWS  SHE IS OUT OF OFFICE UNTIL 7/20/17.  SHE IS HAPPY TO SEND INFORMATION AND REQUEST FOR ADDITIONAL VISITS  OBTAINED HER FAX NUMBER  WILL FAX HER PRIOR AUTH FORM.  REQUESTED TO EXTENDED DECISION PERIOD UNTIL ABLE TO GET INFORMATION TO MEDIGOLD. |  |  |  |  | 0 |
| 07252017 | 2017-07-25T17:06:07+00:00 |  | 000084039-01 | Harold | Elkins | OSU HLTH SYSTEM NEUROSUR | 942972 | VIBNOR | KRISHNA | 1114008364 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07252017 | 10252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726101 | M62838 | Other muscle spasm | ICD10 | 08152017 | 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T09:03:48+00:00 |  | 000067831-01 | THOMAS | SCHWARTZ | OSU UROLOGY LLC | 943281 | FARA M | BELLOWS | 1083935118 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03282017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403093 | G8250 | Quadriplegia, unspecified | ICD10 | 08152017 | 97530, 97110, 97112, 97113, 97116, 97140, 97542, 97750, 97760, 97535, 97110, 97530, 97112 | PT NEUROMUSCULAR REEDUCATION, | CPT | 59, 59, 59, 59, 59, 59, 59, 59, 59, 29, 29, 29, 29 | 59, 59, 59, 59, 59, 59, 59, 59, 59, 29, 29, 29, 29 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185 | CPT | C4 | RECEIVED PHONE CALL 7/11/17 @ 09:44:23 FROM KIM PREECE RN W/OSU REHAB   REQUESTING DATE EXTENSION OF AUTH  MEMBER HAS USED 29/59 PT VISITS  AND 18/29 OT VISITS.  THERE IS NO OTHER CHANGE REQUESTED  JUST EXTENSION FOR MEMBER TO RECEIVE ALREADY AUTHORIZED VISITS.  AUTH EXTENDED TO 9/28/17. |  |  |  |  | 0 |
| 07262017 | 2017-07-26T00:50:29+00:00 | Q18932798 | 000093502-01 | Wayne | Johnson | LICKING MEM HLTH PROF | 906427 | WILLIAM A | STALLWORTH | 1457312597 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727115 | C61 | Malignant neoplasm of prostate | ICD10 | 08152017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 31 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 08092017 | 2017-08-09T08:38:44+00:00 | Q19047984 | 000099205-01 | David | Hull | EYE SPEC INC CHILLI | 911930 | LISA H | REAVES | 1346297058 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 08152017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810041 | H468 | Other optic neuritis | ICD10 | 08152017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T11:38:41+00:00 | Q18974891 | 000101855-01 | William | Packard | MOUNT CARMEL HLTH PRVDRS | 934981 | DOUGLAS B | VAN FOSSEN | 1629039698 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802043 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 08152017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T08:45:14+00:00 |  | 000106677-01 | Mardell | Ohlmacher | ORTHO ASSOC OF ZANESVILL | 933437 | LACIE D | BAKER | 1194126797 | ORTHOPEDIC ONE INC | 927947 | 1396178620 | ORTHOPEDIC ONE INC | 1396178620 | DME | DME | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 08152017 | Denied | MediGold Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 08152017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170810085 | M2011, M2041, Z981 | Arthrodesis status | ICD10 | 08152017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08092017 | 2017-08-09T00:23:44+00:00 | Q19027437 | 000113445-01 | Kathryn | Franklin | FAIRFIELD HLTHCARE PROFS | 934808 | KANWALJIT | SINGH | 1679765770 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810013 | C50912 | Malignant neoplasm of unspecified site of left female breast | ICD10 | 08152017 | J9171, J2505, J1626, J9070 | CYCLOPHOSPHAMIDE, 100 MG | HCPCS | 600, 8, 160, 48 | 600, 8, 160, 48 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9171: 600 (TC) Docetaxel 75 mg/m2  IV  day 1  every 21 days  4 cycles; J9070: 48 Cyclophosphamide 600 mg/m2  IV  day 1  every 21 days  4 cycles; J2505: 8 PegFilgrastim (Neulasta) 6 mg  SQ  day 2  every 21 days  8 cycles; J1626: 160 Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 07312017 | 2017-07-31T15:45:17+00:00 | Q18965131 | 000029394-01 | JUDY | MCCLELLAND | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07312017 | 01272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802018 | C180 | Malignant neoplasm of cecum | ICD10 | 08152017 | J9263, J1100, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1200, 160, 40 | 1200, 160, 40 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9263: 1200 INJECTION  OXALIPLATIN  0.5 MG  Dispensed as: 150.00 mg  2 treatment(s) each cycle  2 cycle(s); J1100: 160 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  2 cycle(s); J2469: 40 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 08032017 | 2017-08-03T09:50:39+00:00 |  | 000033824-01 | WILLIAM | POOLER | ORTHO ASSOC OF ZANESVILL | 933437 | LACIE D | BAKER | 1194126797 | ORTHOPEDIC ONE INC | 927947 | 1396178620 | ORTHOPEDIC ONE INC | 1396178620 | DME | DME | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 08152017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 08152017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170803133 | M19072 | Primary osteoarthritis, left ankle and foot | ICD10 | 08152017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | 08/10/2017 08:30:00 Received a call from Wanda stating MBR has appointment 08/14/17, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08092017 | 2017-08-09T00:21:49+00:00 | Q19022968 | 000028125-01 | HAROLD | NEELY | FAIRFIELD HLTHCARE PROFS | 919094 | ROOPA S | SRIKANTIAH-SAH | 1396856191 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08072017 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810063 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 08152017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 48 | 48 | Approved | 181 | HCPCS | HC | J3489: 48 INJECTION  ZOLEDRONIC ACID  1 MG  Dispensed as: 4.00 mg  1 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 07312017 | 2017-07-31T16:36:30+00:00 |  | 000082319-01 | Catherine | Sesser | SOUND PHYSICIANS OF OHI | 931136 | RAJMONY | PANNU | 1326232984 | COLUMBUS VASCULAR VEIN & | 949868 | 1275930927 | COLUMBUS VASCULAR VEIN AND WOUND CEN | 1275930927 | Predetermination Request | PR | Pre-Service | PRE |  | COLUMBUS VASCULAR VEIN AND WOUND CEN | 08152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08152017 | 10132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170801085 | I83813, I872 | Venous insufficiency (chronic) (peripheral) | ICD10 | 08152017 | 36475 | ENDOVENOUS RF, 1ST VEIN | CPT | 1 | 1 | Approved | 60 | CPT | C4 |  |  |  |  |  | 0 |
