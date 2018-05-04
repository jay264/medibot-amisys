Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-02_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-02_URGEMERG
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
| 04172018 | 2018-04-17T00:36:21+00:00 |  | 000056333-01 | WILLIAM | MACK JR | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04302018 | 05012018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417027 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05022018 | 04302018 | 05012018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04252018 | 2018-04-25T18:31:47+00:00 |  | 000010026-01 | COLLEEN | MCDOWELL | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426014 | J939, S2249XA | Multiple fractures of ribs, unsp side, init for clos fx | ICD10 | 05022018 | 04252018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04252018 | 2018-04-25T15:33:16+00:00 |  | 000044679-01 | THOMAS | TAYLOR | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242018 | 05012018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425081 | I509, J8410 | Pulmonary fibrosis, unspecified | ICD10 | 05022018 | 04242018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04102018 | 2018-04-10T13:40:54+00:00 |  | 000058284-01 | DOROTHY | CORDLE | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04082018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410083 | R531 | Weakness | ICD10 | 05022018 | 04082018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 04262018 | 2018-04-26T17:21:47+00:00 |  | 000114967-01 | James | Hamilton | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04262018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427007 | A419 | Sepsis, unspecified organism | ICD10 | 05022018 | 04262018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04272018 | 2018-04-27T14:31:44+00:00 |  | 000120392-01 | Alexander | Gherghei | VICTOR V DIZON DO FACOS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04272018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427054 | K869, R17 | Unspecified jaundice | ICD10 | 05022018 | 04272018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04272018 | 2018-04-27T16:00:15+00:00 |  | 000022385-01 | JOHN | COUK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04262018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427076 | I509 | Heart failure, unspecified | ICD10 | 05022018 | 04262018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04282018 | 2018-04-28T08:35:18+00:00 |  | 000039159-01 | JEAN | TYLER | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04272018 | 05012018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430007 | J189 | Pneumonia, unspecified organism | ICD10 | 05022018 | 04272018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02082018 | 2018-02-08T17:11:40+00:00 |  | 000049500-01 | LINDA | DOWNEY | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02192018 | 02202018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209014 | M87052 | Idiopathic aseptic necrosis of left femur | ICD10 | 05022018 | 02192018 | 02202018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02202018 | 2018-02-20T16:52:18+00:00 |  | 000022013-01 | ERNEST | POWELL | LICKING MEM HLTH PROF | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221018 | I639 | Cerebral infarction, unspecified | ICD10 | 05022018 | 02192018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04092018 | 2018-04-09T15:31:54+00:00 |  | 000064537-01 | DORA | ROMAINE | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04122018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409093 | I639 | Cerebral infarction, unspecified | ICD10 | 05022018 | 04122018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 04232018 | 2018-04-23T07:08:18+00:00 |  | 000102250-01 | Irene | Chamberlain | CLERMONT INTERNISTS ASSO | 932748 | EVGHENII | BACANURSCHI | 1922387588 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 05022018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04212018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423053 | K56600 | K56600 | ICD10 | 05022018 | 04212018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T09:25:19+00:00 |  | 000103172-01 | John | Strickling | LICKING MEM INPATIENT ME | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423087 | L03115 | Cellulitis of right lower limb | ICD10 | 05022018 | 04202018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T14:53:14+00:00 |  | 000046027-01 | LARITA | MCCLASKEY | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424008 | J80 | Acute respiratory distress syndrome | ICD10 | 05022018 | 04202018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04232018 | 2018-04-23T13:18:08+00:00 |  | 000096806-01 | Larry | Stemm | APOGEE MED GRP OHIO INC | 932655 | ABDULMAJID | ADAM | 1528362258 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04222018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424011 | K920 | Hematemesis | ICD10 | 05022018 | 04222018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04232018 | 2018-04-23T15:22:40+00:00 |  | 000106644-01 | Everett | Williams | FLORIDA HEART ASSOCS | 919494 | SUBHASH | KSHETRAPAL | 1427086131 | LEE MEMORIAL HEALTH SYST | 904931 | 1740227099 | HEALTH PARK MEDICAL CENTER 1500 | 0 | Inpatient | IP | Concurrent Review | CONC |  | HEALTH PARK MEDICAL CENTER 1500 | 05022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04232018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424020 | R079 | Chest pain, unspecified | ICD10 | 05022018 | 04232018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04232018 | 2018-04-23T16:03:16+00:00 |  | 000043194-01 | GLORIA | WATTERS | CARDIOVASCULAR SPEC LLC | 937026 | RICHARD M | BARDALES | 1619978889 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04192018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424025 | I2510, R0602, R931 | Abnormal findings on dx imaging of heart and cor circ | ICD10 | 05022018 | 04192018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04242018 | 2018-04-24T08:46:15+00:00 |  | 000006234-01 | NORMA | GRAY | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424052 | I10 | Essential (primary) hypertension | ICD10 | 05022018 | 04232018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04242018 | 2018-04-24T14:01:56+00:00 |  | 000079504-01 | Carolyn | Towers | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03032018 | 03052018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424069 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 05022018 | 03032018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04242018 | 2018-04-24T14:54:38+00:00 |  | 000069860-01 | Mary | Carper | UNIVERSITY HOSPITAL | 936399 |  | UNIVERSITY HOSPITAL | 1033154026 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04222018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425008 | R109 | Unspecified abdominal pain | ICD10 | 05022018 | 04222018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04252018 | 2018-04-25T12:02:08+00:00 |  | 000040253-01 | MARY | MCCLOSKEY | LICKING MEM HLTH PROF | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425050 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 05022018 | 04242018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04252018 | 2018-04-25T13:57:10+00:00 |  | 000113544-01 | Margaret | French | S DAYTON ACUTE CARE CNSL | 947012 | KATHERINE E | HOUSE | 1184966293 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 05022018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04242018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425063 | I4892 | Unspecified atrial flutter | ICD10 | 05022018 | 04242018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04262018 | 2018-04-26T08:19:06+00:00 |  | 000088255-01 | Margaret | Keast | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05022018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04262018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426012 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 05022018 | 04262018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04262018 | 2018-04-26T08:29:27+00:00 |  | 000077181-01 | Vivian | Schroeder | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426015 | I10, I639, M1990, R531, Z8639 | Personal history of endo, nutritional and metabolic disease | ICD10 | 05022018 | 04252018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04302018 | 2018-04-30T09:35:12+00:00 |  | 000030769-01 | BEVERLY | COTE | OSU INTERNAL MED LLC | 947014 | GREGORY K | BEHBEHANI | 1053679217 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04272018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430041 | C9200 | Acute myeloblastic leukemia, not having achieved remission | ICD10 | 05022018 | 04272018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T17:28:17+00:00 |  | 000099177-01 | Richard | Garee | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04292018 | 05012018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501051 | J441, J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 05022018 | 04292018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262018 | 2018-04-26T10:54:14+00:00 |  | 000008170-01 | JAMES | HENDERSON | COPC CENTRAL OHIO PRIMAR | 902423 | ARADHI U | PANDYA | 1306829908 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 04252018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426034 | R451 | Restlessness and agitation | ICD10 | 05022018 | 04252018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262018 | 2018-04-26T13:52:34+00:00 |  | 000110177-01 | KEVIN | O'HARA | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04262018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426049 | R042, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 05022018 | 04262018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T10:02:44+00:00 |  | 000107745-01 | Mary | Davis | HOSPITALIST MEDICINE PHY | 924588 | JAMELLE R | BOWERS | 1275532251 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05022018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04282018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430047 | S52121A | Disp fx of head of right radius, init for clos fx | ICD10 | 05022018 | 04282018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05012018 | 2018-05-01T09:40:48+00:00 |  | 000004179-01 | THOMAS | WEBB | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04282018 | 05012018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501010 | J449, R52 | Pain, unspecified | ICD10 | 05022018 | 04282018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T16:03:32+00:00 |  | 000098271-01 | SAMUEL | WASSON | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04282018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501035 | I442 | Atrioventricular block, complete | ICD10 | 05022018 | 04282018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T15:05:13+00:00 |  | 000034646-01 | ALLEN | UNDERWOOD | OSU INTERNAL MED LLC | 919158 | LUAY | MOUSA | 1497973119 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04282018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501038 | G939, R29898, R569 | Unspecified convulsions | ICD10 | 05022018 | 04282018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05012018 | 2018-05-01T11:24:36+00:00 |  | 000085544-01 | Shirley | Laney | STEPHEN D HEISE MD & ASS | 947414 | DONALD | STAGGS | 1538425731 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 05022018 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 05022018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180501039 | I639 | Cerebral infarction, unspecified | ICD10 | 05022018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05012018 | 2018-05-01T08:14:50+00:00 |  | 000059554-01 | JEAN | BURGESS | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05022018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04302018 | 05012018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501055 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05022018 | 04302018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022018 | 2018-05-02T06:46:12+00:00 |  | 000111360-01 | Janie | Geiger | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502027 | T8451XA | Infect/inflm reaction due to internal right hip prosth, init | ICD10 | 05022018 | 04242018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
