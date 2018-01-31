Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-30_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-30_URGEMERG
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
| 01242018 | 2018-01-24T18:54:42+00:00 |  | 000111992-01 | James | Richmond | MOUNT CARMEL HEALTH SYST | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125004 | S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 01292018 | 01232018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01212018 | 2018-01-21T14:13:57+00:00 |  | 000069388-01 | MICKEY | CHALFAN | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01202018 | 01262018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122041 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 01292018 | 01202018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01222018 | 2018-01-22T10:16:23+00:00 |  | 000116295-01 | BRUCE | DEAN | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01212018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122095 | K869 | Disease of pancreas, unspecified | ICD10 | 01292018 | 01212018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01242018 | 2018-01-24T16:19:25+00:00 |  | 000039290-01 | MILDRED | BELLEW | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125002 | K8020, R109 | Unspecified abdominal pain | ICD10 | 01292018 | 01232018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01032018 | 2018-01-03T10:22:18+00:00 |  | 000099155-01 | David | Baisden | COLON & RECTAL SURG INC | 935327 | JASWANT | MADHAVAN | 1790785897 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01302018 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 01242018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103074 | K5732, K624 | Stenosis of anus and rectum | ICD10 | 01302018 | 01242018 | 01292018 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 01112018 | 2018-01-11T14:17:15+00:00 |  | 000028710-01 | JACQUELINE | KLINE | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 01302018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 01112018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111069 | F319 | Bipolar disorder, unspecified | ICD10 | 01302018 | 01112018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 01152018 | 2018-01-15T13:17:00+00:00 |  | 000019581-01 | GERALD | FIBER | MOUNT CARMEL HLTH PRVDRS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01172018 | 01272018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115122 | I70221 | Athscl native arteries of extremities w rest pain, right leg | ICD10 | 01302018 | 01172018 | 01272018 | 35566 | FEMORAL GRAFT BELOW TRIFURCATION | CPT | 1 | 1 | Approved | 11 | CPT | C4 |  |  |  | 10.0 |
| 01162018 | 2018-01-16T13:22:59+00:00 |  | 000103174-01 | Mary | Fiorilli | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 01302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01162018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116065 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 01302018 | 01162018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01112018 | 2018-01-11T08:30:33+00:00 |  | 000060558-01 | LINDA | MOORE | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01262018 | 01292018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111016 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01302018 | 01262018 | 01292018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 01182018 | 2018-01-18T15:06:34+00:00 |  | 000111409-01 | John | Mason Jr | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01192018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118079 | M4800 | Spinal stenosis, site unspecified | ICD10 | 01302018 | 01192018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01222018 | 2018-01-22T09:16:33+00:00 |  | 000043006-01 | RUTH | GRAHAM | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01202018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122055 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01302018 | 01202018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01222018 | 2018-01-22T13:23:20+00:00 |  | 000044963-01 | VIRGINIA | THIMMES | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01202018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122137 | R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 01302018 | 01202018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01232018 | 2018-01-23T17:48:10+00:00 |  | 000029708-01 | JERALD | MCKENZIE | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01222018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124016 | K5669, R591 | Generalized enlarged lymph nodes | ICD10 | 01302018 | 01222018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01242018 | 2018-01-24T09:33:31+00:00 |  | 000034531-01 | INGRID | ROBB | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124022 | C3490, D6489, I639, J159, R4182 | Altered mental status, unspecified | ICD10 | 01292018 | 01232018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01242018 | 2018-01-24T15:07:06+00:00 |  | 000031913-01 | CAROLYN | WILSON | SOUND INPATIENT PHYS OF | 935011 | JAY M | WALLIN | 1528090768 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01302018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 01232018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124068 | A419 | Sepsis, unspecified organism | ICD10 | 01302018 | 01232018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01252018 | 2018-01-25T09:33:31+00:00 |  | 000118960-01 | Debra | Lester | MOUNT CARMEL EAST PHYS | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01292018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01242018 | 01262018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125032 | K819, K859 | Acute pancreatitis, unspecified | ICD10 | 01292018 | 01242018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01252018 | 2018-01-25T11:56:02+00:00 |  | 000054873-01 | THELMA | PETERS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125049 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 01292018 | 01242018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12282017 | 2017-12-28T12:48:49+00:00 |  | 000115630-01 | Jeffery | Wright | NORTH CEN OHIO FAM CARE | 916037 | CHRISTOPHER D | MCCLUNG | 1285804252 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01302018 | Approved | MediGold Essential Care | Fax | Secondary Only | Inpatient | 01302018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171228053 | C61, N3946 | Mixed incontinence | ICD10 | 01302018 |  |  | 53446, 54415, 53215, 53415, 51610, 74451, 15240 | 20 SQ CM FUL THKNS GR FC,AX,GEN,H,F | CPT | 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied | 61, 61, 61, 61, 61, 61, 61 | CPT | C4 |  |  | No child records to display. |  |
| 01082018 | 2018-01-08T16:17:48+00:00 |  | 000068974-01 | PHYLLIS | LOGUE | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109011 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 01302018 | 01102018 | 01152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01082018 | 2018-01-08T15:15:53+00:00 |  | 000092408-01 | Joseph | Schultz | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01062018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109020 | I214, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01302018 | 01062018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 01092018 | 2018-01-09T11:48:38+00:00 |  | 000119757-01 | DAVID | PINKERTON | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01122018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110101 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 01302018 | 01122018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 01152018 | 2018-01-15T09:41:05+00:00 |  | 000040909-01 | NAOMI | KNOTTS | HOSPITALIST MEDICINE PHY | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01142018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115085 | R0602 | Shortness of breath | ICD10 | 01302018 | 01142018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01162018 | 2018-01-16T10:30:44+00:00 |  | 000030949-01 | RICHARD | CONRAD | DENISON MEDICAL GROUP LL | 940020 | ALI R | IMANI | 1285921858 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01162018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116030 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01302018 | 01162018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01162018 | 2018-01-16T11:17:45+00:00 |  | 000110073-01 | RONALD | WIDMEYER | HOSPITALIST MEDICINE PHY | 929478 | BRIAN | KEEGAN | 1225156045 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 01302018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01152018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116057 | I214, R079 | Chest pain, unspecified | ICD10 | 01302018 | 01152018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01162018 | 2018-01-16T14:08:10+00:00 |  | 000118395-01 | KIMBERLY | BRADLEY WOOLEY | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01152018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116073 | I5032, R4182, I161 | HYPERTENSIVE EMERGENCY | ICD10 | 01302018 | 01152018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01182018 | 2018-01-18T10:49:56+00:00 |  | 000085530-01 | John | Park | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01172018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118042 | I959, J189, R197 | Diarrhea, unspecified | ICD10 | 01302018 | 01172018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01182018 | 2018-01-18T12:51:32+00:00 |  | 000048887-01 | SYLVIA | KINNAIRD | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118064 | E876, R4182 | Altered mental status, unspecified | ICD10 | 01302018 | 01182018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 01192018 | 2018-01-19T16:22:35+00:00 |  | 000098464-01 | Brenda | Deaton | THE CHRIST HSP MED ASSOC | 947689 | KENNETH T | HEBERLING | 1669465423 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 01302018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01192018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119088 | N179 | Acute kidney failure, unspecified | ICD10 | 01302018 | 01192018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01222018 | 2018-01-22T12:22:11+00:00 |  | 000093333-01 | Anna | Kreutz | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01192018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122109 | R0902, R6521 | Severe sepsis with septic shock | ICD10 | 01302018 | 01192018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01242018 | 2018-01-24T16:03:08+00:00 |  | 000061755-01 | LINDA | WAUGH | SOUND INPATIENT PHYS OF | 904570 | SURESH K | YADAV | 1649288465 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125001 | N289, R531 | Weakness | ICD10 | 01302018 | 01242018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01252018 | 2018-01-25T08:25:54+00:00 |  | 000028125-01 | HAROLD | NEELY | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125012 | C9000, R296 | Repeated falls | ICD10 | 01302018 | 01242018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01252018 | 2018-01-25T13:31:16+00:00 |  | 000099386-01 | Doris | Moore | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125072 | R0789 | Other chest pain | ICD10 | 01302018 | 01252018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01262018 | 2018-01-26T09:13:03+00:00 |  | 000036834-01 | CLARA | CUNNINGHAM | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126016 | R109 | Unspecified abdominal pain | ICD10 | 01302018 | 01252018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01262018 | 2018-01-26T09:26:56+00:00 |  | 000076319-01 | Charles | Byrne | HOSPITALIST MEDICINE PHY | 930025 | ALEX | ALBUQUERQUE | 1356651780 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 01302018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01252018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126022 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 01302018 | 01252018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01262018 | 2018-01-26T10:56:12+00:00 |  | 000117121-01 | Irene | Easton | HOSPITALIST MEDICINE PHY | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 01302018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01262018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126030 | R079, I160 | HYPERTENSIVE URGENCY | ICD10 | 01302018 | 01262018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01262018 | 2018-01-26T11:33:12+00:00 |  | 000070756-01 | Robert | Wilson | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126035 | M6281 | Muscle weakness (generalized) | ICD10 | 01302018 | 01252018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01262018 | 2018-01-26T15:01:06+00:00 |  | 000078295-01 | Mary | Rogers | CENTRAL OHIO SURG ASSOC | 917573 | STEVEN C | REITZ | 1417116880 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01262018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126066 | K5669 | Other intestinal obstruction | ICD10 | 01302018 | 01262018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01282018 | 2018-01-28T09:48:43+00:00 |  | 000072065-01 | VICKIE | RAMSEY | CLARK & DAUGHTREY MED GR | 915421 | JIMMY | CHAN-PONG | 1144224718 | LAKELAND REGIONAL HEALTH SYSTEMS INC | 930144 | 1497748743 | LAKELAND REGIONAL HEALTH SYSTEMS INC | 1497748743 | Inpatient | IP | Concurrent Review | CONC |  | LAKELAND REGIONAL HEALTH SYSTEMS INC | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129013 | I639 | Cerebral infarction, unspecified | ICD10 | 01302018 | 01242018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01272018 | 2018-01-27T15:08:48+00:00 |  | 000019395-01 | WILLIAM | ROWLAND | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01262018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129038 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 01302018 | 01262018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01152018 | 2018-01-15T09:43:08+00:00 |  | 000000473-01 | SUZANNE | CARR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01132018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115063 | I509 | Heart failure, unspecified | ICD10 | 01302018 | 01132018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 01152018 | 2018-01-15T11:57:07+00:00 |  | 000030862-01 | MARGARET | SEIDENSCHMIDT | MOUNT CARMEL HLTH SYS | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01242018 | 01262018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115120 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 01302018 | 01242018 | 01262018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01192018 | 2018-01-19T09:13:14+00:00 |  | 000072375-01 | Robert | Hankey Jr | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119038 | D6489 | Other specified anemias | ICD10 | 01302018 | 01182018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01192018 | 2018-01-19T15:18:47+00:00 |  | 000021759-01 | ROBERT | PARRY | UNIVERSITY CARDIOLOGY | 904566 | MANMOHAN K | KATAPADI | 1528192820 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119080 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 01302018 | 01182018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01242018 | 2018-01-24T09:34:31+00:00 |  | 000097561-01 | Susan | Sidle | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01302018 | Approved | THE TIMKEN COMPANY | Fax | ACO - Atrial Fib | Inpatient | 01232018 | 01262018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124028 | I509 | Heart failure, unspecified | ICD10 | 01302018 | 01232018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01252018 | 2018-01-25T10:11:25+00:00 |  | 000095030-01 | Betty | Verity | MOUNT CARMEL HLTH SYS | 925417 | CRAIG | DIMITRIS | 1801045364 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01302018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 01242018 | 01262018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125035 | R296, S42401A | Unsp fracture of lower end of right humerus, init | ICD10 | 01302018 | 01242018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01252018 | 2018-01-25T15:01:19+00:00 |  | 000100723-01 | John | Flood | SOUND INPATIENT PHYS OF | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01242018 | 01272018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125086 | K5660 | Unspecified intestinal obstruction | ICD10 | 01302018 | 01242018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01252018 | 2018-01-25T15:55:10+00:00 |  | 000065469-01 | VIRGINIA | POLLOCK | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 01262018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125090 | K8080 | Other cholelithiasis without obstruction | ICD10 | 01302018 | 01232018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01262018 | 2018-01-26T08:40:32+00:00 |  | 000043177-01 | ROBERT | DRUGGAN | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01302018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01252018 | 03272018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126008 | R1011 | Right upper quadrant pain | ICD10 | 01302018 | 01252018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01262018 | 2018-01-26T14:15:23+00:00 |  | 000051997-01 | John | Swinehart | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01252018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126059 | I639 | Cerebral infarction, unspecified | ICD10 | 01302018 | 01252018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01292018 | 2018-01-29T10:37:01+00:00 |  | 000024491-01 | SHERMAN | ADKINS | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01262018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129076 | K922, R079 | Chest pain, unspecified | ICD10 | 01302018 | 01262018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01292018 | 2018-01-29T13:58:16+00:00 |  | 000075579-01 | Velma | Moran | KNOX COMMUNITY HOSP GRP | 937051 | SCOTT D | BARKIN | 1841282969 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01262018 | 01272018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129102 | N319 | Neuromuscular dysfunction of bladder, unspecified | ICD10 | 01302018 | 01262018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01302018 | 2018-01-30T09:46:09+00:00 |  | 000103523-01 | RICHARD | BLAKEY | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01282018 | 01292018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130033 | K352 | Acute appendicitis with generalized peritonitis | ICD10 | 01302018 | 01282018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01292018 | 2018-01-29T16:52:00+00:00 |  | 000085362-01 | Mae | Bradley | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01282018 | 01302018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130056 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01302018 | 01282018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
