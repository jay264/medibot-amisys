Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-04_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-04_URGEMERG
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
| 12212017 | 2017-12-21T14:29:33+00:00 |  | 000012979-01 | WAID | NELSON | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12202017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221059 | I213, I509, R0902 | Hypoxemia | ICD10 | 01032018 | 12202017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12152017 | 2017-12-15T15:19:35+00:00 |  | 000076514-01 | Mary | Boettcher | AJAZ UMERANI MD INC | 902296 |  | AJAZ UMERANI MD INC | 1043587470 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01042018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215078 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 01042018 | 12152017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12192017 | 2017-12-19T09:47:57+00:00 | 252957177352 | 000018746-01 | LOIS | GIBBONEY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 01042018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219046 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 01042018 | 12182017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12282017 | 2017-12-28T08:59:06+00:00 | 252228337361 | 000049379-01 | DONNIE | ROSS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12272017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228012 | R0602 | Shortness of breath | ICD10 | 01042018 | 12272017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12132017 | 2017-12-13T09:24:56+00:00 | 168579877346 | 000091287-01 | Edward | Ausborn | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12122017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213024 | R0602 | Shortness of breath | ICD10 | 01042018 | 12122017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 12292017 | 2017-12-29T10:16:37+00:00 | 250245917362 | 000019858-01 | NANCY | CORDELL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12282017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229030 | R5383 | Other fatigue | ICD10 | 01042018 | 12282017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12292017 | 2017-12-29T09:17:19+00:00 | 026068963-7363 | 000044491-01 | CONNIE | FRABOTT | COPC CENTRAL OHIO PRIMAR | 918091 | SANA A | SIDDIQUI | 1417100694 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 12282017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171231003 | R748 | Abnormal levels of other serum enzymes | ICD10 | 01042018 | 12292017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12152017 | 2017-12-15T09:48:39+00:00 | 255169037350 | 000064176-01 | TREVIA | DIEBEL | HOSPITALIST MEDICINE PHY | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12152017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215032 | G9340, K652 | Spontaneous bacterial peritonitis | ICD10 | 01042018 | 12152017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 01022018 | 2018-01-02T11:30:45+00:00 |  | 000115574-01 | Carol | Mazzaferri | BUTLER COUNTY HLTH CONSO | 925542 | JULIE M | TREADWAY | 1033356241 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 01042018 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180102075 | S82841A | Displaced bimalleolar fracture of right lower leg, init | ICD10 | 01042018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12282017 | 2017-12-28T09:17:21+00:00 | 259543687361 | 000089041-01 | Karen | Feisel | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12272017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228019 | R4182, R569 | Unspecified convulsions | ICD10 | 01042018 | 12272017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01042018 | 2018-01-04T09:24:23+00:00 |  | 000009851-01 | MARTHA | WARNER | MOUNT CARMEL HLTH SYS | 917573 | STEVEN C | REITZ | 1417116880 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 12292017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104011 | K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 01042018 | 12292017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12282017 | 2017-12-28T10:21:54+00:00 |  | 000097530-01 | Sharon | Boyer | COSHOCTON COUNTY MEM HSP | 935912 | LARRY T | TODD | 1649254087 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228040 | M5136, M48062 | M48062 | ICD10 | 01042018 | 01022018 | 01032018 | 63047, 22633, 22853, 22840, 20936, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 12132017 | 2017-12-13T11:44:02+00:00 |  | 000097178-01 | Steve | Hunter | COSHOCTON COUNTY MEM HSP | 949424 | SCOTT P | STEPHENS | 1770741902 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213093 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 01042018 | 01022018 | 01032018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12192017 | 2017-12-19T12:59:25+00:00 |  | 000061213-01 | JOSEPH | RICE | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12192017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219089 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01042018 | 12192017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01022018 | 2018-01-02T12:34:24+00:00 |  | 000106904-01 | Joseph | Johnson | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12292017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103011 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 01042018 | 12292017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12272017 | 2017-12-27T15:26:31+00:00 |  | 000006379-01 | MARGARET | WASHBURN | SERN OHIO ER PHYS LLP | 933849 | NATHAN J | LOWIEN | 1003065178 | OBLENESS MEMORIAL HSP | 936407 | 1710913462 | OBLENESS MEMORIAL HOSPITAL | 1710913462 | Inpatient | IP | Concurrent Review | CONC |  | OBLENESS MEMORIAL HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12262017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227086 | J159 | Unspecified bacterial pneumonia | ICD10 | 01042018 | 12262017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01022018 | 2018-01-02T21:17:44+00:00 |  | 000114901-01 | HOWARD | COOK | ALLIANCE PHYSICIANS INC | 906931 | HARVEY S | HAHN | 1811971039 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01012018 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103062 | I442 | Atrioventricular block, complete | ICD10 | 01042018 | 01012018 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12212017 | 2017-12-21T09:08:17+00:00 |  | 000022924-01 | RALPH | LOVE | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12192017 | 12242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221013 | E875, J189, N179 | Acute kidney failure, unspecified | ICD10 | 01042018 | 12192017 | 12242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01042018 | 2018-01-04T12:40:36+00:00 |  | 000025350-01 | CHARLES | JOHNSON JR | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10192017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104069 | R4182 | Altered mental status, unspecified | ICD10 | 01042018 | 10192017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01022018 | 2018-01-02T12:35:56+00:00 |  | 000116210-01 | Shirley | Courtright | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01042018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 12292017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103017 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 01042018 | 12292017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01022018 | 2018-01-02T12:30:52+00:00 |  | 000096749-01 | Elizabeth | Freed | LICKING MEM INPATIENT ME | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12302017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103006 | N390 | Urinary tract infection, site not specified | ICD10 | 01042018 | 12302017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12262017 | 2017-12-26T13:12:54+00:00 |  | 000106123-01 | SAMUEL | RIEL | CAMDEN CLARK PHYS CORPOR | 932029 | JOHN V | ONESTINGHEL | 1154379220 | CAMDEN CLARK MEM HSP | 936876 | 1508160268 | CAMDEN CLARK MEMORIAL HOSPITAL | 1508160268 | Inpatient | IP | Concurrent Review | CONC |  | CAMDEN CLARK MEMORIAL HOSPITAL | 01042018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12242017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226134 | N390 | Urinary tract infection, site not specified | ICD10 | 01042018 | 12242017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12282017 | 2017-12-28T14:00:28+00:00 |  | 000081766-01 | Joyce | Jones | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01032018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228060 | M1711, M25561 | Pain in right knee | ICD10 | 01042018 | 01032018 | 01042018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01042018 | 2018-01-04T08:49:39+00:00 |  | 000106801-01 | Richard | Birt | MERCY HEALTH PHYSICIANS | 902070 | C DOUGLAS | PORTER | 1720087463 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01042018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180104009 | G3281 | Cerebellar ataxia in diseases classified elsewhere | ICD10 | 01042018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12162017 | 2017-12-16T05:44:12+00:00 |  | 000012700-01 | BRENDA | BELL | CLEVELAND CLINIC FNDN | 914497 | VICENTE J | VELEZ | 1386787604 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 01042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12162017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218009 | E46, R1110 | Vomiting, unspecified | ICD10 | 01042018 | 12162017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12212017 | 2017-12-21T15:01:54+00:00 | 025223731-7355 | 000098060-01 | Norma | Ricketts | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 12212017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221063 | K5909 | Other constipation | ICD10 | 01042018 | 12212017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 11302017 | 2017-11-30T07:18:58+00:00 |  | 000095539-01 | Sharon | Thabat Mohamed | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12302017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 171213145744.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130095 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01042018 | 12302017 | 01032018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 12122017 | 2017-12-12T13:53:50+00:00 |  | 000105357-01 | PAUL | SWICKARD | ADENA MEDICAL GROUP LLC | 935741 | ALAN T | MONG | 1013935311 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12212017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212075 | C19 | Malignant neoplasm of rectosigmoid junction | ICD10 | 01042018 | 12212017 | 12292017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 9 | CPT | C4 |  |  |  | 8.0 |
| 01032018 | 2018-01-03T17:56:02+00:00 |  | 000042312-01 | John | Cox | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 01042018 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180104015 | I639 | Cerebral infarction, unspecified | ICD10 | 01042018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
