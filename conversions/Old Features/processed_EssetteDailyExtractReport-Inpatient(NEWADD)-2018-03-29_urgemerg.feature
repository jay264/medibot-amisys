Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-29_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-29_URGEMERG
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
| 03232018 | 2018-03-23T11:53:03+00:00 |  | 000057856-01 | GEORGE | MAYES JR | COLS INPATIENT CARE INC | 906074 | THOMAS F | BRADY | 1316980741 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Inpatient | IP | Concurrent Review | CONC |  | DILEY RIDGE MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03232018 | 03252018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323047 | J219, R0902 | Hypoxemia | ICD10 | 03282018 | 03232018 | 03252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03222018 | 2018-03-22T09:48:29+00:00 |  | 000106437-01 | Benjamin | Brookes | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 03212018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322030 | I509 | Heart failure, unspecified | ICD10 | 03282018 | 03212018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03262018 | 2018-03-26T14:49:00+00:00 |  | 000121731-01 | Sandra | Booth | SOUND KENWOOD HSPISTS OF | 928220 | DEEPA | BAHEL | 1437475399 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 03292018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03242018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327033 | L03116 | Cellulitis of left lower limb | ICD10 | 03292018 | 03242018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03222018 | 2018-03-22T13:10:09+00:00 |  | 000103550-01 | Herbert | Allen | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 03292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03232018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322051 | I639 | Cerebral infarction, unspecified | ICD10 | 03292018 | 03232018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01252018 | 2018-01-25T12:03:03+00:00 |  | 000116931-01 | Vivian | Tucker | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03292018 | Approved | Flexible Choice PPO | Fax | EIS | Inpatient | 03272018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125053 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03292018 | 03272018 | 03282018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03082018 | 2018-03-08T12:57:51+00:00 |  | 000029644-01 | SOLWEIG | MAXIE | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03292018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03262018 | 03282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308022 | M25512 | Pain in left shoulder | ICD10 | 03292018 | 03262018 | 03282018 | 23472, 23420, 23440, 23020, 23395, 23406 | TENOMYOTOMY, MULT., SAME INCISION | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 01242018 | 2018-01-24T09:06:44+00:00 |  | 000086439-01 | Darlene | Happ | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03092018 | 03102018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124019 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03292018 | 03092018 | 03102018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02212018 | 2018-02-21T08:36:50+00:00 |  | 000099098-01 | Nancy | Johnson | MOUNT CARMEL HLTH SYS | 925417 | CRAIG | DIMITRIS | 1801045364 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03292018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03092018 | 03102018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221051 | M13811 | Other specified arthritis, right shoulder | ICD10 | 03292018 | 03092018 | 03102018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02282018 | 2018-02-28T16:22:52+00:00 |  | 000027092-01 | GWENDOLYN | NEISENT | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03272018 | 03292018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301004 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03292018 | 03272018 | 03292018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03092018 | 2018-03-09T11:38:13+00:00 |  | 000038450-01 | DOLORES | RUCKER | MOUNT CARMEL HLTH PRVDRS | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03272018 | 03282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309053 | I481 | Persistent atrial fibrillation | ICD10 | 03292018 | 03272018 | 03282018 | 33340 | PERQ CLSR TCAT L ATR APNDGE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03192018 | 2018-03-19T14:20:01+00:00 |  | 000049657-01 | HAROLD | MCCALL | INPATIENT SPEC OF SWEST | 926714 | PRADEEP | SINGH | 1326200726 | LEE MEMORIAL HOSPITAL | 934626 | 1558302570 | LEE MEMORIAL HOSPITAL | 1558302570 | Inpatient | IP | Concurrent Review | CONC |  | LEE MEMORIAL HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03182018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319096 | R079 | Chest pain, unspecified | ICD10 | 03292018 | 03182018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03192018 | 2018-03-19T15:20:05+00:00 |  | 000065207-01 | HAZEL | CURTIS | FAIRFIELD HLTHCARE PROFS | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03172018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320007 | R609 | Edema, unspecified | ICD10 | 03292018 | 03172018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03212018 | 2018-03-21T09:35:50+00:00 |  | 000082032-01 | Wanza | Springer | UNIVERSITY OF CINCINNATI | 942132 | STEPHEN J | RUSH | 1316171754 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 03292018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03012018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321012 | F258 | Other schizoaffective disorders | ICD10 | 03292018 | 03012018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 27.0 |
| 03212018 | 2018-03-21T08:28:39+00:00 |  | 000027314-01 | WILLIAM | JOHNSTON | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321019 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 03292018 | 03202018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03212018 | 2018-03-21T12:27:17+00:00 |  | 000061137-01 | Sandra | Beggrow | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03202018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321062 | I270, I509, N179 | Acute kidney failure, unspecified | ICD10 | 03292018 | 03202018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03222018 | 2018-03-22T09:32:54+00:00 |  | 000007379-01 | JAMES | SHEPHERD | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03272018 | 03282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322036 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03292018 | 03272018 | 03282018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03222018 | 2018-03-22T14:20:28+00:00 |  | 000046811-01 | KAREN | KARST | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322047 | R1310 | Dysphagia, unspecified | ICD10 | 03292018 | 03212018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03232018 | 2018-03-23T12:12:09+00:00 |  | 000101771-01 | SANDRA | FRIESNER | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03222018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323040 | A419, R0902 | Hypoxemia | ICD10 | 03292018 | 03222018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03232018 | 2018-03-23T14:40:29+00:00 |  | 000028621-01 | BETTY | BLANKENSHIP | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03222018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323065 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 03292018 | 03222018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03262018 | 2018-03-26T12:07:12+00:00 |  | 000034210-01 | SHIRLEY | DAVIS | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03242018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326033 | J159, R6521 | Severe sepsis with septic shock | ICD10 | 03292018 | 03242018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03272018 | 2018-03-27T10:32:07+00:00 |  | 000100333-01 | Kathryn | Foor | CEN OH PRIMARY CARE SPEC | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327075 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03292018 | 03262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02282018 | 2018-02-28T12:00:45+00:00 |  | 000087512-01 | Christine | Conrad | MERCY HEALTH PHYSICIANS | 947497 | HERBERT M | BIEL | 1588699771 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03292018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03212018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228045 | M4310, Z981, M48062 | M48062 | ICD10 | 03292018 | 03212018 | 03232018 | 22612, 22614, 22842, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 03082018 | 2018-03-08T14:54:39+00:00 |  | 000040583-01 | LINDA | ZIMMERMAN | ALLIANCE PHYSICIANS INC | 904501 | CAROL J | SAWMILLER | 1043235070 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03222018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308061 | C50911, C50912, Z170 | Estrogen receptor positive status [ER+] | ICD10 | 03292018 | 03222018 | 03282018 | 19303, 38525 | BIOP/EXC DEEP AXILLARY NODE | CPT | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 03082018 | 2018-03-08T16:39:26+00:00 |  | 000072311-01 | Lee | Young | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03272018 | 03282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309013 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 03292018 | 03272018 | 03282018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03142018 | 2018-03-14T16:33:52+00:00 |  | 000029948-01 | MICHAEL | FOSTER | HOCKING VALLEY MED GRP | 904471 | MAX M | HAQUE | 1700884111 | HOCKING VALLEY COMMUNITY | 906222 | 1801903109 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314078 | F39 | Unspecified mood [affective] disorder | ICD10 | 03292018 | 03132018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03152018 | 2018-03-15T13:21:57+00:00 |  | 000077694-01 | Alvin | Biggs | MERCY HEALTH WEST HOSPITAL LLC | 932125 |  | MERCY HEALTH WEST HOSPITAL LLC | 1740368851 | MERCY HEALTH WEST HOSPITAL LLC | 932125 | 1740368851 | MERCY HEALTH WEST HOSPITAL LLC | 1740368851 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MERCY HEALTH WEST HOSPITAL LLC | 03292018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03182018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315044 | I639 | Cerebral infarction, unspecified | ICD10 | 03292018 | 03182018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03192018 | 2018-03-19T16:00:19+00:00 |  | 000018591-01 | Carmena | Orsini | OHIOHEALTH PHYS GRP | 926929 | NIRAV A | VORA | 1033254636 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03182018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320017 | G931 | Anoxic brain damage, not elsewhere classified | ICD10 | 03292018 | 03182018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T16:03:25+00:00 |  | 000088527-01 | John | Craig | CENTRAL OH HSPISTS INC | 933007 | PATRICK J | BARR | 1154611317 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03292018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320018 | L03115 | Cellulitis of right lower limb | ICD10 | 03292018 | 03192018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03202018 | 2018-03-20T09:09:00+00:00 |  | 000021907-01 | PATRICIA | KREAGER | OHIOHEALTH PHYS GRP | 934915 | VIKRAM | TAMASKAR | 1891735817 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320035 | N179 | Acute kidney failure, unspecified | ICD10 | 03292018 | 03192018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03222018 | 2018-03-22T11:11:34+00:00 |  | 000100673-01 | Bonnie | Brown | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03212018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322050 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 03292018 | 03212018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03242018 | 2018-03-24T13:33:50+00:00 |  | 000031207-01 | BETTY | JUDE | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03232018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326019 | J209, J45901 | Unspecified asthma with (acute) exacerbation | ICD10 | 03292018 | 03232018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03262018 | 2018-03-26T12:20:39+00:00 |  | 000095547-01 | Deborah | Lindsey | NEW HORIZONS YTH & FAM C | 935144 | ANGELINE | STERGIOU | 1932172780 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03252018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326087 | F3340 | Major depressive disorder, recurrent, in remission, unsp | ICD10 | 03292018 | 03252018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T15:06:32+00:00 |  | 000015446-01 | RUTH | COOK | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03242018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327047 | E870, E876, N179 | Acute kidney failure, unspecified | ICD10 | 03292018 | 03242018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T16:18:39+00:00 |  | 000051426-01 | KATHERINE | YANK | HOSPITALIST MEDICINE PHY | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03252018 | 03282018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327050 | E876, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 03292018 | 03252018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03292018 | 2018-03-29T11:04:33+00:00 |  | 000072327-01 | Thomas | Maynard | KNOX COMMUNITY HOSPITAL | 930560 | ADAM J | CLEMENS | 1477798049 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03272018 | 03282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329041 | C61 | Malignant neoplasm of prostate | ICD10 | 03292018 | 03272018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03232018 | 2018-03-23T09:38:59+00:00 |  | 000037098-01 | GEORGIA | BEASLEY | OHIOHEALTH PHYS GRP | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03232018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323032 | J159 | Unspecified bacterial pneumonia | ICD10 | 03292018 | 03232018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03232018 | 2018-03-23T12:07:00+00:00 |  | 000015250-01 | MARION | MORRISON | RIVERSIDE SURG ASSOC INC | 915688 | KWANG | SUH | 1679631170 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03232018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323049 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 03292018 | 03232018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03232018 | 2018-03-23T14:02:15+00:00 |  | 000070879-01 | Charles | Walters | HOSPITALIST MEDICINE PHY | 922163 | ADEDOYIN O | ADETORO | 1215260930 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03222018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323057 | I639 | Cerebral infarction, unspecified | ICD10 | 03292018 | 03222018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03262018 | 2018-03-26T11:12:27+00:00 |  | 000118366-01 | Robert | Thompson | DOCTORS HOSPITAL | 903408 |  | DOCTORS HOSPITAL | 1972535052 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 03292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03232018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326021 | C189, R600 | Localized edema | ICD10 | 03292018 | 03232018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T09:21:56+00:00 |  | 000007065-01 | DONALD | REESE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 03252018 | 03282018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328012 | I509 | Heart failure, unspecified | ICD10 | 03292018 | 03252018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03282018 | 2018-03-28T14:26:34+00:00 |  | 000054806-01 | Diana | Babcock | CEN OH PRIMARY CARE SPEC | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03272018 | 03282018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329040 | J441, J9601 | Acute respiratory failure with hypoxia | ICD10 | 03292018 | 03272018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
