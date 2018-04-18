Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-10_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-10_URGEMERG
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
| 04082018 | 2018-04-08T12:11:31+00:00 |  | 000007886-01 | ADRIAN | JAHN | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04062018 | 04082018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409049 | M00869 | Arthritis due to other bacteria, unspecified knee | ICD10 | 04102018 | 04062018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04022018 | 2018-04-02T11:21:30+00:00 |  | 000110658-01 | Glendora | Dodley | AMERICAN HLTH NETWORK OF | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180410166050.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402073 | R42 | Dizziness and giddiness | ICD10 | 04112018 | 03312018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03132018 | 2018-03-13T10:11:15+00:00 |  | 000084831-01 | Richard | Harter | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04052018 | 04092018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313052 | M48062 | M48062 | ICD10 | 04102018 | 04052018 | 04092018 | 22633, 22853, 22840, 63048, 20937 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 04052018 | 2018-04-05T11:54:19+00:00 |  | 000023116-01 | CHARLES | HIXON | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405023 | E860, N179 | Acute kidney failure, unspecified | ICD10 | 04102018 | 04042018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02012017 | 2017-02-01T07:03:33+00:00 |  | 000099629-01 | Jayne | Drenning-Brown | HOSP SVC MED GRP OF MARY | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302017 | 02102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202003 | I4891 | Unspecified atrial fibrillation | ICD10 | 04102018 | 01302017 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T14:21:24+00:00 |  | 000053795-01 | WILLIAM | YOAK | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313024 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 04102018 | 03202018 | 04092018 | 48150 | PANCREATECTOMY-SUBTOTAL-WHIPPLE | CPT | 1 | 1 | Approved | 21 | CPT | C4 |  |  |  | 20.0 |
| 02222018 | 2018-02-22T15:11:22+00:00 |  | 000018157-01 | BENTON | JULIAN | FAIRFIELD HLTHCARE PROFS | 935144 | ANGELINE | STERGIOU | 1932172780 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02212018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222078 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 04102018 | 02212018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 44.0 |
| 03152018 | 2018-03-15T09:23:28+00:00 |  | 000080221-01 | Carol | Frerick | TRIHEALTH G LLC | 925126 | NANCY K | MCDONOUGH | 1396857983 | TRIHEALTH REHAB HOSPITAL | 953346 | 1508221847 | TRIHEALTH REHABI HOSPITAL, LLC | 1508221847 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | TRIHEALTH REHABI HOSPITAL, LLC | 04102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03182018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315006 | I639 | Cerebral infarction, unspecified | ICD10 | 04102018 | 03182018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 03262018 | 2018-03-26T09:42:29+00:00 |  | 000070079-01 | James | Weaver | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03252018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326072 | K5780, R1032 | Left lower quadrant pain | ICD10 | 04102018 | 03252018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 03272018 | 2018-03-27T12:12:20+00:00 |  | 000013367-01 | BONNIE | OOTEN | AKHTAR, YASMIN | 919545 | YASMIN | AKHTAR | 1336389592 | RAULERSON HOSPITAL | 934709 | 1215974134 | RAULERSON HOSPITAL | 1215974134 | Inpatient | IP | Concurrent Review | CONC |  | RAULERSON HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328059 | R0602 | Shortness of breath | ICD10 | 04102018 | 03262018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03302018 | 2018-03-30T10:54:31+00:00 |  | 000051721-01 | Gary | Young | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03302018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330064 | A419, N201, N390 | Urinary tract infection, site not specified | ICD10 | 04102018 | 03302018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04042018 | 2018-04-04T10:22:41+00:00 |  | 000036671-01 | VIVIAN | STEWART | HOSPITALIST MEDICINE PHY | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04032018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404052 | J441, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 04102018 | 04032018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04042018 | 2018-04-04T16:04:43+00:00 |  | 000046176-01 | KRISTY | BURKHAMMER | COPC CENTRAL OHIO PRIMAR | 936972 | NISHIT G | JHAVERI | 1356400659 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04032018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405004 | A419 | Sepsis, unspecified organism | ICD10 | 04102018 | 04032018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02272018 | 2018-02-27T10:54:57+00:00 |  | 000050437-01 | CAROL | FORTNEY | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227037 | K5190 | Ulcerative colitis, unspecified, without complications | ICD10 | 04102018 | 02262018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 39.0 |
| 03282018 | 2018-03-28T08:21:45+00:00 |  | 000056847-01 | DARRYL | CONKLE | FAIRFIELD HLTHCARE PROFS | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328087 | R079 | Chest pain, unspecified | ICD10 | 04102018 | 03272018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03292018 | 2018-03-29T14:38:19+00:00 |  | 000109912-01 | William | Redick | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03282018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330026 | N179, R296, S72012A, Z9181 | History of falling | ICD10 | 04102018 | 03282018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03302018 | 2018-03-30T07:46:34+00:00 |  | 000060275-01 | BETTY | RODGERS | OH HSP FOR PSYCHIATRY | 933409 | KUNAL B | TANK | 1437479235 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330049 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 04102018 | 03302018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03312018 | 2018-03-31T07:58:21+00:00 |  | 000091263-01 | Jerry | Shiman | DUBLIN SPRINGS LLC | 926803 | JENNIFER L | WILSON | 1801141734 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 04102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03302018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402017 | F331 | Major depressive disorder, recurrent, moderate | ICD10 | 04102018 | 03302018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T08:49:20+00:00 |  | 000085546-01 | Helena | Anthony | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04102018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402052 | A419, J189, N179 | Acute kidney failure, unspecified | ICD10 | 04102018 | 03302018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04032018 | 2018-04-03T08:53:15+00:00 |  | 000085038-01 | Dick | McCoy | HOSPITALIST MEDICINE PHY | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04022018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403070 | L97509 | Non-pressure chronic ulcer oth prt unsp foot w unsp severity | ICD10 | 04102018 | 04022018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04032018 | 2018-04-03T16:16:35+00:00 |  | 000005269-01 | EMERSON | WILLIAMS | MOUNT CARMEL HLTH SYS | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04032018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403102 | R6520 | Severe sepsis without septic shock | ICD10 | 04102018 | 04032018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04062018 | 2018-04-06T11:11:19+00:00 |  | 000006447-01 | HELENE | GROOM | HOSPITALIST MEDICINE PHY | 952668 | HO AN | KANG | 1275945545 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406031 | J9600, R112 | Nausea with vomiting, unspecified | ICD10 | 04102018 | 04052018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04092018 | 2018-04-09T08:16:11+00:00 |  | 000006862-01 | DORIS | FAHRENBACH | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04052018 | 04092018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409001 | J111, J159, R531 | Weakness | ICD10 | 04102018 | 04052018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04082018 | 2018-04-08T11:16:20+00:00 |  | 000042636-01 | HAZEL | CARTER | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409026 | K5669 | Other intestinal obstruction | ICD10 | 04102018 | 04042018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03272018 | 2018-03-27T07:55:19+00:00 |  | 000069899-01 | Russell | Karlen III | OH HSP FOR PSYCHIATRY | 933409 | KUNAL B | TANK | 1437479235 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327068 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 04102018 | 03262018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03302018 | 2018-03-30T07:44:11+00:00 |  | 000100182-01 | BENNETT | WISE | MOUNT CARMEL HLTH PRVDRS | 903018 | KEVIN V | WARE | 1609817980 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03292018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402059 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 04102018 | 03292018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04022018 | 2018-04-02T18:55:10+00:00 |  | 000088182-01 | Carol | Lancaster | S DAYTON ACUTE CARE CNSL | 913547 | SVEN E | RAYMOND | 1609830876 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403050 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04102018 | 03312018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04032018 | 2018-04-03T12:36:15+00:00 |  | 000034228-01 | CRETA | MOREHEAD | FAIRFIELD HLTHCARE PROFS | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04022018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403093 | G9340, I10, I482 | Chronic atrial fibrillation | ICD10 | 04102018 | 04022018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04042018 | 2018-04-04T10:42:02+00:00 |  | 000092052-01 | DARLENE | ANDERSON | LICKING MEM FAM PRCT N | 916357 | DONALD J | FAIRBANKS | 1164441457 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04032018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404058 | R0600 | Dyspnea, unspecified | ICD10 | 04102018 | 04032018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04052018 | 2018-04-05T08:11:46+00:00 |  | 000083422-01 | Harry | Gierhart | FAIRFIELD HLTHCARE PROFS | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405018 | N179, R197 | Diarrhea, unspecified | ICD10 | 04102018 | 04042018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04052018 | 2018-04-05T16:08:54+00:00 |  | 000082355-01 | Sandra | Foor | SOUND INPATIENT PHYS OF | 901165 | OLGA V | PYLAEVA | 1508811811 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406007 | R29898 | Oth symptoms and signs involving the musculoskeletal system | ICD10 | 04102018 | 04042018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04062018 | 2018-04-06T11:07:45+00:00 |  | 000105321-01 | MARY | ROLL | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406030 | D649 | Anemia, unspecified | ICD10 | 04102018 | 04052018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04092018 | 2018-04-09T09:36:47+00:00 |  | 000019053-01 | MARGARET | PORT | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04082018 | 04092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409007 | N200, N201 | Calculus of ureter | ICD10 | 04102018 | 04082018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04102018 | 2018-04-10T08:33:14+00:00 |  | 000060595-01 | MICHEAL | THOMPSON | KHN IP MED | 942575 | LUCAS | HEINEMANN | 1154697332 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04022018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410004 | R55 | Syncope and collapse | ICD10 | 04102018 | 04022018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04092018 | 2018-04-09T10:03:16+00:00 |  | 000060188-01 | GARY | LUCAS | OHIOHEALTH PHYS GRP | 918222 | BENJAMIN C | TAYLOR | 1659595866 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410014 | R6889 | Other general symptoms and signs | ICD10 | 04102018 | 04052018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04092018 | 2018-04-09T13:46:27+00:00 |  | 000030832-01 | STANLEY | BALL | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 04062018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410020 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04102018 | 04062018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04092018 | 2018-04-09T12:31:49+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY OF CINCINNATI | 921832 | CHARLES R | HATTEMER | 1093714750 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 04102018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04062018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410031 | R112 | Nausea with vomiting, unspecified | ICD10 | 04102018 | 04062018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04102018 | 2018-04-10T12:23:59+00:00 |  | 000063588-01 | CHARLES | WALLACE | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 04072018 | 04092018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410091 | I4891 | Unspecified atrial fibrillation | ICD10 | 04102018 | 04072018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
