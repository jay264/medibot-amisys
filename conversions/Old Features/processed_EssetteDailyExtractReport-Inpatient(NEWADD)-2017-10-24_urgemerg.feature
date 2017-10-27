Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-24_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-24_URGEMERG
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
| 10192017 | 2017-10-19T08:45:21+00:00 |  | 000051899-01 | ROBERT | MCDANIEL | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10182017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019033 | I4891, R0600 | Dyspnea, unspecified | ICD10 | 10242017 | 10182017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10202017 | 2017-10-20T08:03:24+00:00 |  | 000114758-01 | Cornelius | Cherry Jr. | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10192017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020009 | R079 | Chest pain, unspecified | ICD10 | 10242017 | 10192017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T09:40:22+00:00 |  | 000103381-01 | CONNIE | DELANCEY | SURG INTERVENTIONS LLC | 905158 | CARLOS B | DOMINGO | 1770615528 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10172017 | 10222017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016047 | K6389 | Other specified diseases of intestine | ICD10 | 10242017 | 10172017 | 10222017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 2.0 |
| 10182017 | 2017-10-18T10:08:41+00:00 |  | 000118345-01 | JAMES | ZEIGLER | OSU INTERNAL MED LLC | 942381 | SOPHIA J | PENG | 1831455831 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10172017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018046 | R000, R42 | Dizziness and giddiness | ICD10 | 10242017 | 10172017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10062017 | 2017-10-06T14:36:37+00:00 |  | 000078218-01 | Mary | Burr | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10052017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006067 | T82858S | Stenosis of vascular prosth dev/grft, sequela | ICD10 | 10242017 | 10052017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10122017 | 2017-10-12T10:05:57+00:00 | 251445807284 | 000057721-01 | RONALD | BRUNGS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10112017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012010 | J159 | Unspecified bacterial pneumonia | ICD10 | 10242017 | 10112017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05242017 | 2017-05-24T13:31:28+00:00 |  | 000106584-01 | Gary | Lamb | MIAMI VALLEY HSPISTS GRP | 922638 | YOUSIF S | SHAREEF | 1922235811 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05232017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170805120617.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524048 | I82401, L03115 | Cellulitis of right lower limb | ICD10 | 10242017 | 05232017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10192017 | 2017-10-19T09:13:09+00:00 | 250950947291 | 000082388-01 | Nada | Risteska | SOUND PHYSICIANS OF OHI0 | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10242017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10182017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019024 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 10242017 | 10182017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10182017 | 2017-10-18T08:05:56+00:00 | 026384292-7264 | 000076204-01 | Lawrence | Ruder | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10192017 | 10232017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018005 | D49511 | NEOPLASM OF UNSPECIFIED BEHAVIOR OF RIGHT KIDNEY | ICD10 | 10242017 | 10192017 | 10232017 | 50240 | NEPHPHRECTOMY, PARTIAL | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 10202017 | 2017-10-20T09:26:37+00:00 | 264778527292 | 000111713-01 | Dora | Smailes | SOUND PHYSICIANS OF OHI0 | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10242017 | Approved | MediGold Southeast OH Essential Care | Reports | Inpatient | Inpatient | 10192017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020028 | A419 | Sepsis, unspecified organism | ICD10 | 10242017 | 10192017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10232017 | 2017-10-23T16:03:19+00:00 |  | 000083576-01 | Joyce | Gabbard | MERCY HEALTH PHYSICIANS | 942580 | JAMES D | ABBOTT | 1598809519 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 10242017 | Approved | MediGold Southwest OH Essential Care | Fax | Pending Admission | Inpatient | 10312017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171024001 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 10242017 |  |  | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  | No child records to display. |  |
| 09202017 | 2017-09-20T11:42:20+00:00 |  | 000076523-01 | Clyde | Keney | CLEVELAND CLINIC FNDN | 943105 | DANIEL P | RAYMOND | 1861420796 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 10242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Inpatient | 10262017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170921066 | J986 | Disorders of diaphragm | ICD10 | 10242017 |  |  | 32100, 71020, 93005 | ELECTROCARDIOGRAM,TRACING ONLY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  | No child records to display. |  |
| 10152017 | 2017-10-15T15:43:02+00:00 |  | 000067100-01 | Patricia | Divelbliss | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 10242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10152017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016090 | S0101XA, S12100A, S2242XA, S3993XA, W19XXXA | Unspecified fall, initial encounter | ICD10 | 10242017 | 10152017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10202017 | 2017-10-20T10:58:37+00:00 |  | 000112390-01 | Geneva | Matlock | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10192017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020051 | R748 | Abnormal levels of other serum enzymes | ICD10 | 10242017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10182017 | 2017-10-18T11:42:22+00:00 |  | 000111065-01 | Joseph | Sawyer | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10162017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018048 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10242017 | 10162017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10152017 | 2017-10-15T15:39:32+00:00 |  | 000102085-01 | Donald | Hoylman | RUSH UNIVERSITY MEDICAL | 940019 | GRACE J | LEE | 1417103623 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 10242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10142017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016089 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 10242017 | 10142017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10172017 | 2017-10-17T15:15:26+00:00 |  | 000100885-01 | Charles | Fannin | CLERMONT INTERNISTS ASSO | 924704 | SUSHEELA | RAJAN | 1144273673 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 10242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10172017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017080 | R6889 | Other general symptoms and signs | ICD10 | 10242017 | 10172017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10172017 | 2017-10-17T13:50:50+00:00 |  | 000081779-01 | Joann | Zitt | MERCY HEALTH PHYSICIANS | 921760 | FRANCIS X | FLOREZ | 1780630053 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 10242017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10162017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017074 | T84020A | Dislocation of internal right hip prosthesis, init encntr | ICD10 | 10242017 | 10162017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10182017 | 2017-10-18T10:16:18+00:00 | 252419887291 | 000089691-01 | Donald | Theado | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10182017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018030 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 10242017 | 10182017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10162017 | 2017-10-16T09:07:54+00:00 | 252292577287 | 000031650-01 | HERBERT | SPARKS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10142017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016027 | I4891 | Unspecified atrial fibrillation | ICD10 | 10242017 | 10142017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10202017 | 2017-10-20T08:05:59+00:00 |  | 000066729-01 | JUDITH | BLAIR | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10172017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020010 | J181, R4182 | Altered mental status, unspecified | ICD10 | 10242017 | 10172017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10242017 | 2017-10-24T16:02:41+00:00 | 025452666-7290 | 000037488-01 | HUBERT | STANG | PREMIER UROLOGY CORP | 935543 | DAVID H | BROWN SR | 1578536181 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10242017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 10232017 | 10242017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024088 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 10242017 | 10232017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10202017 | 2017-10-20T08:01:54+00:00 |  | 000098031-01 | Donald | Wells | LICKING MEM INPATIENT ME | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10192017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020007 | I442 | Atrioventricular block, complete | ICD10 | 10242017 | 10192017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10232017 | 2017-10-23T10:14:11+00:00 |  | 000057195-01 | NORMAN | SCHULTZ | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 |  | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 10242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10212017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023112 | I10, K625, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10242017 | 10212017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10232017 | 2017-10-23T10:01:54+00:00 |  | 000078210-01 | Katrina | Whitesed | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 10242017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10212017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023109 | D649 | Anemia, unspecified | ICD10 | 10242017 | 10212017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10022017 | 2017-10-02T16:04:24+00:00 |  | 000094697-01 | Rebecca | Corder | MERCY HEALTH PHYSICIANS | 921735 | PAUL | FAVORITO | 1306845151 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 10242017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10192017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003044 | M25511 | Pain in right shoulder | ICD10 | 10242017 | 10192017 | 10232017 | 23472, 23430 | RUPTURED LONG HEAD BICEPS | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 1.0 |
| 10232017 | 2017-10-23T10:31:56+00:00 | 264030797293 | 000062668-01 | GAIL | LANDEFELD | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10242017 | Approved | THE TIMKEN COMPANY | Reports | Inpatient | Inpatient | 10202017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023054 | G9340 | Encephalopathy, unspecified | ICD10 | 10242017 | 10202017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
