Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-01_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-01_URGEMERG
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
| 02122018 | 2018-02-12T13:24:41+00:00 |  | 000109418-01 | CHARLES | BROWN | KNOX COMMUNITY HOSP GRP | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212122 | E860, E875 | Hyperkalemia | ICD10 | 02282018 | 02092018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 02262018 | 2018-02-26T12:17:57+00:00 |  | 000105062-01 | Charlene | Leidenheimer | LOEWY, ANDREW R | 921391 | ANDREW R | LOEWY | 1346240041 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 03012018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02252018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226086 | D500, R1013 | Epigastric pain | ICD10 | 03012018 | 02252018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02202018 | 2018-02-20T12:37:55+00:00 |  | 000008014-01 | EILLEEN | ATWOOD | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 02282018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220082 | J159 | Unspecified bacterial pneumonia | ICD10 | 03012018 | 02192018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02022018 | 2018-02-02T10:02:59+00:00 |  | 000053656-01 | MARTHA | ACKLEY | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202011 | J159, J9601 | Acute respiratory failure with hypoxia | ICD10 | 03012018 | 02022018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 26.0 |
| 02192018 | 2018-02-19T13:23:50+00:00 |  | 000049165-01 | BECKEY | RIDENOUR | HOSPITALIST MEDICINE PHY | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220032 | D496 | Neoplasm of unspecified behavior of brain | ICD10 | 03012018 | 02192018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01152018 | 2018-01-15T09:56:27+00:00 |  | 000111542-01 | DEBORAH | GATTS | SIDES, JAMES A | 934799 | JAMES A | SIDES | 1275587578 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03012018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02272018 | 02282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115069 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03012018 | 02272018 | 02282018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01222018 | 2018-01-22T16:45:30+00:00 |  | 000006028-01 | MARTHA | LACEY | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02232018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123014 | M48062 | M48062 | ICD10 | 03012018 | 02232018 | 02282018 | 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 2 | 1, 2 | Approved, Approved | 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 02072018 | 2018-02-07T11:52:33+00:00 |  | 000044584-01 | DAVID | BROWN | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02272018 | 02282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207027 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03012018 | 02272018 | 02282018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02232018 | 2018-02-23T08:57:43+00:00 |  | 000114914-01 | Dorothy | Lanch | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02272018 | 02282018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223008 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 03012018 | 02272018 | 02282018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02232018 | 2018-02-23T13:42:32+00:00 |  | 000080519-01 | Robert | Thompson | HOSPITALIST MEDICINE PHY | 904570 | SURESH K | YADAV | 1649288465 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223054 | T8571XA | Infect/inflm reaction due to periton dialysis catheter, init | ICD10 | 03012018 | 02222018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02232018 | 2018-02-23T18:10:07+00:00 |  | 000060807-01 | GEORGE | WALRAVEN | COLS INPATIENT CARE INC | 914611 | SOWMYA | VARRE | 1871753673 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 02222018 | 02282018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226008 | I509 | Heart failure, unspecified | ICD10 | 03012018 | 02222018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02242018 | 2018-02-24T16:01:19+00:00 |  | 000115005-01 | James | Burge | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02232018 | 02282018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226021 | J189 | Pneumonia, unspecified organism | ICD10 | 03012018 | 02232018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02262018 | 2018-02-26T09:21:56+00:00 |  | 000006586-01 | CAROL | STEPP | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02252018 | 02282018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226040 | J440 | Chronic obstructive pulmon disease w acute lower resp infct | ICD10 | 03012018 | 02252018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02262018 | 2018-02-26T14:17:29+00:00 |  | 000007450-01 | MARVELINE | MCCONNELL | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02252018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226092 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 03012018 | 02252018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02132018 | 2018-02-13T14:44:04+00:00 |  | 000072574-01 | Sandra | Smith | CENTRAL OHIO SURG ASSOC | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02272018 | 02282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213094 | E785, I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 03012018 | 02272018 | 02282018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02192018 | 2018-02-19T13:18:42+00:00 |  | 000095051-01 | Mary | Nichols | LICKING MEM HLTH PROF | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02182018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220015 | J918 | Pleural effusion in other conditions classified elsewhere | ICD10 | 03012018 | 02182018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02192018 | 2018-02-19T16:29:55+00:00 |  | 000111002-01 | Nancy | Miller | THE CHRIST HSP MED ASSOC | 946006 | ANNA R | GORONCY | 1366732380 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 03012018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02182018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220029 | R6889 | Other general symptoms and signs | ICD10 | 03012018 | 02182018 | 02222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02202018 | 2018-02-20T10:31:32+00:00 |  | 000042525-01 | BARBARA | ATHERTON | LICKING MEM HLTH PROF | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220073 | D649, J121 | Respiratory syncytial virus pneumonia | ICD10 | 03012018 | 02192018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02222018 | 2018-02-22T10:41:29+00:00 |  | 000029400-01 | ELAINE | FILMORE | LABONE OF OHIO INC | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03012018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 02212018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222062 | J189 | Pneumonia, unspecified organism | ICD10 | 03012018 | 02212018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02222018 | 2018-02-22T13:55:27+00:00 |  | 000009031-01 | FRANCES | REED | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02212018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222075 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 03012018 | 02212018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02252018 | 2018-02-25T13:51:36+00:00 |  | 000100065-01 | Furman | Tinon | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02242018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226028 | M4180, M4806, M48061 | M48061 | ICD10 | 03012018 | 02242018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02262018 | 2018-02-26T10:24:03+00:00 |  | 000066100-01 | TIMOTHY | DODRILL JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02252018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226063 | J189 | Pneumonia, unspecified organism | ICD10 | 03012018 | 02252018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02262018 | 2018-02-26T11:51:42+00:00 |  | 000091593-01 | Elma | George | GAERKE, CYNTHIA M | 915210 | CYNTHIA M | GAERKE | 1538184437 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03012018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02252018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226083 | J189, R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 03012018 | 02252018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02262018 | 2018-02-26T14:28:06+00:00 |  | 000024186-01 | DONALD | SANDER | MARIETTA HLTH CARE PHYS | 951677 | SARAH | WESCOTT | 1629418207 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03012018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02252018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226107 | K625 | Hemorrhage of anus and rectum | ICD10 | 03012018 | 02252018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02282018 | 2018-02-28T11:53:06+00:00 |  | 000120022-01 | HAROLD | SCHEIN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03012018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02262018 | 02282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228037 | N201 | Calculus of ureter | ICD10 | 03012018 | 02262018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02092018 | 2018-02-09T11:27:30+00:00 |  | 000120542-01 | Terry | Bradley | OSU SURGERY LLC | 909342 | CARL R | SCHMIDT | 1386802460 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 03012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02212018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209047 | C160 | Malignant neoplasm of cardia | ICD10 | 03012018 | 02212018 | 03012018 | 43631 | GASTRECTOMY, PARTIAL, DISTAL; W/GASTRODUODENOSTOMY | CPT | 1 | 1 | Approved | 9 | CPT | C4 |  |  |  | 5.0 |
| 02132018 | 2018-02-13T08:48:19+00:00 |  | 000000107-01 | MINNIE | BEATTY | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02122018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213040 | E871, G9341, J101, J111, J189, J9601 | Acute respiratory failure with hypoxia | ICD10 | 03012018 | 02122018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 02192018 | 2018-02-19T14:26:18+00:00 |  | 000092284-01 | David | Sears | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220035 | I824Y2, R0609 | Other forms of dyspnea | ICD10 | 03012018 | 02172018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02202018 | 2018-02-20T08:16:47+00:00 |  | 000087229-01 | Richard | Roush | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02192018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220059 | R5383 | Other fatigue | ICD10 | 03012018 | 02192018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02232018 | 2018-02-23T14:45:08+00:00 |  | 000046302-01 | KAREN | LUCKHAUPT | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 02212018 | 02232018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180227158707.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223060 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03012018 | 02212018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02232018 | 2018-02-23T15:00:58+00:00 |  | 000072844-01 | Thomas | Pietrzak Jr | GRANDVIEW & SOUTHVIEW HO | 936462 |  | GRANDVIEW MEDICAL CENTER | 1053339507 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02212018 | 02252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223070 | R0600 | Dyspnea, unspecified | ICD10 | 03012018 | 02212018 | 02252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02262018 | 2018-02-26T08:31:24+00:00 |  | 000095539-01 | Sharon | Thabat Mohamed | CMH REGIONAL HLTH SYSTEM | 910713 | SANTOSH R | LIKKI | 1316926934 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02242018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226046 | E860, R339, R739 | Hyperglycemia, unspecified | ICD10 | 03012018 | 02242018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02262018 | 2018-02-26T11:15:53+00:00 |  | 000039816-01 | MARILYN | PATTON | MOUNT CARMEL HLTH PRVDRS | 952401 | SUSANNE K | TAEGE | 1225268535 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02272018 | 02282018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226057 | N993 | Prolapse of vaginal vault after hysterectomy | ICD10 | 03012018 | 02272018 | 02282018 | 57110, 57210 | PERINEORRHAPHY-NON OBSTETRICAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02262018 | 2018-02-26T10:29:03+00:00 |  | 000080231-01 | Barbara | Fulton | CHE FU KUO MD PHD | 915220 | CHE FU | KUO | 1659367068 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03012018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 02252018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226065 | L0390 | Cellulitis, unspecified | ICD10 | 03012018 | 02252018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T10:29:21+00:00 |  | 000087340-01 | Hilda | Hesse | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03012018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02242018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226066 | A419, D849, J189, Z85118 | Personal history of malignant neoplasm of bronchus and lung | ICD10 | 03012018 | 02242018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02262018 | 2018-02-26T17:51:06+00:00 |  | 000078721-01 | Patrick | Mcneal | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02242018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227028 | K869, R109 | Unspecified abdominal pain | ICD10 | 03012018 | 02242018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02272018 | 2018-02-27T11:39:15+00:00 |  | 000113428-01 | NANCY | COLLINS | HOSPITALIST MEDICINE PHY | 942986 | RAMACHANDER R | ELURI | 1790036770 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02262018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227049 | I639 | Cerebral infarction, unspecified | ICD10 | 03012018 | 02262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02272018 | 2018-02-27T12:11:41+00:00 |  | 000099902-01 | Robert | Bible | CEN OH UROLOGY GRP INC | 935986 | ADAM C | WEISER | 1023059680 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03012018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02262018 | 02282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227063 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 03012018 | 02262018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02272018 | 2018-02-27T16:46:00+00:00 |  | 000039013-01 | LOUISE | ESQUE | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02162018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227098 | R799 | Abnormal finding of blood chemistry, unspecified | ICD10 | 03012018 | 02162018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02282018 | 2018-02-28T07:49:42+00:00 |  | 000095657-01 | Reva | Wood | DR. RICHARD B DARR M.D. | 908667 | RICHARD B | DARR | 1477565133 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02272018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228009 | R112, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 03012018 | 02272018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02282018 | 2018-02-28T13:55:16+00:00 |  | 000043533-01 | GLORIA | NICELY | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02272018 | 02282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228066 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 03012018 | 02272018 | 02282018 | 63655, 63685 | INC SUBCU PLCMNT NEUROSTIM RECVR | CPT | 0, 0 | 1, 1 | ,  | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02282018 | 2018-02-28T15:32:05+00:00 |  | 000101404-01 | Larry | Conkel | OHIOHEALTH PHYS GRP | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02272018 | 02282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228084 | M4712, M4722, M4802 | Spinal stenosis, cervical region | ICD10 | 03012018 | 02272018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
