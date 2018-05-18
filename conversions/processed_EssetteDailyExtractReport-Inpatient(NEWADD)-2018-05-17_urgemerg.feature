Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-17_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-17_URGEMERG
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
| 05142018 | 2018-05-14T11:46:55+00:00 |  | 000023629-01 | JAMES | SPOHN | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 05122018 | 05162018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515010 | I509 | Heart failure, unspecified | ICD10 | 05172018 | 05122018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05142018 | 2018-05-14T07:40:48+00:00 |  | 000022176-01 | JOHN | ADKINS | MOUNT CARMEL HLTH SYS | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05132018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514056 | I10, I639 | Cerebral infarction, unspecified | ICD10 | 05172018 | 05132018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05042018 | 2018-05-04T16:27:56+00:00 |  | 000020942-01 | MORRIS | PARRISH | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504086 | I509 | Heart failure, unspecified | ICD10 | 05172018 | 05032018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T10:32:43+00:00 |  | 000016495-01 | Stephen | Simpson | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511063 | I509 | Heart failure, unspecified | ICD10 | 05172018 | 05102018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03262018 | 2018-03-26T12:14:17+00:00 |  | 000118309-01 | PAMELA | NECOVSKI | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05152018 | 05162018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326044 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05172018 | 05152018 | 05162018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  | No child records to display. |  |
| 04022018 | 2018-04-02T12:44:45+00:00 |  | 000034550-01 | PATRICIA | COLLINS | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05152018 | 05162018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402056 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05172018 | 05152018 | 05162018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  | No child records to display. |  |
| 04242018 | 2018-04-24T14:09:04+00:00 |  | 000037903-01 | ROSEMARY | LONGBERRY | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05152018 | 05162018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424076 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05172018 | 05152018 | 05162018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  | No child records to display. |  |
| 05022018 | 2018-05-02T09:22:31+00:00 |  | 000079398-01 | Lewis | Taylor | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05172018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502048 | J810, L89899, R0601, R112, R601 | Generalized edema | ICD10 | 05172018 | 05012018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05072018 | 2018-05-07T11:15:31+00:00 |  | 000073972-01 | David | Kilbarger | INPATIENT SPECIALISTS PA | 920609 | MICHAEL C | MURRAY | 1972781821 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05042018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507031 | R079 | Chest pain, unspecified | ICD10 | 05172018 | 05042018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05072018 | 2018-05-07T13:21:16+00:00 |  | 000101257-01 | Ronald | Land | UNIVERSITY OF CINCINNATI | 924658 | KEITH M | WILSON | 1528009768 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 05172018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05112018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507043 | C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 05172018 | 05112018 | 05162018 | 15756, 15757, 14040, 14020, 14060, 15002, 15004, 15100, 15120 | SPL. GR TO 100SQ CM HEAD, GEN.,DGTS | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 6, 6, 6, 6, 6, 6, 6, 6, 6 | CPT | C4 |  |  | No child records to display. |  |
| 05092018 | 2018-05-09T09:54:12+00:00 |  | 000080587-01 | Kenneth | Flowers | HOSPITALIST MEDICINE PHY | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05082018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509064 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05172018 | 05082018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05132018 | 2018-05-13T10:01:37+00:00 |  | 000063224-01 | ALLAN | BELL | MOUNT CARMEL EAST PHYS | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05122018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514015 | K5720 | Dvtrcli of lg int w perforation and abscess w/o bleeding | ICD10 | 05172018 | 05122018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04232018 | 2018-04-23T13:33:09+00:00 |  | 000105059-01 | Robert | Huffman | SOUTHERN OHIO MED INC | 931426 | SABIR M | QURAISHI | 1427082841 | ADAMS COUNTY HOSPITAL | 936460 | 0 | ADAMS COUNTY HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | ADAMS COUNTY HOSPITAL | 05172018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04212018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424013 | I509 | Heart failure, unspecified | ICD10 | 05172018 | 04212018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04252018 | 2018-04-25T12:06:14+00:00 |  | 000099841-01 | Charles | Day | MOUNT CARMEL HLTH PRVDRS | 934996 | G STEPHEN | VINCENT | 1043251218 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04232018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425051 | M62262 | Nontraumatic ischemic infarction of muscle, left lower leg | ICD10 | 05172018 | 04232018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04252018 | 2018-04-25T12:45:32+00:00 |  | 000001839-01 | HELEN | YOUNG | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425059 | I509 | Heart failure, unspecified | ICD10 | 05172018 | 04242018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04272018 | 2018-04-27T12:27:29+00:00 |  | 000112130-01 | DONNA | PECKHAM | HOSPITALIST MEDICINE PHY | 922163 | ADEDOYIN O | ADETORO | 1215260930 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04262018 | 04292018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427035 | A78, J189 | Pneumonia, unspecified organism | ICD10 | 05172018 | 04262018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05022018 | 2018-05-02T16:37:50+00:00 |  | 000033486-01 | GEORGE | SYKES | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05012018 | 05032018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502098 | R310 | Gross hematuria | ICD10 | 05172018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05072018 | 2018-05-07T07:03:58+00:00 |  | 000097675-01 | Susan | Garrison | HOSPITALIST MEDICINE PHY | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05172018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05042018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507063 | M7989 | Other specified soft tissue disorders | ICD10 | 05172018 | 05042018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05072018 | 2018-05-07T12:42:14+00:00 |  | 000107707-01 | Donna | Kaufman | TRAUMA & CRITICAL CARE S | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05092018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507066 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 05172018 | 05092018 | 05162018 | 44620 | CLOSE ENTEROSTOMY-LARGE, SM INTEST | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  | No child records to display. |  |
| 05082018 | 2018-05-08T14:30:37+00:00 |  | 000090041-01 | Nancy | Medina | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05072018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508102 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05172018 | 05072018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05142018 | 2018-05-14T10:55:50+00:00 |  | 000029898-01 | KAREN | HOWALD | FAIRFIELD PHYS INC | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Classic Preferred |  | Inpatient | Inpatient | 05132018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514092 | J189, J80 | Acute respiratory distress syndrome | ICD10 | 05172018 | 05132018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05152018 | 2018-05-15T17:54:42+00:00 |  | 000089752-01 | Charles | Pope Jr | COPC CENTRAL OHIO PRIMAR | 913915 | MALVINA | KHOZINA | 1063473288 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 05142018 | 05162018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180516010 | J189 | Pneumonia, unspecified organism | ICD10 | 05172018 | 05142018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05162018 | 2018-05-16T10:41:35+00:00 |  | 000104449-01 | MARY PAULIN | MATHIAS | UNIVERSITY OF CINCINNATI | 947541 | AYMAN | MAHDY | 1023248911 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 05172018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05122018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180516031 | R310 | Gross hematuria | ICD10 | 05172018 | 05122018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05172018 | 2018-05-17T09:19:50+00:00 |  | 000041646-01 | BARBARA | RODEHAVER | MOUNT CARMEL EAST PHYS | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05152018 | 05162018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180517009 | C541 | Malignant neoplasm of endometrium | ICD10 | 05172018 | 05152018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05012018 | 2018-05-01T08:32:08+00:00 |  | 000044995-01 | JACKIE | PENN | HOSPITAL MEDICINE SERVIC | 949699 | IMRAN T | MINHAS | 1942288402 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 05172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04302018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501060 | N179 | Acute kidney failure, unspecified | ICD10 | 05172018 | 04302018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05092018 | 2018-05-09T11:39:11+00:00 |  | 000079125-01 | Gary | Jackson | FAIRFIELD HLTHCARE PROFS | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05082018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510011 | E876, M545, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 05172018 | 05082018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T09:27:02+00:00 |  | 000097623-01 | Romaine | Skaggs | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511055 | J209 | Acute bronchitis, unspecified | ICD10 | 05172018 | 05082018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T11:32:54+00:00 |  | 000087018-01 | Daniel | Kennedy | HARVEY, RUSSELL S | 919952 | RUSSELL S | HARVEY | 1285883934 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05172018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05102018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511073 | K922, R0602 | Shortness of breath | ICD10 | 05172018 | 05102018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T12:39:52+00:00 |  | 000051816-01 | JANE | RUNYON | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05142018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514001 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05172018 | 05142018 | 05162018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  | No child records to display. |  |
| 05142018 | 2018-05-14T09:47:51+00:00 |  | 000079353-01 | Joan | Guinther | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05172018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05112018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514083 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 05172018 | 05112018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05172018 | 2018-05-17T16:39:11+00:00 |  | 000099350-01 | Paulletta | Whitehead | CLEVELAND CLINIC FNDN | 927889 | IAN C | LAVERY | 1518901073 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 05172018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Inpatient | 05292018 | 06292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180517014 | N824 | Other female intestinal-genital tract fistulae | ICD10 | 05172018 |  |  | 49000, 44120 | ENTERECTOMY SMALL BOWEL | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  | No child records to display. |  |
