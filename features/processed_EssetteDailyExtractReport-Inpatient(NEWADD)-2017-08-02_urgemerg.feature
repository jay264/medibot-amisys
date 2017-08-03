Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-02_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-02_URGEMERG
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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 08012017 | 2017-08-01T14:35:34+00:00 |  | 000082947-01 | Cheryle | Wilson | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07312017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802050 | R6889 | Other general symptoms and signs | ICD10 | 08022017 | 07312017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07282017 | 2017-07-28T11:39:43+00:00 | 258946137209 | 000003788-01 | MARY | BUEHL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 07282017 | 08022017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728034 | J189 | Pneumonia, unspecified organism | ICD10 | 08022017 | 07282017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07252017 | 2017-07-25T09:37:19+00:00 | 250269887206 | 000090286-01 | Daniel | Dublin | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07252017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725012 | C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 08022017 | 07252017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07252017 | 2017-07-25T08:44:04+00:00 |  | 000088451-01 | Don | Mcfarland | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07262017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725022 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 08022017 | 07262017 | 08022017 | 33405 | REPLACEMENT AORTIC VALVE | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 07272017 | 2017-07-27T10:00:28+00:00 |  | 000037210-01 | HAROLD | TERRY | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 08012017 | 08022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727031 | I6529, I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 08022017 | 08012017 | 08022017 | 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07202017 | 2017-07-20T15:55:11+00:00 |  | 000117089-01 | Ramona | Gibson Mccrea | MERCY HEALTH PHYSICIANS | 921121 | BRIAN | SHIFF | 1851378301 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 08022017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07282017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720087 | K5793 | Dvtrcli of intest, part unsp, w/o perf or abscess w bleeding | ICD10 | 08022017 | 07282017 | 08012017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 2.0 |
| 07272017 | 2017-07-27T14:53:02+00:00 |  | 000076017-01 | Vanessa | Powell | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08022017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07272017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727065 | G9340, K9423, R0902 | Hypoxemia | ICD10 | 08022017 | 07272017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07262017 | 2017-07-26T15:51:55+00:00 | 178769637205 | 000040533-01 | ELEANOR | KAYE | SOUND PHYSICIANS OF OHI | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07242017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726072 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 08022017 | 07242017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07132017 | 2017-07-13T07:55:45+00:00 |  | 000030677-01 | LOIS | MELVIN | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07242017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713001 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 08022017 | 07242017 | 07272017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 07112017 | 2017-07-11T11:28:07+00:00 |  | 000101098-01 | Ardyce | Purdy | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711032 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 08022017 | 08012017 | 08022017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07252017 | 2017-07-25T10:54:15+00:00 |  | 000056326-01 | BECKY | CHILCOTE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07242017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725039 | A419 | Sepsis, unspecified organism | ICD10 | 08022017 | 07242017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07262017 | 2017-07-26T10:00:17+00:00 |  | 000072354-01 | Laura | Miller | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08022017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07252017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726052 | R0602 | Shortness of breath | ICD10 | 08022017 | 07252017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07272017 | 2017-07-27T05:57:11+00:00 |  | 000094631-01 | Benjamin | Wile Sr | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07262017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727002 | J189 | Pneumonia, unspecified organism | ICD10 | 08022017 | 07262017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07122017 | 2017-07-12T09:49:21+00:00 | 025378745-7180 | 000088707-01 | Janet | Arledge | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 08012017 | 08022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712030 | C541 | Malignant neoplasm of endometrium | ICD10 | 08022017 | 08012017 | 08022017 | 38571, 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 07282017 | 2017-07-28T13:09:42+00:00 | 252533397209 | 000105926-01 | Martha | Williamson | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07282017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728039 | I639 | Cerebral infarction, unspecified | ICD10 | 08022017 | 07282017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08012017 | 2017-08-01T08:27:34+00:00 | 026344868-7200 | 000115484-01 | EMILY | GETTYS | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08022017 | Approved | MediGold Essential Care | EMR | ACO - Pulmonary | Inpatient | 07282017 | 08012017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801003 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08022017 | 07282017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07182017 | 2017-07-18T15:45:17+00:00 |  | 000083512-01 | Gary | Rogers | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07272017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719002 | I050 | Rheumatic mitral stenosis | ICD10 | 08022017 | 07272017 | 08022017 | 33530, 33430 | MITRAL VALVE REPLACEMENT-OPEN | CPT | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 07312017 | 2017-07-31T13:40:33+00:00 |  | 000009246-01 | RAYMOND | JOSLIN | S DAYTON ACUTE CARE CNSL | 947904 | E EUN A | JANG | 1659613149 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 08022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07292017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801055 | I639, R4701 | Aphasia | ICD10 | 08022017 | 07292017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07282017 | 2017-07-28T09:38:51+00:00 | 250068867208 | 000012700-01 | BRENDA | BELL | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07272017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728009 | I959, R112, R627, K5903 | DRUG INDUCED CONSTIPATION | ICD10 | 08022017 | 07272017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07212017 | 2017-07-21T14:37:00+00:00 |  | 000066189-01 | STEVEN | DICK | FAIRFIELD HLTHCARE PROFS | 922119 | AJAY K | SHARMA | 1336287002 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724063 | F319 | Bipolar disorder, unspecified | ICD10 | 08022017 | 07202017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07202017 | 2017-07-20T11:30:39+00:00 |  | 000090623-01 | GARY | JENKINS | OSU INTERNAL MED LLC | 927197 | SITARAMESH | EMANI | 1114942752 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07242017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720067 | I509 | Heart failure, unspecified | ICD10 | 08022017 | 07242017 | 08012017 | 99221 | HOSPITAL VISIT - INITIAL | CPT | 1 | 1 | Approved | 9 | CPT | C4 |  |  |  | 3.0 |
| 07232017 | 2017-07-23T17:39:44+00:00 |  | 000086408-01 | Velma | Pelfrey | S DAYTON ACUTE CARE CNSL | 947057 | ELLEN S | KIM | 1912249400 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 08022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07222017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724060 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08022017 | 07222017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07212017 | 2017-07-21T09:34:44+00:00 | 251114177202 | 000107182-01 | PAULINE | SNIDER | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 07212017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721009 | K5720 | Dvtrcli of lg int w perforation and abscess w/o bleeding | ICD10 | 08022017 | 07212017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 07312017 | 2017-07-31T13:28:20+00:00 | 250151087209 | 000030445-01 | THOMAS | BURNS JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07282017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731061 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 08022017 | 07282017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07312017 | 2017-07-31T14:11:33+00:00 |  | 000116277-01 | Byron | Johnson | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07302017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731076 | K5669 | Other intestinal obstruction | ICD10 | 08022017 | 07302017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07262017 | 2017-07-26T09:53:28+00:00 | 264322027206 | 000034483-01 | JOE | PERNELL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07262017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726017 | I509, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08022017 | 07262017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06202017 | 2017-06-20T15:35:14+00:00 |  | 000117390-01 | Gloria | Hurt | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620120 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08022017 | 08012017 | 08022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07142017 | 2017-07-14T09:51:23+00:00 | 252494527194 | 000044701-01 | JEANNE | WATTS | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07132017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714014 | S22080K | Wedge comprsn fx T11-T12 vertebra, subs for fx w nonunion | ICD10 | 08022017 | 07132017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 07242017 | 2017-07-24T10:29:24+00:00 |  | 000054475-01 | Thomas | Keane | SAMARITAN HSPIST GRP | 910649 | SATISH | GONELA | 1952561755 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07232017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725038 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 08022017 | 07232017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08012017 | 2017-08-01T10:29:49+00:00 |  | 000015916-01 | SALLY | RUNKLE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07292017 | 07292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801047 | A419, J189, J441, J9601, R000 | Tachycardia, unspecified | ICD10 | 08022017 | 07292017 | 07302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07032017 | 2017-07-03T09:47:04+00:00 |  | 000078372-01 | Betty | Tilton | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08022017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170713115884.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703074 | L03116 | Cellulitis of left lower limb | ICD10 | 08022017 | 06302017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
