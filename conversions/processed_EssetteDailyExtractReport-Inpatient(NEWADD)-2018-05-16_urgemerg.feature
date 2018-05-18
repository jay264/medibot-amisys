Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-16_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-16_URGEMERG
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
| 05112018 | 2018-05-11T09:39:47+00:00 |  | 000017768-01 | MICHAEL | STEFANIDIS | MOUNT CARMEL HLTH SYS | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05092018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511008 | I208 | Other forms of angina pectoris | ICD10 | 05162018 | 05092018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05142018 | 2018-05-14T14:47:32+00:00 |  | 000079202-01 | Justine | Maynard | NEUROSCIENCE CENTER | 945250 | DEEPAK K | GULATI | 1669797890 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05162018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05122018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515022 | I639 | Cerebral infarction, unspecified | ICD10 | 05162018 | 05122018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04182018 | 2018-04-18T13:23:48+00:00 |  | 000030700-01 | JAMES | LESTER | ORTHOPEDIC ONE INC | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05142018 | 05152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418041 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 05162018 | 05142018 | 05152018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  | No child records to display. |  |
| 05032018 | 2018-05-03T09:02:41+00:00 |  | 000122080-01 | Doris | Dietz | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05142018 | 05152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503005 | M87051 | Idiopathic aseptic necrosis of right femur | ICD10 | 05162018 | 05142018 | 05152018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  | No child records to display. |  |
| 05072018 | 2018-05-07T10:33:24+00:00 |  | 000050891-01 | RICHARD | KAUTZ | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05052018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507091 | R079 | Chest pain, unspecified | ICD10 | 05162018 | 05052018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05082018 | 2018-05-08T16:26:53+00:00 |  | 000117284-01 | Jeri | Casolino | SOUND INPATIENT PHYS OF | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05072018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509015 | I998 | Other disorder of circulatory system | ICD10 | 05162018 | 05072018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05092018 | 2018-05-09T10:58:32+00:00 |  | 000084489-01 | Bernard | Rutherford | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509059 | I2510, R9439 | Abnormal result of other cardiovascular function study | ICD10 | 05162018 | 05082018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04262018 | 2018-04-26T15:23:34+00:00 |  | 000049314-01 | ELNORA | TAYLOR | OHIO PLASTIC SURGERY SPE | 935510 | WALTER L | BERNACKI | 1871664714 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05032018 | 05042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426068 | M958 | Oth acquired deformities of musculoskeletal system | ICD10 | 05162018 | 05032018 | 05042018 | 23550, 23552, 23480, 15100, 15734 | MUSCLE, MYOCUTANEOUS, OR FASCIOCUTANEOUS FLAP; TRUNK | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved Observation, Approved Observation, Approved Observation, Approved Observation, Approved Observation | 2, 2, 2, 2, 2 | CPT | C4 |  |  | No child records to display. |  |
| 05072018 | 2018-05-07T18:51:44+00:00 |  | 000052577-01 | THOMAS | DEVORE | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05072018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508031 | J441, J9601 | Acute respiratory failure with hypoxia | ICD10 | 05162018 | 05072018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05082018 | 2018-05-08T12:01:55+00:00 |  | 000065725-01 | SUZETTE | MUSCH | PERVEZ, RASHID | 905685 | RASHID | PERVEZ | 1528144177 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05072018 | 05122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508100 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 05162018 | 05072018 | 05122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05102018 | 2018-05-10T11:21:43+00:00 |  | 000026745-01 | MARIA | LENDAVIC | GRANT MEDICAL CENTER | 936409 |  | GRANT MEDICAL CENTER | 1255377149 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082018 | 05132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510030 | R29818 | Other symptoms and signs involving the nervous system | ICD10 | 05162018 | 05082018 | 05132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05102018 | 2018-05-10T08:38:39+00:00 |  | 000074491-01 | Sharon | Hughes | INTERNAL MEDICINE CARE | 904966 | CARLA M | MYERS | 1770581951 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05092018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510031 | E860, R531 | Weakness | ICD10 | 05162018 | 05092018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05142018 | 2018-05-14T12:13:51+00:00 |  | 000064594-01 | JOHN | STRETTON JR | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05122018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515018 | E860, R109 | Unspecified abdominal pain | ICD10 | 05162018 | 05122018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11072017 | 2017-11-07T10:19:19+00:00 |  | 000116215-01 | GLEN | SIDWELL JR | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05162018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11082017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 171120141421.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107055 | K831 | Obstruction of bile duct | ICD10 | 05162018 | 11082017 | 11162017 | 47780 | ROUX-EN-Y ANAS.BIL.DUCTS & G.I TRCT | CPT | 1 | 1 | Approved | 18 | CPT | C4 |  |  | No child records to display. |  |
| 04142018 | 2018-04-14T16:30:08+00:00 |  | 000015182-01 | EUGENE | WHITE | SOUND INPATIENT PHYS OF | 942986 | RAMACHANDER R | ELURI | 1790036770 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 04132018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416030 | J9600, R001 | Bradycardia, unspecified | ICD10 | 05162018 | 04132018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04162018 | 2018-04-16T15:21:36+00:00 |  | 000103720-01 | PAUL | SHANNON | DIGESTIVE ASSOC OF OHIO | 934962 | ADAM | TZAGOURNIS | 1003863440 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416113 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05162018 | 04162018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04192018 | 2018-04-19T13:42:47+00:00 |  | 000014436-01 | DORIS | HILL | HOSPITALIST MEDICINE PHY | 901443 | OLUGBENGA F | TOLANI | 1255439675 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419058 | A419, L03116 | Cellulitis of left lower limb | ICD10 | 05162018 | 04182018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04202018 | 2018-04-20T09:51:31+00:00 |  | 000103913-01 | Stephen | Lauer | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05162018 | Approved | MediGold Essential Care | Fax | ACO - Atrial Fib | Inpatient | 04192018 | 04202018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420009 | I4891, R600, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 05162018 | 04192018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04202018 | 2018-04-20T10:57:58+00:00 |  | 000002109-01 | CHESTER | GRIMM | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04192018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420031 | M4712 | Other spondylosis with myelopathy, cervical region | ICD10 | 05162018 | 04192018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04202018 | 2018-04-20T12:16:36+00:00 |  | 000115694-01 | Sandra | Stein | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04202018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420052 | I639 | Cerebral infarction, unspecified | ICD10 | 05162018 | 04202018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04232018 | 2018-04-23T12:59:23+00:00 |  | 000016305-01 | BETTY | MCCLAFFERTY | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04192018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423085 | R42 | Dizziness and giddiness | ICD10 | 05162018 | 04192018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04262018 | 2018-04-26T12:34:45+00:00 |  | 000064750-01 | CAROLYN | ELMORE | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 |  | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426042 | J449, R4182 | Altered mental status, unspecified | ICD10 | 05162018 | 04252018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05012018 | 2018-05-01T13:54:11+00:00 |  | 000023102-01 | GEORGIA | DAVENPORT | OHIOHEALTH PHYS GRP | 936959 | DONALD E | HURA | 1639116015 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042018 | 05142018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501046 | K632 | Fistula of intestine | ICD10 | 05162018 | 05042018 | 05142018 | 44640 | CLSR INTSTNL CUTANEOUS FISTULA | CPT | 1 | 1 | Approved | 11 | CPT | C4 |  |  | No child records to display. |  |
| 05032018 | 2018-05-03T12:24:16+00:00 |  | 000106515-01 | Sandra | Ritenour | ADENA MEDICAL GROUP LLC | 952306 | FAZILA | SIDDIQI | 1245363803 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05022018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503033 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 05162018 | 05022018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05032018 | 2018-05-03T13:02:52+00:00 |  | 000020715-01 | LOUELLA | FEHER | OHIOHEALTH PHYS GRP | 937345 | CHARLES A | PUE | 1447228705 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503041 | E870 | Hyperosmolality and hypernatremia | ICD10 | 05162018 | 05032018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05062018 | 2018-05-06T15:38:07+00:00 |  | 000107910-01 | Darrell | Cummings | OHIOHEALTH PHYS GRP | 939540 | LUCIA | CHOWDHURY | 1851346647 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 05162018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05062018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507058 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05162018 | 05062018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T09:09:33+00:00 |  | 000087745-01 | Danny | Anders | FAIRFIELD HLTHCARE PROFS | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511041 | E119, I5020, L0390 | Cellulitis, unspecified | ICD10 | 05162018 | 05102018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05132018 | 2018-05-13T10:05:14+00:00 |  | 000059075-01 | RALPH | HOOVER JR | ORTHOPEDIC ONE INC | 919027 | VIVEK | SAHAI | 1609076934 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05112018 | 05132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514037 | L905 | Scar conditions and fibrosis of skin | ICD10 | 05162018 | 05112018 | 05132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05132018 | 2018-05-13T10:44:22+00:00 |  | 000053155-01 | RICHARD | KEVAN | HOSPITALIST MEDICINE PHY | 942986 | RAMACHANDER R | ELURI | 1790036770 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05122018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514041 | D649, K921, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05162018 | 05122018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05132018 | 2018-05-13T13:14:27+00:00 |  | 000016020-01 | ADRIAN | BALZANO | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514043 | S022XXA | Fracture of nasal bones, init encntr for closed fracture | ICD10 | 05162018 | 05102018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05132018 | 2018-05-13T13:20:56+00:00 |  | 000029348-01 | PATRICIA | GABRIEL | COPC CENTRAL OHIO PRIMAR | 943208 | QIANLI | ZHUANG | 1730599028 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05122018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514046 | J189 | Pneumonia, unspecified organism | ICD10 | 05162018 | 05122018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05132018 | 2018-05-13T13:16:00+00:00 |  | 000112035-01 | Rita | Conway | RIVERSIDE TRAUMA SURGEON | 915688 | KWANG | SUH | 1679631170 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05112018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514048 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 05162018 | 05112018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T11:13:47+00:00 |  | 000096172-01 | Helen | Charles | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 05162018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05102018 | 05132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511069 | I469 | Cardiac arrest, cause unspecified | ICD10 | 05162018 | 05102018 | 05132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T13:43:15+00:00 |  | 000095144-01 | Paulletta | Parker | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05102018 | 05152018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511080 | L0390 | Cellulitis, unspecified | ICD10 | 05162018 | 05102018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T15:59:41+00:00 |  | 000048632-01 | WILLIAM | OYER | ADENA MEDICAL GROUP LLC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514020 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05162018 | 05102018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05142018 | 2018-05-14T11:38:35+00:00 |  | 000103684-01 | Paul | Woolison | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05132018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515004 | K5660 | Unspecified intestinal obstruction | ICD10 | 05162018 | 05132018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05142018 | 2018-05-14T11:40:49+00:00 |  | 000079963-01 | Gene | Stotridge | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05132018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515005 | N179, N390 | Urinary tract infection, site not specified | ICD10 | 05162018 | 05132018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05142018 | 2018-05-14T15:17:37+00:00 |  | 000071764-01 | Delia | Mckenzie | KETTERING MEDICAL CENTER SYCAMORE | 905903 |  | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05112018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515033 | R1013 | Epigastric pain | ICD10 | 05162018 | 05112018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
