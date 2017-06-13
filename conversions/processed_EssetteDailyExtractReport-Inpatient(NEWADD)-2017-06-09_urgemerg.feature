Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-09_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-09_URGEMERG
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
	And the test pauses for "2" seconds

	And I use the sub class "<sub_class>" to determine what location to enter into the location image
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
| 04252017 | 2017-04-25T14:58:45+00:00 |  | 000080708-01 | Phyllis | Minner | L & P SERVICES INC | 922113 | DAVID P | HILL | 1073518114 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 06092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04242017 | 05032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427001 | F0151 | Vascular dementia with behavioral disturbance | ICD10 | 06092017 | 04242017 | 05032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05022017 | 2017-05-02T07:47:56+00:00 | 258757757121 | 000013379-01 | LAUREL | DILIBERTI | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Inpatient | IP | Concurrent Review | CONC |  | DILEY RIDGE MEDICAL CENTER | 06092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05012017 | 05022017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502001 | J159 | Unspecified bacterial pneumonia | ICD10 | 06092017 | 05012017 | 05032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05012017 | 2017-05-01T15:39:38+00:00 | 026716405-7121 | 000110252-01 | Roxann | Woolum | ORTHO & NEURO CONSULTS I | 942983 | RYAN M | PALMER | 1912134487 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502047 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06092017 | 06082017 | 06092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05012017 | 2017-05-01T14:45:25+00:00 |  | 000112498-01 | Margaret | Frank | FAIRFIELD HLTHCARE PROFS | 926117 | IRFAN | AHMED | 1740409333 | SOJOURN AT SENECA | 950944 | 1417341751 | SOJOURN AT SENECA | 1417341751 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | SOJOURN AT SENECA | 06092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04302017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502068 | F209, F328 | Other depressive episodes | ICD10 | 06092017 | 04302017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 40.0 |
| 05082017 | 2017-05-08T10:44:03+00:00 |  | 000039105-01 | EVA | MULLINS | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508049 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06092017 | 06072017 | 06082017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05092017 | 2017-05-09T12:17:01+00:00 |  | 000034408-01 | TERRY | LANDIS | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509061 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06092017 | 06062017 | 06072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05122017 | 2017-05-12T16:58:47+00:00 | 017471587-7139 | 000112350-01 | Eleanor | Sanford | CEN OH NEURO SURGEONS IN | 909312 | PHILLIP | IMMESOETE | 1609089317 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06062017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170513002 | M4802 | Spinal stenosis, cervical region | ICD10 | 06092017 | 06062017 | 06092017 | 63045, 22600, 20936, 20930, 22614, 22842, 63046, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1, 1, 1, 3 | 1, 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 05192017 | 2017-05-19T16:59:04+00:00 |  | 000046946-01 | BEVERLY | SEYMOUR | ADENA MEDICAL GROUP LLC | 901483 | JAMES E | FLEMING | 1952326159 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06092017 | Approved | MediGold Essential Care | Member | Inpatient | Inpatient | 05312017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522005 | M4316, M4806 | Spinal stenosis, lumbar region | ICD10 | 06092017 | 05312017 | 06032017 | 63047, 20937, 22633, 22853, 22840, 22830, 22850 | REMOVAL POSTERIOR NONSEGMENTAL INSTRUMENTATION (REMOVE HARRINGTON ROD) | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 05232017 | 2017-05-23T09:49:06+00:00 |  | 000074837-01 | Jerome | Smith | ORTHO ASSOC OF ZANESVILL | 922140 | WILLIAM D | ALLEN | 1033101399 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523046 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 06092017 | 06072017 | 06092017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 1.0 |
| 05232017 | 2017-05-23T11:54:27+00:00 |  | 000107750-01 | Margaret | Curtin | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06092017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 06082017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523059 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06092017 | 06082017 | 06092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05242017 | 2017-05-24T13:34:21+00:00 | 025531720-7144 | 000038625-01 | DAVID | CATTEY | ORTHOPEDIC ONE INC | 936932 | CHRISTOPHER | HOLZAEPFEL | 1770695199 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524069 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 06092017 | 06072017 | 06082017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05242017 | 2017-05-24T16:05:52+00:00 | 025197813-7138 | 000104683-01 | Bonnie | Long | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06092017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525001 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06092017 | 06072017 | 06082017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05252017 | 2017-05-25T08:47:07+00:00 |  | 000065875-01 | JOHN | TRIMBLE | CLEVELAND CLINIC FNDN | 915268 | ESTEBAN | CHENG-CHING | 1851568018 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 06092017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 05222017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525016 | I639 | Cerebral infarction, unspecified | ICD10 | 06092017 | 05222017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05252017 | 2017-05-25T13:02:27+00:00 |  | 000032116-01 | LARRY | EDGINGTON | APOGEE MED GRP OHIO INC | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05242017 | 05272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525043 | I10, I639, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 06092017 | 05242017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05252017 | 2017-05-25T12:41:26+00:00 | 026484273-7146 | 000083066-01 | Sharon | Vanarsdale | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525046 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06092017 | 06072017 | 06082017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05252017 | 2017-05-25T13:15:32+00:00 |  | 000098270-01 | Jerry | Deahl | UNION COUNTY PHYS CORP | 917737 | MICHAEL D | JORDAN | 1851512875 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 06092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525047 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 06092017 | 06062017 | 06082017 | 50234 | NPHRECTMY W TOT URETRCTMY SAM INCIS | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 05302017 | 2017-05-30T10:53:17+00:00 |  | 000004975-01 | BARBARA | DUNCANSON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05272017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530071 | I4891, J209, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 06092017 | 05272017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 05302017 | 2017-05-30T10:58:52+00:00 |  | 000058722-01 | TONI | EDINGTON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05262017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530077 | K559 | Vascular disorder of intestine, unspecified | ICD10 | 06092017 | 05262017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 05302017 | 2017-05-30T11:05:15+00:00 | 025116086-7149 | 000010580-01 | FRED | THOMAS | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05292017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530084 | R413 | Other amnesia | ICD10 | 06092017 | 05292017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05302017 | 2017-05-30T12:47:50+00:00 |  | 000033189-01 | DONALD | CONGROVE | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05282017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530168 | R109 | Unspecified abdominal pain | ICD10 | 06092017 | 05282017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05302017 | 2017-05-30T14:38:55+00:00 |  | 000024040-01 | Ariel | Etgen | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05302017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530182 | I509, J449, J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 06092017 | 05302017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05312017 | 2017-05-31T06:39:11+00:00 | 026420052-7125 | 000102454-01 | Mark | Coon | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06082017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531004 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 06092017 | 06082017 | 06092017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05312017 | 2017-05-31T10:30:00+00:00 | 025083050-7122 | 000073196-01 | Pamala | Cade | ORTHO & NEURO CONSULTS I | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06092017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 06072017 | 06082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531045 | M4802 | Spinal stenosis, cervical region | ICD10 | 06092017 | 06072017 | 06082017 | 22551, 22853, 22845, 20930, 20936 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 05312017 | 2017-05-31T10:49:32+00:00 | 002753667-7138 | 000097637-01 | Charles | Parker | ORTHO & NEURO CONSULTS I | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531058 | M4180, M4806 | Spinal stenosis, lumbar region | ICD10 | 06092017 | 06072017 | 06092017 | 22612, 22614, 63047, 22843, 20930, 20936, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 05312017 | 2017-05-31T11:46:01+00:00 | 026546595-7109 | 000048358-01 | Beulah | Watson | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531064 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06092017 | 06072017 | 06082017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06022017 | 2017-06-02T14:31:37+00:00 | 025363974-7153 | 000107676-01 | Linda | Mickle | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06092017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 06072017 | 06082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602073 | M6620 | Spontaneous rupture of extensor tendons, unspecified site | ICD10 | 06092017 | 06072017 | 06082017 | 27380 | SUTURE, PRIM., INFRAPATELLAR TENDON | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06022017 | 2017-06-02T15:27:06+00:00 |  | 000034689-01 | PATRICIA | BRAGG | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06022017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602074 | R0602 | Shortness of breath | ICD10 | 06092017 | 06022017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06042017 | 2017-06-04T21:23:42+00:00 |  | 000111453-01 | VERNON | KINDER JR | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06092017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 06032017 | 06082017 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170604002 | M86171 | Other acute osteomyelitis, right ankle and foot | ICD10 | 06092017 | 06032017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06042017 | 2017-06-04T21:45:08+00:00 |  | 000096969-01 | Wendell | Williamson | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06092017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06022017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170604006 | I509 | Heart failure, unspecified | ICD10 | 06092017 | 06022017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06052017 | 2017-06-05T06:51:26+00:00 |  | 000037946-01 | PETER | PALM | OSU INTERNAL MED LLC | 947934 | SAMY K | ATAYA | 1376986653 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06022017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605011 | J0410 | Acute tracheitis without obstruction | ICD10 | 06092017 | 06022017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T09:18:35+00:00 |  | 000103677-01 | Eddie | White | HOSP SVC MED GRP OF MARY | 918652 | FRAOL | ADUGNA | 1134386519 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06022017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605053 | J189 | Pneumonia, unspecified organism | ICD10 | 06092017 | 06022017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T10:41:07+00:00 |  | 000099733-01 | Jody | Devoy | OB GYN OF SEORMC | 921886 | JOSEPH | BINKIEWICZ | 1891775029 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 06092017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06072017 | 06092017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605076 | D259 | Leiomyoma of uterus, unspecified | ICD10 | 06092017 | 06072017 | 06092017 | 58150 | TOTAL HYST W/WO RMVL TUBES OR OVARY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06052017 | 2017-06-05T10:52:35+00:00 |  | 000104156-01 | GEORGE | SHARP | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06032017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605080 | A419, J189, J9601, R0682, R0902, R509 | Fever, unspecified | ICD10 | 06092017 | 06032017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T15:42:20+00:00 |  | 000062041-01 | DAVID | HAYS | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06032017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605131 | I214, I509 | Heart failure, unspecified | ICD10 | 06092017 | 06032017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06052017 | 2017-06-05T15:42:20+00:00 |  | 000073730-01 | Nellie | Cline | OSU INTERNAL MED LLC | 946409 | TARA M | BAUTISTA | 1205219375 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06032017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605134 | M25559 | Pain in unspecified hip | ICD10 | 06092017 | 06032017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06062017 | 2017-06-06T14:59:56+00:00 |  | 000051895-01 | GIDDIONS | MARCUM | CLEVELAND CLINIC FNDN | 930630 | SIVA | RAJA | 1548317522 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 06092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05282017 | 05292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606078 | R509 | Fever, unspecified | ICD10 | 06092017 | 05282017 | 05292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06072017 | 2017-06-07T08:18:49+00:00 |  | 000063044-01 | MARLENE | LYKINS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06092017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06062017 | 06082017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607008 | I82401 | Acute embolism and thombos unsp deep veins of r low extrem | ICD10 | 06092017 | 06062017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06072017 | 2017-06-07T14:11:52+00:00 |  | 000090581-01 | Fred | Baker | CENTRAL OH SURG SPEC INC | 936579 | STEPHEN T | FISHER | 1255392098 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 06092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607068 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06092017 | 06062017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06072017 | 2017-06-07T14:09:04+00:00 |  | 000114733-01 | L | PALMER | CLERMONT INTERNISTS ASSO | 921368 | ANIL K | KAKUMANU | 1922287515 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 06092017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607069 | K8050 | Calculus of bile duct w/o cholangitis or cholecyst w/o obst | ICD10 | 06092017 | 06072017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06082017 | 2017-06-08T07:17:57+00:00 |  | 000106736-01 | Bridget | Kitchen | COLS OB GYN INC | 943591 | MONICA L | WIRRIG | 1598051369 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06092017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 06072017 | 06082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608001 | N950 | Postmenopausal bleeding | ICD10 | 06092017 | 06072017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
