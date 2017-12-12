Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-08_thru_2017-12-10_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-08_thru_2017-12-10_URGEMERG
	Given I save the auth class "<auth_class>" to a variable
	Given I sign in to the application
	And the test pauses for "3" seconds
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "10" seconds
	And in the "Certification" page I should see the "Initial Date" element
	And I press "Control + N"
	And in the "certification" page I should see the "red_and_yellow_boxes" image
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

	And in the "hospital_services" page I enter "$" into the "facility_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
	And I press ENTER graphically
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I determine whether something is PAR or NONPAR
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
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
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "2" seconds

	#And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And in the "authorized_services" page I enter "21" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And the test pauses for "3" seconds
	And I press "Control + N"
	And the test pauses for "4" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And the test pauses for "2" seconds
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 11222017 | 2017-11-22T10:19:21+00:00 | 025488827-7326 | 000109507-01 | Joann | Swisher | COSHOCTON COUNTY MEM HSP | 949424 | SCOTT P | STEPHENS | 1770741902 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12082017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 12052017 | 12072017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122053 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 12082017 | 12052017 | 12072017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12042017 | 2017-12-04T09:22:13+00:00 |  | 000082375-01 | Carolyn | Hill | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12032017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204082 | A419, E871, N390, R531 | Weakness | ICD10 | 12082017 | 12032017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T10:44:35+00:00 | 026347758-7331 | 000073913-01 | Evelina | Garner | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12062017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128027 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 12082017 | 12062017 | 12072017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11282017 | 2017-11-28T14:18:08+00:00 | 250437777326 | 000051412-01 | GLENDA | GARRISON | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11222017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128066 | J441, J9620, R197 | Diarrhea, unspecified | ICD10 | 12082017 | 11222017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 12042017 | 2017-12-04T09:11:27+00:00 | 255874137335 | 000000146-01 | JAMES | DAVINER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12012017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204019 | D61810 | Antineoplastic chemotherapy induced pancytopenia | ICD10 | 12082017 | 12012017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12082017 | 2017-12-08T08:18:37+00:00 |  | 000070938-01 | Hubert | Lund | CEN OH UROLOGY GRP INC | 901105 | LINDA | OSBORNE | 1861463721 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12082017 | Approved | MediGold Essential Care | EMR | EIS | Inpatient | 12062017 | 12072017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208007 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 12082017 | 12062017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12052017 | 2017-12-05T09:21:20+00:00 |  | 000104605-01 | KATHERINE | TAWROSZA | OSU INTERNAL MED LLC | 933152 | DREW C | LOGAN | 1275828857 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12042017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205039 | E875 | Hyperkalemia | ICD10 | 12082017 | 12042017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11292017 | 2017-11-29T09:14:26+00:00 |  | 000035562-01 | VIRGINIA | MYERS | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129091 | I214, I5021, N179 | Acute kidney failure, unspecified | ICD10 | 12082017 | 11282017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12042017 | 2017-12-04T07:32:35+00:00 |  | 000109165-01 | Bonnie | Gibson | HOSPITALIST MEDICINE PHY | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12022017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204064 | I160 | HYPERTENSIVE URGENCY | ICD10 | 12082017 | 12022017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12052017 | 2017-12-05T09:25:06+00:00 | 251700517338 | 000029945-01 | MARY | GOOD | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12042017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205022 | A419 | Sepsis, unspecified organism | ICD10 | 12082017 | 12042017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11132017 | 2017-11-13T08:43:12+00:00 |  | 000070802-01 | Jane | Langdon | OSU INTERNAL MED LLC | 943454 | EMMANUEL E | UGBARUGBA | 1831353283 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11092017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113112 | G35 | Multiple sclerosis | ICD10 | 12082017 | 11092017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 11272017 | 2017-11-27T10:32:34+00:00 |  | 000049041-01 | CARL | WALTON | NEUROSCIENCE CENTER | 944006 | ARCHANA P | HINDUJA | 1336313865 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11252017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128037 | I639 | Cerebral infarction, unspecified | ICD10 | 12082017 | 11252017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12082017 | 2017-12-08T08:41:07+00:00 |  | 000014190-01 | ROSE | SAXER | BLANCHARD VALLEY RGNL | 936450 |  | BLANCHARD VALLEY REGIONAL | 1710920327 | BLANCHARD VALLEY RGNL | 936450 | 1710920327 | BLANCHARD VALLEY REGIONAL | 1710920327 | Inpatient | IP | Concurrent Review | CONC |  | BLANCHARD VALLEY REGIONAL | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11222017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208034 | N390 | Urinary tract infection, site not specified | ICD10 | 12082017 | 11222017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 12042017 | 2017-12-04T12:30:40+00:00 |  | 000025860-01 | HOWARD | MITCHELL | RIVERSIDE SURG ASSOC INC | 944083 | BRENT J | GOSLIN | 1073741195 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12042017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206073 | R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 12082017 | 12042017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12082017 | 2017-12-08T08:49:24+00:00 |  | 000093698-01 | Glendon | Mullett | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12082017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Pending Admission | Inpatient | 12132017 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171208048 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 12082017 |  |  | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  | No child records to display. |  |
| 11272017 | 2017-11-27T16:18:27+00:00 |  | 000073723-01 | Barbara | Posey | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11272017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129043 | I214, I509, J9600, R0682, R0902 | Hypoxemia | ICD10 | 12082017 | 11272017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 11202017 | 2017-11-20T08:24:44+00:00 |  | 000052225-01 | NANCY | GALLIMORE | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12042017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120004 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12082017 | 12042017 | 12062017 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12052017 | 2017-12-05T08:12:40+00:00 |  | 000092910-01 | Jonathan | Brown | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12032017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205017 | E1010, N179 | Acute kidney failure, unspecified | ICD10 | 12082017 | 12032017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12062017 | 2017-12-06T09:21:57+00:00 | 252155477339 | 000042777-01 | MARY | PAPIN | HOSPITALIST MEDICINE PHY | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12082017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 12052017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206017 | J159 | Unspecified bacterial pneumonia | ICD10 | 12082017 | 12052017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11272017 | 2017-11-27T12:29:33+00:00 | 250883447330 | 000008429-01 | CECELIA | PYLE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11262017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127088 | N390 | Urinary tract infection, site not specified | ICD10 | 12082017 | 11262017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 12072017 | 2017-12-07T09:41:19+00:00 | 251763227340 | 000032824-01 | JUDITH | HOOK | HOSPITALIST MEDICINE PHY | 901165 | OLGA V | PYLAEVA | 1508811811 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12062017 | 12082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207015 | N179 | Acute kidney failure, unspecified | ICD10 | 12082017 | 12062017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11292017 | 2017-11-29T08:32:02+00:00 |  | 000092417-01 | James | Lenhart | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11282017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129085 | E875, N189 | Chronic kidney disease, unspecified | ICD10 | 12082017 | 11282017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11272017 | 2017-11-27T13:55:25+00:00 |  | 000005236-01 | JAMES | MORGAN | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Phone | Inpatient | Inpatient | 11272017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127098 | D682, M84359S, S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 12082017 | 11272017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11222017 | 2017-11-22T16:09:29+00:00 |  | 000106713-01 | Ada | Donahue | GENERAL SURG ASSOC INC | 910801 | MARGARET S | SAWYER | 1972722494 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12082017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12082017 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122087 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 12082017 | 11272017 | 12012017 | 49560, 49568 | IMPLANTATION OF MESH OR OTHER PROSTHESIS FOR INCISIONAL HERNIA REPAIR | CPT | 1, 1 | 1, 1 | Approved, Approved | 61, 61 | CPT | C4 |  |  |  | 4.0 |
| 11022017 | 2017-11-02T14:59:51+00:00 |  | 000085090-01 | Glenn | Bullock | RECONSTRUCTIVE ORTHOS & | 924273 | MATTHEW A | LANGENDERFER | 1194731398 | TRIHEALTH EVENDALE HOSPITAL | 924752 | 1053655738 | TRIHEALTH EVENDALE HOSPITAL | 1053655738 | Inpatient | IP | Concurrent Review | CONC |  | TRIHEALTH EVENDALE HOSPITAL | 12082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103081 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 12082017 | 11202017 | 11222017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 2 |  | 3 | CPT | C4 |  |  |  | 2.0 |
| 12042017 | 2017-12-04T08:53:12+00:00 |  | 000106376-01 | Irene | Rees | NEUROSCIENCE CENTER | 945250 | DEEPAK K | GULATI | 1669797890 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12012017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204032 | I639 | Cerebral infarction, unspecified | ICD10 | 12082017 | 12012017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12042017 | 2017-12-04T10:44:08+00:00 |  | 000087404-01 | Darlene | Nelson | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12022017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204103 | E860, N179, R410 | Disorientation, unspecified | ICD10 | 12082017 | 12022017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11292017 | 2017-11-29T15:01:11+00:00 |  | 000079668-01 | Dorothy | Krupp | AJAZ UMERANI MD INC | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11282017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130008 | J441, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 12082017 | 11282017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11102017 | 2017-11-10T14:36:16+00:00 |  | 000079273-01 | Melonie | Jumper | MERCY HEALTH PHYSICIANS | 933563 | MAGUED N | KHOUZAM | 1912932260 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12052017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110079 | E6601 | Morbid (severe) obesity due to excess calories | ICD10 | 12082017 | 12052017 | 12072017 | 43775 | LAP SLEEVE GASTRECTOMY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12042017 | 2017-12-04T10:43:48+00:00 | 254719477335 | 000072580-01 | JANET | MCCAFFERTY | HOSPITALIST MEDICINE PHY | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12012017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204079 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 12082017 | 12012017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11292017 | 2017-11-29T11:33:54+00:00 |  | 000085973-01 | Charles | Griffith | SPRINGFIELD HEART SURGEO | 948857 | SOUMYA | NERAVETLA | 1558511865 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12022017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130065 | I25110 | Athscl heart disease of native cor art w unstable ang pctrs | ICD10 | 12082017 | 12022017 | 12082017 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 10312017 | 2017-10-31T09:59:18+00:00 |  | 000028228-01 | RICHARD | SHAW | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101046 | I350, I719 | Aortic aneurysm of unspecified site, without rupture | ICD10 | 12082017 | 11282017 | 12082017 | 33405, 33860 | ANEURYSM ASC AORTA W/WO VLV C BYPSS | CPT | 1, 1 | 1, 1 | Approved, Approved | 11, 11 | CPT | C4 |  |  |  | 10.0 |
| 12052017 | 2017-12-05T14:44:42+00:00 |  | 000112201-01 | L JEAN | BECKDAHL | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12052017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205083 | G44209, I160 | HYPERTENSIVE URGENCY | ICD10 | 12082017 | 12052017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T11:42:26+00:00 |  | 000063099-01 | PATRICIA | SWENSON | ORTHO & SPORTS MED CTR I | 939543 | DANIEL J | IANNI | 1295816288 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120105 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 12082017 | 11282017 | 12012017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11272017 | 2017-11-27T15:44:27+00:00 |  | 000088655-01 | Lenore | Butterworth | GENERAL SURG ASSOC INC | 900848 | DAVID J | ROBERTSON | 1811983067 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12082017 | Approved | MediGold Classic Preferred | Member | Inpatient | Inpatient | 12042017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127153 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 12082017 | 12042017 | 12082017 | 49560 | HERNIA-VENTRAL-INCISIONAL | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 12082017 | 2017-12-08T15:38:25+00:00 | 025900601-7336 | 000101874-01 | Russell | McKinney | HOSPITALIST MEDICINE PHY | 917248 | NATHANIEL D | RUSSELL | 1740401470 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 12032017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208080 | K810 | Acute cholecystitis | ICD10 | 12082017 | 12032017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12042017 | 2017-12-04T07:32:53+00:00 |  | 000030169-01 | RUTH | PORTER | UROLOGICAL CENTER INC | 937096 | DONALD J | LEWIS | 1972617314 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12022017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204062 | N179 | Acute kidney failure, unspecified | ICD10 | 12082017 | 12022017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10192017 | 2017-10-19T11:50:52+00:00 |  | 000115893-01 | Pamela | Fannon | DAYTON ORTHOPAEDIC SURG | 902812 | JONATHAN J | PALEY | 1508967316 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12042017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020038 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 12082017 | 12042017 | 12052017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10252017 | 2017-10-25T11:12:36+00:00 | 026052649-7333 | 000043995-01 | LARRY | REICHLE | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12082017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 12072017 | 12082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026006 | M4126, M4127, M4316, M4806 | Spinal stenosis, lumbar region | ICD10 | 12082017 | 12072017 | 12082017 | 22558, 22853, 22585, 77003, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 2, 1, 1, 1 | 1, 2, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 12082017 | 2017-12-08T08:04:23+00:00 |  | 000119303-01 | William | Hayes | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12082017 | Approved | MediGold Essential Care | Fax | Pending Admission | Inpatient | 12212017 | 01212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171208047 | I2510, I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 12082017 |  |  | 33533, 33430 | MITRAL VALVE REPLACEMENT-OPEN | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  | No child records to display. |  |
| 12082017 | 2017-12-08T09:57:25+00:00 |  | 000093527-01 | Rickey | Harper | MOUNT CARMEL HLTH PRVDRS | 934996 | G STEPHEN | VINCENT | 1043251218 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 12082017 | Approved | MediGold Essential Care | Fax | Pending Admission | Inpatient | 12132017 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171208049 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 12082017 |  |  | 34802, 34812, 34825, 34826 | ENDOVASC EXTEN PROSTH, ADDL | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  | No child records to display. |  |
| 12012017 | 2017-12-01T09:35:40+00:00 |  | 000045536-01 | SHELBY | SHAEFFER | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12062017 | 12102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201036 | K9181 | Other intraoperative complications of digestive system | ICD10 | 12102017 | 12062017 | 12102017 | 31622, 32480, 38746 | THORACIC LYMPHADENECTOMY, REGIONAL, INCLUDING MEDIASTINAL AND | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 12062017 | 2017-12-06T08:39:47+00:00 |  | 000090172-01 | George | Gholson | COLS BONE JOINT & HAND S | 936391 | RICHARD A | FANKHAUSER | 1023091113 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12102017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 12052017 | 12092017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206005 | M86171 | Other acute osteomyelitis, right ankle and foot | ICD10 | 12102017 | 12052017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12072017 | 2017-12-07T09:54:27+00:00 | 251519357340 | 000030306-01 | VELMA | CANTER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12062017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207029 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 12102017 | 12062017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12042017 | 2017-12-04T09:22:05+00:00 | 263059007337 | 000108830-01 | Vickie | Harvey | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12032017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204028 | K352 | Acute appendicitis with generalized peritonitis | ICD10 | 12102017 | 12032017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12092017 | 2017-12-09T16:08:08+00:00 |  | 000081194-01 | Dianna | Stewart | SCIOTO VALLEY UROLOGY IN | 946370 | MICHAEL C | SWEENEY | 1396943114 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12102017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 12082017 | 12092017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171210001 | N200 | Calculus of kidney | ICD10 | 12102017 | 12082017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12032017 | 2017-12-03T12:10:02+00:00 |  | 000116016-01 | JAMES | SOUTH | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12022017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171203002 | R4182, R509 | Fever, unspecified | ICD10 | 12102017 | 12022017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12052017 | 2017-12-05T09:13:32+00:00 | 253519137338 | 000018453-01 | ALMEDA | CHESTER | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12042017 | 12102017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205014 | R0602 | Shortness of breath | ICD10 | 12102017 | 12042017 | 12102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12072017 | 2017-12-07T16:51:37+00:00 |  | 000093760-01 | James | Southers | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12102017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12062017 | 12082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171210002 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 12102017 | 12062017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12062017 | 2017-12-06T17:31:00+00:00 |  | 000022588-01 | CHARLES | GREENWALD | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12102017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 12062017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206084 | I63511 | Cereb infrc d/t unsp occls or stenos of right mid cereb art | ICD10 | 12102017 | 12062017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
