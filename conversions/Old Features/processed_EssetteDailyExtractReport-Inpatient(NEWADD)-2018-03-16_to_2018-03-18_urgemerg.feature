Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-16_to_2018-03-18_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-16_to_2018-03-18_URGEMERG
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
| 03032018 | 2018-03-03T13:55:54+00:00 |  | 000015235-01 | GERTRUDE | RASOR | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03022018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305046 | I959, J9601, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 03162018 | 03022018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 03122018 | 2018-03-12T15:46:05+00:00 |  | 000042370-01 | SUZANNE | WEBB | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03112018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312115 | A419, J159, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 03162018 | 03112018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03132018 | 2018-03-13T11:30:45+00:00 |  | 000083212-01 | Michael | Palacky | HOSPITALIST MEDICINE PHY | 904883 | NILESH V | VARMA | 1558303545 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03162018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03122018 | 03152018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313064 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03162018 | 03122018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03142018 | 2018-03-14T11:39:30+00:00 |  | 000030673-01 | ANN | RUSSELL | MOUNT CARMEL HLTH PRVDRS | 952401 | SUSANNE K | TAEGE | 1225268535 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03162018 | Approved | THE TIMKEN COMPANY | Fax | EIS | Inpatient | 03132018 | 03152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314038 | N812 | Incomplete uterovaginal prolapse | ICD10 | 03162018 | 03132018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03122018 | 2018-03-12T13:08:21+00:00 |  | 000097958-01 | ROBERT | MOORE | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03112018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312072 | S12100A, Z9181 | History of falling | ICD10 | 03162018 | 03112018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03072018 | 2018-03-07T10:47:05+00:00 |  | 000086710-01 | Carl | Wilmot | FAIRFIELD HLTHCARE PROFS | 943028 | RYAN K | HARRISON | 1528295169 | LABONE OF OHIO INC | 936446 | 1134165970 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307043 | L0291 | Cutaneous abscess, unspecified | ICD10 | 03162018 | 03062018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12262017 | 2017-12-26T16:13:24+00:00 |  | 000091158-01 | Ellen | Estridge | DAVID ZAPF DO INC | 902206 | DAVID M | ZAPF | 1518948611 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12252017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180110150418.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227041 | J441, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 03162018 | 12252017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01222018 | 2018-01-22T16:19:55+00:00 |  | 000060807-01 | GEORGE | WALRAVEN | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123011 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 03162018 | 03072018 | 03152018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 9 | CPT | C4 |  |  |  | 8.0 |
| 02202018 | 2018-02-20T09:42:07+00:00 |  | 000025071-01 | WILLIAM | CLAY JR | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220016 | I509, J40 | Bronchitis, not specified as acute or chronic | ICD10 | 03162018 | 02172018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 26.0 |
| 02212018 | 2018-02-21T13:35:23+00:00 |  | 000112790-01 | James | Benjamin | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03072018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221053 | G959, M4802 | Spinal stenosis, cervical region | ICD10 | 03162018 | 03072018 | 03102018 | 63081, 22846, 22854, 22855, 22830, 22600, 22614, 22842, 20936, 20930, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 1, 1, 1, 4, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 4, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 03042018 | 2018-03-04T17:35:36+00:00 |  | 000024386-01 | JOE | LUPO | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03032018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305041 | I69322 | Dysarthria following cerebral infarction | ICD10 | 03162018 | 03032018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 03052018 | 2018-03-05T09:32:49+00:00 |  | 000060277-01 | CECIL | HATFIELD JR | SOUTHERN OH MEDICAL CTR | 936402 |  | SOUTHERN OHIO MEDICAL CENTER | 1053342816 | SOUTHERN OHIO MEDICAL CENTER | 928970 | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03022018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305055 | F0391 | Unspecified dementia with behavioral disturbance | ICD10 | 03162018 | 03022018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 03052018 | 2018-03-05T14:13:40+00:00 |  | 000115976-01 | Michael | Clemens | HOSPITALIST MEDICINE PHY | 906496 | VALERIE A | ALIU | 1073692042 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03032018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305115 | J441, R531 | Weakness | ICD10 | 03162018 | 03032018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03052018 | 2018-03-05T17:43:06+00:00 |  | 000029948-01 | MICHAEL | FOSTER | HOCKING VALLEY MED GRP | 904471 | MAX M | HAQUE | 1700884111 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03012018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306015 | F39 | Unspecified mood [affective] disorder | ICD10 | 03162018 | 03012018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03062018 | 2018-03-06T11:37:08+00:00 |  | 000087773-01 | Dorothy | Taylor | GREENE MEM HSP SRVS INC | 901974 | LINDA E | BAILEY | 1972503357 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 03162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03052018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306046 | S82862A | Displaced Maisonneuve's fracture of left leg, init | ICD10 | 03162018 | 03052018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03062018 | 2018-03-06T08:22:54+00:00 |  | 000105656-01 | Robert | Doyle | ALLIANCE PHYSICIANS INC | 902320 | CEFERINO J | CATA | 1306815808 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03052018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306058 | I481 | Persistent atrial fibrillation | ICD10 | 03162018 | 03052018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03082018 | 2018-03-08T15:22:06+00:00 |  | 000055818-01 | Madonna | Hatfield | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03162018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03142018 | 03152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309006 | M1712, M25562 | Pain in left knee | ICD10 | 03162018 | 03142018 | 03152018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03132018 | 2018-03-13T09:40:01+00:00 |  | 000052774-01 | MARJORIE | HALL | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313053 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 03162018 | 03122018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03132018 | 2018-03-13T16:03:54+00:00 |  | 000051288-01 | LEROY | CARTER JR | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162018 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 03122018 | 03152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313089 | N359, R319 | Hematuria, unspecified | ICD10 | 03162018 | 03122018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03142018 | 2018-03-14T10:34:59+00:00 |  | 000085598-01 | David | Willison | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314030 | K430 | Incisional hernia with obstruction, without gangrene | ICD10 | 03162018 | 03132018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01302018 | 2018-01-30T09:59:03+00:00 |  | 000108444-01 | James | Potter | MIAMI VALLEY HSPISTS GRP | 919535 | SUDHIR D | DHOBALE | 1124294988 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 03162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01292018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180206155295.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130069 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03162018 | 01292018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02192018 | 2018-02-19T09:05:00+00:00 |  | 000077916-01 | Richard | Johnson | ALLIANCE PHYSICIANS INC | 931507 | RICHARD J | GORMAN JR | 1235475476 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03162018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219030 | M4802 | Spinal stenosis, cervical region | ICD10 | 03162018 | 03132018 | 03142018 | 22551, 22845, 22853, 22552 | ADDL NECK SPINE FUSION | CPT | 1, 1, 1, 2 | 1, 1, 1, 2 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02282018 | 2018-02-28T08:38:36+00:00 |  | 000109863-01 | Myra | Carlos | MOUNT CARMEL HLTH SYS | 906771 | KRISTINE D | SLAM | 1396917274 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03142018 | 03152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228018 | C50912 | Malignant neoplasm of unspecified site of left female breast | ICD10 | 03162018 | 03142018 | 03152018 | 19303 | MASTECTOMY SIMPLE COMPLETE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03022018 | 2018-03-02T13:58:37+00:00 |  | 000072068-01 | Henry | Bensman | KHN IP MED | 924381 | CAITLIN K | HARRIS | 1194952879 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03012018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180306159954.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302048 | C719, R42 | Dizziness and giddiness | ICD10 | 03162018 | 03012018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03052018 | 2018-03-05T16:32:56+00:00 |  | 000044242-01 | Rita | Harden | FAIRFIELD HLTHCARE PROFS | 932438 | OMAR | AL-NOURI | 1770742264 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03142018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306006 | I658 | Occlusion and stenosis of other precerebral arteries | ICD10 | 03162018 | 03142018 | 03152018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03062018 | 2018-03-06T12:59:19+00:00 |  | 000064873-01 | DEBRA | DEBOLT- REYNOLDS | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03052018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306075 | L03311, L0390, T814XXA | Infection following a procedure, initial encounter | ICD10 | 03162018 | 03052018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03072018 | 2018-03-07T08:59:35+00:00 |  | 000085014-01 | Christina | Booth | MEDICINE INPATIENT GROUP | 927693 | SIVANI S | PATHMARAJAH | 1336257666 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 03162018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03062018 | 03182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307030 | E876, N390, R531, R740 | Nonspec elev of levels of transamns & lactic acid dehydrgnse | ICD10 | 03162018 | 03062018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03082018 | 2018-03-08T08:38:34+00:00 |  | 000059656-01 | DALE | MARK | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308021 | R4182 | Altered mental status, unspecified | ICD10 | 03162018 | 03072018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03122018 | 2018-03-12T18:11:23+00:00 |  | 000048384-01 | THEODORE | TAYLOR | HOSPITALIST MEDICINE PHY | 942957 | CHARLES F | WARE III | 1528355922 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313021 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 03162018 | 03122018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03142018 | 2018-03-14T14:11:30+00:00 |  | 000105935-01 | Delmer | Lowe | HOSPITALIST MEDICINE PHY | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03132018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314064 | A419, I959, J159, R7989, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 03162018 | 03132018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03152018 | 2018-03-15T13:45:30+00:00 |  | 000005191-01 | ARMINTA | MILLS | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03142018 | 03152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315046 | N210 | Calculus in bladder | ICD10 | 03162018 | 03142018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03132018 | 2018-03-13T10:10:13+00:00 |  | 000070764-01 | Donna | Vest-Barker | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03162018 | Approved | MediGold Essential Care | Fax | ACO - Cardiology | Inpatient | 03112018 | 03152018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313016 | R079, R202 | Paresthesia of skin | ICD10 | 03162018 | 03112018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03132018 | 2018-03-13T09:26:45+00:00 |  | 000007535-01 | ROBERT | HOUSTON | HOSPITALIST MEDICINE PHY | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03112018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313046 | R0600, R079 | Chest pain, unspecified | ICD10 | 03162018 | 03112018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03152018 | 2018-03-15T12:38:53+00:00 |  | 000039710-01 | JAMES | LONEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03162018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 03142018 | 03152018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315028 | R55 | Syncope and collapse | ICD10 | 03162018 | 03142018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
