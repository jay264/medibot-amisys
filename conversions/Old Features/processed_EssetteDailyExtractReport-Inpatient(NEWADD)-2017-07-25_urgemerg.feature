Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-25_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-25_URGEMERG
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
| 05052017 | 2017-05-05T15:33:03+00:00 |  | 000116127-01 | Donna | Reynolds | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07102017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505076 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07252017 | 07102017 | 07122017 | 27134, 27132 | CONV PREV HIP TO TOTAL HIP | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 05262017 | 2017-05-26T12:58:07+00:00 |  | 000116286-01 | Timothy | Synan | ORTHO ASSOC OF ZANESVILL | 921890 | BRAD E | BRAUTIGAN | 1114919479 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07252017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07212017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526059 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07252017 | 07212017 | 07242017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06262017 | 2017-06-26T12:39:41+00:00 |  | 000038770-01 | EDYTH | HALLAM | MALLIK, GUNWANT S | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07252017 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 07212017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626105 | M4126, M4316, M4726, M4806, M4807 | Spinal stenosis, lumbosacral region | ICD10 | 07252017 | 07212017 | 07242017 | 22558, 22853, 22612, 63047, 63048, 22614, 22842, 20931, 20930, 22585 | ARTHDSIS ANT/ANTLATERAL/@ ADDTL SP | CPT | 1, 3, 1, 1, 1, 1, 1, 2, 1, 2 | 1, 3, 1, 1, 1, 1, 1, 2, 1, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 06292017 | 2017-06-29T15:52:14+00:00 |  | 000107469-01 | Brenda | Daulton | MERCY HEALTH PHYSICIANS | 920971 | SURESH | NAYAK | 1730184946 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07252017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07192017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629086 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 07252017 | 07192017 | 07212017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06302017 | 2017-06-30T15:28:28+00:00 |  | 000116500-01 | Alden | Schneider | THE CHRIST HSP MED SPEC | 920876 | STEPHEN G | BENNETT | 1336183029 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 07252017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630073 | N185, N492 | Inflammatory disorders of scrotum | ICD10 | 07252017 | 06282017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 07062017 | 2017-07-06T13:09:12+00:00 |  | 000102117-01 | WILMA | ARNOLD | MOUNT CARMEL HLTH PRVDRS | 949510 | MARK W | BYRGE | 1053307389 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706084 | K551 | Chronic vascular disorders of intestine | ICD10 | 07252017 | 07072017 | 07252017 | 35631 | BYPASS GR,NT VN,AORTOCEL,MESER,RENL | CPT | 1 | 1 | Approved | 19 | CPT | C4 |  |  |  | 18.0 |
| 07092017 | 2017-07-09T10:17:01+00:00 |  | 000074549-01 | Lyllian | Helsel | OHIOHEALTH PHYS GRP | 931989 | VICTOR M | AWUOR | 1316110604 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07082017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710013 | R4701 | Aphasia | ICD10 | 07252017 | 07082017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07102017 | 2017-07-10T09:32:21+00:00 |  | 000100655-01 | Terry | Martin | OH HSP FOR PSYCHIATRY | 911060 | JAMES C | JOHNSON | 1972535094 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 07252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710021 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 07252017 | 07102017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 07112017 | 2017-07-11T15:51:38+00:00 |  | 000106719-01 | Judy | Curtis | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07252017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 07172017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712009 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 07252017 | 07172017 | 07222017 | 33405 | REPLACEMENT AORTIC VALVE | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 07132017 | 2017-07-13T10:26:32+00:00 | 168491487193 | 000071599-01 | Gary | Belter | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07122017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713033 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 07252017 | 07122017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 07142017 | 2017-07-14T08:31:13+00:00 |  | 000074779-01 | Alen | Broughton | SAMAAN, ROBERT G | 921469 | ROBERT G | SAMAAN | 1265482871 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07252017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07132017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714024 | R509 | Fever, unspecified | ICD10 | 07252017 | 07132017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07142017 | 2017-07-14T13:15:26+00:00 | 017869061-7202 | 000117425-01 | Patsy | Cruxton | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07252017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07242017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714050 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07252017 | 07242017 | 07252017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07142017 | 2017-07-14T14:02:29+00:00 | 025045927-7195 | 000017745-01 | WILLIAM | HOBENSACK | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 07142017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714056 | R310 | Gross hematuria | ICD10 | 07252017 | 07142017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07142017 | 2017-07-14T15:55:39+00:00 |  | 000085446-01 | Naomi | Sandidge | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714079 | I739 | Peripheral vascular disease, unspecified | ICD10 | 07252017 | 07182017 | 07192017 | 35371, 35303 | THROMBOENDARTERECTOMY INC PATCH GRAFT IF PERFORMED POPLITEAL ATRERY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 07172017 | 2017-07-17T11:23:50+00:00 |  | 000088015-01 | Deborah | Aldridge | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07202017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717057 | I739 | Peripheral vascular disease, unspecified | ICD10 | 07252017 | 07202017 | 07242017 | 35646 | BYPASS GR, NT VN, AORTOFEMORAL | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 07162017 | 2017-07-16T15:25:27+00:00 |  | 000042738-01 | JOAN | CLIFTON | COPC CENTRAL OHIO PRIMAR | 936243 | DONALD P | DEEP | 1679556245 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07152017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717069 | A419 | Sepsis, unspecified organism | ICD10 | 07252017 | 07152017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T07:26:42+00:00 |  | 000066729-01 | JUDITH | BLAIR | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07142017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717093 | R55 | Syncope and collapse | ICD10 | 07252017 | 07142017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T09:14:09+00:00 |  | 000099107-01 | James | Harbaum | PROFESSIONAL DIAGNOSTIC | 930403 | THOMAS M | O BRIEN | 1003844366 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 07252017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07142017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718029 | I4891, I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 07252017 | 07142017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07172017 | 2017-07-17T09:31:50+00:00 |  | 000076767-01 | William | Schwegman | SOUND KENWOOD HSPISTS OF | 928106 | SMITHA | ACHUTHANKUTTY | 1891016119 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 07252017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07152017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718031 | M869, R531 | Weakness | ICD10 | 07252017 | 07152017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07172017 | 2017-07-17T13:41:24+00:00 |  | 000057562-01 | CHARLES | KENYON | RIVERSIDE RAD ASSOC | 920632 | SUMIT | BHATLA | 1104823137 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07162017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718046 | D62 | Acute posthemorrhagic anemia | ICD10 | 07252017 | 07162017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07182017 | 2017-07-18T13:25:34+00:00 |  | 000076580-01 | Barbara | Dahlheimer | SOUND INPATIENT PHYS OF | 930101 | MICHAEL J | CROTTY | 1215199559 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 07252017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07182017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718121 | E875, I5023, N289, R5383, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 07252017 | 07182017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07192017 | 2017-07-19T09:38:12+00:00 | 250326597199 | 000054983-01 | GEORGE | ESTES | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07182017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719015 | J159 | Unspecified bacterial pneumonia | ICD10 | 07252017 | 07182017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07192017 | 2017-07-19T10:30:20+00:00 | 261793747199 | 000071565-01 | Jack | Utzinger | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07252017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07182017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719032 | I4891 | Unspecified atrial fibrillation | ICD10 | 07252017 | 07182017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07192017 | 2017-07-19T14:34:58+00:00 |  | 000012844-01 | EVELYN | TRAYLOR | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07182017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719075 | K625 | Hemorrhage of anus and rectum | ICD10 | 07252017 | 07182017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07202017 | 2017-07-20T10:25:26+00:00 | 172588767201 | 000107704-01 | Margaret | Fettrow | HMP OF OHIO PC | 923291 | BASHAR | ALAWAD | 1396024121 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 07192017 | 07232017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720023 | R0602 | Shortness of breath | ICD10 | 07252017 | 07192017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07202017 | 2017-07-20T07:00:08+00:00 |  | 000038832-01 | DAVID | BOLDON | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07172017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720047 | M6281 | Muscle weakness (generalized) | ICD10 | 07252017 | 07172017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07202017 | 2017-07-20T13:56:48+00:00 |  | 000075797-01 | Durwood | Timberman | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07192017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720052 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 07252017 | 07192017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07202017 | 2017-07-20T12:54:35+00:00 |  | 000111257-01 | Khalil | Kittaneh | HMP OF OHIO PC | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07252017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07192017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720055 | R42 | Dizziness and giddiness | ICD10 | 07252017 | 07192017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07202017 | 2017-07-20T10:01:21+00:00 |  | 000020762-01 | FLORENCE | HARDESTY | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720073 | A419 | Sepsis, unspecified organism | ICD10 | 07252017 | 07202017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07202017 | 2017-07-20T16:11:45+00:00 |  | 000099014-01 | Robert | Otto | FAIRFIELD HSPISTS INC | 932916 | SENAI | NEGASSI | 1255604609 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07252017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07202017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720091 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 07252017 | 07202017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07212017 | 2017-07-21T09:17:39+00:00 | 251348467201 | 000027719-01 | CLIFTON | BASHAM | HMP OF OHIO PC | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07202017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721006 | L0390 | Cellulitis, unspecified | ICD10 | 07252017 | 07202017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07212017 | 2017-07-21T09:10:19+00:00 |  | 000044848-01 | VIRGINIA | BANTON | OHIOHEALTH PHYS GRP | 943241 | THANH V | NGUYEN | 1073755294 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07192017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721014 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 07252017 | 07192017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07212017 | 2017-07-21T13:32:26+00:00 |  | 000079361-01 | Robert | Haynes | SOUND INPATIENT PHYS OF | 930101 | MICHAEL J | CROTTY | 1215199559 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 07252017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07202017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721053 | I509, N189 | Chronic kidney disease, unspecified | ICD10 | 07252017 | 07202017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T09:27:50+00:00 | 251716817202 | 000015448-01 | PAUL | GINN | COPC CENTRAL OHIO PRIMAR | 908066 | BHAIRAVI M | PATEL | 1740381532 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07212017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724020 | R079 | Chest pain, unspecified | ICD10 | 07252017 | 07212017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07242017 | 2017-07-24T09:37:13+00:00 | 250582347204 | 000027314-01 | WILLIAM | JOHNSTON | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 07232017 | 07252017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724025 | R079 | Chest pain, unspecified | ICD10 | 07252017 | 07232017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07242017 | 2017-07-24T10:13:26+00:00 | 253859967203 | 000006796-01 | HERBERT | SHARP | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07222017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724041 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 07252017 | 07222017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07242017 | 2017-07-24T10:19:49+00:00 | 261379627204 | 000016601-01 | RAYMOND | STACK | HMP OF OHIO PC | 927692 | SHAHED | HASNAT | 1770915951 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 07242017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724044 | J441, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 07252017 | 07242017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T11:14:17+00:00 | 257566417202 | 000100253-01 | James | Indiciani | HMP OF OHIO PC | 942986 | RAMACHANDER R | ELURI | 1790036770 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07252017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07212017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724056 | I480 | Paroxysmal atrial fibrillation | ICD10 | 07252017 | 07212017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07212017 | 2017-07-21T13:56:55+00:00 |  | 000094451-01 | Tanya | Jasinski | THE OH STATE UNIVERSITY HSP REHAB | 936564 |  | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 936564 | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HSP REHAB | 07252017 | Denied | Flexible Choice PPO | Fax | Services Available In-Network | Inpatient | 07252017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170721054 | R110, R530, V151 | HX MAJOR CARDIOVASC SURG | ICD10 | 07252017 | 07242017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
