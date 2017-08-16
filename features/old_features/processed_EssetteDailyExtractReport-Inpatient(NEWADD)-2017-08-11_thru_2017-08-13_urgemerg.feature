Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-11_thru_2017-08-13_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-11_thru_2017-08-13_URGEMERG
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
| 08132017 | 2017-08-13T17:15:15+00:00 |  | 000112052-01 | WILLIAM | ALLEN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08122017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170813003 | R4182 | Altered mental status, unspecified | ICD10 | 08132017 | 08122017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08072017 | 2017-08-07T10:28:18+00:00 | 178105737217 | 000070785-01 | Carol | Speakman | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08062017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807038 | K859 | Acute pancreatitis, unspecified | ICD10 | 08132017 | 08062017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08072017 | 2017-08-07T09:30:10+00:00 | 179068207218 | 000097558-01 | Barbara | Hacker | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08062017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807014 | S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 08112017 | 08062017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08072017 | 2017-08-07T09:39:28+00:00 | 266068107216 | 000083100-01 | Kenneth | Heslin | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08042017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807019 | R197 | Diarrhea, unspecified | ICD10 | 08112017 | 08042017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08072017 | 2017-08-07T15:37:21+00:00 | 025420033-7213 | 000088700-01 | Judith | Rollins | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807100 | I739 | Peripheral vascular disease, unspecified | ICD10 | 08112017 | 08082017 | 08112017 | 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08022017 | 2017-08-02T13:51:17+00:00 | 025015108-7214 | 000030445-01 | THOMAS | BURNS JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 08022017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802068 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 08112017 | 08022017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07272017 | 2017-07-27T08:03:17+00:00 |  | 000081387-01 | Barbara | Blackstone | GENESIS MEDICAL GRP LLC | 947551 | EDMUND Z | BRINKIS | 1346354602 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08112017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08092017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727004 | I10, I160 | HYPERTENSIVE URGENCY | ICD10 | 08112017 | 08092017 | 08102017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08082017 | 2017-08-08T15:40:34+00:00 | 266033337220 | 000049512-01 | LAWRENCE | MCKANNA | MOUNT CARMEL WEST PHYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08082017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808103 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 08112017 | 08082017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08072017 | 2017-08-07T10:02:19+00:00 | 259030977216 | 000113421-01 | JOSEPH | BECKER | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08042017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807027 | I482, I5023, R0602 | Shortness of breath | ICD10 | 08112017 | 08042017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06142017 | 2017-06-14T13:59:21+00:00 | 177170877167 | 000043374-01 | Rise | Surface-Hurley | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614061 | T8451XA | Infect/inflm reaction due to internal right hip prosth, init | ICD10 | 08112017 | 08082017 | 08112017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08132017 | 2017-08-13T16:35:17+00:00 |  | 000090074-01 | Barbara | Cook | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08122017 | 08132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170813001 | R296 | Repeated falls | ICD10 | 08132017 | 08122017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08082017 | 2017-08-08T10:02:32+00:00 | 255983347218 | 000024342-01 | RICHARD | KONIECZKO | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08072017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808036 | T84020A | Dislocation of internal right hip prosthesis, init encntr | ICD10 | 08112017 | 08072017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07272017 | 2017-07-27T12:44:35+00:00 | 025560384-7206 | 000109868-01 | Theodore | Carr | ORTHO ASSOC OF ZANESVILL | 912928 | KARL C | SAUNDERS | 1285626531 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08092017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727050 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 08112017 | 08092017 | 08102017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08042017 | 2017-08-04T11:02:45+00:00 |  | 000087126-01 | Paula | Kalaman | ALLIANCE PHYSICIANS INC | 901100 | THOMAS J | MERLE | 1730187469 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08072017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804033 | J984 | Other disorders of lung | ICD10 | 08112017 | 08072017 | 08112017 | 32505 | WEDGE RESECT OF LUNG INITIAL | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 3.0 |
| 08112017 | 2017-08-11T15:47:01+00:00 |  | 000108424-01 | Kenneth | Brooks | CEN OH UROLOGY GRP INC | 936013 | ANDY J | CHO | 1063451367 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08102017 | 08112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811072 | R310 | Gross hematuria | ICD10 | 08112017 | 08102017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08112017 | 2017-08-11T08:20:57+00:00 |  | 000070319-01 | Carolyn | Morris | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08102017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811042 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08112017 | 08102017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08022017 | 2017-08-02T16:17:56+00:00 | 025219304-7199 | 000100986-01 | Linda | Park | COLON & RECTAL SURG INC | 937269 | ANANTHA | PADMANABHAN | 1689674780 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803001 | D374, K635 | Polyp of colon | ICD10 | 08112017 | 08082017 | 08112017 | 44205 | LAP COLECTOMY PART W/ILEUM | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08072017 | 2017-08-07T09:25:54+00:00 | 179117557218 | 000041989-01 | ROBERT | FEUCHT | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08062017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807012 | R55 | Syncope and collapse | ICD10 | 08132017 | 08062017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08022017 | 2017-08-02T12:53:07+00:00 |  | 000083289-01 | Gloria | Hurl | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08012017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802058 | M4802 | Spinal stenosis, cervical region | ICD10 | 08112017 | 08012017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08022017 | 2017-08-02T09:46:47+00:00 | 259293937213 | 000069010-01 | BARBARA | SHAW | SOUND PHYSICIANS OF OHI | 912793 | PIYUSH | GUPTA | 1275618803 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08012017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802021 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 08112017 | 08012017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08092017 | 2017-08-09T08:20:08+00:00 | 264050527220 | 000037642-01 | JAMES | CRAWFORD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08082017 | 08102017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809009 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 08112017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T10:59:35+00:00 | 250636457220 | 000049907-01 | KAY | KEMERLING | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08072017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807046 | A419, K5792, R0602 | Shortness of breath | ICD10 | 08112017 | 08072017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08072017 | 2017-08-07T10:42:09+00:00 | 254492317217 | 000113889-01 | Paula | Erwin | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08052017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807041 | E860, G893, K5100 | Ulcerative (chronic) pancolitis without complications | ICD10 | 08112017 | 08052017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08082017 | 2017-08-08T07:55:53+00:00 |  | 000087903-01 | Robert | Mann | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08112017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 08072017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808076 | R079 | Chest pain, unspecified | ICD10 | 08112017 | 08072017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07202017 | 2017-07-20T10:47:12+00:00 |  | 000089914-01 | Timothy | Anderson | MARIETTA MEM HSP | 921894 | BRADLEY D | CARMAN | 1295774040 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 08112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08072017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720038 | D124 | Benign neoplasm of descending colon | ICD10 | 08112017 | 08072017 | 08102017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08092017 | 2017-08-09T15:12:29+00:00 | 025170850-7194 | 000033527-01 | MICHAEL | GALLUCCI | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | GROVE CITY FAM HLTH INC | 936935 | 1659316644 | JOHN A HORN | 1841239431 | Inpatient | IP | Concurrent Review | CONC | JOHN A | HORN | 08112017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 08092017 | 08112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809070 | M75100 | Unsp rotatr-cuff tear/ruptr of unsp shoulder, not trauma | ICD10 | 08112017 | 08092017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T08:29:32+00:00 |  | 000088587-01 | Everett | Roby | UNIVERSITY OF CINCINNATI | 905117 | ALEXANDRA J | JORDAN | 1497781652 | WEST CHESTER MEDICAL CENTER | 911775 | 1851549273 | WEST CHESTER MEDICAL CENTER | 1851549273 | Inpatient | IP | Concurrent Review | CONC |  | WEST CHESTER MEDICAL CENTER | 08112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809034 | K868 | Other specified diseases of pancreas | ICD10 | 08112017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08082017 | 2017-08-08T12:43:34+00:00 |  | 000047167-01 | RAYMOND | LONG | APOGEE MED GRP OHIO INC | 943020 | SRAVAN K R | BEZWADA | 1669728895 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08042017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808108 | R109 | Unspecified abdominal pain | ICD10 | 08112017 | 08042017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08092017 | 2017-08-09T16:52:48+00:00 |  | 000086569-01 | John | Mcclanahan | AAMIR KHAN MD INC | 908411 |  | AAMIR KHAN MD INC | 1265621296 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810027 | I509, J810, R0902, R748 | Abnormal levels of other serum enzymes | ICD10 | 08112017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T17:48:23+00:00 |  | 000103354-01 | Valerie | Stang | LINDNER CENTER OF HOPE | 947437 |  | LINDNER CENTER OF HOPE | 1023207750 | LINDNER CENTER OF HOPE | 947437 | 1023207750 | LINDNER CENTER OF HOPE | 1023207750 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | LINDNER CENTER OF HOPE | 08112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08042017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808069 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 08112017 | 08042017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08022017 | 2017-08-02T10:30:04+00:00 | 163220007213 | 000107495-01 | Sherry | Maddux | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08012017 | 08112017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802034 | I509 | Heart failure, unspecified | ICD10 | 08112017 | 08012017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08112017 | 2017-08-11T10:15:44+00:00 | 252080057222 | 000098985-01 | Rosemary | Manahan | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08102017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811019 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 08132017 | 08102017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08112017 | 2017-08-11T08:24:27+00:00 |  | 000077972-01 | Sandy | Daniels | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 08092017 | 08102017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811001 | K219 | Gastro-esophageal reflux disease without esophagitis | ICD10 | 08112017 | 08092017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08072017 | 2017-08-07T10:40:15+00:00 | 252321477218 | 000006142-01 | LEWIS | STETHEM | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08062017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807040 | N200 | Calculus of kidney | ICD10 | 08132017 | 08062017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08032017 | 2017-08-03T14:01:08+00:00 | 025487779-7215 | 000029800-01 | JOY | LIVINGSTON | COPC CENTRAL OHIO PRIMAR | 905425 | SVITLANA | HAYNES | 1457307837 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 08032017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803059 | A419 | Sepsis, unspecified organism | ICD10 | 08112017 | 08032017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T15:17:57+00:00 |  | 000113178-01 | Joanna | Fuls | SOUND INPATIENT PHYS OF | 927302 | ABIDEMI B | AKANDE | 1518281690 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07142017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718065 | G7001 | Myasthenia gravis with (acute) exacerbation | ICD10 | 08112017 | 07142017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 27.0 |
| 08112017 | 2017-08-11T09:27:30+00:00 |  | 000046871-01 | ANSON | FOSTER | SCIOTO VALLEY UROLOGY IN | 946370 | MICHAEL C | SWEENEY | 1396943114 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08102017 | 08122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811004 | N471, N529 | Male erectile dysfunction, unspecified | ICD10 | 08132017 | 08102017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T18:10:34+00:00 |  | 000024342-01 | RICHARD | KONIECZKO | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08112017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 08112017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170810008 | Z96641 | Presence of right artificial hip joint | ICD10 | 08112017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08092017 | 2017-08-09T09:52:07+00:00 | 251161507220 | 000046834-01 | JOHN | THOMAS | COPC CENTRAL OHIO PRIMAR | 905869 | VENKATESH | CHIRRAVURI | 1073562666 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08092017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809019 | N179 | Acute kidney failure, unspecified | ICD10 | 08112017 | 08092017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
