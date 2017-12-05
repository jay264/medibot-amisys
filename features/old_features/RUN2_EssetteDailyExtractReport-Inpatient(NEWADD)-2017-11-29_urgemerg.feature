Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-29_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-29_URGEMERG
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
| 11092017 | 2017-11-09T11:03:03+00:00 |  | 000008043-01 | GREGORY | THRUSH | LANCASTER SURGICAL ASSOC | 936065 | DAVID M | HASL | 1710978424 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11152017 | 11202017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110047 | C187, C641, K639 | Disease of intestine, unspecified | ICD10 | 11292017 | 11152017 | 11202017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 11212017 | 2017-11-21T13:23:37+00:00 |  | 000034014-01 | BEATRICE | MADDEN | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121079 | M6282, R4182 | Altered mental status, unspecified | ICD10 | 11292017 | 11202017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11222017 | 2017-11-22T07:31:57+00:00 |  | 000108205-01 | Linda | Higgins | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11212017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122010 | I4891 | Unspecified atrial fibrillation | ICD10 | 11292017 | 11212017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11142017 | 2017-11-14T13:59:27+00:00 |  | 000081974-01 | John | Coppel | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11212017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115003 | I70203 | Unsp athscl native arteries of extremities, bilateral legs | ICD10 | 11292017 | 11212017 | 11222017 | 35556, 35572, 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11212017 | 2017-11-21T16:06:36+00:00 |  | 000044222-01 | JOHN | MEEKER | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122017 | K5641, K5660 | Unspecified intestinal obstruction | ICD10 | 11292017 | 11202017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11202017 | 2017-11-20T09:49:29+00:00 |  | 000093252-01 | Mary | Sanford | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11182017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120083 | S72141A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 11292017 | 11182017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10302017 | 2017-10-30T13:41:40+00:00 |  | 000040105-01 | VIOLA | MCNICHOLS | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031096 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 11292017 | 11202017 | 11222017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11082017 | 2017-11-08T14:25:58+00:00 |  | 000085516-01 | Dewey | Cales | LANCASTER SURGICAL ASSOC | 936974 | SCOTT O | JOHNSON | 1528058971 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11072017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108059 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 11292017 | 11072017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 09262017 | 2017-09-26T08:48:15+00:00 |  | 000105235-01 | Mary | Davis | COLS BONE JOINT & HAND S | 936391 | RICHARD A | FANKHAUSER | 1023091113 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927004 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11292017 | 11282017 | 11292017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11212017 | 2017-11-21T08:18:36+00:00 |  | 000109912-01 | William | Redick | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121014 | R0600 | Dyspnea, unspecified | ICD10 | 11292017 | 11202017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11262017 | 2017-11-26T09:37:37+00:00 |  | 000007813-01 | WILLIAM | BEAVERS JR | FORT WALTON BEACH MED CTR | 934698 |  | FORT WALTON BEACH MED CTR | 1639128820 | FORT WALTON BEACH MED CTR | 934698 | 1639128820 | FORT WALTON BEACH MED CTR | 1639128820 | Inpatient | IP | Concurrent Review | CONC |  | FORT WALTON BEACH MED CTR | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11232017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127099 | A419, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11292017 | 11232017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10182017 | 2017-10-18T09:13:22+00:00 |  | 000038495-01 | FLORA | BROWN | COLS BONE JOINT & HAND S | 936391 | RICHARD A | FANKHAUSER | 1023091113 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018078 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11292017 | 11282017 | 11292017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11212017 | 2017-11-21T13:57:39+00:00 |  | 000102959-01 | Vicky | Richards | MOUNT CARMEL HLTH PRVDRS | 935747 | RENEE | CAPUTO | 1558367862 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11272017 | 11292017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121072 | N393, N993 | Prolapse of vaginal vault after hysterectomy | ICD10 | 11292017 | 11272017 | 11292017 | 57280, 57285 | REPAIR PARAVAG DEFECT, VAG,17.31,17.31 | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 11282017 | 2017-11-28T12:09:47+00:00 |  | 000090397-01 | Ida | Miller | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 11282017 | 11292017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129070 | E041 | Nontoxic single thyroid nodule | ICD10 | 11292017 | 11282017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11252017 | 2017-11-25T20:32:39+00:00 |  | 000003407-01 | RUSSELL | THOMPSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11242017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125014 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11292017 | 11242017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11262017 | 2017-11-26T16:50:40+00:00 |  | 000073406-01 | Merle | Valentine | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 11262017 | 11292017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126017 | I472 | Ventricular tachycardia | ICD10 | 11292017 | 11262017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11282017 | 2017-11-28T08:27:51+00:00 |  | 000111587-01 | Vickie | Eye | CENTRAL OHIO SURG ASSOC | 934982 | THOMAS M | VARA | 1457390130 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11292017 | Approved | Flexible Choice PPO | Reports | EIS | Inpatient | 11272017 | 11292017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128003 | K439 | Ventral hernia without obstruction or gangrene | ICD10 | 11292017 | 11272017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T08:17:33+00:00 |  | 000069507-01 | VICKI | JOSEPH | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11292017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11272017 | 11292017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128002 | K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 11292017 | 11272017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T09:59:09+00:00 | 259059247330 | 000056868-01 | JAMES | LORENTZ | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11292017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 11262017 | 11292017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127040 | R0602 | Shortness of breath | ICD10 | 11292017 | 11262017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11092017 | 2017-11-09T09:22:16+00:00 | 250093607312 | 000037144-01 | MARILYN | BOWEN | COPC CENTRAL OHIO PRIMAR | 910900 | RICHARD G | BAKKER | 1528244357 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11092017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109020 | G939, I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 11292017 | 11092017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 11152017 | 2017-11-15T15:06:13+00:00 |  | 000102947-01 | Ralph | Latham | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 11292017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11142017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116025 | I509, J9601 | Acute respiratory failure with hypoxia | ICD10 | 11292017 | 11142017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11242017 | 2017-11-24T14:12:08+00:00 |  | 000076819-01 | Lando | Perry | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11232017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127127 | J441, J9601 | Acute respiratory failure with hypoxia | ICD10 | 11292017 | 11232017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11242017 | 2017-11-24T10:34:43+00:00 |  | 000026449-01 | JOSIE | CLAY | CMH CARDIOLOGY SERVICES | 914228 | JOHN T | HOLLON | 1124092846 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11232017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129058 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11292017 | 11232017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11242017 | 2017-11-24T13:55:27+00:00 |  | 000007083-01 | SARAH | WATKINS | OHIOHEALTH PHYS GRP | 949035 | KEVIN L | STIVER | 1356502280 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11232017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127071 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 11292017 | 11232017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11222017 | 2017-11-22T15:06:41+00:00 |  | 000037842-01 | PATRICIA | RUSS | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11212017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122076 | R0602 | Shortness of breath | ICD10 | 11292017 | 11212017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T15:00:41+00:00 |  | 000068535-01 | MARILYN | WINKFIELD | IOWA LUTHERAN HOSPITAL | 952524 |  | IOWA LUTHERAN HOSPITAL | 1356433049 | IOWA LUTHERAN HOSPITAL | 952524 | 1356433049 | IOWA LUTHERAN HOSPITAL | 1356433049 | Inpatient | IP | Concurrent Review | CONC |  | IOWA LUTHERAN HOSPITAL | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11172017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120113 | C3490, E871, E876, M545, R112, R52 | Pain, unspecified | ICD10 | 11292017 | 11172017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11262017 | 2017-11-26T14:30:45+00:00 |  | 000119045-01 | Tamara | Pierson | OHIOHEALTH PHYS GRP | 910477 | MARK D | WELLS | 1215926597 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11292017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11252017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127102 | J0100 | Acute maxillary sinusitis, unspecified | ICD10 | 11292017 | 11252017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11162017 | 2017-11-16T07:56:38+00:00 |  | 000067209-01 | DOROTHY | BRUNING | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116070 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 11292017 | 11282017 | 11292017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11292017 | 2017-11-29T06:51:01+00:00 |  | 000106794-01 | Timothy | Kerscher | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11292017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11282017 | 11292017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129003 | K3580 | Unspecified acute appendicitis | ICD10 | 11292017 | 11282017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11292017 | 2017-11-29T08:17:33+00:00 |  | 000102181-01 | Ronald | Moneypenny | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11292017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11272017 | 11292017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129010 | N200 | Calculus of kidney | ICD10 | 11292017 | 11272017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11152017 | 2017-11-15T11:38:29+00:00 |  | 000108654-01 | ROGER | SALTS | SOUND PHYSICIANS OF OHI0 | 947194 | KENNETH H | SURKIN | 1295050227 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 11292017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11132017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115049 | K7460 | Unspecified cirrhosis of liver | ICD10 | 11292017 | 11132017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11222017 | 2017-11-22T09:35:17+00:00 | 266128417326 | 000082562-01 | EDWARD | SCAGGS | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11212017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122020 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 11292017 | 11212017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11202017 | 2017-11-20T10:50:11+00:00 |  | 000111051-01 | Elizabeth | Swank | GERICARE ASSOCIATES INC | 921316 | SHWETAL G | DESAI | 1083687248 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 11292017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11182017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120099 | K3189, N3000 | Acute cystitis without hematuria | ICD10 | 11292017 | 11182017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11212017 | 2017-11-21T16:10:36+00:00 | 262348647325 | 000007646-01 | JOHN | ANDERSON JR | COLS INPATIENT CARE INC | 914979 | JORN | KAEVEL | 1275793150 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11212017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121083 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 11292017 | 11212017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11032017 | 2017-11-03T14:05:30+00:00 |  | 000004066-01 | ROBERT | BOYD | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103090 | I639 | Cerebral infarction, unspecified | ICD10 | 11292017 | 11042017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11232017 | 2017-11-23T07:36:16+00:00 |  | 000108054-01 | Janey | Mohler | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11232017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171123007 | S2241XA | Multiple fractures of ribs, right side, init for clos fx | ICD10 | 11292017 | 11222017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10162017 | 2017-10-16T14:52:55+00:00 |  | 000037218-01 | JUNE | TERRY | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017070 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11292017 | 11282017 | 11292017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11212017 | 2017-11-21T09:26:16+00:00 | 180331037325 | 000089802-01 | Ruth | Eades | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11212017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121019 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11292017 | 11212017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11062017 | 2017-11-06T13:15:11+00:00 |  | 000085417-01 | Jack | Spangler | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107061 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11292017 | 11282017 | 11292017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11202017 | 2017-11-20T07:33:50+00:00 |  | 000004265-01 | RAYMOND | WAY | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11192017 | 11292017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120001 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11292017 | 11192017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 11212017 | 2017-11-21T11:17:11+00:00 |  | 000096018-01 | Sandra | Montgomery | MIAMI VALLEY HSPISTS GRP | 931966 | SRAVYA S | SURAPANENI | 1932405297 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11202017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121055 | D649, E860 | Dehydration | ICD10 | 11292017 | 11202017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11172017 | 2017-11-17T12:47:01+00:00 |  | 000083663-01 | James | Cummings | DAVID ZAPF DO INC | 902206 | DAVID M | ZAPF | 1518948611 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11162017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117065 | K223 | Perforation of esophagus | ICD10 | 11292017 | 11162017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
