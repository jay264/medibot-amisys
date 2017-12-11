Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-07
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-07
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
| 12062017 | 2017-12-06T09:25:46+00:00 | Q19918913 | 000094320-01 | Irene | Maibach | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 12072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12112017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171207082 | G5752 | Tarsal tunnel syndrome, left lower limb | ICD10 | 12072017 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12052017 | 2017-12-05T16:41:51+00:00 |  | 000052378-01 | ROBERT | MASSEY | NEUROSCIENCE CENTER | 908488 | STEVEN M | NASH | 1346324738 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12072017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 12072017 | 12082017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171205167 | G20 | Parkinson's disease | ICD10 | 12072017 | 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 12062017 | 2017-12-06T10:25:59+00:00 | Q19920236 | 000098200-01 | Lamar | Ridgway | SPRINGFIELD HEMATOLOGY & | 901547 | DALJEET | SINGH | 1598784092 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 12072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12202017 | 06182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171207142 | C50422 | Malig neoplasm of upper-outer quadrant of left male breast | ICD10 | 12072017 | J9202 | GOSERELIN ACETATE IMPLANT, PER 3.6 MG | HCPCS | 12 | 12 | Approved | 181 | HCPCS | HC | J9202: 12: Goserelin 3.6 mg  SQ  day 1  every 28 days  6 cycles |  |  |  |  | 0 |
| 11272017 | 2017-11-27T20:11:32+00:00 | Q19852409 | 000071206-01 | Ellen | Litt | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 12072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11262017 | 05252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171201034 | D464 | Refractory anemia, unspecified | ICD10 | 12072017 | J0881 | INJECTION, DARBEPOETIN ALFA, 1 MICROGRAM (NON-ESRD USE) | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC | J0881: 4000: Darbepoetin Alfa (Aranesp) 500 mcg  SQ  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 11302017 | 2017-11-30T13:48:46+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12072017 | Approved | MediGold Medical Only | Fax | Medical Criteria Met | Outpatient | 12052017 | 03052018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171130145 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 12072017 | 85025, 80053, 84703, G0364, 88313, 93005, 99211, 36415, 36592, 99213, 82947, 84100, 83615, 84550, S9990, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC | PHONE CALL PLACED TO DEBORAH COPLEY AT OSU CLINICAL TRIALS.  CONFIRMED THAT MEMBER WAS NOT CONTINUING TO PARTICIPATE IN SWOG-1318.  SHE IS GOING TO FAX ADDITIONAL CLINICAL NOTE., ADDITIONAL NOTES RECEIVED AND REVIEWED., CLINICAL TRIAL OSU 16281  (NCT02484430) |  |  |  |  | 0 |
| 11222017 | 2017-11-22T11:01:50+00:00 |  | 000089891-01 | Elizabeth | Stemen | FAIRFIELD HLTHCARE PROFS | 946665 | JAMES | PAN | 1235316589 | FAIRFIELD HLTHCARE PROFS | 937735 | 1457396368 | FAIRFIELD HEALTHCARE PROFS INC | 1457396368 | Predetermination Request | PR | Pre-Service | PRE |  | FAIRFIELD HEALTHCARE PROFS INC | 12072017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01052018 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122139 | I87313, I87332 | Chronic venous htn w ulcer and inflammation of l low extrem | ICD10 | 12072017 | 36478 | ENDOVENOUS LASER, 1ST VEIN | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 11222017 | 2017-11-22T16:05:08+00:00 |  | 000042953-01 | JAMES | SHORT | EYE SURGICAL & MED CARE | 936834 | WESLEY | HARNISH | 1619979911 | UPPER ARLINGTON SURGERY CENTER | 939327 | 1477558641 | UPPER ARLINGTON SURGERY CENTER | 1477558641 | Out of Network Services | OONS | Pre-Service | PRE |  | UPPER ARLINGTON SURGERY CENTER | 12072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01112018 | 02112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171127003 | H2513 | Age-related nuclear cataract, bilateral | ICD10 | 12072017 | 66984 | EXTRCAPSULAR CATARACT RMVL | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T13:01:29+00:00 |  | 000102073-01 | Regina | Miller | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12042017 | 01042018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171204019 | Z96612 | Presence of left artificial shoulder joint | ICD10 | 12072017 | 97530, 97110, 97112, 97116, 97035, 97161, 97162, 97163, 97164, 97760, 97140, 97535, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 12, 12, 12, 12, 12, 1, 1, 12, 12, 12, 12, 12, 1 | 12, 12, 12, 12, 12, 1, 1, 12, 12, 12, 12, 12, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T13:01:27+00:00 | Q19900957 | 000105295-01 | Peggy | Linville-Moore | COPC CENTRAL OHIO PRIMAR | 936781 | MARY S | GRULKOWSKI | 1760420707 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 12072017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12042017 | 01032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205146 | R1900 | Intra-abd and pelvic swelling, mass and lump, unsp site | ICD10 | 12072017 | 72193 | CAT SCAN PELVIS C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11292017 | 2017-11-29T11:01:04+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12122017 | 03122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171130127 | C4011 | Malignant neoplasm of short bones of right upper limb | ICD10 | 12072017 | 71020, 73080, 73060, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 3, 3, 3, 3, 3, 3 | 1, 1, 1, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 11282017 | 2017-11-28T12:44:50+00:00 |  | 000034642-01 | ELSIE | WILCOX | OSU OTOLARYNGOLOGISTS LL | 912050 | MATTHEW | OLD | 1699891242 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12012017 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171129053 | C7989 | Secondary malignant neoplasm of other specified sites | ICD10 | 12072017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 11282017 | 2017-11-28T13:07:35+00:00 |  | 000034642-01 | ELSIE | WILCOX | DENTAL FACULTY PRACTICE | 909908 | MEADE C | VANPUTTEN | 1407906712 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12052017 | 03052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171129065 | K1230 | Oral mucositis (ulcerative), unspecified | ICD10 | 12072017 | 97026, 97597, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
