Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-13_thru_2017-10-15_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-13_thru_2017-10-15_URGEMERG
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
| 10062017 | 2017-10-06T09:47:33+00:00 | 250409927278 | 000001539-01 | GRACE | GILL | COLS INPATIENT CARE INC | 942957 | CHARLES F | WARE III | 1528355922 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10052017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006018 | R000 | Tachycardia, unspecified | ICD10 | 10122017 | 10052017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10092017 | 2017-10-09T09:10:18+00:00 | 254749327279 | 000108231-01 | Sally | Barailloux | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10062017 | 10122017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009009 | J159 | Unspecified bacterial pneumonia | ICD10 | 10122017 | 10062017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10042017 | 2017-10-04T09:41:41+00:00 |  | 000037622-01 | LARABEE | MOORE JR | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10112017 | 10122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004061 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 10122017 | 10112017 | 10122017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10022017 | 2017-10-02T08:49:15+00:00 |  | 000066535-01 | BETTY | CASTO | PARKVIEW PHYSICIANS GRP | 908022 | WILLIAM A | KAMMEYER | 1780799544 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09302017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002075 | E876 | Hypokalemia | ICD10 | 10132017 | 09302017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10062017 | 2017-10-06T08:22:45+00:00 |  | 000052998-01 | N | LEATHERWOOD | COPC CENTRAL OHIO PRIMAR | 904202 | LOUIS W | HEVEZI | 1386689768 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10052017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006022 | I639 | Cerebral infarction, unspecified | ICD10 | 10132017 | 10052017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10072017 | 2017-10-07T06:55:16+00:00 |  | 000095196-01 | Carol | Reed | FCMH MED & SURG ASSOC | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10062017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009050 | I2699, I509 | Heart failure, unspecified | ICD10 | 10132017 | 10062017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10092017 | 2017-10-09T08:42:20+00:00 |  | 000101758-01 | HORACE | SINGLETON | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10082017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009062 | D649, D72829, K921, N179, N390, R319 | Hematuria, unspecified | ICD10 | 10132017 | 10082017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10092017 | 2017-10-09T16:06:34+00:00 | 250675187282 | 000001616-01 | PATRICIA | LEDFORD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 10092017 | 10122017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009110 | M6281 | Muscle weakness (generalized) | ICD10 | 10132017 | 10092017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09272017 | 2017-09-27T11:34:55+00:00 |  | 000057087-01 | ROGER | LAWHORN | ORTHO & SPORTS MED CTR I | 927551 | STEPHEN T | OLSON | 1124247887 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928002 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 10132017 | 10092017 | 10112017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10102017 | 2017-10-10T08:36:48+00:00 |  | 000077332-01 | Jerome | Keller | SOUND PHYSICIANS OF OHI0 | 948370 | SAIYID-NAUFAL | T ZAIDI | 1790122307 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 10132017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010056 | N189, N3001, R410, R531 | Weakness | ICD10 | 10132017 | 10092017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10062017 | 2017-10-06T09:05:49+00:00 |  | 000097662-01 | James | Hannahs | RESILIENCY & WELLNESS CO | 946613 | DELANEY | SMITH | 1942324728 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Substance Abuse | IP SA | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 10132017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 10052017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006042 | F1020 | Alcohol dependence, uncomplicated | ICD10 | 10132017 | 10052017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10092017 | 2017-10-09T16:21:17+00:00 | 256748377282 | 000035584-01 | Claudietta | Colliver | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 10092017 | 10122017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009114 | R002 | Palpitations | ICD10 | 10132017 | 10092017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10102017 | 2017-10-10T10:39:44+00:00 | 250909407282 | 000104911-01 | PATRICIA | MURPHY | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10092017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010025 | E8352, N179 | Acute kidney failure, unspecified | ICD10 | 10132017 | 10092017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10102017 | 2017-10-10T14:33:44+00:00 |  | 000107738-01 | LORI | CLARK | ALLIANCE PHYSICIANS INC | 947084 | MELISSA | WHITESELL | 1528251113 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 10132017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10102017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011029 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 10132017 | 10102017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10122017 | 2017-10-12T11:16:39+00:00 | 017972428-7271 | 000103809-01 | Mary | Hines | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 10122017 | 10132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012023 | M797 | Fibromyalgia | ICD10 | 10132017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09222017 | 2017-09-22T10:51:37+00:00 | 025005812-7265 | 000063671-01 | MICHAEL | BUCHIERI | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10122017 | 10132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922075 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 10132017 | 10122017 | 10132017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10042017 | 2017-10-04T13:52:47+00:00 | 017529912-7276 | 000106972-01 | Michael | Cook | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10132017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 10052017 | 10132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004066 | J918 | Pleural effusion in other conditions classified elsewhere | ICD10 | 10132017 | 10052017 | 10132017 | 32650 | THORACOSCOPY, SURGICAL;WITH PLEURODESIS,ANY METHOD | CPT | 1 | 1 | Approved | 9 | CPT | C4 |  |  |  | 8.0 |
| 09142017 | 2017-09-14T16:19:19+00:00 |  | 000012010-01 | GEORGIA | DENUNE | MOUNT CARMEL HLTH PRVDRS | 909299 | PATRICIA C | GARCIA | 1184833436 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918001 | R569 | Unspecified convulsions | ICD10 | 10132017 | 10092017 | 10132017 | 95951 | MONITOR EEG & VIDEO C INT & RPT | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 09112017 | 2017-09-11T11:51:22+00:00 |  | 000084600-01 | Carol | Schramm | FIRST SETTLEMENT ORTHOS | 930497 | JACOB B | SMITH | 1568657062 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient | IP | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 10132017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10112017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911109 | M4712, M4802, M50322 | OTHER CERVICAL DISC DEGENERATION AT C5-C6 LEVEL | ICD10 | 10132017 | 10112017 | 10122017 | 22551, 22552, 22846, 22853, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 2, 1, 3, 1 | 1, 2, 1, 3, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  | No child records to display. |  |
| 10062017 | 2017-10-06T08:36:28+00:00 |  | 000102449-01 | ROSELLA | MCNICHOLS | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10052017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006032 | R296 | Repeated falls | ICD10 | 10132017 | 10052017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10092017 | 2017-10-09T14:28:47+00:00 |  | 000104062-01 | BRENDA | BURTON | SOUND PHYSICIANS OF OHI0 | 926861 | MOTAZ | HOSSEIN | 1922377977 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10072017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010029 | N179, N390 | Urinary tract infection, site not specified | ICD10 | 10132017 | 10072017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10042017 | 2017-10-04T15:11:55+00:00 | 250721207277 | 000014627-01 | BARBARA | MCDONALD | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10042017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004067 | J189 | Pneumonia, unspecified organism | ICD10 | 10132017 | 10042017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10062017 | 2017-10-06T09:04:01+00:00 | 173079587278 | 000001545-01 | MARY | BAUGHN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10052017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006010 | R0600 | Dyspnea, unspecified | ICD10 | 10132017 | 10052017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10132017 | 2017-10-13T09:41:29+00:00 | 173251167285 | 000115429-01 | VIRGINIA | FRITZ | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 10122017 | 10132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013007 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 10132017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T16:31:27+00:00 |  | 000090000-01 | Lynne | Straley | TRIHEALTH G LLC | 950686 | THOMAS | GETREU | 1649513185 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 10132017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10062017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010052 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 10132017 | 10062017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09082017 | 2017-09-08T14:52:56+00:00 |  | 000051517-01 | LOIS | BALL | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911093 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10132017 | 10092017 | 10122017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 10102017 | 2017-10-10T14:51:29+00:00 |  | 000106940-01 | Orrin | Berg | MERCY HEALTH PHYSICIANS | 921248 | GREGORY C | ZENNI | 1285664789 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 10132017 | Approved | MediGold Southwest OH Essential Care | Fax | Pending Admission | Inpatient | 10162017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171011008 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 10132017 |  |  | 34802 | ENDOVASC ABDO REPR W/DEVICE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  | No child records to display. |  |
| 10042017 | 2017-10-04T13:35:18+00:00 |  | 000086379-01 | Wanda | Horwarth | INTERNAL MEDICINE OF CIN | 926760 | ANNA N | MAXEY | 1356410641 | MERCY ANDERSON REHABILIT | 950119 | 1245789981 | MERCY ANDERSON REHABILITATION UNIT | 1245789981 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MERCY ANDERSON REHABILITATION UNIT | 10132017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 10132017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171004058 | K550, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10132017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09212017 | 2017-09-21T14:20:48+00:00 |  | 000086379-01 | Wanda | Horwarth | TRIHEALTH H LLC | 933883 | ZHENCHAO | WANG | 1871880435 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 10132017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09202017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921076 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10132017 | 09202017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 10032017 | 2017-10-03T10:03:04+00:00 | 256952727275 | 000003516-01 | GOLDIE | MOONEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10032017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003035 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 10132017 | 10032017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10062017 | 2017-10-06T09:51:38+00:00 | 264030797279 | 000062668-01 | GAIL | LANDEFELD | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10132017 | Approved | THE TIMKEN COMPANY | Reports | Inpatient | Inpatient | 10062017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006019 | E875 | Hyperkalemia | ICD10 | 10132017 | 10062017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
