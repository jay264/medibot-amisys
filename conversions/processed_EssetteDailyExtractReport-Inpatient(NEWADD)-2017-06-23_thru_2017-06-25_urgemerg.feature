Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-23_thru_2017-06-25_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-23_thru_2017-06-25_URGEMERG
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
| 02072017 | 2017-02-07T11:07:02+00:00 |  | 000015307-01 | ROY | BELL | THE OH STATE UNIVERSITY | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Phone | Inpatient | Inpatient | 02072017 | 04252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170503100042.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207038 | 72887 | MUSCLE WEAKNESS | ICD9 | 06232017 | 02072017 | 04252017 | 31500 | ENDOTRACHEAL INTUBATION-EMERGENCY | CPT | 1 | 1 | Approved | 78 | CPT | C4 |  |  |  | 12.0 |
| 05112017 | 2017-05-11T16:03:00+00:00 |  | 000110821-01 | JEANNE | HAMMOND | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06202017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511084 | M4316, M4806 | Spinal stenosis, lumbar region | ICD10 | 06232017 | 06202017 | 06222017 | 22612, 20937, 22840, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 2 | 1, 1, 1, 1, 2 | Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 05182017 | 2017-05-18T13:53:38+00:00 |  | 000007497-01 | WILMA | MULLINS | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06222017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518050 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 06232017 | 06222017 | 06232017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05182017 | 2017-05-18T14:34:45+00:00 |  | 000068548-01 | DONNA | FOOR | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06202017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518052 | M4316, M4806 | Spinal stenosis, lumbar region | ICD10 | 06232017 | 06202017 | 06232017 | 22612, 22614, 20937, 22842, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 2, 1, 1, 1, 2 | 1, 2, 1, 1, 1, 2 | Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 05192017 | 2017-05-19T11:31:58+00:00 |  | 000032468-01 | DONNA | CONWAY | GENERAL MEDICAL CNSLT | 935147 | ROBERT F | LEWE | 1164404265 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05182017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519049 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 06232017 | 05182017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05262017 | 2017-05-26T12:07:58+00:00 |  | 000056836-01 | GERALD | BURGESS | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06212017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526051 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06232017 | 06212017 | 06222017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06022017 | 2017-06-02T08:18:55+00:00 |  | 000066767-01 | STEPHEN | ARICK | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06232017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06022017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602005 | J159 | Unspecified bacterial pneumonia | ICD10 | 06232017 | 06022017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 06022017 | 2017-06-02T14:38:21+00:00 | 025797840-7156 | 000061548-01 | JUDY | CASTEEL | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06232017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 06202017 | 06232017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602067 | M4806 | Spinal stenosis, lumbar region | ICD10 | 06232017 | 06202017 | 06232017 | 22612, 22614, 22842, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 06082017 | 2017-06-08T11:24:55+00:00 |  | 000083663-01 | James | Cummings | PULMONARY MED OF DAYTON | 922847 | ASHLEE R | AMES | 1962655142 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608047 | D649, R42 | Dizziness and giddiness | ICD10 | 06232017 | 06072017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06092017 | 2017-06-09T15:00:28+00:00 |  | 000036755-01 | CATHERINE | LEACH | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06142017 | 06222017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609066 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 06232017 | 06142017 | 06222017 | 33361, 33362 | REPLACE AORTIC VALVE OPEN | CPT | 1, 1 | 1, 1 | Approved, Approved | 9, 9 | CPT | C4 |  |  |  | 8.0 |
| 06122017 | 2017-06-12T14:47:35+00:00 |  | 000026875-01 | CHIE | BERRY | COPC CENTRAL OHIO PRIMAR | 943209 | NASIR | SUMMIYAH | 1962692103 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06112017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612108 | K810 | Acute cholecystitis | ICD10 | 06232017 | 06112017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06132017 | 2017-06-13T09:36:06+00:00 |  | 000091380-01 | John | Heston | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06232017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06122017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613017 | I352 | Nonrheumatic aortic (valve) stenosis with insufficiency | ICD10 | 06232017 | 06122017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06132017 | 2017-06-13T12:59:18+00:00 |  | 000049981-01 | RICHARD | CARPER | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613057 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06232017 | 06122017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06142017 | 2017-06-14T09:08:24+00:00 | 025204654-7164 | 000104018-01 | Lorraine | Mitchell | HMP OF OHIO PC | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06232017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 06132017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614006 | E875 | Hyperkalemia | ICD10 | 06232017 | 06132017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 06142017 | 2017-06-14T10:20:20+00:00 | 252264647164 | 000016909-01 | SHIRLEY | RAWLINS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06142017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614031 | R0600 | Dyspnea, unspecified | ICD10 | 06252017 | 06142017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 06142017 | 2017-06-14T07:24:17+00:00 |  | 000117521-01 | Kenneth | Mounts | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06232017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 06222017 | 06232017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614033 | C61 | Malignant neoplasm of prostate | ICD10 | 06232017 | 06222017 | 06232017 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06152017 | 2017-06-15T08:40:14+00:00 |  | 000089442-01 | Victoria | Gerardi | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06202017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615007 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 06232017 | 06202017 | 06222017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06152017 | 2017-06-15T08:49:25+00:00 |  | 000109726-01 | James | Layne | HMP OF OHIO PC | 912793 | PIYUSH | GUPTA | 1275618803 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06152017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615012 | E876 | Hypokalemia | ICD10 | 06232017 | 06152017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06152017 | 2017-06-15T11:33:41+00:00 |  | 000096151-01 | DANIEL | SMITH | CARDIOTHORACIC & VASC SU | 915420 | JEFFERSON M | LYONS | 1508085820 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06142017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615054 | I739 | Peripheral vascular disease, unspecified | ICD10 | 06232017 | 06142017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06162017 | 2017-06-16T14:20:53+00:00 |  | 000028811-01 | SHIRLEY | JOSSELYN | RIVERSIDE RAD ASSOC | 907530 | JEFFREY | SILBER | 1831178938 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06152017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616057 | R4182 | Altered mental status, unspecified | ICD10 | 06232017 | 06152017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06162017 | 2017-06-16T14:19:17+00:00 |  | 000007037-01 | EMMA | BARNETTE | CENTRAL OH HSPISTS INC | 905865 | MICHAEL E | BANG | 1245349463 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06162017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616064 | R4701 | Aphasia | ICD10 | 06232017 | 06162017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06162017 | 2017-06-16T16:06:31+00:00 |  | 000098172-01 | Bruce | Coldiron | HMP OF RICHLAND COUNTY L | 918510 | HARMANPREET S | SHINH | 1578729174 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06232017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06162017 | 06182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616075 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 06232017 | 06162017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T09:18:15+00:00 |  | 000002472-01 | JOHN | MUNCY | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | Reports | ACO -Cardiology | Inpatient | 06182017 | 06232017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619018 | R0600, R1111 | Vomiting without nausea | ICD10 | 06232017 | 06182017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06192017 | 2017-06-19T09:39:46+00:00 |  | 000046852-01 | DELORIS | WALLACE | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06192017 | 06232017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619027 | J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06232017 | 06182017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T10:00:54+00:00 | 025662583-7168 | 000011549-01 | RITA | MEREDITH | COPC CENTRAL OHIO PRIMAR | 936173 | KELLY L | CONKLIN | 1861475428 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06172017 | 06232017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619033 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 06232017 | 06172017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06192017 | 2017-06-19T10:29:12+00:00 |  | 000083443-01 | Louise | Jones | HMP OF FRANKLIN CTY LTD | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06172017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619042 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 06232017 | 06172017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T10:49:01+00:00 | 253169167167 | 000027670-01 | MARVIN | FRANCIS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06162017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619049 | J189, R197 | Diarrhea, unspecified | ICD10 | 06232017 | 06162017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06192017 | 2017-06-19T10:56:31+00:00 | 177168307167 | 000117004-01 | Judy | Harding | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06232017 | Approved | MediGold Southeast OH Essential Care | Reports | Inpatient | Inpatient | 06162017 | 06222017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619050 | I509 | Heart failure, unspecified | ICD10 | 06232017 | 06162017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06192017 | 2017-06-19T12:35:50+00:00 |  | 000046369-01 | Blair | Pratt | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06172017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619074 | J449, J810 | Acute pulmonary edema | ICD10 | 06232017 | 06172017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06192017 | 2017-06-19T08:31:32+00:00 |  | 000069899-01 | Russell | Karlen III | OHIOHEALTH PHYS GRP | 907590 | GARY M | ANSEL | 1932104387 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06182017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619092 | I483 | Typical atrial flutter | ICD10 | 06232017 | 06182017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06192017 | 2017-06-19T09:35:38+00:00 |  | 000076813-01 | Donald | Batteiger | COPC CENTRAL OHIO PRIMAR | 908066 | BHAIRAVI M | PATEL | 1740381532 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06232017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06182017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619100 | I669, I771 | Stricture of artery | ICD10 | 06232017 | 06182017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T11:32:16+00:00 |  | 000053909-01 | RICHARD | TURNER | OSU INTERNAL MED LLC | 911011 | GARRIE J | HAAS | 1104858018 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06182017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619147 | I472 | Ventricular tachycardia | ICD10 | 06232017 | 06182017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06202017 | 2017-06-20T07:42:02+00:00 |  | 000088528-01 | Dale | Strohm | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06172017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620025 | J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06232017 | 06172017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06192017 | 2017-06-19T16:04:54+00:00 |  | 000099240-01 | Monda | Smart | PULMONARY MED OF DAYTON | 932993 | EHAB B | HUSSEIN | 1740449495 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06162017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620029 | E872 | Acidosis | ICD10 | 06232017 | 06162017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06202017 | 2017-06-20T10:53:12+00:00 | 259399247170 | 000016212-01 | THOMAS | ROETTKER | HMP OF OHIO PC | 942960 | TAMARA J | SCOTT | 1871852863 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06192017 | 06232017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620052 | J159 | Unspecified bacterial pneumonia | ICD10 | 06232017 | 06192017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06212017 | 2017-06-21T08:45:25+00:00 |  | 000114032-01 | Roy | Bradley | HMP OF PICKAWAY COUNTY L | 914637 | EMMANUEL | CHUKWUNYERE | 1821235540 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06232017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 06202017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621038 | K921 | Melena | ICD10 | 06232017 | 06202017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06212017 | 2017-06-21T09:08:21+00:00 |  | 000116078-01 | JOSEPH | SANOK JR | OSU INTERNAL MED LLC | 922865 | AHMAK M | MOSTAFAVIFAR | 1861669095 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06202017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621040 | I2510, I480 | Paroxysmal atrial fibrillation | ICD10 | 06232017 | 06202017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06222017 | 2017-06-22T08:01:40+00:00 |  | 000096375-01 | Candy | Rafferty | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06212017 | 06232017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622002 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 06232017 | 06212017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06222017 | 2017-06-22T09:16:00+00:00 | 250083687172 | 000112499-01 | Edward | Baltes | EMERGENCY SERVICES INC | 934847 | MARK A | SMITH | 1184602484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06232017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06212017 | 06222017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622005 | N200 | Calculus of kidney | ICD10 | 06232017 | 06212017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06232017 | 2017-06-23T09:34:02+00:00 | 252243317173 | 000012442-01 | DON | RISER | MOUNT CARMEL HLTH PRVDRS | 903018 | KEVIN V | WARE | 1609817980 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06222017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623008 | R4182 | Altered mental status, unspecified | ICD10 | 06232017 | 06222017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T12:50:09+00:00 |  | 000111679-01 | Theodore | Zakany | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | SELECT SPECIALTY HOSPITA | 915731 | 1861492217 | SELECT SPECIALTY HOSPITAL ZANESVILLE | 1861492217 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL ZANESVILLE | 06232017 | Denied | MediGold Southeast OH Essential Care | Fax | Criteria Not Met | Inpatient | 06232017 | 06242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170619093 | J9600, N178 | Other acute kidney failure | ICD10 | 06232017 | 06192017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
