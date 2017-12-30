Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-27_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-27_URGEMERG
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
| 12222017 | 2017-12-22T15:42:40+00:00 | 256500557356 | 000014426-01 | HAROLD | CAIN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12222017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222076 | J159 | Unspecified bacterial pneumonia | ICD10 | 12272017 | 12222017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12262017 | 2017-12-26T10:05:48+00:00 |  | 000088127-01 | Deanna | Barker | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12232017 | 12242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226105 | I469 | Cardiac arrest, cause unspecified | ICD10 | 12272017 | 12232017 | 12242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12222017 | 2017-12-22T08:48:44+00:00 | 253272547355 | 000094611-01 | Linda | Castle | CENTRAL OH HSPISTS INC | 908066 | BHAIRAVI M | PATEL | 1740381532 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12212017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222010 | E118, E872, I4891, J189 | Pneumonia, unspecified organism | ICD10 | 12272017 | 12212017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12122017 | 2017-12-12T13:52:49+00:00 |  | 000034087-01 | SHELVA | HESSON | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12192017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212074 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 12272017 | 12192017 | 12262017 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 12232017 | 2017-12-23T17:27:57+00:00 |  | 000094845-01 | Robert | Johnson | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12272017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 12232017 | 12262017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171223015 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12272017 | 12232017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T09:29:01+00:00 |  | 000037644-01 | MARY | DYE | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12182017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106116 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12272017 | 12182017 | 12212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 12262017 | 2017-12-26T11:08:37+00:00 | 252198927358 | 000011848-01 | JOAN | PEARSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12272017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 12242017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226086 | I509, J810 | Acute pulmonary edema | ICD10 | 12272017 | 12242017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12192017 | 2017-12-19T16:25:25+00:00 |  | 000115635-01 | Gail | Finkbeiner | MERCY HEALTH PHYSICIANS | 948346 | YASIR | KHAN | 1851605851 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 12272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12182017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220004 | K56600 | K56600 | ICD10 | 12272017 | 12182017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12172017 | 2017-12-17T15:13:22+00:00 |  | 000113220-01 | Michael | Stacey | CENTRAL OH HSPISTS INC | 933155 | DANIEL O | MORROW | 1598057853 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12162017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218067 | R531 | Weakness | ICD10 | 12272017 | 12162017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12182017 | 2017-12-18T13:01:47+00:00 | 267403877351 | 000012432-01 | BETTY | SNOOR | HOSPITALIST MEDICINE PHY | 939956 | AMY | WANG | 1992949150 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12172017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218105 | I739, I743 | Embolism and thrombosis of arteries of the lower extremities | ICD10 | 12272017 | 12172017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12212017 | 2017-12-21T09:58:09+00:00 |  | 000113158-01 | Thomas | Festing | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12192017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221038 | M961, T85733A | I/I REACT D/T IMPLNT ELEC NSTIM OF SPINAL CORD, LEAD, INIT | ICD10 | 12272017 | 12192017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12222017 | 2017-12-22T08:00:20+00:00 |  | 000100486-01 | Mary | Barker | OSU INTERNAL MED LLC | 922710 | KATHERINE J | WALSH | 1033207451 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12212017 | 12242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222020 | C8330, R0902 | Hypoxemia | ICD10 | 12272017 | 12212017 | 12242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12182017 | 2017-12-18T13:10:21+00:00 | 251203047350 | 000043109-01 | SANDRA | WIKOFF | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12162017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218110 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 12272017 | 12162017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12012017 | 2017-12-01T13:04:46+00:00 |  | 000099587-01 | Rudolf | Sperger | GERICARE ASSOCIATES INC | 921316 | SHWETAL G | DESAI | 1083687248 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11302017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201048 | R296 | Repeated falls | ICD10 | 12272017 | 11302017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12062017 | 2017-12-06T12:49:55+00:00 |  | 000079398-01 | Lewis | Taylor | SOUND KENWOOD HSPISTS OF | 924450 | RANA K | SINGH | 1518131085 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 12052017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206057 | I200, I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 12272017 | 12052017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12202017 | 2017-12-20T11:10:41+00:00 |  | 000037992-01 | SONDRA | HINDEL | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 12272017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171220054 | I618, N179, R1310 | Dysphagia, unspecified | ICD10 | 12272017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12112017 | 2017-12-11T07:57:32+00:00 |  | 000091467-01 | Bernice | Grobosky | SAMAAN, ROBERT G | 921469 | ROBERT G | SAMAAN | 1265482871 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12092017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211037 | S72002A, W19XXXA, Z7901, Z5181, T148XXA | T148XXA | ICD10 | 12272017 | 12092017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12262017 | 2017-12-26T16:04:07+00:00 |  | 000110178-01 | Beatrice | Reid | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | DANIEL DRAKE CENTER FOR POST-ACUTE C | 946228 | 1558355487 | DANIEL DRAKE CENTER FOR POST-ACUTE C | 1558355487 | Long Term Acute Care Hospital | LTACH | Pre-Service | PRE |  | DANIEL DRAKE CENTER FOR POST-ACUTE C | 12272017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171227011 | I63511 | Cereb infrc d/t unsp occls or stenos of right mid cereb art | ICD10 | 12272017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12202017 | 2017-12-20T10:02:44+00:00 | 261821787353 | 000067976-01 | MARGRETTA | WEST | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12192017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220031 | I4891, I509 | Heart failure, unspecified | ICD10 | 12272017 | 12192017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12152017 | 2017-12-15T12:12:46+00:00 |  | 000035137-01 | JOSEPH | HELBER | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | SELECT SPECIALTY HOSPITA | 900155 | 1871592386 | SELECT SPECIALTY HOSPITAL COLUMBUS | 1871592386 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL COLUMBUS | 12272017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171215060 | J9600, N178 | Other acute kidney failure | ICD10 | 12272017 | 12152017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12212017 | 2017-12-21T10:58:33+00:00 |  | 000095258-01 | Robert | Cordy Jr | MERITRA CLINICS LLC | 911415 | NAVEEN | BEKKAM | 1225196371 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12202017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221044 | I214, J189, R222 | Localized swelling, mass and lump, trunk | ICD10 | 12272017 | 12202017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12112017 | 2017-12-11T10:16:12+00:00 |  | 000098112-01 | Marie | Mann | CLINTON MEMORIAL HOSPITAL | 917905 |  | CLINTON MEMORIAL HOSPITAL | 1063713659 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12082017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211078 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 12272017 | 12082017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 12202017 | 2017-12-20T10:38:23+00:00 | 252382967353 | 000053707-01 | RUTH | SMYTHE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12192017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220041 | R627 | Adult failure to thrive | ICD10 | 12272017 | 12192017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12182017 | 2017-12-18T11:23:36+00:00 | 025004539-7352 | 000086804-01 | Roger | Boice | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12262017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218084 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 12272017 | 12262017 | 12272017 | 33419, 33418 | REPAIR TCAT MITRAL VALVE | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 12182017 | 2017-12-18T11:52:50+00:00 | 025056603-7352 | 000033301-01 | CAROLYN | JUSTICE | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12262017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218089 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 12272017 | 12262017 | 12272017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12262017 | 2017-12-26T08:47:14+00:00 | 254925877358 | 000037269-01 | SANDRA | FURR | ROBERT TURNER MD INC | 934953 | ROBERT C | TURNER | 1134112238 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12272017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12242017 | 12272017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226019 | R296 | Repeated falls | ICD10 | 12272017 | 12242017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12122017 | 2017-12-12T14:03:49+00:00 | 025624253-7289 | 000072372-01 | Elizabeth | Burba | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12262017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212077 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12272017 | 12262017 | 12272017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12132017 | 2017-12-13T15:39:01+00:00 |  | 000020670-01 | ALSTINE | HYDE | CENTRAL OH HSPISTS INC | 942120 | JOHN M | GUIDO | 1912263922 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12132017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213104 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 12272017 | 12132017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12262017 | 2017-12-26T10:03:13+00:00 | 256548477359 | 000097561-01 | Susan | Sidle | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12272017 | Approved | THE TIMKEN COMPANY | EMR | ACO - Atrial Fib | Inpatient | 12252017 | 12272017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226053 | I4891 | Unspecified atrial fibrillation | ICD10 | 12272017 | 12252017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T10:18:08+00:00 |  | 000021907-01 | PATRICIA | KREAGER | ADENA MEDICAL GROUP LLC | 910639 | SUNG H | YI | 1265642961 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12102017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211109 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 12272017 | 12102017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12262017 | 2017-12-26T08:30:02+00:00 |  | 000066361-01 | Darrin | Sheeley | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12252017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226055 | E8770, I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 12272017 | 12252017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12262017 | 2017-12-26T08:52:07+00:00 | 025639606-7358 | 000021119-01 | JUANITA | BIRD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12242017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226021 | I2109 | STEMI involving oth coronary artery of anterior wall | ICD10 | 12272017 | 12242017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12272017 | 2017-12-27T10:32:04+00:00 | 018069409-7357 | 000066212-01 | Marilyn | Butler | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12272017 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 12232017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227049 | I639 | Cerebral infarction, unspecified | ICD10 | 12272017 | 12232017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12212017 | 2017-12-21T17:27:14+00:00 |  | 000011949-01 | YOUNG | PAK | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 12272017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171222008 | G912 | (Idiopathic) normal pressure hydrocephalus | ICD10 | 12272017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12262017 | 2017-12-26T13:47:46+00:00 |  | 000098144-01 | Paul | Lambert | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | SELBY GENERAL HOSPITAL | 12272017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 12272017 | 12282017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171226158 | M75102 | Unsp rotatr-cuff tear/ruptr of left shoulder, not trauma | ICD10 | 12272017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12232017 | 2017-12-23T07:35:32+00:00 |  | 000006540-01 | PAUL | HICKMAN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12222017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171223002 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 12272017 | 12222017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12262017 | 2017-12-26T11:30:33+00:00 |  | 000017843-01 | ROBERT | GROVES | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12222017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226136 | J189 | Pneumonia, unspecified organism | ICD10 | 12272017 | 12222017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12182017 | 2017-12-18T12:19:49+00:00 |  | 000119438-01 | Dana | Eyerman | HOSPITAL MEDICINE SERVIC | 946505 | MANORAMA | CHALUVADI | 1639433766 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 12272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12162017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219004 | L03115 | Cellulitis of right lower limb | ICD10 | 12272017 | 12162017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12262017 | 2017-12-26T10:11:58+00:00 |  | 000078757-01 | Rose | Donaldson | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12212017 | 12242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226068 | I4891 | Unspecified atrial fibrillation | ICD10 | 12272017 | 12212017 | 12242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T08:13:54+00:00 |  | 000110483-01 | John | Beedy | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 12272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12242017 | 12252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226038 | I509 | Heart failure, unspecified | ICD10 | 12272017 | 12242017 | 12252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
