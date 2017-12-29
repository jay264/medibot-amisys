Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-26
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-26
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
| 12262017 | 2017-12-26T09:04:36+00:00 |  | 000106367-01 | Paul | Frase | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | CENTRAL OHIO UROLOGY SURGERY CTR LLC | 928505 | 1881948073 | CENTRAL OHIO UROLOGY SURGERY CTR LLC | 1881948073 | Out of Network Services | OONS | Pre-Service | PRE |  | CENTRAL OHIO UROLOGY SURGERY CTR LLC | 12262017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 01082018 | 02082018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171226004 | C61 | Malignant neoplasm of prostate | ICD10 | 12262017 | 55700 | BIOPSY PROSTATE-NEEDLE-1 OR MORE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12222017 | 2017-12-22T13:19:59+00:00 |  | 000005404-01 | CHARLES | PREEST | MOUNT CARMEL HLTH PRVDRS | 950862 | ALISSA | NELSON | 1750827135 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 12262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12192017 | 01192019 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171222111 | G8220 | Paraplegia, unspecified | ICD10 | 12262017 | E2361, E1028, E1007, E2620, E2311, K0040, E0956, E2624, E0955, K0861 | PWC gp3 std mult pow opt s/b | HCPCS | 2, 4, 1, 1, 1, 1, 2, 1, 1, 1 | 2, 4, 1, 1, 1, 1, 2, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 397, 397, 397, 397, 397, 397, 397, 397, 397, 397 | HCPCS | HC |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T11:44:01+00:00 |  | 000031488-01 | LEONARD | PRESTON | OSU UROLOGY LLC | 939464 | KAMAL S | POHAR | 1952350985 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12262017 | 02262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218108 | C61, C671, C672, D090 | Carcinoma in situ of bladder | ICD10 | 12262017 | 99201, 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 63, 63, 63, 63, 63, 63 | HCPCS | HC |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T09:33:13+00:00 |  | 000028194-01 | LISA | FORD | NEUROSCIENCE CENTER | 912936 | ADAM D | QUICK | 1437283918 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12192017 | 01192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219130 | D869 | Sarcoidosis, unspecified | ICD10 | 12262017 | 95921, 95921, 95923, 95922, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12262017 | 2017-12-26T12:09:51+00:00 | Q20043936 | 000100483-01 | Joseph | Mcclain | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 12262017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 12262017 | 06242018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171226007 | C158 | Malignant neoplasm of overlapping sites of esophagus | ICD10 | 12262017 | J9267, J9045, J1100, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 5, 5, 20, 5 | 5, 5, 20, 5 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 12262017 | 2017-12-26T12:17:44+00:00 | Q20044128 | 000034652-01 | STEPHEN | TOROK | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 12262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12262017 | 01252018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171226008 | M722 | Plantar fascial fibromatosis | ICD10 | 12262017 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T12:38:24+00:00 |  | 000065207-01 | HAZEL | CURTIS | FAIRFIELD HLTHCARE PROFS | 902681 | JOHN A | IRETON | 1821087610 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 12262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12192017 | 01192019 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219135 | G8310 | Monoplegia of lower limb affecting unspecified side | ICD10 | 12262017 | K0821, E2365 | POWER WHEELCHAIR ACCESSORY, U-1 SEALED LEAD ACID BATTERY, EACH (E.G. GEL | HCPCS | 1, 2 | 1, 2 | Approved, Approved | 397, 397 | HCPCS | HC |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T11:34:04+00:00 |  | 000051842-01 | GARRY | BIRD | OSU INTERNAL MED LLC | 935661 | JOHN C | BYRD | 1770599664 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12262017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 12212017 | 03212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219140 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 12262017 | 99211, 99212, 99213, 99214, 99215, 36415, 85027, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 84550, 85730, 85610, 83735, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T14:09:22+00:00 |  | 000027430-01 | SALLY | SALT | CLEVELAND CLINIC FNDN | 943517 | SUMMER | BUCKENMEYER | 1841668803 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 12262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01182018 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219148 | K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 12262017 | 91034, 91010, 74220, 71020, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 3 | 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T10:38:00+00:00 | Q20001713 | 000119929-01 | Diane | Ward | MOUNT CARMEL HLTH PRVDRS | 934904 | LORI A | SULLIVAN | 1417028697 | DOCTORS HOSPITAL WEST | 936474 | 0 | DOCTORS HOSPITAL WEST | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DOCTORS HOSPITAL WEST | 12262017 | Denied | MediGold Essential Care | HealthHelp | Services Available In-Network | Outpatient | 12262017 | 12272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171219146 | Z122 | Encntr screen for malignant neoplasm of respiratory organs | ICD10 | 12262017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 12222017 | 2017-12-22T09:08:00+00:00 | Q20037385 | 000027780-01 | PHILLIP | ALSPACH | OSU INTERNAL MED LLC | 935943 | MANISHA H | SHAH | 1679581896 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12222017 | 01212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171226011 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 12262017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12222017 | 2017-12-22T13:29:00+00:00 | Q20041059 | 000082226-01 | Neil | Fultz | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12222017 | 01212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171226012 | C4490 | Unspecified malignant neoplasm of skin, unspecified | ICD10 | 12262017 | 70543 | MRI ORBT/FAC/NCK W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T11:23:00+00:00 | Q20022464 | 000088634-01 | Jerry | Van Dyne | MERRITT, ROBERT E | 930196 | ROBERT E | MERRITT | 1508051319 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12262017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12202017 | 01192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171226013 | J852 | Abscess of lung without pneumonia | ICD10 | 12262017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T16:35:07+00:00 |  | 000071942-01 | Helen | Adams | FAIRFIELD HLTHCARE PROFS | 910849 | JEREMY W | BUCKLEY | 1720106248 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 12262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12122017 | 01122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220034 | R002 | Palpitations | ICD10 | 12262017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T09:54:04+00:00 |  | 000084948-01 | Kay | Fenn | OSU HLTH SYSTEM NEUROSUR | 908648 | PUNIT | AGRAWAL | 1578787990 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01012018 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220112 | G250 | Essential tremor | ICD10 | 12262017 | 95978, 95979, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 90, 90, 90 | HCPCS | HC |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T11:19:54+00:00 |  | 000096277-01 | Beverly | Callander | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12262017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 12202017 | 03202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220122 | C089 | Malignant neoplasm of major salivary gland, unspecified | ICD10 | 12262017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
