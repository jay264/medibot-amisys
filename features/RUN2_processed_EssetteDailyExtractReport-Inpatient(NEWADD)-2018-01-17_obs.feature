Feature: RUN2 Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-17_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: RUN2_EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-17_OBS
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
| 01152018 | 2018-01-15T15:05:10+00:00 |  | 000083445-01 | Betty | Dadum | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01122018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115149 | M6281 | Muscle weakness (generalized) | ICD10 | 01172018 | 01122018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01102018 | 2018-01-10T12:23:49+00:00 |  | 000046622-01 | ROBERT | PARRY | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01092018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110062 | I4891, I509, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 01172018 | 01092018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12052017 | 2017-12-05T15:09:28+00:00 |  | 000042968-01 | BARBARA | HALL | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01082018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205093 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01172018 | 01082018 | 01112018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 01112018 | 2018-01-11T14:00:21+00:00 |  | 000023103-01 | LEWIS | LOMAGLIO | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01102018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111064 | N179, R748 | Abnormal levels of other serum enzymes | ICD10 | 01172018 | 01102018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01122018 | 2018-01-12T12:10:41+00:00 |  | 000079105-01 | Georgia | Jones | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01112018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112062 | R0602 | Shortness of breath | ICD10 | 01172018 | 01112018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01122018 | 2018-01-12T14:44:49+00:00 |  | 000115597-01 | Gary | Hill | GENESIS MEDICAL GRP LLC | 912844 | OSHANA | ALAHAKOON | 1285793745 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 01172018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01112018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112090 | J189 | Pneumonia, unspecified organism | ICD10 | 01172018 | 01112018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01102018 | 2018-01-10T09:11:32+00:00 |  | 000106700-01 | Mildred | Karaffa | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01092018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110023 | I4891 | Unspecified atrial fibrillation | ICD10 | 01172018 | 01092018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12202017 | 2017-12-20T08:19:13+00:00 |  | 000038833-01 | HAROLD | SOWERS | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220017 | R079 | Chest pain, unspecified | ICD10 | 01172018 | 12192017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12202017 | 2017-12-20T08:20:17+00:00 |  | 000048895-01 | BARBARA | GRUNKEMEYER | GENERAL SURG ASSOC INC | 910801 | MARGARET S | SAWYER | 1972722494 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220018 | K4031 | Unilateral inguinal hernia, w obst, w/o gangrene, recurrent | ICD10 | 01172018 | 12192017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01102018 | 2018-01-10T17:01:30+00:00 |  | 000004550-01 | DELPHINE | BROBST | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01102018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111013 | L03114 | Cellulitis of left upper limb | ICD10 | 01172018 | 01102018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12202017 | 2017-12-20T08:22:25+00:00 |  | 000009637-01 | RONALD | SMITH | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220023 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01172018 | 12192017 | 12252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12272017 | 2017-12-27T08:03:37+00:00 |  | 000072190-01 | Debra | Meadows | OSU SURGERY LLC | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12262017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227053 | J189 | Pneumonia, unspecified organism | ICD10 | 01172018 | 12262017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12282017 | 2017-12-28T07:43:05+00:00 |  | 000034334-01 | FRANCES | TRIMMER | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12272017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228002 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01172018 | 12272017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01112018 | 2018-01-11T16:03:38+00:00 |  | 000056849-01 | DOYLE | HENSLEY | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01102018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111088 | L0390 | Cellulitis, unspecified | ICD10 | 01172018 | 01102018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01152018 | 2018-01-15T09:37:03+00:00 |  | 000083739-01 | Betty | Baxter | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01142018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115081 | J189, N390 | Urinary tract infection, site not specified | ICD10 | 01172018 | 01142018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01152018 | 2018-01-15T11:50:53+00:00 |  | 000044784-01 | JOANNE | STREIT | LICKING MEM HLTH PROF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01112018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115093 | E860, R55 | Syncope and collapse | ICD10 | 01172018 | 01112018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01162018 | 2018-01-16T10:44:28+00:00 |  | 000121141-01 | SUZANNE | CAVE | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01142018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116036 | N390, R739, S72111A | Disp fx of greater trochanter of right femur, init | ICD10 | 01172018 | 01142018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01152018 | 2018-01-15T11:52:17+00:00 |  | 000004533-01 | WALTER | NADOLSON JR | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01102018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115098 | J209 | Acute bronchitis, unspecified | ICD10 | 01172018 | 01102018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01152018 | 2018-01-15T11:52:25+00:00 |  | 000091704-01 | Lawrence | Fox | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01172018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01112018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115097 | J189 | Pneumonia, unspecified organism | ICD10 | 01172018 | 01112018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10312017 | 2017-10-31T07:16:53+00:00 |  | 000108780-01 | Chuck | Bowman | KETTERING MEDICAL CENTER SYCAMORE | 905903 |  | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 01172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10272017 | 10292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 171113139795.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031007 | R112 | Nausea with vomiting, unspecified | ICD10 | 01172018 | 10272017 | 10292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
