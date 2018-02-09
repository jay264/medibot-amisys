Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-06
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-06
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
| 02022018 | 2018-02-02T12:17:53+00:00 | Q20318523 | 000005471-01 | FRANKIE | MUNSON | CARDIO TERRA, LTD | 935087 | JERRY J | BOLEY | 1962465435 | COLUMBUS NEUROPSYCHOLOGI | 909304 | 1508143017 | JENNIFER J WHATLEY | 1902056575 | Cardiology (HH) | OP CARD | Pre-Service | PRE | JENNIFER J | WHATLEY | 02062018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02052018 | 04062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180206017 | T82111A | Breakdown of cardiac pulse generator (battery), init | ICD10 | 02062018 | 33228, C1785, C2619 | PACEMAKER, DUAL CHAMBER, NON RATE-RESPONSIVE (IMPLANTABLE) | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 02022018 | 2018-02-02T15:13:00+00:00 | Q20321789 | 000100065-01 | Furman | Tinon | OH STATE PAIN MGMT CTR I | 907497 | SACHIDA | MANOCHA | 1821036435 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 02062018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02082018 | 03102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180206028 | M48061 | M48061 | ICD10 | 02062018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02052018 | 2018-02-05T06:34:02+00:00 | Q20323592 | 000106609-01 | Lonnie | Hall | ALLIANCE PHYSICIANS INC | 922669 | CHRISTINA R | ANSLINGER | 1831310606 | ALLIANCE PHYSICIANS INC | 912194 | 1437125572 | ANDREW H GABRIEL | 1205990033 | Radiology (HH) | OP RAD | Pre-Service | PRE | ANDREW H | GABRIEL | 02062018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 02052018 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180206039 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02062018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02052018 | 2018-02-05T07:29:13+00:00 | Q20323773 | 000121476-01 | TERRY | HORSLEY | CARDIOVASCULAR SPEC LLC | 925351 | MOBUSHER | MAHMUD | 1558466227 | CARDIOVASCULAR SPEC LLC | 952218 | 1871728303 | SHAUNA J GLENN | 1700276144 | Radiology (HH) | OP RAD | Pre-Service | PRE | SHAUNA J | GLENN | 02062018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02082018 | 03102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180206042 | R079 | Chest pain, unspecified | ICD10 | 02062018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T11:46:00+00:00 | Q18599366 | 000005636-01 | JOHN | ALBERT | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | SCIOTO VALLEY UROLOGY IN | 936922 | 1346254976 | GEORGE T HO | 1255390852 | Radiology (HH) | OP RAD | Pre-Service | PRE | GEORGE T | HO | 02062018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06072017 | 01102018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608019 | C674 | Malignant neoplasm of posterior wall of bladder | ICD10 | 02062018 | J9031 | BCG (INTRAVESICAL) PER INSTALLATION | HCPCS | 1 | 1 | Approved | 218 | HCPCS | HC |  |  |  |  |  | 0 |
| 02022018 | 2018-02-02T07:17:49+00:00 |  | 000059487-01 | VICKI | MILLER | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Predetermination Request | PR | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02062018 | 04072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202128 | N3946 | Mixed incontinence | ICD10 | 02062018 | 52287, J0585 | BOTULINUM TOXIN TYPE A, PER UNIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 02022018 | 2018-02-02T10:53:00+00:00 | Q20317110 | 000105468-01 | MICHAEL | COX | OSU INTERNAL MED LLC | 916695 | ANTHONY J | MICHAELS | 1003998642 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | HealthHelp | Services Not Available In-Network | Outpatient | 02172018 | 03172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205138 | K7581 | Nonalcoholic steatohepatitis (NASH) | ICD10 | 02062018 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 29 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T09:22:11+00:00 |  | 000083174-01 | James | Fedor | MAURICE S SCHNEIDER MD P | 945861 | MAURICE S | SCHNEIDER | 1477504439 | PHYSICIANS REGIONAL MED CENTER | 903975 | 1316992134 | PHYSICIANS REGIONAL MED CENTER | 1316992134 | Out of Network Services | OONS | Pre-Service | PRE |  | PHYSICIANS REGIONAL MED CENTER | 02062018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02052018 | 03052018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180206091 | I480 | Paroxysmal atrial fibrillation | ICD10 | 02062018 | 92960 | CARDIOVERSION, EXTERNAL | CPT | 1 | 1 | Approved | 29 | CPT | C4 | PON: Member approved for emergent cardio-version (a heart procedure) for A-Fib  member is currently in Florida. |  |  |  |  | 0 |
| 02052018 | 2018-02-05T13:56:15+00:00 | Q20330688 | 000061008-01 | LINDA | FRIESNER | GENERAL SURG ASSOC INC | 910801 | MARGARET S | SAWYER | 1972722494 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02062018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02052018 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180206104 | R1012 | Left upper quadrant pain | ICD10 | 02062018 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T11:27:31+00:00 |  | 000062837-01 | MICHAEL | CASTO | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02152018 | 05152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180206114 | C329, R491 | Aphonia | ICD10 | 02062018 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31575, 31579, 97597 | ACTIVE WOUND CARE/20 CM OR < | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
