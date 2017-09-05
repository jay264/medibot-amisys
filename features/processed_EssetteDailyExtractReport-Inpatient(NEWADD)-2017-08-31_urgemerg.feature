Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-31_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-31_URGEMERG
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
| 08282017 | 2017-08-28T10:06:50+00:00 |  | 000090880-01 | Mary | Conner | GENESIS MEDICAL GRP LLC | 909216 | THOMAS H | DIEHL | 1851329528 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08262017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828086 | S32020A | Wedge compression fracture of second lumbar vertebra, init | ICD10 | 08312017 | 08262017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T16:11:56+00:00 |  | 000117823-01 | KATHERINE | LOHSE | MERCY HEALTH PHYSICIANS | 920971 | SURESH | NAYAK | 1730184946 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 08312017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08292017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810015 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08312017 | 08292017 | 08302017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 08022017 | 2017-08-02T15:04:14+00:00 |  | 000096868-01 | Sarah | Richards | ORTHO INSTITUTE OF DAYTO | 902051 | RICHARD W | FORSTER | 1518962141 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08272017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802084 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 08312017 | 08272017 | 08302017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08092017 | 2017-08-09T11:57:31+00:00 |  | 000083289-01 | Gloria | Hurl | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08112017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809048 | M4802 | Spinal stenosis, cervical region | ICD10 | 08312017 | 08112017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 08292017 | 2017-08-29T10:13:21+00:00 | 179216187241 | 000096965-01 | Duane | Wegner | EMERGENCY SERVICES INC | 927151 | BENJAMIN L | HARTSHORN | 1457516320 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829026 | J9602 | Acute respiratory failure with hypercapnia | ICD10 | 08312017 | 08292017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08292017 | 2017-08-29T09:58:28+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY HOSPITAL | 936399 |  | UNIVERSITY HOSPITAL | 1033154026 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 08312017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 08262017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829059 | Z941 | Heart transplant status | ICD10 | 08312017 | 08262017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08242017 | 2017-08-24T13:49:03+00:00 |  | 000034379-01 | JOANNE | KITCHEN | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824057 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08312017 | 08292017 | 08302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08182017 | 2017-08-18T09:58:07+00:00 | 171569727230 | 000033155-01 | Michael | Noll | SOUND PHYSICIANS OF OHI0 | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08182017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818016 | M6282, N179 | Acute kidney failure, unspecified | ICD10 | 08312017 | 08182017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 08312017 | 2017-08-31T10:00:03+00:00 |  | 000110817-01 | Leona | Oliver | OHIO PLASTIC SURGERY SPE | 917979 | CHRISTOPHER | ZOCHOWSKI | 1487868014 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 08292017 | 08302017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831026 | T8130XA | Disruption of wound, unspecified, initial encounter | ICD10 | 08312017 | 08292017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07272017 | 2017-07-27T10:17:07+00:00 | 025004482-7192 | 000065745-01 | PAUL | BICE | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 08012017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727035 | K219, K311, R1084, R110, R1110 | Vomiting, unspecified | ICD10 | 08312017 | 08012017 | 08312017 | 47741, 44300 | ENTEROSTMY/CECMSTMY TUBE-EG.FEEDING | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  | 30.0 |
| 08242017 | 2017-08-24T14:35:20+00:00 |  | 000107194-01 | Chester | Bell | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08292017 | 08302017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824073 | C61 | Malignant neoplasm of prostate | ICD10 | 08312017 | 08292017 | 08302017 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 08282017 | 2017-08-28T15:07:15+00:00 |  | 000000084-01 | CLIFFORD | PATTERSON | MADISON COUNTY HSP PRIMA | 935029 | SAMUEL D | WELLER | 1750324281 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08262017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828122 | A419 | Sepsis, unspecified organism | ICD10 | 08312017 | 08262017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08232017 | 2017-08-23T08:45:58+00:00 |  | 000094958-01 | Penny | Ross | LICKING MEM BEHAVIORAL H | 907573 | RICHARD N | WHITNEY | 1437157294 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08222017 | 08302017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823003 | F1020 | Alcohol dependence, uncomplicated | ICD10 | 08312017 | 08222017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08302017 | 2017-08-30T15:12:51+00:00 |  | 000032860-01 | BONNIE | LATHEM | MOUNT CARMEL HLTH PRVDRS | 935396 | MARK A | WHITE | 1649279837 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 10152017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170831001 | M5416 | Radiculopathy, lumbar region | ICD10 | 08312017 |  |  | 63090, 22556, 22853, 20931, 63091, 22585 | ARTHDSIS ANT/ANTLATERAL/@ ADDTL SP | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  | No child records to display. |  |
| 08012017 | 2017-08-01T12:31:13+00:00 |  | 000117338-01 | Wanita | Teagarden | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801081 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08312017 | 08292017 | 08302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08282017 | 2017-08-28T15:55:49+00:00 |  | 000066817-01 | RALPH | MCNEAL | INTERNAL MED CARE INC | 918449 | RACHEL M | MAST | 1952552812 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 08312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08262017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829066 | J441, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 08312017 | 08262017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08282017 | 2017-08-28T10:05:46+00:00 |  | 000090771-01 | Jackie | Lowry | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08272017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828081 | A419 | Sepsis, unspecified organism | ICD10 | 08312017 | 08272017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08242017 | 2017-08-24T13:23:17+00:00 |  | 000112572-01 | Michelle | Robson | MOUNT CARMEL HLTH SYS | 948188 | ROBERT F | BATTISTI | 1346501319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08242017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824046 | A419 | Sepsis, unspecified organism | ICD10 | 08302017 | 08242017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08292017 | 2017-08-29T12:37:29+00:00 |  | 000085715-01 | Harold | Huber | OSU OTOLARYNGOLOGISTS LL | 933405 | OLIVER F | ADUNKA | 1316975444 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08312017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 08312017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170829062 | H905 | Unspecified sensorineural hearing loss | ICD10 | 08312017 |  |  | 69930, 69990, L8614 | COCHLEAR DEVICE/SYSTEM | HCPCS | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | HCPCS | HC |  |  | No child records to display. |  |
| 08232017 | 2017-08-23T10:27:38+00:00 |  | 000109715-01 | Herbert | Francis | CENTRAL OH HSPISTS INC | 933155 | DANIEL O | MORROW | 1598057853 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08222017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824031 | M542 | Cervicalgia | ICD10 | 08312017 | 08222017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07272017 | 2017-07-27T09:37:40+00:00 | 025817511-7207 | 000084793-01 | Nancy | Mclarnan | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08282017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727018 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08312017 | 08282017 | 08302017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08222017 | 2017-08-22T12:44:22+00:00 |  | 000024123-01 | JEANNINE | GREEN | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 08222017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822072 | N186 | End stage renal disease | ICD10 | 08312017 | 08222017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08282017 | 2017-08-28T09:33:52+00:00 |  | 000097496-01 | Sue | Cole | SOUND KENWOOD HSPISTS OF | 921371 | LAURA C | KENNY | 1881650885 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 08312017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08272017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828077 | C9000, D849, N390, R7881 | Bacteremia | ICD10 | 08312017 | 08272017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08292017 | 2017-08-29T18:03:36+00:00 |  | 000106508-01 | Neale | Lemaster | DAVID W KOONTZ DO INC | 901219 |  | DAVID W KOONTZ DO INC | 1558384677 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08312017 | Denied | MediGold Medical Only | Fax | Criteria Not Met | Inpatient | 08312017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170830003 | I639, R414, R4701 | Aphasia | ICD10 | 08312017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08282017 | 2017-08-28T08:06:33+00:00 |  | 000023696-01 | BETTY | KOON | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08302017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828006 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 08312017 | 08302017 | 08312017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08292017 | 2017-08-29T15:41:38+00:00 |  | 000102255-01 | Harold | Estep | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829091 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 08312017 | 08292017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T09:40:51+00:00 | 258508167238 | 000010071-01 | HELEN | STONE | SOUND PHYSICIANS OF OHI0 | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08272017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828026 | I350, I509 | Heart failure, unspecified | ICD10 | 08312017 | 08272017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08282017 | 2017-08-28T10:12:01+00:00 | 265303497239 | 000060158-01 | DORIS | BOYER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08312017 | Approved | MediGold Medical Only | Reports | ACO - Pulmonary | Inpatient | 08272017 | 08312017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828040 | J159 | Unspecified bacterial pneumonia | ICD10 | 08312017 | 08272017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08242017 | 2017-08-24T16:00:19+00:00 |  | 000106587-01 | Christopher | Jarrells | S DAYTON ACUTE CARE CNSL | 947012 | KATHERINE E | HOUSE | 1184966293 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08232017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825065 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 08312017 | 08232017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08232017 | 2017-08-23T10:28:48+00:00 |  | 000106840-01 | Barbara | Pierson | COPC CENTRAL OHIO PRIMAR | 933619 | KIMBERLY M | MORTON | 1558656819 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08312017 | Approved | MediGold Essential Care | Fax | Secondary Only | Inpatient | 08222017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824032 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 08312017 | 08222017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08282017 | 2017-08-28T09:54:59+00:00 | 259013547237 | 000053807-01 | Johann | Lassel | BRUCE L AUERBACH MD LLC | 902501 |  | BRUCE L AUERBACH MD LLC | 1770787723 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08252017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828035 | R079 | Chest pain, unspecified | ICD10 | 08302017 | 08252017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08282017 | 2017-08-28T10:06:26+00:00 |  | 000105304-01 | Arine | Mowery | HOSPITAL MEDICINE SERVIC | 949224 | KASHYAP B | PATEL | 1033476189 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08272017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828082 | E872 | Acidosis | ICD10 | 08312017 | 08272017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08292017 | 2017-08-29T13:23:00+00:00 |  | 000085849-01 | Judy | Landis | OSU SURGERY LLC | 940755 | AMY P | RUSHING | 1619138013 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08262017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829095 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 08312017 | 08262017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08292017 | 2017-08-29T07:19:40+00:00 | 017788525-7240 | 000107825-01 | Barbara | Moore | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08312017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08302017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829005 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08312017 | 08302017 | 08312017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08252017 | 2017-08-25T13:34:30+00:00 |  | 000052993-01 | ROBERT | MCNEAL | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825057 | I70245 | Athscl native arteries of left leg w ulceration oth prt foot | ICD10 | 08312017 | 08282017 | 08302017 | 27880 | AMPUTATION LEG THRU TIBIA & FIBULA | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08312017 | 2017-08-31T10:50:58+00:00 |  | 000115991-01 | William | Dawson | GERICARE ASSOCIATES INC | 921316 | SHWETAL G | DESAI | 1083687248 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08312017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08192017 | 08192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831050 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 08312017 | 08192017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08242017 | 2017-08-24T15:50:16+00:00 |  | 000087178-01 | Robert | Oconnor | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824086 | J340 | Abscess, furuncle and carbuncle of nose | ICD10 | 08312017 | 08292017 | 08302017 | 33419, 33418 | REPAIR TCAT MITRAL VALVE | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 08042017 | 2017-08-04T11:41:51+00:00 |  | 000092134-01 | Ruby | Norman | ALLIANCE PHYSICIANS INC | 901965 | WAYNE C | WOODARD | 1053310706 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804036 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08312017 | 08282017 | 08302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08252017 | 2017-08-25T09:24:00+00:00 |  | 000064097-01 | RONALD | CUNION | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08242017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825010 | I4891 | Unspecified atrial fibrillation | ICD10 | 08312017 | 08242017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08162017 | 2017-08-16T09:54:14+00:00 | 178470957227 | 000087358-01 | John | Zweering | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08152017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816021 | K831, R160 | Hepatomegaly, not elsewhere classified | ICD10 | 08312017 | 08152017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 08292017 | 2017-08-29T09:02:41+00:00 |  | 000097965-01 | James | Erwin | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08292017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829034 | L03314, T148 | Other injury of unspecified body region | ICD10 | 08312017 | 08292017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08242017 | 2017-08-24T13:41:16+00:00 |  | 000066043-01 | BETTY | FULWIDER | OHIOHEALTH PHYS GRP | 910835 | PAUL R | BEERY | 1508918319 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08232017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824062 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 08312017 | 08232017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08302017 | 2017-08-30T09:52:30+00:00 | 258549867242 | 000116650-01 | Barbara | King | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 08302017 | 08312017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830021 | J42 | Unspecified chronic bronchitis | ICD10 | 08312017 | 08302017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08232017 | 2017-08-23T12:11:37+00:00 | 252106327234 | 000008215-01 | JOHN | MORGAN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08222017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823013 | D649 | Anemia, unspecified | ICD10 | 08312017 | 08222017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08282017 | 2017-08-28T10:24:36+00:00 |  | 000102304-01 | Jay | Adams | SOUND PHYSICIANS OF OHI0 | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08252017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828100 | J159 | Unspecified bacterial pneumonia | ICD10 | 08312017 | 08252017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08282017 | 2017-08-28T10:23:21+00:00 | 263448687237 | 000115484-01 | EMILY | GETTYS | MOUNT CARMEL HLTH PRVDRS | 904976 | WILLIAM R | ZERICK | 1568469609 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08312017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08252017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828045 | M5410 | Radiculopathy, site unspecified | ICD10 | 08312017 | 08252017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07202017 | 2017-07-20T13:54:46+00:00 | 025625202-7228 | 000080260-01 | Gordon | Stout | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08292017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720084 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08312017 | 08292017 | 08312017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
