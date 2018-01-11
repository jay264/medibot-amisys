Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-09_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-09_URGEMERG
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
| 01052018 | 2018-01-05T11:10:08+00:00 |  | 000038632-01 | RONALD | NELSON | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01042018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105042 | E11621, S91301A | Unspecified open wound, right foot, initial encounter | ICD10 | 01092018 | 01042018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01032018 | 2018-01-03T13:53:36+00:00 |  | 000064139-01 | SHIRLEY | MOORE | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103100 | I509, R0600 | Dyspnea, unspecified | ICD10 | 01092018 | 01022018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12272017 | 2017-12-27T09:32:01+00:00 | 173079587360 | 000001545-01 | MARY | BAUGHN | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12262017 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227028 | G809 | Cerebral palsy, unspecified | ICD10 | 01092018 | 12262017 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01042018 | 2018-01-04T15:01:33+00:00 |  | 000072486-01 | PATRICIA | ELLIOTT | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01032018 | 01072018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104102 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01092018 | 01032018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01062018 | 2018-01-06T10:05:50+00:00 |  | 000014705-01 | BERYL | CISCO | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01052018 | 01082018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108018 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01092018 | 01052018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12012017 | 2017-12-01T11:53:47+00:00 |  | 000082786-01 | Douglas | Loyd | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01022018 | 01032018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201041 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01092018 | 01022018 | 01032018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
| 01022018 | 2018-01-02T10:55:09+00:00 | 256809218001 | 000082913-01 | Howard | Pratt | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 01012018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102033 | F10239 | Alcohol dependence with withdrawal, unspecified | ICD10 | 01092018 | 01012018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01042018 | 2018-01-04T11:55:40+00:00 |  | 000001709-01 | MILLARD | LITTERAL JR | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01032018 | 01052018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104087 | J189, R0602 | Shortness of breath | ICD10 | 01092018 | 01032018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T09:28:15+00:00 |  | 000072001-01 | Mickey | Sparks | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 01032018 | 01052018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104030 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01092018 | 01032018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T19:27:59+00:00 |  | 000022871-01 | JAMES | MCCARTHY | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105024 | K830, R109 | Unspecified abdominal pain | ICD10 | 01092018 | 01032018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01032018 | 2018-01-03T12:36:39+00:00 |  | 000026485-01 | HELEN | PINE | INTL MED CNSLT OF COLS I | 911199 | ROBERT A | PALMA | 1437157849 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103083 | R000 | Tachycardia, unspecified | ICD10 | 01092018 | 01022018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T12:03:01+00:00 |  | 000054934-01 | ANN | REYNOLDS | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01032018 | 03052018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104088 | J209, R05 | Cough | ICD10 | 01092018 | 01032018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01022018 | 2018-01-02T11:02:26+00:00 | 251063917365 | 000073255-01 | Anna | Sewell | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12312017 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102037 | N179 | Acute kidney failure, unspecified | ICD10 | 01092018 | 12312017 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01042018 | 2018-01-04T10:05:24+00:00 |  | 000106700-01 | Mildred | Karaffa | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 01042018 | 01062018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104051 | I4891 | Unspecified atrial fibrillation | ICD10 | 01092018 | 01032018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12192017 | 2017-12-19T16:07:49+00:00 |  | 000100063-01 | Louise | Sandlin | SOUND INPATIENT PHYS OF | 913926 | TERESA | FINKE | 1124224423 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 01092018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 12182017 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220001 | D72829, R270, R42 | Dizziness and giddiness | ICD10 | 01092018 | 12182017 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01042018 | 2018-01-04T15:36:12+00:00 |  | 000048013-01 | PATRICIA | COOKE | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 01032018 | 01052018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105013 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 01092018 | 01032018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T10:05:24+00:00 |  | 000028043-01 | BILLIE | KALL | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104047 | D6489, L03116, L0390 | Cellulitis, unspecified | ICD10 | 01092018 | 01032018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01042018 | 2018-01-04T13:53:09+00:00 |  | 000108665-01 | Bonnie | Stanforth | HOSPITAL MEDICINE SERVIC | 949699 | IMRAN T | MINHAS | 1942288402 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01032018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104093 | D708 | Other neutropenia | ICD10 | 01092018 | 01032018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12262017 | 2017-12-26T15:01:26+00:00 |  | 000085494-01 | Jean | Southers | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12242017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227002 | A419, J441, J9620, R0600 | Dyspnea, unspecified | ICD10 | 01092018 | 12242017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12282017 | 2017-12-28T08:14:58+00:00 |  | 000042000-01 | BETTY | ARMSTRONG | HOSPITALIST MEDICINE PHY | 943260 | ACHENEF G | MELESE | 1609164136 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12272017 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228010 | J189, R4182 | Altered mental status, unspecified | ICD10 | 01092018 | 12272017 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12282017 | 2017-12-28T11:31:00+00:00 |  | 000104972-01 | Delores | Ellison | TRIHEALTH G LLC | 950686 | THOMAS | GETREU | 1649513185 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 01092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12272017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228046 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 01092018 | 12272017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T09:20:21+00:00 |  | 000011749-01 | SHIRLEY | COCHRAN | ROBERT GNADE MD | 936692 | ROBERT | GNADE | 1659301281 | GRADY MEMORIAL HOSPITAL | 936495 | 1235174327 | GRADY MEMORIAL HOSPITAL | 1235174327 | Inpatient | IP | Concurrent Review | CONC |  | GRADY MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104062 | R6889 | Other general symptoms and signs | ICD10 | 01092018 | 01022018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01082018 | 2018-01-08T15:17:38+00:00 |  | 000108654-01 | ROGER | SALTS | L L DEATON MD LLC | 948199 | LOIS L | DEATON | 1578599213 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 01092018 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 01092018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180108134 | K7290, K5650 | K5650 | ICD10 | 01092018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01032018 | 2018-01-03T15:18:44+00:00 |  | 000005828-01 | VERONICA | VALENTINO | COPC CENTRAL OHIO PRIMAR | 943209 | NASIR | SUMMIYAH | 1962692103 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104037 | R109, R531 | Weakness | ICD10 | 01092018 | 01022018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12152017 | 2017-12-15T13:15:15+00:00 |  | 000098409-01 | Judith | Hunt | SPECIALIZED ORTHOPAEDICS | 919300 | JOHN M | HATHEWAY | 1043201049 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01052018 | 01082018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215067 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01092018 | 01052018 | 01082018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 01022018 | 2018-01-02T10:41:56+00:00 |  | 000018992-01 | Barbara | Grey | HOSPITALIST MEDICINE PHY | 906123 | BEVERLY J | YAMOUR | 1376512624 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01012018 | 01032018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102105 | J159, R791 | Abnormal coagulation profile | ICD10 | 01092018 | 01012018 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12272017 | 2017-12-27T10:29:19+00:00 |  | 000104056-01 | DORIS | JONES | MEDICINE INPATIENT GROUP | 925155 | FADI | BAILONY | 1003965385 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 01092018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12262017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227067 | I313 | Pericardial effusion (noninflammatory) | ICD10 | 01092018 | 12262017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12272017 | 2017-12-27T13:48:39+00:00 |  | 000115142-01 | Gary | Frazier | ALLIANCE PHYSICIANS INC | 910766 | JACOB C | YANNETTA III | 1992873046 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 01092018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12262017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227079 | I70211 | Athscl native arteries of extrm w intrmt claud, right leg | ICD10 | 01092018 | 12262017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01032018 | 2018-01-03T08:27:45+00:00 |  | 000054002-01 | CELESTINE | ADAMS | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103064 | F0390, S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 01092018 | 01022018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01032018 | 2018-01-03T15:32:33+00:00 | 025373347-8003 | 000004421-01 | PATRICIA | NARIKE | MOUNT CARMEL HOSPICE | 907877 | LAURIE M | CHEVALIER | 1841254372 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 01032018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103114 | R0600 | Dyspnea, unspecified | ICD10 | 01092018 | 01032018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01082018 | 2018-01-08T11:17:42+00:00 |  | 000106986-01 | Bonita | Knicely | GENESIS MEDICAL GRP LLC | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108089 | I639 | Cerebral infarction, unspecified | ICD10 | 01092018 | 01032018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T11:43:51+00:00 |  | 000064778-01 | CLARENCE | AYERS | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104072 | I509, J9600, N189 | Chronic kidney disease, unspecified | ICD10 | 01092018 | 01032018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01032018 | 2018-01-03T08:22:22+00:00 |  | 000002203-01 | JOHN | TUFTS | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103068 | R1110, R197, R5383 | Other fatigue | ICD10 | 01092018 | 01022018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12272017 | 2017-12-27T15:23:14+00:00 |  | 000098112-01 | Marie | Mann | TRI STATE PULMONARY ASSO | 944165 | ERIC J | WEINSTEIN | 1962534693 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12262017 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227096 | A419, R6521 | Severe sepsis with septic shock | ICD10 | 01092018 | 12262017 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 12282017 | 2017-12-28T08:55:37+00:00 |  | 000118729-01 | Kathryn | Booth | MED ASSOCS OF CAMBRIDGE | 922027 | PATRICK | GOGGIN | 1316942410 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 01092018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12272017 | 01012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228016 | E13621 | Other specified diabetes mellitus with foot ulcer | ICD10 | 01092018 | 12272017 | 01012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01042018 | 2018-01-04T08:54:01+00:00 |  | 000016531-01 | GERALD | HEMSLEY | CENTRAL OH HSPISTS INC | 909717 | XIUQIONG | WANG | 1497856280 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01012018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104060 | R0602, R42 | Dizziness and giddiness | ICD10 | 01092018 | 01012018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01042018 | 2018-01-04T18:06:42+00:00 |  | 000108039-01 | Darl | Campbell | HOSPITALIST MEDICINE PHY | 917248 | NATHANIEL D | RUSSELL | 1740401470 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105018 | N189, R601 | Generalized edema | ICD10 | 01092018 | 01022018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01082018 | 2018-01-08T11:37:30+00:00 |  | 000065932-01 | DANIEL | GRIMM | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01062018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108095 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 01092018 | 01062018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01032018 | 2018-01-03T08:45:28+00:00 |  | 000025275-01 | IVAN | RIDDLE | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103105 | N201 | Calculus of ureter | ICD10 | 01092018 | 01022018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T11:42:27+00:00 |  | 000110999-01 | Arlene | Fyffe | HOSPITALIST MEDICINE PHY | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104073 | I82402 | Acute embolism and thombos unsp deep veins of l low extrem | ICD10 | 01092018 | 01032018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01042018 | 2018-01-04T10:54:39+00:00 |  | 000083502-01 | Patricia | Defoor | OHIOHEALTH PHYS GRP | 905892 | ANTHONY T | CHAPEKIS | 1558366906 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01092018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12312017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104085 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01092018 | 12312017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01022018 | 2018-01-02T07:38:53+00:00 |  | 000115574-01 | Carol | Mazzaferri | CLERMONT INTERNISTS ASSO | 921368 | ANIL K | KAKUMANU | 1922287515 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 01092018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12302017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102067 | E871, E876, J111, S82841A, R8271 | BACTERIURIA | ICD10 | 01092018 | 12302017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
