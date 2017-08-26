Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-24_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-24_URGEMERG
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
| 08182017 | 2017-08-18T09:36:02+00:00 | 253663927229 | 000030085-01 | JOHN | GERMAINE | SOUND PHYSICIANS OF OHI0 | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08242017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 08172017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818009 | I4891 | Unspecified atrial fibrillation | ICD10 | 08242017 | 08172017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08012017 | 2017-08-01T02:29:13+00:00 |  | 000018157-01 | BENTON | JULIAN | TANK PSYCHIATRIC STAFFIN | 933409 | KUNAL B | TANK | 1437479235 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801088 | F250 | Schizoaffective disorder, bipolar type | ICD10 | 08242017 | 08012017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 08212017 | 2017-08-21T15:52:59+00:00 |  | 000076886-01 | Margaret | McNicol | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08192017 | 08192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822078 | I472 | Ventricular tachycardia | ICD10 | 08242017 | 08192017 | 08192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08182017 | 2017-08-18T13:37:59+00:00 |  | 000062041-01 | DAVID | HAYS | ADENA MEDICAL GROUP LLC | 920163 | MUHAMMAD K | AHSAN | 1467408344 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08172017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821088 | R0602, R7889 | Finding of oth substances, not normally found in blood | ICD10 | 08242017 | 08172017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08242017 | 2017-08-24T16:17:45+00:00 | 251915457235 | 000028484-01 | ALBERT | KOLLMER | SOUND PHYSICIANS OF OHI0 | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08222017 | 08242017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824079 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08242017 | 08222017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08212017 | 2017-08-21T09:37:09+00:00 | 253396997230 | 000053038-01 | MARY | JACKSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08182017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821017 | L03818 | Cellulitis of other sites | ICD10 | 08242017 | 08182017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08032017 | 2017-08-03T09:09:06+00:00 |  | 000076611-01 | Beatrice | Justice | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 08242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08032017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803047 | N390, R531, Z9181 | History of falling | ICD10 | 08242017 | 08032017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07062017 | 2017-07-06T12:57:23+00:00 |  | 000116962-01 | Cheryl | Wiese | MOUNT CARMEL HLTH PRVDRS | 935747 | RENEE | CAPUTO | 1558367862 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08242017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 08212017 | 08232017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706082 | N812 | Incomplete uterovaginal prolapse | ICD10 | 08242017 | 08212017 | 08232017 | 57280 | COLPOPEXY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08212017 | 2017-08-21T10:42:35+00:00 |  | 000098014-01 | Mary | Wheeler | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08182017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821107 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 08242017 | 08182017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08222017 | 2017-08-22T11:17:51+00:00 |  | 000065561-01 | DAVID | WEBB | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08192017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822095 | R0602 | Shortness of breath | ICD10 | 08242017 | 08192017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08212017 | 2017-08-21T10:35:34+00:00 |  | 000051030-01 | LEROY | BOWMAN | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08172017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822038 | K37 | Unspecified appendicitis | ICD10 | 08242017 | 08172017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06152017 | 2017-06-15T11:38:37+00:00 | 026355727-7166 | 000077829-01 | Laura | Taylor | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08222017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615056 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08242017 | 08222017 | 08232017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08082017 | 2017-08-08T10:39:47+00:00 |  | 000063687-01 | JAMES | HANDLEY | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08092017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808051 | I7301, V4975 | BELOW KNEE AMPUTATION STATUS | ICD10 | 08242017 | 08092017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 08212017 | 2017-08-21T09:43:01+00:00 | 250691977232 | 000018994-01 | ANDREA | LONGWELL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08242017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 08202017 | 08242017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821022 | I4891, I509 | Heart failure, unspecified | ICD10 | 08242017 | 08202017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08142017 | 2017-08-14T09:40:13+00:00 | 255197147224 | 000005177-01 | CECIL | CHRISTOPHERSON | SOUND PHYSICIANS OF OHI0 | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08242017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08122017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814019 | I509, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08242017 | 08122017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08212017 | 2017-08-21T13:08:24+00:00 |  | 000110289-01 | Paul | Bohman | SOUND KENWOOD HSPISTS OF | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 08182017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821126 | C3491, C3492, I214, I959, M25521, M25522, N179, N189 | Chronic kidney disease, unspecified | ICD10 | 08242017 | 08182017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08212017 | 2017-08-21T08:40:35+00:00 |  | 000088192-01 | Lois | Wood | 24 ON PHYSICIANS PC | 935143 | JAMES J | HOMSY | 1871641647 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08242017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08182017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821063 | Z8679 | Personal history of other diseases of the circulatory system | ICD10 | 08242017 | 08182017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08222017 | 2017-08-22T12:03:15+00:00 |  | 000108272-01 | DENIS | RAHE | UNIVERSITY OF CINCINNATI | 928708 | EVAN | RAMSER | 1831178482 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 08242017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08202017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822094 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 08242017 | 08202017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T14:58:20+00:00 |  | 000064761-01 | JUANITA | TAGGART | CENTRAL OH HSPISTS INC | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08042017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807103 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 08242017 | 08042017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07202017 | 2017-07-20T11:33:14+00:00 |  | 000104324-01 | Richard | May | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720083 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08242017 | 08152017 | 08172017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08142017 | 2017-08-14T16:18:02+00:00 |  | 000073733-01 | Rosemary | Hettema | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08122017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815064 | N289, R079, R600 | Localized edema | ICD10 | 08242017 | 08122017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08162017 | 2017-08-16T10:12:17+00:00 |  | 000094338-01 | Elizabeth | Strahler | MARIETTA HLTH CARE PHYS | 923182 | CURTIS D | WHITE | 1427055474 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 08242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08212017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816050 | N8502, N950 | Postmenopausal bleeding | ICD10 | 08242017 | 08212017 | 08232017 | 58200, 38562, 88331 | SURGICAL CONSULT C FROZEN SECTION | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 08212017 | 2017-08-21T15:58:58+00:00 |  | 000032980-01 | JOYCE | JOHNSON | ST VINCENT MEDICAL CENTER | 936851 |  | ST VINCENT MEDICAL CENTER | 1316186315 | ST VINCENT MEDICAL CENTER | 936851 | 1316186315 | ST VINCENT MEDICAL CENTER | 1316186315 | Inpatient | IP | Concurrent Review | CONC |  | ST VINCENT MEDICAL CENTER | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08182017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822064 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 08242017 | 08182017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08212017 | 2017-08-21T10:31:39+00:00 |  | 000084301-01 | Loretta | Conkle | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08182017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821105 | R5383 | Other fatigue | ICD10 | 08242017 | 08182017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06282017 | 2017-06-28T10:37:04+00:00 | 026231998-7207 | 000025274-01 | SARA | GAYHEART | ORTHO SPEC & SPORTS MED | 935034 | EDWARD L | WESTERHEIDE | 1821019258 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08232017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628039 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08242017 | 08232017 | 08242017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08212017 | 2017-08-21T12:00:44+00:00 |  | 000117893-01 | MARGARET | TIER | KNOX COMMUNITY HSP PHYS | 912126 | BARRY S | GEORGE | 1386605319 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08182017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821130 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 08242017 | 08182017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08182017 | 2017-08-18T09:52:01+00:00 | 251420007229 | 000061973-01 | Eileen | Burkhart | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08172017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818013 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08242017 | 08172017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07132017 | 2017-07-13T10:00:35+00:00 |  | 000090501-01 | Donna | Baker | MERCY HEALTH PHYSICIANS | 942580 | JAMES D | ABBOTT | 1598809519 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713032 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08242017 | 08142017 | 08212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 7.0 |
| 07272017 | 2017-07-27T14:26:20+00:00 |  | 000022197-01 | SALLY | ROSS | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08222017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727063 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08242017 | 08222017 | 08232017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08212017 | 2017-08-21T11:19:32+00:00 |  | 000024035-01 | SHIRLEY | MCLURG | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08212017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822043 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08242017 | 08212017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08162017 | 2017-08-16T10:37:25+00:00 | 178394227228 | 000014462-01 | HERBERT | SMITH | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08152017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816038 | I509 | Heart failure, unspecified | ICD10 | 08242017 | 08152017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08112017 | 2017-08-11T07:30:29+00:00 |  | 000040479-01 | PATRICIA | PIERCE | STRAND PHYSICIAN SPEC PA | 923620 | BRIAN T | CADY | 1730341082 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08102017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811027 | R0600 | Dyspnea, unspecified | ICD10 | 08242017 | 08102017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07182017 | 2017-07-18T15:04:44+00:00 |  | 000057887-01 | EVELAND | DANFORTH | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08222017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718117 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08242017 | 08222017 | 08232017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08172017 | 2017-08-17T09:51:42+00:00 | 026554340-7229 | 000030990-01 | BURTON | LANE | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08222017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817027 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 08242017 | 08222017 | 08242017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07312017 | 2017-07-31T08:35:49+00:00 |  | 000097269-01 | David | Eisele | N COLLEGE HILL INTL MED | 921367 | MICHAEL | JUSTIN | 1023196904 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08242017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07302017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801007 | E875, M869, S2231XA | Fracture of one rib, right side, init for clos fx | ICD10 | 08242017 | 07302017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08212017 | 2017-08-21T10:27:24+00:00 | 252266247232 | 000021874-01 | JEREMIAH | RYAN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08192017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821042 | M7550 | Bursitis of unspecified shoulder | ICD10 | 08242017 | 08192017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
