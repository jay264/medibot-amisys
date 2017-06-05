Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-04_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-04_URGEMERG
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
	And the test pauses for "2" seconds

	And I use the sub class "<sub_class>" to determine what location to enter into the location image
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
| 02132017 | 2017-02-13T08:59:05+00:00 |  | 000037121-01 | NEOLA | TINGLER | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05222017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213091 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06022017 | 05222017 | 05312017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 10 | CPT | C4 |  |  |  | 9.0 |
| 03142017 | 2017-03-14T11:44:19+00:00 |  | 000069542-01 | CYNTHIA | KOHL | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242017 | 04272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170314044 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06022017 | 04242017 | 04272017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 1.0 |
| 04132017 | 2017-04-13T10:43:28+00:00 |  | 000104443-01 | CAROLYN | DOWNING | DR. RICHARD B DARR M.D. | 908667 | RICHARD B | DARR | 1477565133 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04122017 | 04202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414044 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06022017 | 04122017 | 04212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04172017 | 2017-04-17T11:51:20+00:00 |  | 000107738-01 | LORI | CLARK | ALLIANCE PHYSICIANS INC | 947084 | MELISSA | WHITESELL | 1528251113 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 06022017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04162017 | 04212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417111 | F209 | Schizophrenia, unspecified | ICD10 | 06022017 | 04162017 | 04212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04192017 | 2017-04-19T11:20:37+00:00 |  | 000040307-01 | DAVID | ALBRIGHT | WELLSTAR MEDICAL GROUP L | 948436 | BHAVINKUMAR P | PATEL | 1518138429 | WELLSTAR NORTH FULTON HO | 934844 | 1750312997 | WELLSTAR NORTH FULTON HOSPITAL | 1750312997 | Inpatient | IP | Concurrent Review | CONC |  | WELLSTAR NORTH FULTON HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09222016 | 09232016 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419028 | I160 | HYPERTENSIVE URGENCY | ICD10 | 06022017 | 09222016 | 09232016 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04252017 | 2017-04-25T16:20:01+00:00 |  | 000023960-01 | JOHANNES | FABER | OSU HLTH SYS ORTHO ONC P | 936691 | ANDREW H | GLASSMAN | 1629177274 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425132 | T84020A | Dislocation of internal right hip prosthesis, init encntr | ICD10 | 06022017 | 05222017 | 05252017 | 27137 | REVSN TOT HIP ARTHPLSTY ACTBLR COMP | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04272017 | 2017-04-27T15:03:12+00:00 |  | 000109478-01 | Samuel | Sine | KNOX COMMUNITY HSP PHYS | 904047 | KENNETH H | DOOLITTLE | 1609835354 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 06022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05302017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427079 | M1710 | Unilateral primary osteoarthritis, unspecified knee | ICD10 | 06022017 | 05302017 | 06012017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05072017 | 2017-05-07T20:06:17+00:00 |  | 000034063-01 | NATALIA | WYMER | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 06022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05072017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509082 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 06022017 | 05072017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 05112017 | 2017-05-11T15:19:13+00:00 |  | 000070556-01 | Nancy | Styers | SOUTHERN OHIO MEDICAL CENTER | 928970 |  | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 928970 | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512059 | F919 | Conduct disorder, unspecified | ICD10 | 06022017 | 05102017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 05192017 | 2017-05-19T10:42:34+00:00 |  | 000034882-01 | RITA | HEWITT | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05192017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519029 | K5780 | Dvtrcli of intest, part unsp, w perf and abscess w/o bleed | ICD10 | 06022017 | 05192017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 05222017 | 2017-05-22T09:14:01+00:00 |  | 000072757-01 | Garry | Myers | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05212017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522016 | R109 | Unspecified abdominal pain | ICD10 | 06022017 | 05212017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05212017 | 2017-05-21T11:44:53+00:00 |  | 000075537-01 | Roger | Ellis | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05202017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522065 | R0789 | Other chest pain | ICD10 | 06022017 | 05202017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05222017 | 2017-05-22T12:39:08+00:00 |  | 000002335-01 | ERNEST | FEARING | HMP OF OHIO PC | 901443 | OLUGBENGA F | TOLANI | 1255439675 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05202017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522087 | E876, N189, R1013 | Epigastric pain | ICD10 | 06022017 | 05202017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05232017 | 2017-05-23T08:39:17+00:00 |  | 000022526-01 | Betty | Kessler | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05222017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523011 | N289 | Disorder of kidney and ureter, unspecified | ICD10 | 06022017 | 05222017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05232017 | 2017-05-23T16:06:32+00:00 |  | 000059804-01 | MARY | LEACH | S DAYTON ACUTE CARE CNSL | 912896 | RICHARD J | SAXEN | 1790847226 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05222017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524008 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06022017 | 05222017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05242017 | 2017-05-24T11:40:53+00:00 |  | 000097726-01 | Marjorie | Kuntz | ALLIANCE PHYSICIANS INC | 900988 | PETER M | PAVLINA | 1881692341 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05302017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524042 | I350, Z006 | Encntr for exam for nrml cmprsn and ctrl in clncl rsrch prog | ICD10 | 06022017 | 05302017 | 06012017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05242017 | 2017-05-24T13:46:51+00:00 | 025226386-7143 | 000116060-01 | ROBERT | ROWLES JR | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05242017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524047 | N390 | Urinary tract infection, site not specified | ICD10 | 06022017 | 05242017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05252017 | 2017-05-25T09:53:11+00:00 |  | 000027643-01 | ROGER | HILEMON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05242017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525023 | I739, I82409 | Acute embolism and thombos unsp deep vn unsp lower extremity | ICD10 | 06022017 | 05242017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05262017 | 2017-05-26T10:13:30+00:00 |  | 000044852-01 | MARY | BOWERS | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05252017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526025 | I482, I509 | Heart failure, unspecified | ICD10 | 06022017 | 05252017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05262017 | 2017-05-26T10:03:43+00:00 |  | 000099846-01 | Alice | Peak | MERCY HEALTH PHYSICIANS | 921296 | PRASAD G | CHANDRA | 1063468312 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 06022017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05252017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526028 | S728X1A | Oth fracture of right femur, init encntr for closed fracture | ICD10 | 06022017 | 05252017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05262017 | 2017-05-26T11:34:26+00:00 | 025041061-7145 | 000030876-01 | RICHARD | GILL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05252017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526045 | I6202 | Nontraumatic subacute subdural hemorrhage | ICD10 | 06022017 | 05252017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05262017 | 2017-05-26T14:11:41+00:00 | 025745651-7145 | 000066495-01 | ELLEN | VAUGHN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05252017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526058 | R296 | Repeated falls | ICD10 | 06022017 | 05252017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05302017 | 2017-05-30T10:01:19+00:00 |  | 000063513-01 | CECELIA | CISCO | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05282017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530038 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 06022017 | 05282017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05302017 | 2017-05-30T10:21:09+00:00 | 251757097148 | 000029360-01 | ROY | HOFFMAN | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05282017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530046 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06022017 | 05282017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05302017 | 2017-05-30T10:38:54+00:00 | 252584917148 | 000044040-01 | LINDA | JOHNSON | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Reports | ACO -Cardiology | Inpatient | 05292017 | 06012017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530062 | R079 | Chest pain, unspecified | ICD10 | 06022017 | 05292017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05302017 | 2017-05-30T10:49:55+00:00 | 254753427148 | 000002713-01 | William | Popich | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05282017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530068 | D496 | Neoplasm of unspecified behavior of brain | ICD10 | 06022017 | 05282017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05302017 | 2017-05-30T10:57:56+00:00 | 260871677148 | 000036725-01 | ALAN | LUBELL | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05282017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530075 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 06022017 | 05282017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05302017 | 2017-05-30T11:00:33+00:00 |  | 000019057-01 | GLORIA | LYNCH | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05292017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530079 | I201, I214, I259 | Chronic ischemic heart disease, unspecified | ICD10 | 06022017 | 05292017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05302017 | 2017-05-30T11:02:28+00:00 | 026557819-7147 | 000101837-01 | Imogene | Spaulding | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06022017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05262017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530082 | M79659 | Pain in unspecified thigh | ICD10 | 06022017 | 05262017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05302017 | 2017-05-30T11:09:58+00:00 | 25080042719 | 000051903-01 | PEGGY | MOORE | COPC CENTRAL OHIO PRIMAR | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05292017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530089 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 06022017 | 05292017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05302017 | 2017-05-30T11:21:12+00:00 | 250928777147 | 000093803-01 | James | Reeves Jr | HMP OF OHIO PC | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06022017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05272017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530095 | F10231, N179 | Acute kidney failure, unspecified | ICD10 | 06022017 | 05272017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05302017 | 2017-05-30T10:22:32+00:00 |  | 000086123-01 | Katherine | Mcabee | HOSPITALIST ASSOC LLC | 907558 | GEOFFREY M | POLEN | 1942268107 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06032017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05262017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530111 | E876, J9601, N390, R748, R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 06032017 | 05262017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05302017 | 2017-05-30T07:26:14+00:00 |  | 000075799-01 | Patty | Timmons | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05282017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530122 | E872, J189, J438, R0600, R0689, R0902 | Hypoxemia | ICD10 | 06022017 | 05282017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05302017 | 2017-05-30T11:22:26+00:00 |  | 000110968-01 | Willabeth | White | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06032017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05292017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530176 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 06032017 | 05292017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05302017 | 2017-05-30T13:16:24+00:00 |  | 000086842-01 | John | Fuller | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05272017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530199 | R0602 | Shortness of breath | ICD10 | 06022017 | 05272017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05302017 | 2017-05-30T16:10:34+00:00 |  | 000035234-01 | CAROLYN | WILSON | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05312017 | 06022017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531002 | N813 | Complete uterovaginal prolapse | ICD10 | 06022017 | 05312017 | 06022017 | 57425, 57260, 57288, 58570 | TLH, UTERUS 250 G OR LESS,24.03,24.03 | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 05312017 | 2017-05-31T10:16:12+00:00 |  | 000075858-01 | Marilyn | Slusher | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | PROVIDER, UNKNOWN | 999999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient | IP | Concurrent Review | CONC | UNKNOWN | PROVIDER | 06022017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05272017 | 05282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531039 | H539 | Unspecified visual disturbance | ICD10 | 06022017 | 05272017 | 05282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06022017 | 2017-06-02T08:04:57+00:00 |  | 000103031-01 | Terry | Carrico | SCIOTO VALLEY UROLOGY IN | 946370 | MICHAEL C | SWEENEY | 1396943114 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06012017 | 06022017 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602002 | N210, R9720 | ELEVATED PROSTATE SPECIFIC ANTIGEN [PSA] | ICD10 | 06022017 | 06012017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06022017 | 2017-06-02T09:53:16+00:00 | 025696775-7145 | 000089529-01 | Lynne-Reed | Carter | COPC CENTRAL OHIO PRIMAR | 907773 | BRYAN A | SAULS | 1417173907 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06022017 | Approved | MediGold Essential Care | EMR | EIS | Inpatient | 06012017 | 06022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602023 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 06022017 | 06012017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06022017 | 2017-06-02T15:26:59+00:00 |  | 000064139-01 | SHIRLEY | MOORE | OHIOHEALTH PHYS GRP | 943489 | HAZEM | NASSAR | 1740412246 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 06022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05312017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602076 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 06022017 | 05312017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05312017 | 2017-05-31T13:11:48+00:00 |  | 000010580-01 | FRED | THOMAS | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06022017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 06022017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170531069 | I63512, R413 | Other amnesia | ICD10 | 06022017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 06012017 | 2017-06-01T15:46:22+00:00 |  | 000049834-01 | CAROL | THOMPSON | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06022017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 06022017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170601074 | E6601, I10, M1990, Z96649 | Presence of unspecified artificial hip joint | ICD10 | 06022017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
