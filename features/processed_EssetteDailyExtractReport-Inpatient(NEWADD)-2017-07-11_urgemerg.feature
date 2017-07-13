Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-11_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-11_URGEMERG
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
| 05172017 | 2017-05-17T12:33:04+00:00 |  | 000082339-01 | Garry | Mills | KNOX COMMUNITY HSP PHYS | 909698 | GREGORY J | CUSH | 1376579243 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06192017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517044 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07112017 | 06192017 | 06212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05232017 | 2017-05-23T16:09:53+00:00 |  | 000114769-01 | John | Lewis | COLON & RECTAL SURG INC | 937012 | KARAMJIT S | KHANDUJA | 1093707960 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07072017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524001 | C20 | Malignant neoplasm of rectum | ICD10 | 07112017 | 07072017 | 07102017 | 44145 | COLECTOMY C COLOPROCTOSTOMY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06012017 | 2017-06-01T15:14:39+00:00 |  | 000001747-01 | NORMA | FINIGAN | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601069 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07112017 | 06302017 | 07112017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 12 | CPT | C4 |  |  |  | 11.0 |
| 06062017 | 2017-06-06T14:19:07+00:00 |  | 000014991-01 | VIOLA | MAHANEY | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606077 | C541 | Malignant neoplasm of endometrium | ICD10 | 07112017 | 07102017 | 07112017 | 58150 | TOTAL HYST W/WO RMVL TUBES OR OVARY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06072017 | 2017-06-07T17:26:26+00:00 |  | 000108861-01 | Gary | Clark | HEALTHSOUTH REHABILITATI | 947611 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | HEALTHSOUTH REHABILITATI | 947611 | 1538440904 | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | HEALTHSOUTH REHABILITATION HOSPITAL | 07112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06112017 | 07052017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608002 | L639 | Alopecia areata, unspecified | ICD10 | 07112017 | 06112017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 23.0 |
| 06082017 | 2017-06-08T15:33:14+00:00 |  | 000111463-01 | BARBARA | FLOYD | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | SOUTHERN OH MEDICAL CTR | 936402 | 1053342816 | SOUTHERN OHIO MEDICAL CENTER | 1053342816 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 07112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06222017 | 06262017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608072 | R911 | Solitary pulmonary nodule | ICD10 | 07112017 | 06222017 | 06262017 | 32663, 32482, 39400 | MEDIASTINOSCOPY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 06092017 | 2017-06-09T11:01:11+00:00 |  | 000106363-01 | Arthur | Williams | ALPHA MEDICAL SRVS LLC | 913771 | ELIO | VENTRESCA | 1811904139 | SELECT SPECIALTY HOSPITA | 900155 | 1871592386 | SELECT SPECIALTY HOSPITAL COLUMBUS | 1871592386 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL COLUMBUS | 07112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06112017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609048 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 07112017 | 06112017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06122017 | 2017-06-12T09:51:12+00:00 |  | 000115494-01 | ROSINA | COOK | ALLIANCE PHYSICIANS INC | 900988 | PETER M | PAVLINA | 1881692341 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06212017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612043 | I350, I359 | Nonrheumatic aortic valve disorder, unspecified | ICD10 | 07112017 | 06212017 | 06272017 | 33405 | REPLACEMENT AORTIC VALVE | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 06122017 | 2017-06-12T09:59:05+00:00 |  | 000080214-01 | Gale | Ellis | MARIETTA HLTH CARE PHYS | 930519 | EMMANUEL A | AGABA | 1851698633 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07112017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06092017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612106 | S2239XA, S8990XA, T1490 | Injury, unspecified | ICD10 | 07112017 | 06092017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06122017 | 2017-06-12T10:40:26+00:00 |  | 000077436-01 | Frederick | Abrams | HMP OF OHIO PC | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06112017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612135 | K859 | Acute pancreatitis, unspecified | ICD10 | 07112017 | 06112017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06162017 | 2017-06-16T08:11:22+00:00 |  | 000076655-01 | Ruth | Mcadams | MERCY HEALTH PHYSICIANS | 921760 | FRANCIS X | FLOREZ | 1780630053 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 07112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07052017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616007 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07112017 | 07052017 | 07072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 1.0 |
| 06162017 | 2017-06-16T08:56:11+00:00 |  | 000106575-01 | Doris | Norrish | MERCY HEALTH PHYSICIANS | 921760 | FRANCIS X | FLOREZ | 1780630053 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 07112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07032017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616012 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07112017 | 07032017 | 07052017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 1.0 |
| 06162017 | 2017-06-16T13:08:55+00:00 |  | 000038714-01 | CHARLES | REYNOLDS | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 07102017 | 07112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616048 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07112017 | 07102017 | 07112017 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06192017 | 2017-06-19T16:43:22+00:00 |  | 000100012-01 | James | Scott | MERCY HEALTH PHYSICIANS | 921193 | SAMUEL R | VESTER | 1629008628 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 07112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06222017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620006 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 07112017 | 06222017 | 07072017 | 33430, 33530 | REOPERATION, CORONARY ARTERY BYPASS,MORE THAN 1 MONTH AFTER ORIGINAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 16, 16 | CPT | C4 |  |  |  | 7.0 |
| 06202017 | 2017-06-20T09:06:02+00:00 |  | 000006405-01 | HAROLD | CLASE | HMP OF OHIO PC | 910805 | KANWAR DEEP | SINGH | 1669634473 | GRADY MEMORIAL HOSPITAL | 936495 | 1235174327 | GRADY MEMORIAL HOSPITAL | 1235174327 | Inpatient | IP | Concurrent Review | CONC |  | GRADY MEMORIAL HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06192017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620034 | N390 | Urinary tract infection, site not specified | ICD10 | 07112017 | 06192017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06212017 | 2017-06-21T14:15:14+00:00 |  | 000071851-01 | Julia | Straight | MIAMI VALLEY HSPISTS GRP | 906944 | SIRISHA | GADDIPATI | 1538353412 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06192017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621063 | I509 | Heart failure, unspecified | ICD10 | 07112017 | 06192017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06222017 | 2017-06-22T12:27:52+00:00 |  | 000110636-01 | Jennifer | Preston | PLASTIC SURG INSTITUTE O | 928240 | STEVEN P | SCHMIDT | 1306860002 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 07112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06222017 | 06242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622045 | W540XXA | Bitten by dog, initial encounter | ICD10 | 07112017 | 06222017 | 06242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06232017 | 2017-06-23T16:06:04+00:00 | 017783218-7081 | 000114038-01 | Michael | Bates | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07112017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 07102017 | 07112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623068 | M25512 | Pain in left shoulder | ICD10 | 07112017 | 07102017 | 07112017 | 23472, 23420, 23440, 23030, 23395 | MUSCLE TRNSFR SHLDR UPPER ARM SNGL | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06262017 | 2017-06-26T09:41:58+00:00 |  | 000026229-01 | NORMA | WEIDER | TRAUMA INC | 910892 | URMIL B | PANDYA | 1619137601 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06252017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626075 | G936 | Cerebral edema | ICD10 | 07112017 | 06252017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06272017 | 2017-06-27T09:51:18+00:00 | 016917963-7152 | 000041861-01 | JOHN | PINKERTON | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627040 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07112017 | 07102017 | 07112017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06272017 | 2017-06-27T08:45:24+00:00 |  | 000104963-01 | RICHARD | WARD SR | OHIOHEALTH PHYS GRP | 901740 | NICHOLAS | PARKINSON | 1700860095 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06272017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627049 | E875 | Hyperkalemia | ICD10 | 07112017 | 06272017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06272017 | 2017-06-27T14:44:35+00:00 |  | 000115195-01 | JOANNE | LAUER | MERCY HEALTH PHYSICIANS | 921121 | BRIAN | SHIFF | 1851378301 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07032017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627090 | K635 | Polyp of colon | ICD10 | 07112017 | 07032017 | 07082017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 1.0 |
| 06292017 | 2017-06-29T09:33:21+00:00 | 252562427179 | 000041142-01 | BEVERLY | YOUNKIN | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06282017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629016 | I639 | Cerebral infarction, unspecified | ICD10 | 07112017 | 06282017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 06292017 | 2017-06-29T09:59:23+00:00 |  | 000015877-01 | SHIRLEY | ROSS | OHIOHEALTH PHYS GRP | 948004 | STEPHEN E | AUCIELLO | 1689916868 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629030 | R0602 | Shortness of breath | ICD10 | 07112017 | 06282017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T10:00:59+00:00 |  | 000103473-01 | Jill | Reeves | COPC CENTRAL OHIO PRIMAR | 914691 | JOANNA L | FAILOR | 1922217686 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629032 | R202 | Paresthesia of skin | ICD10 | 07112017 | 06282017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06292017 | 2017-06-29T07:31:51+00:00 |  | 000095111-01 | James | Hammerly | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06292017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629034 | F1010 | Alcohol abuse, uncomplicated | ICD10 | 07112017 | 06292017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06292017 | 2017-06-29T10:20:08+00:00 |  | 000089754-01 | Linda | Ward | PULMONARY MED OF DAYTON | 912107 | GNANAM | THAMBIPILLAI | 1255346730 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06282017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629040 | R109 | Unspecified abdominal pain | ICD10 | 07112017 | 06282017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06302017 | 2017-06-30T07:37:41+00:00 |  | 000077925-01 | Edward | Rhoades | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630010 | J189 | Pneumonia, unspecified organism | ICD10 | 07112017 | 06302017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07032017 | 2017-07-03T11:38:28+00:00 |  | 000077539-01 | Earl | Hutchinson | MARIETTA HLTH CARE PHYS | 924605 | CHRISTOPHER A | COCKERHAM | 1821020918 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07112017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07022017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703107 | D649, I959, R791 | Abnormal coagulation profile | ICD10 | 07112017 | 07022017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07042017 | 2017-07-04T08:59:58+00:00 |  | 000063544-01 | JOAN | WOODS | OHIOHEALTH PHYS GRP | 931989 | VICTOR M | AWUOR | 1316110604 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07032017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705018 | S12100A | Unsp disp fx of second cervical vertebra, init for clos fx | ICD10 | 07112017 | 07032017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07052017 | 2017-07-05T10:14:33+00:00 | 178737867185 | 000039266-01 | VIRGINIA | MILLER | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07042017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705020 | I639 | Cerebral infarction, unspecified | ICD10 | 07112017 | 07042017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07052017 | 2017-07-05T11:05:13+00:00 | 253040437185 | 000046755-01 | JANET | WARD | MOUNT CARMEL HLTH SYS | 917573 | STEVEN C | REITZ | 1417116880 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07042017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705037 | K810, R109 | Unspecified abdominal pain | ICD10 | 07112017 | 07042017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07052017 | 2017-07-05T13:43:48+00:00 |  | 000117690-01 | Elinda | Merrill | SOUND INPATIENT PHYS OF | 930101 | MICHAEL J | CROTTY | 1215199559 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 07112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07032017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706012 | E860, E872, I10, R109 | Unspecified abdominal pain | ICD10 | 07112017 | 07032017 | 07092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07062017 | 2017-07-06T10:52:08+00:00 | 260359077187 | 000028379-01 | WILLIAM | CAMBONI | HMP OF OHIO PC | 942986 | RAMACHANDER R | ELURI | 1790036770 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07062017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706055 | I959 | Hypotension, unspecified | ICD10 | 07112017 | 07062017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07062017 | 2017-07-06T13:44:04+00:00 |  | 000099991-01 | Rachel | Cook | OHIOHEALTH PHYS GRP | 932197 | MICHELLE Y | KINCAID | 1396943601 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07052017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706087 | S22082B | Unstable burst fracture of T11-T12 vertebra, init for opn fx | ICD10 | 07112017 | 07052017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07062017 | 2017-07-06T15:07:32+00:00 | 252036037187 | 000077350-01 | Leslie | Mcguire | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07062017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706096 | J159 | Unspecified bacterial pneumonia | ICD10 | 07112017 | 07062017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07072017 | 2017-07-07T08:30:49+00:00 | 261011297187 | 000078710-01 | George | Bandy | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07062017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707010 | J159 | Unspecified bacterial pneumonia | ICD10 | 07112017 | 07062017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07072017 | 2017-07-07T09:46:48+00:00 |  | 000117652-01 | Richard | Patterson | TAHBAZ, MAHYAR | 925137 | MAHYAR | TAHBAZ | 1770583031 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient | IP | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 07112017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07062017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707028 | S72146B | Nondisp intertroch fx unsp femur, init for opn fx type I/2 | ICD10 | 07112017 | 07062017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07072017 | 2017-07-07T10:38:28+00:00 |  | 000041649-01 | Milene | Arbaugh | RIVERSIDE TRAUMA SURGEON | 915688 | KWANG | SUH | 1679631170 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07062017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707034 | J189 | Pneumonia, unspecified organism | ICD10 | 07112017 | 07062017 | 07092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07072017 | 2017-07-07T10:43:01+00:00 |  | 000090368-01 | JUDITH | SPIRES | OHIOHEALTH PHYS GRP | 905892 | ANTHONY T | CHAPEKIS | 1558366906 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07112017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07042017 | 07092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707038 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 07112017 | 07062017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07072017 | 2017-07-07T10:44:32+00:00 |  | 000022011-01 | RAYMOND | DETTY | OHIOHEALTH PHYS GRP | 943241 | THANH V | NGUYEN | 1073755294 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707039 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 07112017 | 07072017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07072017 | 2017-07-07T10:46:04+00:00 |  | 000023045-01 | NORMAN | SMITH | CEN OH UROLOGY GRP INC | 908504 | WILLIAM E | BLOCH | 1023013505 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707040 | N132 | Hydronephrosis with renal and ureteral calculous obstruction | ICD10 | 07112017 | 07072017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07072017 | 2017-07-07T11:47:01+00:00 | 025018020-7178 | 000081310-01 | Ross | Casmo | ORTHO & NEURO CONSULTS I | 902431 | YING H | CHEN | 1629052782 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07112017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 07102017 | 07112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707044 | M4712, M47812, M4802, M5020 | Other cervical disc displacement, unsp cervical region | ICD10 | 07112017 | 07102017 | 07112017 | 22585, 22552, 22845, 22853, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 07072017 | 2017-07-07T13:38:31+00:00 |  | 000070176-01 | Sue | Collins | HMP OF OHIO PC | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07052017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707055 | R7881 | Bacteremia | ICD10 | 07112017 | 07052017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07102017 | 2017-07-10T09:29:51+00:00 | 250269887188 | 000090286-01 | Daniel | Dublin | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07072017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710019 | C159, J90 | Pleural effusion, not elsewhere classified | ICD10 | 07112017 | 07072017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T10:37:34+00:00 | 250877097189 | 000022634-01 | Carole | Patmiou | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07112017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07072017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710044 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 07112017 | 07072017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T11:26:49+00:00 | 252608177189 | 000083212-01 | Michael | Palacky | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 07082017 | 07112017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710060 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 07112017 | 07082017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07072017 | 2017-07-07T12:12:45+00:00 |  | 000087526-01 | Thomas | Ricketts | MIDWEST NEPHROLOGY & HYP | 902396 | PIUS | KURIAN | 1174516652 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07112017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170707051 | N184, S72002A, Z131 | Encounter for screening for diabetes mellitus | ICD10 | 07112017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07102017 | 2017-07-10T12:59:57+00:00 |  | 000048585-01 | ROBERT | KEY | THE OH STATE UNIVERSITY HSP REHAB | 936564 |  | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 936564 | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HSP REHAB | 07112017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170710089 | T1490 | Injury, unspecified | ICD10 | 07112017 | 07102017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
