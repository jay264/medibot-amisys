Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-10_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-10_OBS
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
	And in the "Certification" page I enter "OB" into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
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
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what count to enter into the count image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "prov" image
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
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And I edit myself if I am a NONPAR
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically

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
| 01082018 | 2018-01-08T11:12:07+00:00 |  | 000066350-01 | ISABELLE | BUONI | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01072018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108054 | E876, N179, W010XXA | Fall same lev from slip/trip w/o strike against object, init | ICD10 | 01102018 | 01072018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12292017 | 2017-12-29T16:24:01+00:00 |  | 000054635-01 | IMOGENE | COLBURN | APOGEE MED GRP OHIO INC | 943520 | DALIA M | DAWOUD | 1508026386 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12262017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102021 | R110, R42 | Dizziness and giddiness | ICD10 | 01102018 | 12262017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01092018 | 2018-01-09T14:02:46+00:00 |  | 000114564-01 | Carl | Heskett | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01082018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109127 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 01102018 | 01082018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01092018 | 2018-01-09T14:44:22+00:00 |  | 000098656-01 | Barbara | Hensley | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01082018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109132 | R079 | Chest pain, unspecified | ICD10 | 01102018 | 01082018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12282017 | 2017-12-28T14:01:39+00:00 |  | 000087849-01 | Paul | Dilliard | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12272017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228059 | T85398A | Mech compl of ocular prosth dev/grft, init | ICD10 | 01102018 | 12272017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12192017 | 2017-12-19T08:32:56+00:00 |  | 000083531-01 | Floyd | George | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01102018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12172017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219081 | R109 | Unspecified abdominal pain | ICD10 | 01102018 | 12172017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12202017 | 2017-12-20T08:18:09+00:00 |  | 000117472-01 | GLORIA | BROWN | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01102018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220012 | R079 | Chest pain, unspecified | ICD10 | 01102018 | 12192017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12272017 | 2017-12-27T11:17:28+00:00 |  | 000116197-01 | SHARON | COOPER | MIAMI VALLEY HSPISTS GRP | 929284 | ESHETU | OBOLE | 1629392501 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 01102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12262017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227071 | I25119 | Athscl heart disease of native cor art w unsp ang pctrs | ICD10 | 01102018 | 12262017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01082018 | 2018-01-08T11:44:40+00:00 |  | 000103852-01 | PATRICIA | SELLMAN | DARR, RICHARD B | 908667 | RICHARD B | DARR | 1477565133 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01062018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108100 | D649, J1100, R195, R5383 | Other fatigue | ICD10 | 01102018 | 01062018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01082018 | 2018-01-08T07:57:42+00:00 |  | 000079956-01 | Minerva | Dyson | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 01102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01052018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108025 | N390 | Urinary tract infection, site not specified | ICD10 | 01102018 | 01052018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01042018 | 2018-01-04T11:42:16+00:00 |  | 000119691-01 | James | Clark | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01102018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 01032018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104068 | A419 | Sepsis, unspecified organism | ICD10 | 01102018 | 01032018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12292017 | 2017-12-29T10:10:39+00:00 |  | 000091596-01 | William | Schroeder | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 01102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12282017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229049 | E160, T383X5A | Adverse effect of insulin and oral hypoglycemic drugs, init | ICD10 | 01102018 | 12282017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01052018 | 2018-01-05T10:26:23+00:00 |  | 000112527-01 | RICHARD | SWARTZ | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105034 | R109 | Unspecified abdominal pain | ICD10 | 01102018 | 01042018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01082018 | 2018-01-08T11:31:38+00:00 | 257323158007 | 000015484-01 | ARTHUR | NEWMAN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01072018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108053 | A09 | Infectious gastroenteritis and colitis, unspecified | ICD10 | 01102018 | 01072018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01102018 | 2018-01-10T10:47:47+00:00 |  | 000078922-01 | Gary | Grizzle | MOUNT CARMEL HLTH PRVDRS | 936395 | THOMAS S | FANNING | 1013970581 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01092018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110047 | I259 | Chronic ischemic heart disease, unspecified | ICD10 | 01102018 | 01092018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01082018 | 2018-01-08T11:23:17+00:00 |  | 000049214-01 | MARY | RODGERS | LICKING MEM HLTH PROF | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01032018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108092 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01102018 | 01032018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01042018 | 2018-01-04T09:37:33+00:00 |  | 000090316-01 | Douglas | Wasson | KETTERING MEDICAL CENTER SYCAMORE | 905903 |  | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 01102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01032018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104076 | J069 | Acute upper respiratory infection, unspecified | ICD10 | 01102018 | 01032018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T15:02:41+00:00 |  | 000066283-01 | Patricia | Mccurdy | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12242017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227003 | J40, R000, R509 | Fever, unspecified | ICD10 | 01102018 | 12242017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01052018 | 2018-01-05T05:27:45+00:00 |  | 000118532-01 | Sherry | Waddle | MERCY HEALTH PHYSICIANS | 921121 | BRIAN | SHIFF | 1851378301 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 01102018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 01042018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105025 | K819 | Cholecystitis, unspecified | ICD10 | 01102018 | 01042018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T10:57:06+00:00 |  | 000096855-01 | Nancy | Marcum | S DAYTON ACUTE CARE CNSL | 903782 | SIVAKRISHNA | BHANDARU | 1629017884 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01032018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104059 | S8390XA | Sprain of unspecified site of unspecified knee, init encntr | ICD10 | 01102018 | 01032018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01082018 | 2018-01-08T11:44:42+00:00 |  | 000104082-01 | TERRY | NEWMAN | ADENA MEDICAL GROUP LLC | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 01102018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 01072018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108101 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 01102018 | 01072018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12042017 | 2017-12-04T12:55:01+00:00 |  | 000090559-01 | WILDA | SCHEFFEL | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 01102018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 12042017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204137 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 01102018 | 12042017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01102018 | 2018-01-10T14:51:31+00:00 |  | 000095161-01 | Karen | Palonis | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01092018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110092 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01102018 | 01092018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12292017 | 2017-12-29T13:56:11+00:00 |  | 000107264-01 | James | Gifford | THE CHRIST HOSPITAL EDUC | 924204 | DOUGLAS H | BAUMAN | 1285759449 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 01102018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12292017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229079 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 01102018 | 12292017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01022018 | 2018-01-02T14:52:19+00:00 |  | 000099743-01 | Arthur | Moore | ALLIANCE PHYSICIANS INC | 939986 | CHRISTOPHER R | SCHNEIDER | 1588689475 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12302017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103045 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 01102018 | 12302017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
