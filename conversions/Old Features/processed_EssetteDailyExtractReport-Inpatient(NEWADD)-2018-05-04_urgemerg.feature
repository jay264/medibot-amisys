Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-04_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-04_URGEMERG
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
| 04242018 | 2018-04-24T13:25:04+00:00 |  | 000024748-01 | HERBERT | BAKER | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424071 | R319 | Hematuria, unspecified | ICD10 | 05042018 | 04202018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 04132018 | 2018-04-13T12:45:55+00:00 |  | 000040065-01 | NANCY | RYAN | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05012018 | 05032018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413041 | S72434D, T84032D | Mech loosening of internal right knee prosthetic joint, subs | ICD10 | 05042018 | 05012018 | 05032018 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04132018 | 2018-04-13T16:44:36+00:00 |  | 000010408-01 | RUTH | KESSLER | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05012018 | 05032018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416005 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05042018 | 05012018 | 05032018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04242018 | 2018-04-24T10:11:27+00:00 |  | 000094207-01 | Jack | Briggs | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04262018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424035 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05042018 | 04262018 | 05032018 | 33405 | REPLACEMENT AORTIC VALVE | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 04242018 | 2018-04-24T13:29:18+00:00 |  | 000105643-01 | Frederick | Regan | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424090 | L03119, N390, R4182 | Altered mental status, unspecified | ICD10 | 05042018 | 04232018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04252018 | 2018-04-25T09:56:08+00:00 |  | 000020292-01 | FREDERICK | FILIPPI | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04222018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425016 | I4891 | Unspecified atrial fibrillation | ICD10 | 05042018 | 04222018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 04252018 | 2018-04-25T15:07:51+00:00 |  | 000104226-01 | ALICE | DAGUE | LICKING MEM HLTH PROF | 918687 | SANGEETA B | AMIN | 1629086780 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04252018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426011 | C8589 | Oth types of non-hodg lymph, extrnod and solid organ sites | ICD10 | 05042018 | 04252018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04262018 | 2018-04-26T12:28:38+00:00 |  | 000057994-01 | SUSAN | WALDREN | MENTAL HEALTH SERVICES F | 917369 | MARK A | SMITH | 1164413100 | MENTAL HEALTH SERVICES FOR CLARK | 904933 | 1417948407 | MENTAL HEALTH SERVICES FOR CLARK | 1417948407 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MENTAL HEALTH SERVICES FOR CLARK | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426043 | F333 | Major depressv disorder, recurrent, severe w psych symptoms | ICD10 | 05042018 | 04252018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04272018 | 2018-04-27T10:12:26+00:00 |  | 000035522-01 | JACK | SAUNER | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04262018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427028 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 05042018 | 04262018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T10:23:47+00:00 |  | 000070762-01 | Thurl | Bradburn | ALLIANCE PHYSICIANS INC | 915987 | JASON P | STRAUS | 1942380936 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 05042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04262018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430025 | V1909XA | Pedl cyc driver injured in collision w oth mv nontraf, init | ICD10 | 05042018 | 04262018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04302018 | 2018-04-30T11:57:40+00:00 |  | 000078468-01 | Diane | Galbreath | SCOTT WINE | 953710 | SCOTT | WINE | 1356785026 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05042018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04272018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430031 | A419, E1310, J9600, M6282, K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 05042018 | 04272018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05022018 | 2018-05-02T09:05:33+00:00 |  | 000018455-01 | GRETA | RIGSBY | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05012018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502039 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 05042018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05022018 | 2018-05-02T11:22:15+00:00 |  | 000029420-01 | BARBARA | BOLIN | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502041 | K5120 | Ulcerative (chronic) proctitis without complications | ICD10 | 05042018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05022018 | 2018-05-02T15:34:17+00:00 |  | 000119854-01 | James | Korp | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502096 | D62, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05042018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T11:05:25+00:00 |  | 000113795-01 | Roger | Savage | ADENA MEDICAL GROUP LLC | 944650 | ADERONKE O | ONINKU | 1962631465 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04272018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430052 | R0602 | Shortness of breath | ICD10 | 05042018 | 04272018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T11:36:16+00:00 |  | 000074122-01 | Nancy | Hissong | KNOX COMMUNITY HOSPITAL | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04272018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430057 | I4891, J189 | Pneumonia, unspecified organism | ICD10 | 05042018 | 04272018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T19:53:21+00:00 |  | 000101811-01 | DENNY | CARLISLE | MENTAL HEALTH SERVICES F | 907044 | KALPANA K | VISHNUPAD | 1598755662 | HAVEN BEHAVIORAL SRVS OF | 927026 | 1831460229 | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 1831460229 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 05042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04272018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501034 | F250 | Schizoaffective disorder, bipolar type | ICD10 | 05042018 | 04272018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05012018 | 2018-05-01T09:50:54+00:00 |  | 000028440-01 | WILLIAM | KIBBEY | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05042018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 04302018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501068 | J209, R0902 | Hypoxemia | ICD10 | 05042018 | 04302018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05012018 | 2018-05-01T12:30:44+00:00 |  | 000082032-01 | Wanza | Springer | UNIVERSITY OF CINCINNATI | 945752 | BRYAN J | GRIFFIN | 1851476998 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 05042018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04302018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502016 | F319 | Bipolar disorder, unspecified | ICD10 | 05042018 | 04302018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05022018 | 2018-05-02T09:08:45+00:00 |  | 000119241-01 | Wetzel | Marsh | CENTRAL OH HSPISTS INC | 905862 | MUHAMMAD W | AMIR | 1760432603 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05022018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502040 | I4891 | Unspecified atrial fibrillation | ICD10 | 05042018 | 05022018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022018 | 2018-05-02T10:31:03+00:00 |  | 000048852-01 | MARVIN | MEADOWS | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502059 | R55 | Syncope and collapse | ICD10 | 05042018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05042018 | 2018-05-04T09:04:40+00:00 |  | 000064964-01 | LOIS | LEFFLER | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504009 | I959, R188, R531, R5383 | Other fatigue | ICD10 | 05042018 | 04302018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
