Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-28_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-28_URGEMERG
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
| 11012017 | 2017-11-01T08:27:11+00:00 | 025898041-7319 | 000037348-01 | DAVID | HEISERMAN | MOUNT CARMEL HLTH PRVDRS | 951957 | JOHN J | KELEMEN | 1871554212 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102026 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 11282017 | 11202017 | 11272017 | 33430, 33999, 33256 | OPERATIVE TISSUE ABLATION & RECONSTRUCTION OF ATRIA WITH CARDIOPLUMONARY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 8, 8, 8 | CPT | C4 |  |  |  | 7.0 |
| 11202017 | 2017-11-20T11:20:07+00:00 | 253934847323 | 000015504-01 | RONALD | HYDE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11192017 | 11272017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120058 | R748 | Abnormal levels of other serum enzymes | ICD10 | 11282017 | 11192017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11272017 | 2017-11-27T10:10:17+00:00 | 250982837328 | 000086395-01 | Beverly | Ranft | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 11242017 | 11272017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127046 | I4891 | Unspecified atrial fibrillation | ICD10 | 11282017 | 11242017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T09:47:09+00:00 |  | 000088294-01 | Lucille | Lehman | ALLIANCE PHYSICIANS INC | 910918 | MICHAEL C | WELKER | 1942211305 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 11282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11222017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106105 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 11282017 | 11222017 | 11242017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11202017 | 2017-11-20T10:27:13+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 912724 | YVONNE A | EFEBERA | 1285612986 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 11282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11182017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120098 | R509 | Fever, unspecified | ICD10 | 11282017 | 11182017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11222017 | 2017-11-22T14:37:28+00:00 |  | 000095296-01 | Everett | Wade | GARY L GILLEN MD | 909982 |  | GARY L GILLEN MD | 1962601369 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11212017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122070 | I214, R079 | Chest pain, unspecified | ICD10 | 11282017 | 11212017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11212017 | 2017-11-21T12:43:49+00:00 |  | 000070896-01 | Sandra | Shough | BEAUFORT COUNTY MEMORIAL HOSPITAL | 931836 |  | BEAUFORT COUNTY MEMORIAL HOSPITAL | 1366436073 | BEAUFORT COUNTY MEMORIAL HOSPITAL | 931836 | 1366436073 | BEAUFORT COUNTY MEMORIAL HOSPITAL | 1366436073 | Inpatient | IP | Concurrent Review | CONC |  | BEAUFORT COUNTY MEMORIAL HOSPITAL | 11282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11202017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121071 | A419, R6521 | Severe sepsis with septic shock | ICD10 | 11282017 | 11202017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11192017 | 2017-11-19T12:28:49+00:00 |  | 000066359-01 | PATRICIA | CLARK | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11182017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120028 | D689 | Coagulation defect, unspecified | ICD10 | 11282017 | 11182017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T16:01:51+00:00 |  | 000113940-01 | Gary | Yount | GENESIS MEDICAL GRP LLC | 912779 | EDUARDO | JORGE | 1689675134 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11162017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115040 | R911 | Solitary pulmonary nodule | ICD10 | 11282017 | 11162017 | 11272017 | 31624, 32097 | OPEN WEDGE/BX LUNG NODULE | CPT | 1, 1 | 1, 1 | Approved, Approved | 12, 12 | CPT | C4 |  |  |  | 11.0 |
| 11142017 | 2017-11-14T10:12:46+00:00 |  | 000079515-01 | Thomas | Dodd | OSU SURGERY LLC | 943637 | MARY E | DILLHOFF | 1518174739 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 11282017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11172017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114101 | K862 | Cyst of pancreas | ICD10 | 11282017 | 11172017 | 11232017 | 48146, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | HCPCS | HC |  |  |  | 6.0 |
| 11202017 | 2017-11-20T13:11:44+00:00 |  | 000117498-01 | Mary | Davis | UNIVERSITY OF CINCINNATI | 924928 | KEVIN D | DELL | 1093708273 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 11282017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11172017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120109 | H44003 | Unspecified purulent endophthalmitis, bilateral | ICD10 | 11282017 | 11172017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11282017 | 2017-11-28T08:42:27+00:00 |  | 000050514-01 | JOHN | BURKHART | CENTRAL OHIO SURG ASSOC | 934982 | THOMAS M | VARA | 1457390130 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11272017 | 11282017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128005 | K4090 | Unil inguinal hernia, w/o obst or gangr, not spcf as recur | ICD10 | 11282017 | 11272017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11072017 | 2017-11-07T11:58:20+00:00 |  | 000072325-01 | Rosemary | Hurst | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11222017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107074 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 11282017 | 11222017 | 11282017 | 32097 | OPEN WEDGE/BX LUNG NODULE | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 11012017 | 2017-11-01T09:55:41+00:00 |  | 000087845-01 | Larry | Taylor | S DAYTON ACUTE CARE CNSL | 947829 | KIRTI | SANDERS | 1700227113 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 11282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10312017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101031 | D649, I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 11282017 | 10312017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 26.0 |
| 11062017 | 2017-11-06T09:49:42+00:00 |  | 000106881-01 | John | Pyne Jr | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11162017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106104 | I739 | Peripheral vascular disease, unspecified | ICD10 | 11282017 | 11162017 | 11172017 | 35556 | BYPASS GR, VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11172017 | 2017-11-17T09:59:11+00:00 | 266739117321 | 000112301-01 | William | Ostermeyer | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11282017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11172017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117020 | K279 | Peptic ulc, site unsp, unsp as ac or chr, w/o hemor or perf | ICD10 | 11282017 | 11172017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11202017 | 2017-11-20T09:04:01+00:00 | 267368037321 | 000105723-01 | Daniel | Atkisson | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 11172017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120009 | L03818 | Cellulitis of other sites | ICD10 | 11282017 | 11172017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11272017 | 2017-11-27T09:30:21+00:00 | 265006107331 | 000103515-01 | LARRY | FOSNAUGH | FAIRFIELD HLTHCARE PROFS | 936916 | SCOTT R | BAKER | 1235118209 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Southeast OH Essential Care | Reports | ACO - Pulmonary | Inpatient | 11262017 | 11282017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127026 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11282017 | 11262017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11222017 | 2017-11-22T15:12:54+00:00 |  | 000016470-01 | MARY | EMMELHAINZ | COPC CENTRAL OHIO PRIMAR | 932738 | SRIKANTH | KESARI | 1932487337 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11222017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122079 | N390 | Urinary tract infection, site not specified | ICD10 | 11282017 | 11222017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11222017 | 2017-11-22T16:45:34+00:00 |  | 000071675-01 | Christina | Lawrence | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11222017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122088 | S5290XA | Unsp fracture of unsp forearm, init for clos fx | ICD10 | 11282017 | 11222017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11172017 | 2017-11-17T09:47:43+00:00 | 252533207320 | 000049954-01 | LOUIS | WILLIAMS | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11162017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117018 | E871, J9600, R001, R55 | Syncope and collapse | ICD10 | 11282017 | 11162017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 11282017 | 2017-11-28T06:42:17+00:00 |  | 000018501-01 | RONALD | ROSEN | AKSM HEALTHCARE COLLABO | 934886 | DAVID W | STEWART | 1720029903 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11272017 | 11282017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128001 | C675, N403 | Nodular prostate with lower urinary tract symptoms | ICD10 | 11282017 | 11272017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11172017 | 2017-11-17T15:07:35+00:00 |  | 000031390-01 | DAVID | CHILDERS | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11172017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171118003 | N179, R0902 | Hypoxemia | ICD10 | 11282017 | 11172017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11232017 | 2017-11-23T11:12:33+00:00 |  | 000113220-01 | Michael | Stacey | CENTRAL OH HSPISTS INC | 935323 | JOHN N | KWAK | 1871694653 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11232017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127009 | R531 | Weakness | ICD10 | 11282017 | 11232017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T10:16:45+00:00 | 250614087316 | 000107486-01 | Patricia | Kluesener | SOUND PHYSICIANS OF OHI0 | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11132017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113013 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 11282017 | 11132017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 11272017 | 2017-11-27T07:53:59+00:00 |  | 000085415-01 | Shirley | Schutte | STEVEN J MORGENSTERN MD | 935242 | STEVEN J | MORGENSTERN | 1417916651 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11242017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127113 | H538, R51, I161 | HYPERTENSIVE EMERGENCY | ICD10 | 11282017 | 11242017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11162017 | 2017-11-16T15:18:38+00:00 | 255138507320 | 000016135-01 | ALLEN | PACK | COPC CENTRAL OHIO PRIMAR | 913915 | MALVINA | KHOZINA | 1063473288 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11162017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116079 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 11282017 | 11162017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11282017 | 2017-11-28T16:10:13+00:00 |  | 000050437-01 | CAROL | FORTNEY | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11282017 | Denied | MediGold Classic Preferred | Phone | Services Available In-Network | Inpatient | 11282017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171128091 | N178 | Other acute kidney failure | ICD10 | 11282017 | 11282017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
