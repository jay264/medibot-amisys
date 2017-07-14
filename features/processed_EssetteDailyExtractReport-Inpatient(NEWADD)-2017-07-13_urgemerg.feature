Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-13_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-13_URGEMERG
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
| 05152017 | 2017-05-15T12:53:07+00:00 |  | 000083785-01 | Jane | Pulsinelli | LANCASTER SURGICAL ASSOC | 936219 | TIMOTHY J | CUSTER | 1144211418 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07102017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515108 | E1121, E6601, Z6843 | Body mass index (BMI) 50-59.9 , adult | ICD10 | 07132017 | 07102017 | 07122017 | 43644, 43645 | LAP GASTR BYPASS INCL SMLL I | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 05222017 | 2017-05-22T15:06:57+00:00 |  | 000008130-01 | HAROLD | BRILL | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522121 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07132017 | 07112017 | 07132017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06062017 | 2017-06-06T12:06:17+00:00 |  | 000037685-01 | BERYL | SPANGLER | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606055 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07132017 | 07112017 | 07132017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06142017 | 2017-06-14T15:41:15+00:00 |  | 000072094-01 | Paul | Luginbuhl | BONE & JOINT SURGEONS IN | 902284 | TIMOTHY F | PETERS | 1558385526 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07102017 | 07112017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614063 | M1611, M87051 | Idiopathic aseptic necrosis of right femur | ICD10 | 07132017 | 07102017 | 07112017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06192017 | 2017-06-19T12:35:50+00:00 |  | 000046369-01 | Blair | Pratt | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06172017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619074 | J449, J810 | Acute pulmonary edema | ICD10 | 07132017 | 06172017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 06192017 | 2017-06-19T15:55:13+00:00 |  | 000087147-01 | Margaret | Smith | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07032017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619149 | K635 | Polyp of colon | ICD10 | 07132017 | 07032017 | 07122017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 10 | CPT | C4 |  |  |  | 9.0 |
| 06232017 | 2017-06-23T14:57:42+00:00 |  | 000102712-01 | Beverley | Ellinger | ALLIANCE PHYSICIANS INC | 900988 | PETER M | PAVLINA | 1881692341 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623063 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 07132017 | 06302017 | 07112017 | 32505 | WEDGE RESECT OF LUNG INITIAL | CPT | 1 | 1 | Approved | 12 | CPT | C4 |  |  |  | 10.0 |
| 06232017 | 2017-06-23T15:17:43+00:00 |  | 000049262-01 | ARLENE | WADKOWSKI | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623066 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07132017 | 07102017 | 07122017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06262017 | 2017-06-26T10:24:45+00:00 | 259199587174 | 000049628-01 | KAREN | SPRADLIN | MOUNT CARMEL HLTH PRVDRS | 949510 | MARK W | BYRGE | 1053307389 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06232017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626019 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 07132017 | 06232017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 06242017 | 2017-06-24T18:17:39+00:00 |  | 000038137-01 | LLOYD | SHUTTLEWORTH | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06232017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626035 | M24451, T84020S | Dislocation of internal right hip prosthesis, sequela | ICD10 | 07132017 | 06232017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06262017 | 2017-06-26T16:15:26+00:00 |  | 000053275-01 | MARGARET | SCHILLING | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06242017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626133 | I214, R55 | Syncope and collapse | ICD10 | 07132017 | 06242017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06272017 | 2017-06-27T08:54:01+00:00 | 254517797177 | 000015216-01 | MINNIE | BRONSON | COLS INPATIENT CARE INC | 942957 | CHARLES F | WARE III | 1528355922 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06262017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627018 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 07132017 | 06262017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 06272017 | 2017-06-27T09:33:09+00:00 | 252288647177 | 000049944-01 | VIRGINIA | SPANGLER | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06272017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627020 | M6281 | Muscle weakness (generalized) | ICD10 | 07132017 | 06272017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 06272017 | 2017-06-27T09:58:43+00:00 | 026711715-7174 | 000111140-01 | Robert | Crowder | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07132017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627050 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07132017 | 07122017 | 07132017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06282017 | 2017-06-28T08:47:09+00:00 |  | 000091722-01 | BARBARA | TIMMS | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06272017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628017 | I214, J441, R0600 | Dyspnea, unspecified | ICD10 | 07132017 | 06272017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06282017 | 2017-06-28T16:23:41+00:00 |  | 000043416-01 | JAMES | SCHOBELOCK JR | MOUNT CARMEL HLTH PRVDRS | 932440 | SYED ALI SHAN | IDRIS | 1942317060 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07132017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629002 | R55 | Syncope and collapse | ICD10 | 07132017 | 07102017 | 07132017 | 95951 | MONITOR EEG & VIDEO C INT & RPT | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06302017 | 2017-06-30T15:30:57+00:00 |  | 000081130-01 | William | Mellon Jr | PULMONARY MED OF DAYTON | 922847 | ASHLEE R | AMES | 1962655142 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06292017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630074 | K5669 | Other intestinal obstruction | ICD10 | 07132017 | 06292017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 07032017 | 2017-07-03T09:18:34+00:00 | 26418925782 | 000034689-01 | PATRICIA | BRAGG | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07012017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703010 | R109 | Unspecified abdominal pain | ICD10 | 07132017 | 07012017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 07022017 | 2017-07-02T14:14:56+00:00 |  | 000115043-01 | Michael | Arehart | COLONNADE MED GRP INC | 915103 | MARTHA | BUCKLEY | 1386733244 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07012017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703037 | I249 | Acute ischemic heart disease, unspecified | ICD10 | 07132017 | 07012017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 07052017 | 2017-07-05T10:36:54+00:00 |  | 000022265-01 | HENRY | STEPHENS | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705042 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 07132017 | 07112017 | 07122017 | 33361, 92928 | PRQ CARD STENT W/ANGIO 1 VSL | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 07062017 | 2017-07-06T11:57:56+00:00 |  | 000110752-01 | David | Hussong | ALLIANCE PHYSICIANS INC | 948102 | CHRISTA | SIEBENBURGEN | 1114247251 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07052017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706077 | S22050A, T148 | Other injury of unspecified body region | ICD10 | 07132017 | 07052017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07062017 | 2017-07-06T14:51:46+00:00 |  | 000087182-01 | James | Gardner | SOUND KENWOOD HSPISTS OF | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 07132017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07062017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706098 | A419 | Sepsis, unspecified organism | ICD10 | 07132017 | 07062017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07062017 | 2017-07-06T15:25:35+00:00 |  | 000076566-01 | Thomas | Akehurst | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07062017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706107 | E872 | Acidosis | ICD10 | 07132017 | 07062017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07072017 | 2017-07-07T08:08:04+00:00 | 026061160-7187 | 000065575-01 | CAROLYN | DUNCAN | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 07062017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707003 | R6521 | Severe sepsis with septic shock | ICD10 | 07132017 | 07062017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07072017 | 2017-07-07T09:17:01+00:00 |  | 000073660-01 | Clyde | Wright | HOSPITAL MEDICINE SERVIC | 949655 | WONDWOSSEN Y | DERERIE | 1760793897 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07062017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707015 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 07132017 | 07062017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07072017 | 2017-07-07T12:51:32+00:00 |  | 000082331-01 | Robert | Kattine | OSU INTERNAL MED LLC | 949059 | JISHU K | DAS | 1326276247 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07132017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707053 | C169, L0390 | Cellulitis, unspecified | ICD10 | 07132017 | 07072017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07072017 | 2017-07-07T14:08:52+00:00 |  | 000118261-01 | Robert | Dittoe | HAQUE, MAX M | 904471 | MAX M | HAQUE | 1700884111 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07062017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707069 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 07132017 | 07062017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07072017 | 2017-07-07T15:24:26+00:00 | 025166783-7188 | 000002733-01 | DOREEN | FLOWERS | ARABELLA HRT LLC | 900697 | JYOTI R | CHAWLA | 1528159241 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 07072017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707071 | M84459A | Pathological fracture, hip, unsp, init encntr for fracture | ICD10 | 07132017 | 07072017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07102017 | 2017-07-10T09:38:23+00:00 | 255916827189 | 000076639-01 | Olive | Koenig | CENTRAL OHIO SURG ASSOC | 934982 | THOMAS M | VARA | 1457390130 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07082017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710023 | K810 | Acute cholecystitis | ICD10 | 07132017 | 07082017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07102017 | 2017-07-10T09:51:58+00:00 | 254619247190 | 000009167-01 | EDGAR | LUCAS | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 07092017 | 07132017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710028 | J189 | Pneumonia, unspecified organism | ICD10 | 07132017 | 07092017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T09:57:09+00:00 | 253425737190 | 000052155-01 | PAUL | BARRETT | EMERGENCY SERVICES INC | 912038 | JARROD L | WILLIAMS | 1255524575 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07092017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710029 | K625 | Hemorrhage of anus and rectum | ICD10 | 07132017 | 07092017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T10:10:09+00:00 | 251508037189 | 000047325-01 | DEBORAH | CAIN | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07082017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710031 | I509, J159 | Unspecified bacterial pneumonia | ICD10 | 07132017 | 07082017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T09:56:01+00:00 | 250718507190 | 000000507-01 | James | Mchugh | HMP OF OHIO PC | 926900 | ANIRBAN | BISWAS | 1871891614 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07092017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710032 | T17900A | Unsp fb in resp tract, part unsp causing asphyx, init | ICD10 | 07132017 | 07092017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T10:33:18+00:00 | 252203197188 | 000095045-01 | Larry | Parrett | HMP OF OHIO PC | 914611 | SOWMYA | VARRE | 1871753673 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07072017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710041 | A419 | Sepsis, unspecified organism | ICD10 | 07132017 | 07072017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07102017 | 2017-07-10T07:55:26+00:00 | 002753667-7191 | 000097637-01 | Charles | Parker | ORTHO & NEURO CONSULTS I | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07092017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710061 | R6889 | Other general symptoms and signs | ICD10 | 07132017 | 07092017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T11:41:31+00:00 |  | 000112611-01 | Tammy | Maynard | GENESIS MEDICAL GRP LLC | 924971 | NATALIYA | LIBER | 1295003721 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07082017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710063 | J189 | Pneumonia, unspecified organism | ICD10 | 07132017 | 07082017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07102017 | 2017-07-10T11:12:44+00:00 |  | 000080577-01 | Vera | Clark | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07082017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710067 | R001 | Bradycardia, unspecified | ICD10 | 07132017 | 07082017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T11:45:48+00:00 |  | 000073768-01 | Mary | Mcdonald | GENESIS MEDICAL GRP LLC | 924142 | EDWARD S | UMLAUF | 1942207063 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07092017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710069 | I4891 | Unspecified atrial fibrillation | ICD10 | 07132017 | 07092017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T12:38:47+00:00 | 254988717190 | 000091537-01 | John | Rorabaugh | COPC CENTRAL OHIO PRIMAR | 942147 | KEVIN P | MCANINCH | 1104183649 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07092017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710078 | K420 | Umbilical hernia with obstruction, without gangrene | ICD10 | 07132017 | 07092017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T08:05:53+00:00 |  | 000087396-01 | Roy | Shroyer | APOGEE MED GRP OHIO INC | 947807 | AMBER L | RICHADSON | 1063850089 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07132017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 07092017 | 07092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710080 | C259, D649, K922, N179, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 07132017 | 07092017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07102017 | 2017-07-10T10:02:07+00:00 |  | 000076517-01 | W Wayne | Stephens | CHE FU KUO MD PHD | 915220 | CHE FU | KUO | 1659367068 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07082017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710096 | I214, J811, R0600, R0902 | Hypoxemia | ICD10 | 07132017 | 07082017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T14:29:42+00:00 |  | 000028263-01 | ROBERT | HUPP | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710107 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 07132017 | 07072017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T13:01:08+00:00 |  | 000101578-01 | JANET | GRIM | ADAMS COUNTY REGIONAL ME | 935744 | CHRISTOPHER D | LAWLEY | 1558372789 | CMH REGIONAL HLTH SYSTEM | 936482 | 1427064641 | CMH REGIONAL HEALTH SYSTEM | 1427064641 | Inpatient | IP | Concurrent Review | CONC |  | CMH REGIONAL HEALTH SYSTEM | 07132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07072017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710113 | A419 | Sepsis, unspecified organism | ICD10 | 07132017 | 07072017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07102017 | 2017-07-10T15:26:52+00:00 | 178798167191 | 000117358-01 | Gary | Masucci | HMP OF OHIO PC | 913492 | MOHAMED H | HAMZA | 1720060940 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07132017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 07102017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710125 | M79659 | Pain in unspecified thigh | ICD10 | 07132017 | 07102017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07112017 | 2017-07-11T10:39:32+00:00 |  | 000048006-01 | JOYCE | BANGO | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 07122017 | 07132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711031 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 07132017 | 07122017 | 07132017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07112017 | 2017-07-11T13:01:29+00:00 |  | 000104554-01 | Gisela | Lorbach | CEN OH UROLOGY GRP INC | 936013 | ANDY J | CHO | 1063451367 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 07102017 | 07122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711036 | N200 | Calculus of kidney | ICD10 | 07132017 | 07102017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07122017 | 2017-07-12T11:27:24+00:00 |  | 000113334-01 | Nathan | Park | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07132017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 07112017 | 07132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712016 | N400 | Enlarged prostate without lower urinary tract symptoms | ICD10 | 07132017 | 07112017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07122017 | 2017-07-12T12:05:47+00:00 |  | 000109863-01 | Myra | Carlos | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07132017 | Approved | MediGold Essential Care | Mail | ACO - Pulmonary | Inpatient | 03302017 | 04032017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712024 | J13 | Pneumonia due to Streptococcus pneumoniae | ICD10 | 07132017 | 03302017 | 04032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07132017 | 2017-07-13T08:23:23+00:00 |  | 000114186-01 | Ronnie | Burke | WRIGHT STATE PHYSICIANS | 944902 | ALYSSA J | GANS | 1962638080 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 07132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713037 | S2241XA, S270XXA, W108XXA | Fall (on) (from) other stairs and steps, initial encounter | ICD10 | 07132017 | 07122017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
