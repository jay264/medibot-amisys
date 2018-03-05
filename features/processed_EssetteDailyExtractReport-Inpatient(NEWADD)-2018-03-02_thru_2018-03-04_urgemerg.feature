Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-02_thru_2018-03-04_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-02_thru_2018-03-04_URGEMERG
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
| 02212018 | 2018-02-21T13:22:49+00:00 |  | 000085817-01 | Clarence | Spaulding | ALLIANCE PHYSICIANS INC | 911768 | BRIAN W | ONDULICK | 1336129485 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02202018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222007 | S40022A | Contusion of left upper arm, initial encounter | ICD10 | 03012018 | 02202018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02222018 | 2018-02-22T14:08:50+00:00 |  | 000080860-01 | Charles | Rutland | HOSPITAL MEDICINE SERVIC | 927336 | GRETCHEN | SUAREZ | 1003117383 | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 936463 | 1508835828 | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 1508835828 | Inpatient | IP | Concurrent Review | CONC |  | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 03012018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02202018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222059 | R6520 | Severe sepsis without septic shock | ICD10 | 03012018 | 02202018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02232018 | 2018-02-23T08:24:50+00:00 |  | 000096240-01 | JUDY | LUTZ | APOGEE MED GRP OHIO INC | 927302 | ABIDEMI B | AKANDE | 1518281690 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223019 | I509, R0602 | Shortness of breath | ICD10 | 03012018 | 02222018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02222018 | 2018-02-22T09:23:55+00:00 |  | 000014467-01 | ROBERT | CHAFIN | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02212018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222040 | R52 | Pain, unspecified | ICD10 | 03022018 | 02212018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02252018 | 2018-02-25T18:24:48+00:00 |  | 000048767-01 | DON | SMITH | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02252018 | 03012018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226035 | J189 | Pneumonia, unspecified organism | ICD10 | 03022018 | 02252018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02262018 | 2018-02-26T14:39:54+00:00 |  | 000061606-01 | MAREK | FISZLEWICZ | GOOD SAMARITAN HSP & HLT | 910703 | SUSAN M | GRANDHI | 1073686838 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02252018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226113 | E872, N139 | Obstructive and reflux uropathy, unspecified | ICD10 | 03012018 | 02252018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02262018 | 2018-02-26T19:29:31+00:00 |  | 000007353-01 | EILEEN | RAY | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227012 | I998 | Other disorder of circulatory system | ICD10 | 03022018 | 02262018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01102018 | 2018-01-10T15:16:32+00:00 |  | 000064964-01 | LOIS | LEFFLER | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01222018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110104 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 03022018 | 01222018 | 03012018 | 48150 | PANCREATECTOMY-SUBTOTAL-WHIPPLE | CPT | 1 | 1 | Approved | 39 | CPT | C4 |  |  |  | 38.0 |
| 01182018 | 2018-01-18T12:56:01+00:00 |  | 000086881-01 | Norma | Glaze | MOUNT CARMEL HLTH PRVDRS | 904972 | BRADFORD B | MULLIN | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02212018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118063 | M48062 | M48062 | ICD10 | 03022018 | 02212018 | 03012018 | 63047, 63048, 22612, 22633, 22634, 22842, 20936, 20930, 61783 | SCAN PROC SPINAL | CPT | 1, 3, 1, 1, 1, 1, 1, 1, 1 | 1, 3, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 9, 9, 9, 9, 9, 9, 9, 9, 9 | CPT | C4 |  |  |  | 8.0 |
| 02052018 | 2018-02-05T10:07:08+00:00 |  | 000113543-01 | Gail | Foulke | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03022018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02282018 | 03012018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205035 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 03022018 | 02282018 | 03012018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02072018 | 2018-02-07T11:44:47+00:00 |  | 000072046-01 | Sherry | Brown | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02272018 | 03012018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207029 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 03022018 | 02272018 | 03012018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02212018 | 2018-02-21T12:43:29+00:00 |  | 000121732-01 | Sylvia | Demko | COPC CENTRAL OHIO PRIMAR | 904883 | NILESH V | VARMA | 1558303545 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03022018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02192018 | 03012018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221071 | I509 | Heart failure, unspecified | ICD10 | 03022018 | 02192018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02232018 | 2018-02-23T18:38:37+00:00 |  | 000010994-01 | CAROLYN | BAILEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226001 | N390 | Urinary tract infection, site not specified | ICD10 | 03022018 | 02222018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02242018 | 2018-02-24T15:02:03+00:00 |  | 000053366-01 | THOMAS | CHENEY | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02232018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226020 | F10239, R040 | Epistaxis | ICD10 | 03022018 | 02232018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02252018 | 2018-02-25T18:04:52+00:00 |  | 000060158-01 | DORIS | BOYER | HOSPITALIST MEDICINE PHY | 942986 | RAMACHANDER R | ELURI | 1790036770 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03022018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 02232018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226034 | I739 | Peripheral vascular disease, unspecified | ICD10 | 03022018 | 02232018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02262018 | 2018-02-26T11:34:42+00:00 |  | 000013658-01 | EARL | WALL | HOSPITALIST MEDICINE PHY | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226077 | L0390 | Cellulitis, unspecified | ICD10 | 03022018 | 02222018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02262018 | 2018-02-26T13:18:35+00:00 |  | 000053370-01 | DAVID | HALEY | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02252018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226082 | N289, R079, R55, R748, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 03022018 | 02252018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02272018 | 2018-02-27T13:55:11+00:00 |  | 000072741-01 | Mabel | Carsey | CENTRAL OHIO SURG ASSOC | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03022018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02262018 | 03012018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227073 | K219, K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 03022018 | 02262018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02272018 | 2018-02-27T15:53:01+00:00 |  | 000008757-01 | ALLAN | BAUSCH | GAINESVILLE RAD GRP PC | 925431 | STEVEN E | BLACK | 1609808369 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227102 | I96 | Gangrene, not elsewhere classified | ICD10 | 03022018 | 02262018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01192018 | 2018-01-19T11:38:39+00:00 |  | 000091897-01 | Bert | Dluzen | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119032 | J111, J189, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 03022018 | 01182018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 42.0 |
| 02092018 | 2018-02-09T10:12:42+00:00 |  | 000025048-01 | FRANCES | HAMILTON | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209031 | A419, N179 | Acute kidney failure, unspecified | ICD10 | 03042018 | 02082018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 23.0 |
| 02152018 | 2018-02-15T12:26:00+00:00 |  | 000039178-01 | ELLIS | HALL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02142018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215044 | L03818 | Cellulitis of other sites | ICD10 | 03042018 | 02142018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 02202018 | 2018-02-20T16:52:18+00:00 |  | 000022013-01 | ERNEST | POWELL | LICKING MEM HLTH PROF | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221018 | I639 | Cerebral infarction, unspecified | ICD10 | 03022018 | 02192018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02252018 | 2018-02-25T17:03:47+00:00 |  | 000033828-01 | LANDON | ROWE | MOUNT CARMEL HLTH SYS | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02232018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226030 | I6200, S329XXA | Fracture of unsp parts of lumbosacral spine and pelvis, init | ICD10 | 03022018 | 02232018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02262018 | 2018-02-26T14:34:31+00:00 |  | 000058239-01 | IDA | DEVAULT | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02242018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226109 | R946 | Abnormal results of thyroid function studies | ICD10 | 03042018 | 02242018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02262018 | 2018-02-26T17:46:46+00:00 |  | 000118414-01 | Nancy | Lester | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02262018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227010 | R109 | Unspecified abdominal pain | ICD10 | 03042018 | 02262018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02272018 | 2018-02-27T11:15:36+00:00 |  | 000077972-01 | Sandy | Daniels | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02252018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227041 | M25559 | Pain in unspecified hip | ICD10 | 03022018 | 02252018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02272018 | 2018-02-27T10:55:14+00:00 |  | 000007275-01 | BOB | DEVOL | FAIRFIELD HLTHCARE PROFS | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227054 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03022018 | 02262018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02272018 | 2018-02-27T14:38:03+00:00 |  | 000079567-01 | Richard | Gehring | COPC CENTRAL OHIO PRIMAR | 948062 | AARON M | WHIPP | 1861835688 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02252018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227079 | K56600 | K56600 | ICD10 | 03022018 | 02252018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02272018 | 2018-02-27T19:13:40+00:00 |  | 000005456-01 | MARILYN | PRATT | TRAUMA & CRITICAL CARE S | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228002 | E871, S12000A | Unsp disp fx of first cervical vertebra, init for clos fx | ICD10 | 03042018 | 02272018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02272018 | 2018-02-27T19:42:20+00:00 |  | 000052205-01 | Stella | Harris | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03042018 | Approved | MediGold Essential Care | Fax | ACO - CHF | Inpatient | 02272018 | 03032018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228005 | I214, J9601, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 03042018 | 02272018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02282018 | 2018-02-28T15:11:36+00:00 |  | 000029400-01 | ELAINE | FILMORE | HMP OF FRANKLIN CTY LTD | 901442 | H CRAIG | STEVENS | 1578605762 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03022018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 02272018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228079 | R079 | Chest pain, unspecified | ICD10 | 03022018 | 02272018 | 03022018 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 |  | 4 | CPT | C4 |  |  |  | 3.0 |
| 02282018 | 2018-02-28T16:03:21+00:00 |  | 000115718-01 | PAMELA | SHEETS | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03022018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02282018 | 03012018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228088 | M25561 | Pain in right knee | ICD10 | 03022018 | 02282018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02282018 | 2018-02-28T17:26:37+00:00 |  | 000073955-01 | James | Riley | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02272018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228094 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03042018 | 02272018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03022018 | 2018-03-02T11:44:25+00:00 |  | 000098225-01 | Claudine | Shelfo | HOSPITALIST MEDICINE PHY | 943369 | SAMVEL | NERSISYAN | 1184982357 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03042018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 02282018 | 03032018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302025 | I4891 | Unspecified atrial fibrillation | ICD10 | 03042018 | 02282018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02272018 | 2018-02-27T11:48:15+00:00 |  | 000021377-01 | BRENDA | HAMMOND | CEN OH PRIMARY CARE SPEC | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03022018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02262018 | 03012018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302035 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03022018 | 02262018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
