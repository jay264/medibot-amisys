Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-17_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-17_URGEMERG
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
| 04212017 | 2017-04-21T14:17:22+00:00 |  | 000029260-01 | MARILYN | CLUM | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07142017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424001 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07172017 | 07142017 | 07152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06012017 | 2017-06-01T09:27:52+00:00 |  | 000069092-01 | CHARLOTTE | AKERS | CAROL S NELTNER MD INC | 937243 | CAROLYN S | NELTNER | 1427055607 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07032017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601013 | M5126, M533, M5416 | Radiculopathy, lumbar region | ICD10 | 07172017 | 07032017 | 07172017 | 22842, 63047, 22612, 22614, 61783, 20930, 20936, 22840, 22633, 22853 | INSJ BIOMECHANICAL DEVICE | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 15, 15, 15, 15, 15, 15, 15, 15, 15, 15 | CPT | C4 |  |  |  | 14.0 |
| 06062017 | 2017-06-06T10:05:25+00:00 | 025839643-7156 | 000031289-01 | KENNETH | SCHUMACHER | COPC CENTRAL OHIO PRIMAR | 935499 | ANIMESH | SHARMA | 1063455939 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06052017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606041 | N189 | Chronic kidney disease, unspecified | ICD10 | 07172017 | 06052017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 40.0 |
| 06082017 | 2017-06-08T11:25:26+00:00 |  | 000107461-01 | Roselie | Harless | GENESIS MEDICAL GRP LLC | 921922 | STEVEN H | KIMBERLY | 1851383137 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07132017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608049 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07172017 | 07132017 | 07152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06152017 | 2017-06-15T16:22:06+00:00 |  | 000095805-01 | Raphaella | Carpenter | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07122017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616001 | M4310, M4806 | Spinal stenosis, lumbar region | ICD10 | 07172017 | 07122017 | 07162017 | 63047, 63048, 22633, 22634, 22842, 20936, 20930, 61783, 22850 | REMOVAL POSTERIOR NONSEGMENTAL INSTRUMENTATION (REMOVE HARRINGTON ROD) | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 2 | 1, 1, 1, 1, 1, 1, 1, 1, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 06202017 | 2017-06-20T14:09:37+00:00 |  | 000102319-01 | CHERYL | BOSH | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 07132017 | 07152017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620103 | M4806 | Spinal stenosis, lumbar region | ICD10 | 07172017 | 07132017 | 07152017 | 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 06212017 | 2017-06-21T09:06:52+00:00 | 250018247174 | 000114511-01 | Joyce | Althoff | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06202017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621011 | K760, N390 | Urinary tract infection, site not specified | ICD10 | 07172017 | 06202017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 27.0 |
| 06222017 | 2017-06-22T08:25:34+00:00 |  | 000067164-01 | TERRY | BURCH | WRIGHT STATE PHYSICIANS | 929664 | JOHN K | BINI | 1861515165 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 07172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06182017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622065 | K429 | Umbilical hernia without obstruction or gangrene | ICD10 | 07172017 | 06182017 | 06242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06292017 | 2017-06-29T09:00:15+00:00 |  | 000086163-01 | Martha | Blanchard | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06292017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629022 | J209, R0602, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 07172017 | 06292017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 06292017 | 2017-06-29T20:49:46+00:00 |  | 000074071-01 | Ruth | Harper | ORTHO ASSOC OF ZANESVILL | 922140 | WILLIAM D | ALLEN | 1033101399 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07122017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630002 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07172017 | 07122017 | 07142017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06302017 | 2017-06-30T14:40:06+00:00 |  | 000070045-01 | Richard | Davis | MARIETTA HLTH CARE PHYS | 907862 | ALEXANDRU M | VAIDA | 1285703124 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07122017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630062 | R042, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 07172017 | 07122017 | 07152017 | 31622, 32480 | TOTAL-SUBTOTAL LOBECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 07032017 | 2017-07-03T09:54:56+00:00 | 250358917183 | 000034424-01 | LARRY | FALL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07022017 | 07162017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703022 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 07172017 | 07022017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07032017 | 2017-07-03T10:06:36+00:00 | 162921627184 | 000080358-01 | Gilbert | Mcgovern | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07032017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703027 | R112 | Nausea with vomiting, unspecified | ICD10 | 07172017 | 07032017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07032017 | 2017-07-03T16:28:40+00:00 |  | 000105278-01 | Danny | Roark | ALLIANCE PHYSICIANS INC | 900988 | PETER M | PAVLINA | 1881692341 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705002 | I350, Z006 | Encntr for exam for nrml cmprsn and ctrl in clncl rsrch prog | ICD10 | 07172017 | 07102017 | 07132017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 07052017 | 2017-07-05T10:24:36+00:00 | 178730267184 | 000035493-01 | KAY | MINER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07032017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705023 | I214, I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 07172017 | 07032017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 07052017 | 2017-07-05T15:52:26+00:00 |  | 000060191-01 | EARL | WHITE | SYCAMORE PRIMARY CARE GR | 947407 | MIRIAM A | HAREWOOD-MAKOL | 1558603746 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07032017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705104 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 07172017 | 07032017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07062017 | 2017-07-06T10:29:42+00:00 | 250768737186 | 000002975-01 | LENA | MILENKOVSKA | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07052017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706039 | K921, N390, R7881 | Bacteremia | ICD10 | 07172017 | 07052017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07062017 | 2017-07-06T08:49:54+00:00 |  | 000087374-01 | Frances | Winget | MIAMI VALLEY HSPISTS GRP | 906163 | ARSHAD A | SHAH | 1578583605 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07172017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07052017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706065 | S42214A | Unsp nondisp fx of surgical neck of right humerus, init | ICD10 | 07172017 | 07052017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07062017 | 2017-07-06T08:51:30+00:00 |  | 000116275-01 | Carol | Stollings | S DAYTON ACUTE CARE CNSL | 928230 | CARLOS A | JORDAN | 1972786630 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07052017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706067 | R079 | Chest pain, unspecified | ICD10 | 07172017 | 07052017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07062017 | 2017-07-06T11:54:38+00:00 |  | 000062668-01 | GAIL | LANDEFELD | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 07122017 | 07162017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706073 | T8452XD | Infect/inflm reaction due to internal left hip prosth, subs | ICD10 | 07172017 | 07122017 | 07162017 | 27091 | COMPLICATED REMOVAL OF HIP PROSTHES | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 07062017 | 2017-07-06T15:37:43+00:00 |  | 000088584-01 | Roger | Boles | GREENE MEMORIAL HOSPITAL | 939279 |  | GREENE MEMORIAL HOSPITAL | 1255317848 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 07172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07062017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706108 | R109 | Unspecified abdominal pain | ICD10 | 07172017 | 07062017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07072017 | 2017-07-07T10:13:17+00:00 | 251837257188 | 000021635-01 | ANITA | HARRIS | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07072017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707025 | I509 | Heart failure, unspecified | ICD10 | 07172017 | 07072017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07102017 | 2017-07-10T10:19:26+00:00 | 258875137189 | 000068305-01 | Vickie | Davis | MOUNT CARMEL HLTH SYS | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07092017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710034 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 07172017 | 07092017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07102017 | 2017-07-10T10:43:23+00:00 | 252535887190 | 000015901-01 | VELMA | WILLIAMS | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07102017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710048 | E875 | Hyperkalemia | ICD10 | 07172017 | 07102017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07112017 | 2017-07-11T10:47:02+00:00 | 267381867191 | 000066686-01 | DAVID | MARTIN | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07102017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711018 | J209 | Acute bronchitis, unspecified | ICD10 | 07172017 | 07102017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07112017 | 2017-07-11T10:50:28+00:00 | 259028897191 | 000000084-01 | CLIFFORD | PATTERSON | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07102017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711020 | K831 | Obstruction of bile duct | ICD10 | 07172017 | 07102017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07112017 | 2017-07-11T08:47:06+00:00 |  | 000045715-01 | RAYMOND | THIES | ALLIANCE PHYSICIANS INC | 947070 | CHRISTOPHER | MANHART | 1508191354 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07092017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711064 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07172017 | 07092017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07122017 | 2017-07-12T13:17:34+00:00 | 252136697193 | 000049003-01 | DOROTHY | NORRIS | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Medical Only | Reports | Inpatient | Inpatient | 07122017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712040 | R109 | Unspecified abdominal pain | ICD10 | 07172017 | 07122017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07122017 | 2017-07-12T10:09:20+00:00 |  | 000075745-01 | Alfred | Lecocq | GENESIS MEDICAL GRP LLC | 917712 | BRANDICE M | ALEXANDER | 1780886671 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07172017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07112017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712062 | K819 | Cholecystitis, unspecified | ICD10 | 07172017 | 07112017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07122017 | 2017-07-12T13:13:14+00:00 |  | 000106016-01 | Michelle | Damon | MOUNT CARMEL HLTH PRVDRS | 949510 | MARK W | BYRGE | 1053307389 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 07132017 | 07152017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712063 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 07172017 | 07132017 | 07152017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07122017 | 2017-07-12T12:53:02+00:00 |  | 000109944-01 | Billie E | Stanley | MARIETTA HLTH CARE PHYS | 932072 | BREA ABREU A | FRANCISCO | 1821382060 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07172017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07112017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712066 | D649, R739, W19XXXA | Unspecified fall, initial encounter | ICD10 | 07172017 | 07112017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07132017 | 2017-07-13T09:41:03+00:00 | 250471237194 | 000072549-01 | Charles | Hughes | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07122017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713015 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07172017 | 07122017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07142017 | 2017-07-14T09:32:01+00:00 | 252394637194 | 000110891-01 | Ruth | Shannon | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | Flexible Choice PPO | Reports | ACO - CHF | Inpatient | 07132017 | 07162017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714008 | R0602 | Shortness of breath | ICD10 | 07172017 | 07132017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07142017 | 2017-07-14T09:43:56+00:00 | 265843957194 | 000044711-01 | JULIE | SMITH | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 07132017 | 07172017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714011 | R079 | Chest pain, unspecified | ICD10 | 07172017 | 07132017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07132017 | 2017-07-13T16:28:15+00:00 |  | 000077971-01 | Danny | Short | MUSKINGUM VALLEY HLTH CT | 923156 | GARY J | CARVER | 1982781563 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 07172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714016 | J189, R079 | Chest pain, unspecified | ICD10 | 07172017 | 07102017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07142017 | 2017-07-14T10:53:19+00:00 | 025628836-7195 | 000069646-01 | ROBERT | WOLFE | MOUNT CARMEL HLTH PRVDRS | 937349 | THOMAS E | QUINN | 1467489898 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 07132017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714023 | R6521 | Severe sepsis with septic shock | ICD10 | 07172017 | 07132017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T11:08:35+00:00 |  | 000098026-01 | Gary | Lustgarten | MOUNT CARMEL HLTH PRVDRS | 904972 | BRADFORD B | MULLIN | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 07142017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717023 | M62838 | Other muscle spasm | ICD10 | 07172017 | 07142017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07132017 | 2017-07-13T11:39:19+00:00 |  | 000079406-01 | Leah | Stanley | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Pre-Service | PRE |  | RIVERSIDE METHODIST HOSPITAL | 07172017 | Denied | MediGold Classic Preferred | Phone | Services Available In-Network | Inpatient | 07172017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170713039 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 07172017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
