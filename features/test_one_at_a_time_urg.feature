Feature: RUN 2 OF 6/12 INPATIENT
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: RUN 2 OF 6/12 INPATIENT
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
| 01302017 | 2017-01-30T09:36:31+00:00 |  | 000081845-01 | Rodney | Goff | OSU INTERNAL MED LLC | 911011 | GARRIE J | HAAS | 1104858018 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01262017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201014 | I429 | Cardiomyopathy, unspecified | ICD10 | 06122017 | 01262017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05092017 | 2017-05-09T07:42:52+00:00 |  | 000011483-01 | CHARLES | POTTS | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509005 | C61 | Malignant neoplasm of prostate | ICD10 | 06122017 | 06052017 | 06112017 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | CPT | C4 |  |  |  | 5.0 |
| 05182017 | 2017-05-18T13:12:14+00:00 | 025489166-7138 | 000043504-01 | JOAN | HALLA | MOUNT CARMEL WEST PHYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518051 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06122017 | 06082017 | 06112017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 05222017 | 2017-05-22T11:02:17+00:00 |  | 000059445-01 | RICHARD | ALLEN | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522085 | R160 | Hepatomegaly, not elsewhere classified | ICD10 | 06122017 | 06062017 | 06112017 | 47120, 47370 | LAPARO ABLATE LIVER TUMOR RF | CPT | 1, 1 | 1, 1 | Approved, Approved | 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 05312017 | 2017-05-31T09:47:56+00:00 |  | 000020249-01 | PRESTON | JENNINGS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05312017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531018 | M6281 | Muscle weakness (generalized) | ICD10 | 06122017 | 05312017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05312017 | 2017-05-31T10:04:31+00:00 | 261755787150 | 000021233-01 | DOROTHY | MINOR | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05302017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531026 | K5669, M4626 | Osteomyelitis of vertebra, lumbar region | ICD10 | 06122017 | 05302017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05312017 | 2017-05-31T10:16:54+00:00 |  | 000103116-01 | Linda | Hamilton | GENESIS MEDICAL GRP LLC | 929149 | ADAM R | ROTHERMEL | 1154647899 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531050 | Z933, V443 | COLOSTOMY STATUS | ICD10 | 06122017 | 06052017 | 06112017 | 44620 | CLOSE ENTEROSTOMY-LARGE, SM INTEST | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 2.0 |
| 06012017 | 2017-06-01T07:39:33+00:00 |  | 000075517-01 | Kathryn | Jarrell | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06112017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601002 | C641 | Malignant neoplasm of right kidney, except renal pelvis | ICD10 | 06122017 | 06052017 | 06112017 | 50240 | NEPHPHRECTOMY, PARTIAL | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 06012017 | 2017-06-01T11:37:28+00:00 | 025243325-7151 | 000111163-01 | Larry | Thompson | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06012017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601044 | N179 | Acute kidney failure, unspecified | ICD10 | 06122017 | 06012017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06022017 | 2017-06-02T16:13:02+00:00 |  | 000002713-01 | William | Popich | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 06022017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602082 | D496 | Neoplasm of unspecified behavior of brain | ICD10 | 06122017 | 06022017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06042017 | 2017-06-04T22:16:34+00:00 |  | 000058015-01 | NORMAN | PARKS | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06122017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06042017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170604012 | K37 | Unspecified appendicitis | ICD10 | 06122017 | 06042017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06042017 | 2017-06-04T12:50:53+00:00 |  | 000086011-01 | Glen | Maxon | S DAYTON ACUTE CARE CNSL | 908033 | INDU | RAO | 1447242045 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06032017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605007 | R0602 | Shortness of breath | ICD10 | 06122017 | 06032017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06052017 | 2017-06-05T07:37:25+00:00 |  | 000091316-01 | Bobby | Owens | DR. RICHARD B DARR M.D. | 908667 | RICHARD B | DARR | 1477565133 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06032017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605014 | D649, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06122017 | 06032017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06052017 | 2017-06-05T09:33:45+00:00 | 025007149-7155 | 000045026-01 | JUANITA | BAILEY | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06042017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605018 | K859 | Acute pancreatitis, unspecified | ICD10 | 06122017 | 06042017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06052017 | 2017-06-05T09:44:46+00:00 | 026299271-7154 | 000024007-01 | ROBERT | BRAGG | COPC CENTRAL OHIO PRIMAR | 905425 | SVITLANA | HAYNES | 1457307837 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06042017 | 06092017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605020 | F419, S42301A | Unsp fracture of shaft of humerus, right arm, init | ICD10 | 06122017 | 06042017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06052017 | 2017-06-05T09:52:11+00:00 | 025626226-7154 | 000067322-01 | Virginia | Jones | HMP OF OHIO PC | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06032017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605025 | A419 | Sepsis, unspecified organism | ICD10 | 06122017 | 06032017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06052017 | 2017-06-05T08:32:16+00:00 |  | 000089493-01 | Frank | Jackson | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06042017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605040 | E861, N289, R197 | Diarrhea, unspecified | ICD10 | 06122017 | 06042017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06052017 | 2017-06-05T10:42:18+00:00 |  | 000085663-01 | Joann | Lawson | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06022017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605060 | I4891 | Unspecified atrial fibrillation | ICD10 | 06122017 | 06022017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06052017 | 2017-06-05T11:58:30+00:00 |  | 000071244-01 | Sarah | Sebring | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06122017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605098 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 06122017 | 06082017 | 06122017 | 50545 | LAPARO RADICAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 06052017 | 2017-06-05T15:52:26+00:00 |  | 000099792-01 | KENNETH | JACKSON | CLINTON MEMORIAL HOSPITAL | 917905 |  | CLINTON MEMORIAL HOSPITAL | 1063713659 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06032017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605130 | J189 | Pneumonia, unspecified organism | ICD10 | 06122017 | 06032017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06052017 | 2017-06-05T16:12:33+00:00 |  | 000069899-01 | Russell | Karlen III | COPC CENTRAL OHIO PRIMAR | 906976 | KRISTOPHER M | HANSON | 1174675268 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06032017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605136 | R45851 | Suicidal ideations | ICD10 | 06122017 | 06032017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06052017 | 2017-06-05T18:32:12+00:00 |  | 000021195-01 | MARY | HOLTON | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 06052017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605143 | G9340 | Encephalopathy, unspecified | ICD10 | 06122017 | 06052017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06062017 | 2017-06-06T08:15:25+00:00 |  | 000074723-01 | John | Fyffe Jr | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06052017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606003 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 06122017 | 06052017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06062017 | 2017-06-06T09:00:13+00:00 |  | 000051412-01 | GLENDA | GARRISON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06052017 | 06102017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606017 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06122017 | 06052017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06062017 | 2017-06-06T10:00:55+00:00 | 025095115-7156 | 000007096-01 | BETTY | ROSSITER | COPC CENTRAL OHIO PRIMAR | 935499 | ANIMESH | SHARMA | 1063455939 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06052017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606038 | I509 | Heart failure, unspecified | ICD10 | 06122017 | 06052017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06062017 | 2017-06-06T12:30:13+00:00 | 025095913-7155 | 000027029-01 | GLENNA | ROGERS | MOUNT CARMEL HLTH PRVDRS | 942165 | TRICIA L | BHAT | 1265454433 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 06042017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606056 | R4182 | Altered mental status, unspecified | ICD10 | 06122017 | 06042017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06062017 | 2017-06-06T12:59:28+00:00 | 025660332-7150 | 000076641-01 | Joseph | Warden | CANYON MEDICAL CENTER | 936056 | CATHERINE O | SPIESS | 1669442091 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06122017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 06052017 | 06122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606058 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 06122017 | 06052017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06062017 | 2017-06-06T15:14:46+00:00 |  | 000100931-01 | Janet | Casada | TRIHEALTH H LLC | 932557 | BRADLEY J | SCHULTZ | 1821366618 | GOOD SAMARITAN HOSPITAL | 936463 | 1508835828 | GOOD SAMARITAN HOSPITAL | 1508835828 | Inpatient | IP | Concurrent Review | CONC |  | GOOD SAMARITAN HOSPITAL | 06122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06032017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606076 | L03818 | Cellulitis of other sites | ICD10 | 06122017 | 06032017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06062017 | 2017-06-06T15:47:07+00:00 |  | 000108861-01 | Gary | Clark | J B WINTERS DO LLC | 921534 | JENNIFER B | WINTERS | 1235102591 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 06122017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06062017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606080 | I10 | Essential (primary) hypertension | ICD10 | 06122017 | 06062017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06072017 | 2017-06-07T07:43:56+00:00 |  | 000097931-01 | Suzanne | Ellis | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607005 | J189, R0902 | Hypoxemia | ICD10 | 06122017 | 06062017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06072017 | 2017-06-07T08:26:51+00:00 |  | 000072252-01 | KATHLEEN | BAUGHN | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06062017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607012 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 06122017 | 06062017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06072017 | 2017-06-07T08:52:08+00:00 |  | 000006560-01 | ALICE | JOHNSON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06062017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607019 | K8050 | Calculus of bile duct w/o cholangitis or cholecyst w/o obst | ICD10 | 06122017 | 06062017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06072017 | 2017-06-07T13:20:53+00:00 |  | 000068774-01 | JOHNNIE | BREWER | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607054 | C9202, R040 | Epistaxis | ICD10 | 06122017 | 06062017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06072017 | 2017-06-07T13:47:15+00:00 |  | 000087206-01 | Joel | Pitman | SAMAAN, ROBERT G | 921469 | ROBERT G | SAMAAN | 1265482871 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607058 | G459, I639 | Cerebral infarction, unspecified | ICD10 | 06122017 | 06092017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06082017 | 2017-06-08T08:31:34+00:00 |  | 000065929-01 | NANCY | GRIMM | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06082017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608014 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 06122017 | 06082017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06082017 | 2017-06-08T07:01:48+00:00 |  | 000089354-01 | Nancy | Hoff | LICKING MEM HLTH PROF | 917807 | HASSAN | RAJJOUB | 1811060999 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06072017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608016 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 06122017 | 06072017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06082017 | 2017-06-08T07:38:16+00:00 |  | 000099613-01 | Robert | Mushrush | HMP OF OHIO PC | 948123 | AHMED N | HADID | 1205268505 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06122017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608018 | J029 | Acute pharyngitis, unspecified | ICD10 | 06122017 | 06072017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06082017 | 2017-06-08T09:42:40+00:00 | 016902496-7158 | 000092991-01 | Susan | Scholl | COPC CENTRAL OHIO PRIMAR | 928116 | ONMA A | AMEH | 1578884565 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | ACO -Cardiology | Inpatient | 06082017 | 06092017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608022 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06122017 | 06082017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06082017 | 2017-06-08T08:35:59+00:00 |  | 000084090-01 | Burdetta | Ross | CLEVELAND CLINIC FNDN | 933047 | KOZHIKODE V | MENON | 1134191869 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608023 | N179 | Acute kidney failure, unspecified | ICD10 | 06122017 | 06082017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06082017 | 2017-06-08T10:19:13+00:00 |  | 000070473-01 | Sandra | Powell | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608032 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06122017 | 06072017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06092017 | 2017-06-09T09:10:16+00:00 |  | 000093636-01 | Kelly | Agin | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06092017 | 06122017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609005 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 06122017 | 06092017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06092017 | 2017-06-09T09:27:38+00:00 |  | 000003696-01 | Linda | Sales | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | Reports | ACO -Cardiology | Inpatient | 06082017 | 06092017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609009 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06122017 | 06082017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06092017 | 2017-06-09T09:48:35+00:00 | 254548127160 | 000082737-01 | George | Boyer | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06082017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609017 | M86171 | Other acute osteomyelitis, right ankle and foot | ICD10 | 06122017 | 06082017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06092017 | 2017-06-09T09:56:17+00:00 | 252717117160 | 000112557-01 | Mary | Hampson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06092017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609020 | J36 | Peritonsillar abscess | ICD10 | 06122017 | 06092017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T09:26:40+00:00 |  | 000022001-01 | A | FARBER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06092017 | 06112017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612015 | I4891, J189 | Pneumonia, unspecified organism | ICD10 | 06122017 | 06092017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
