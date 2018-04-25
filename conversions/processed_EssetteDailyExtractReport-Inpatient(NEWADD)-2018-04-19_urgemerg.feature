Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-19_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-19_URGEMERG
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
| 03222018 | 2018-03-22T16:31:00+00:00 |  | 000023166-01 | PATRICIA | MATHEWS | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04192018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04172018 | 04182018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323016 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 04192018 | 04172018 | 04182018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04022018 | 2018-04-02T10:45:48+00:00 |  | 000051273-01 | CYNTHIA | CAMERON | COMMUNITY HSPIST LLC | 913492 | MOHAMED H | HAMZA | 1720060940 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402036 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 04192018 | 03312018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 04152018 | 2018-04-15T13:41:04+00:00 |  | 000031027-01 | CAROL | KENDRICK | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04192018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 04152018 | 04182018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416053 | I4891 | Unspecified atrial fibrillation | ICD10 | 04192018 | 04152018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03132018 | 2018-03-13T15:48:39+00:00 |  | 000030364-01 | CHARLES | BARNHARD | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314003 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 04192018 | 04052018 | 04182018 | 34705 | EVAC RPR A-BIILIAC NDGFT | CPT | 1 | 1 | Approved | 14 | CPT | C4 |  |  |  | 13.0 |
| 03212018 | 2018-03-21T16:37:37+00:00 |  | 000062037-01 | MERL | JACKSON | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04052018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322010 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 04192018 | 04052018 | 04182018 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 14 | CPT | C4 |  |  |  | 13.0 |
| 03282018 | 2018-03-28T08:30:05+00:00 |  | 000099429-01 | Reuben | Hann | CEN OH UROLOGY GRP INC | 935986 | ADAM C | WEISER | 1023059680 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04112018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328071 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 04192018 | 04112018 | 04182018 | 50230 | NPHRECTMY RAD W RGNL LYPHADENCTMY | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 03232018 | 2018-03-23T15:45:03+00:00 |  | 000080738-01 | David | Hummeldorf | MERCY HEALTH PHYSICIANS | 921476 | SHARON A | SAX | 1356397608 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 04192018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03232018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326005 | A480, B9620, E1142, E1152, E11621, E1169, E6601, L03116, L97529, M86172, T8131XA, T8740 | Infection of amputation stump, unspecified extremity | ICD10 | 04192018 | 03232018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03292018 | 2018-03-29T15:24:36+00:00 |  | 000115139-01 | Sushma | Pandey | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04092018 | 04182018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329080 | C240 | Malignant neoplasm of extrahepatic bile duct | ICD10 | 04192018 | 04092018 | 04182018 | 47610 | CHOLECYSTECTOMY- CBD EXPLORATION | CPT | 1 | 1 | Approved | 10 | CPT | C4 |  |  |  | 9.0 |
| 03292018 | 2018-03-29T15:27:55+00:00 |  | 000034785-01 | BRENDA | RILEY | HAVEN BEHAVIORAL SRVS OF | 902891 | AMITA R | PATEL | 1649265489 | ACCESS HOSPITAL DAYTON LLC | 919882 | 1063737765 | ACCESS HOSPITAL DAYTON LLC | 1063737765 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | ACCESS HOSPITAL DAYTON LLC | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03282018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330046 | F0391, F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 04192018 | 03282018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 04032018 | 2018-04-03T14:29:27+00:00 |  | 000012053-01 | MOLLY | CURRY | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04172018 | 04182018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403100 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 04192018 | 04172018 | 04182018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04102018 | 2018-04-10T16:22:32+00:00 |  | 000055880-01 | Delores | Grossman | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04092018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411019 | I509 | Heart failure, unspecified | ICD10 | 04192018 | 04092018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04112018 | 2018-04-11T10:27:26+00:00 |  | 000027531-01 | BARBARA | VANBUSKIRK | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04102018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411063 | R0602 | Shortness of breath | ICD10 | 04192018 | 04102018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04122018 | 2018-04-12T16:21:04+00:00 |  | 000115957-01 | Mary Jo | Nuzum | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Southeast OH Essential Care | Fax | EIS | Inpatient | 04172018 | 04182018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412072 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 04192018 | 04172018 | 04182018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04162018 | 2018-04-16T15:25:34+00:00 |  | 000061076-01 | CAROLE | WEAVER | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04142018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416114 | A419 | Sepsis, unspecified organism | ICD10 | 04192018 | 04142018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04172018 | 2018-04-17T09:24:15+00:00 |  | 000040394-01 | ESTHER | COPE | COLS INPATIENT CARE INC | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04192018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04152018 | 04182018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417011 | J189, R0602 | Shortness of breath | ICD10 | 04192018 | 04152018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04162018 | 2018-04-16T19:15:36+00:00 |  | 000028420-01 | GWEN | BELLAR | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04192018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 04162018 | 04182018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417064 | R079 | Chest pain, unspecified | ICD10 | 04192018 | 04162018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T15:53:15+00:00 |  | 000066428-01 | Venita | Howard | GRANDVIEW HOSPITAL & SOU | 911768 | BRIAN W | ONDULICK | 1336129485 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04022018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404034 | R1084 | Generalized abdominal pain | ICD10 | 04192018 | 04022018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 04062018 | 2018-04-06T15:27:40+00:00 |  | 000053377-01 | THOMAS | JONES | ALLIANCE PHYSICIANS INC | 948158 | CHELSEA | NICKOLSON | 1033557764 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406053 | R531 | Weakness | ICD10 | 04192018 | 04052018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04082018 | 2018-04-08T08:56:36+00:00 |  | 000050635-01 | PATRICIA | LONG | OHIOHEALTH PHYS GRP | 936345 | ANN M | ARING | 1215925433 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04072018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409040 | K8050 | Calculus of bile duct w/o cholangitis or cholecyst w/o obst | ICD10 | 04192018 | 04072018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04102018 | 2018-04-10T14:32:03+00:00 |  | 000120064-01 | Virgil | Diffendal | PREMIER HEALTH SPEC INC | 945934 | NIVEDITA | MANKOTIA | 1750501441 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04092018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410105 | I619, J8403 | Idiopathic pulmonary hemosiderosis | ICD10 | 04192018 | 04092018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04112018 | 2018-04-11T08:55:58+00:00 |  | 000088051-01 | William | Hickman | MERCY HEALTH PHYSICIANS | 921264 | DONALD C | BUCKLEY | 1386678647 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 04192018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04112018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411053 | I2510, I350, T8203XA | Leakage of heart valve prosthesis, initial encounter | ICD10 | 04192018 | 04112018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04112018 | 2018-04-11T11:21:56+00:00 |  | 000016400-01 | SANDRA | JOYCE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04112018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411060 | J159 | Unspecified bacterial pneumonia | ICD10 | 04192018 | 04112018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04132018 | 2018-04-13T08:22:00+00:00 |  | 000076582-01 | Ann | Hess | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04192018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04122018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413020 | L0390 | Cellulitis, unspecified | ICD10 | 04192018 | 04122018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04142018 | 2018-04-14T12:13:36+00:00 |  | 000016020-01 | ADRIAN | BALZANO | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04182018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416006 | J189, M6281 | Muscle weakness (generalized) | ICD10 | 04192018 | 04132018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04142018 | 2018-04-14T12:04:36+00:00 |  | 000085598-01 | David | Willison | MOUNT CARMEL HLTH SYS | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416015 | K5669 | Other intestinal obstruction | ICD10 | 04192018 | 04132018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04142018 | 2018-04-14T16:58:08+00:00 |  | 000009759-01 | HAZEL | NOVOTNI | SOUND INPATIENT PHYS OF | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04142018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416032 | J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 04192018 | 04142018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04162018 | 2018-04-16T14:10:19+00:00 |  | 000029282-01 | RICHARD | BUECHNER | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04182018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416108 | I4891, R000, R079 | Chest pain, unspecified | ICD10 | 04192018 | 04132018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04172018 | 2018-04-17T11:13:44+00:00 |  | 000121883-01 | ROBERT | WETZEL JR | SOUND INPATIENT PHYS OF | 927320 | SAMATHA | PALADUGU | 1154635753 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417077 | I200, I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04192018 | 04162018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04172018 | 2018-04-17T15:48:16+00:00 |  | 000026521-01 | MARTHA | THACKER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 04182018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417119 | J159, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 04192018 | 04162018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04062018 | 2018-04-06T11:45:14+00:00 |  | 000102675-01 | Carol | Adams | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04052018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406033 | I959 | Hypotension, unspecified | ICD10 | 04192018 | 04052018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 04122018 | 2018-04-12T14:55:13+00:00 |  | 000003574-01 | BARBARA | JOHNSTONE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04112018 | 04132018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412067 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 04192018 | 04112018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T18:03:55+00:00 |  | 000074491-01 | Sharon | Hughes | ALLIANCE PHYSICIANS INC | 948158 | CHELSEA | NICKOLSON | 1033557764 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04142018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417037 | J441, R296 | Repeated falls | ICD10 | 04192018 | 04142018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04182018 | 2018-04-18T11:55:09+00:00 |  | 000089425-01 | James | Agan Jr | MOUNT CARMEL HLTH SYS | 919778 | GRACE O | UKAIRO | 1144532433 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 04192018 | 06182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418056 | I639 | Cerebral infarction, unspecified | ICD10 | 04192018 | 04172018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182018 | 2018-04-18T17:07:01+00:00 |  | 000120453-01 | John | Sanders | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | PROVIDER, UNKNOWN | 999999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient | IP | Concurrent Review | CONC | UNKNOWN | PROVIDER | 04192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04122018 | 04152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419016 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 04192018 | 04122018 | 04152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01302018 | 2018-01-30T09:45:00+00:00 |  | 000116848-01 | Jim | Potter | MIAMI VALLEY HSPISTS GRP | 919535 | SUDHIR D | DHOBALE | 1124294988 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01292018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419036 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04192018 | 01292018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04192018 | 2018-04-19T13:09:56+00:00 |  | 000081404-01 | Samara | Fields | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04192018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 04202018 | 05202018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180419043 | S72141A | Displaced intertrochanteric fracture of right femur, init | ICD10 | 04192018 |  |  | 27236 | FX FEMUR-NECK-OPEN REDUCTION | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  | No child records to display. |  |
