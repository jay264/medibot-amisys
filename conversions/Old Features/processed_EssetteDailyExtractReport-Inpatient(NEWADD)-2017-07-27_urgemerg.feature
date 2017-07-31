Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-27_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-27_URGEMERG
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
| 04262017 | 2017-04-26T11:26:33+00:00 |  | 000091636-01 | VERNON | LINES | OSU HLTH SYS ORTHO ONC P | 936691 | ANDREW H | GLASSMAN | 1629177274 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07242017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426045 | M1712, M25362 | Other instability, left knee | ICD10 | 07272017 | 07242017 | 07262017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05302017 | 2017-05-30T19:30:38+00:00 |  | 000039792-01 | MARY | BRANHAM | PIKEVILLE MEDICAL CENTER INC | 927608 |  | PIKEVILLE MEDICAL CENTER INC | 1528195864 | PIKEVILLE MEDICAL CENTER INC | 927608 | 1528195864 | PIKEVILLE MEDICAL CENTER INC | 1528195864 | Inpatient | IP | Concurrent Review | CONC |  | PIKEVILLE MEDICAL CENTER INC | 07272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05282017 | 06042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531011 | I679 | Cerebrovascular disease, unspecified | ICD10 | 07272017 | 05282017 | 06042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06192017 | 2017-06-19T14:27:55+00:00 |  | 000034379-01 | JOANNE | KITCHEN | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07252017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619114 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07272017 | 07252017 | 07262017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06192017 | 2017-06-19T14:39:16+00:00 |  | 000031258-01 | MARTHA | FISHBAUGH | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07252017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619123 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07272017 | 07252017 | 07262017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06202017 | 2017-06-20T11:06:44+00:00 |  | 000076812-01 | Henry | Bruegging | RECONSTRUCTIVE ORTHOS & | 932685 | JOSHUA M | MURPHY | 1982866356 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 07272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07182017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620062 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 07272017 | 07182017 | 07192017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 06272017 | 2017-06-27T12:17:28+00:00 |  | 000080598-01 | Rosa | Crowe | MERCY HEALTH PHYSICIANS | 921220 | JEFFREY R | WELSHHANS | 1851425938 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07212017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627072 | K5733, Z8719 | Personal history of other diseases of the digestive system | ICD10 | 07272017 | 07212017 | 07252017 | 44626 | REPAIR BOWEL OPENING | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 2.0 |
| 06272017 | 2017-06-27T10:35:25+00:00 | 017867281-7179 | 000084137-01 | Phyllis | Price | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07252017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627073 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07272017 | 07252017 | 07262017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07052017 | 2017-07-05T10:31:05+00:00 |  | 000086309-01 | Ronald | Gulley | MIAMI VALLEY HEART & LUN | 904108 | MARK P | ANSTADT | 1255331138 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 07272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07102017 | 07172017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705036 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 07272017 | 07102017 | 07172017 | 32601, 32100, 32663 | THORACOSCOPY, SURGICAL; | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 8, 8, 8 | CPT | C4 |  |  |  | 7.0 |
| 07062017 | 2017-07-06T09:47:29+00:00 |  | 000109877-01 | John | Gombeda | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706068 | D709, J189 | Pneumonia, unspecified organism | ICD10 | 07272017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07102017 | 2017-07-10T17:10:42+00:00 |  | 000114200-01 | Ida | Webb | AMERICAS URG CARE OF LEW | 907126 | HARRY P | NGUYEN | 1073500039 | PARKSIDE BEHAVIORAL HEALTH | 904396 | 1720011828 | PARKSIDE BEHAVIORAL HEALTH | 1720011828 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | PARKSIDE BEHAVIORAL HEALTH | 07272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07082017 | 07122017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711001 | F1020 | Alcohol dependence, uncomplicated | ICD10 | 07272017 | 07082017 | 07122017 | H0009 | ALCOHOL AND/OR DRUG SERVICES; ACUTE DETOXIFICATION (HOSPITAL INPATIENT) | HCPCS | 0 | 1 |  | 5 | HCPCS | HC |  |  |  | 4.0 |
| 07112017 | 2017-07-11T16:46:20+00:00 |  | 000106840-01 | Barbara | Pierson | OHIOHEALTH PHYS GRP | 928546 | JONATHAN M | ENLOW | 1811164619 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07112017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712002 | I2510, R079 | Chest pain, unspecified | ICD10 | 07272017 | 07112017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07122017 | 2017-07-12T14:11:44+00:00 |  | 000032467-01 | WILLIAM | CONWAY | OSU INTERNAL MED LLC | 923422 | JOSHUA J | WIDMAN | 1821222332 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712052 | I4891 | Unspecified atrial fibrillation | ICD10 | 07272017 | 07112017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07142017 | 2017-07-14T11:18:32+00:00 | 261275817194 | 000070684-01 | Catherine | Young | HMP OF OHIO PC | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07132017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714032 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 07272017 | 07132017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 07142017 | 2017-07-14T12:05:29+00:00 |  | 000051602-01 | NED | TOMLINSON | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07252017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714044 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 07272017 | 07252017 | 07262017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07142017 | 2017-07-14T15:03:21+00:00 |  | 000108880-01 | Amin | Hedayat | ALLIANCE PHYSICIANS INC | 939986 | CHRISTOPHER R | SCHNEIDER | 1588689475 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07132017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714066 | S066X9A | Traum subrac hem w LOC of unsp duration, init | ICD10 | 07272017 | 07132017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07172017 | 2017-07-17T11:25:19+00:00 | 259746317196 | 000014755-01 | LETHA | CANTRELL | COLS INPATIENT CARE INC | 942957 | CHARLES F | WARE III | 1528355922 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07152017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717026 | I4891 | Unspecified atrial fibrillation | ICD10 | 07272017 | 07152017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 07172017 | 2017-07-17T15:21:23+00:00 |  | 000033266-01 | LYNN | DEAN | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07242017 | 07262017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717111 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 07272017 | 07242017 | 07262017 | 50545 | LAPARO RADICAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07172017 | 2017-07-17T15:36:03+00:00 |  | 000094175-01 | James | Walker | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 07252017 | 07262017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718001 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 07272017 | 07252017 | 07262017 | 52601 | TRANSURETHRAL RESECT PROSTATE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07172017 | 2017-07-17T16:14:03+00:00 | 026506469-7178 | 000041599-01 | Fred | Stith | PREMIER UROLOGY CORP | 930560 | ADAM J | CLEMENS | 1477798049 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 07252017 | 07262017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718002 | D4100 | Neoplasm of uncertain behavior of unspecified kidney | ICD10 | 07272017 | 07252017 | 07262017 | 50545 | LAPARO RADICAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07182017 | 2017-07-18T10:29:39+00:00 |  | 000091622-01 | Ida | Barks | GENESIS MEDICAL GRP LLC | 947551 | EDMUND Z | BRINKIS | 1346354602 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07272017 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 07172017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718066 | S72012D, W19XXXA | Unspecified fall, initial encounter | ICD10 | 07272017 | 07172017 | 07222017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 1.0 |
| 07182017 | 2017-07-18T15:04:06+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY OF CINCINNATI | 948578 | HAREEPRASAD R | VONGOORU | 1407045693 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 07272017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 07172017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718112 | R112 | Nausea with vomiting, unspecified | ICD10 | 07272017 | 07172017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07182017 | 2017-07-18T10:58:39+00:00 |  | 000112765-01 | Christina | Williams | MENTAL HLTH SRVS FOR CLA | 907693 | YIU-CHUNG | CHAN | 1720036346 | MENTAL HEALTH SERVICES FOR CLARK | 904933 | 1417948407 | MENTAL HEALTH SERVICES FOR CLARK | 1417948407 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MENTAL HEALTH SERVICES FOR CLARK | 07272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07182017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718114 | F319 | Bipolar disorder, unspecified | ICD10 | 07272017 | 07182017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07182017 | 2017-07-18T13:41:12+00:00 |  | 000076154-01 | F | Wells | S DAYTON ACUTE CARE CNSL | 932707 | VINAY K | LINGABATHULA | 1578812129 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 07272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07172017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718125 | E860, K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 07272017 | 07172017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07192017 | 2017-07-19T16:42:48+00:00 |  | 000078942-01 | Rita | Dunn | N COLLEGE HILL INTL MED | 921367 | MICHAEL | JUSTIN | 1023196904 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 07272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07192017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720044 | N3000, R400, R4689 | Other symptoms and signs involving appearance and behavior | ICD10 | 07272017 | 07192017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07202017 | 2017-07-20T10:17:39+00:00 |  | 000078185-01 | John | Lachmann | STEVEN R LUNZ MD INC | 921394 | STEVEN R | LUNZ | 1710981089 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07192017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720045 | N179, R5383 | Other fatigue | ICD10 | 07272017 | 07192017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07212017 | 2017-07-21T11:20:05+00:00 |  | 000091288-01 | M Jane | Ludman | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721035 | K625, N179, N189 | Chronic kidney disease, unspecified | ICD10 | 07272017 | 07202017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07212017 | 2017-07-21T14:33:56+00:00 |  | 000077481-01 | Bessie | Williams | SOUND KENWOOD HSPISTS OF | 927327 | CESAR | ABUCHAIBE | 1316250582 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 07272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721060 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 07272017 | 07202017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07212017 | 2017-07-21T15:02:18+00:00 |  | 000014664-01 | PATRICK | AGOSTA | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721066 | K3580 | Unspecified acute appendicitis | ICD10 | 07272017 | 07202017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07242017 | 2017-07-24T11:10:42+00:00 | 256967757203 | 000089529-01 | Lynne-Reed | Carter | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07272017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07222017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724053 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 07272017 | 07222017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07242017 | 2017-07-24T15:01:49+00:00 |  | 000099023-01 | Joyce | Moore | S DAYTON ACUTE CARE CNSL | 913547 | SVEN E | RAYMOND | 1609830876 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 07272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07232017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725065 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 07272017 | 07232017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07252017 | 2017-07-25T14:25:28+00:00 |  | 000093789-01 | Leila | Hollett | OSU INTERNAL MED LLC | 916695 | ANTHONY J | MICHAELS | 1003998642 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07242017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725080 | E1122, K7290, Z01810 | Encounter for preprocedural cardiovascular examination | ICD10 | 07272017 | 07242017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07262017 | 2017-07-26T08:10:16+00:00 |  | 000074918-01 | Virginia | List | GENESIS MEDICAL GRP LLC | 905767 | JEFFREY S | LOBEL | 1366465346 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07242017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726034 | E8352 | Hypercalcemia | ICD10 | 07272017 | 07242017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07272017 | 2017-07-27T08:43:05+00:00 |  | 000109555-01 | Diana | Ritterholz | THE CHRIST HSP MED SPEC | 920876 | STEPHEN G | BENNETT | 1336183029 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 07272017 | Approved | MediGold Southwest OH Essential Care | Fax | Pending Admission | Inpatient | 08012017 | 09012017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170727005 | N200 | Calculus of kidney | ICD10 | 07272017 |  |  | 50080, 50040 | NEPHROSTOMY, NEPHROTOMY C DRAINAGE | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  | No child records to display. |  |
| 07272017 | 2017-07-27T11:48:09+00:00 |  | 000010325-01 | JAUNITA | ROUSH | OHIOHEALTH PHYS GRP | 940395 | MATTHEW | MOORMAN | 1386687804 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04122017 | 04172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727038 | S82843A | Displaced bimalleolar fracture of unsp lower leg, init | ICD10 | 07272017 | 04122017 | 04182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07252017 | 2017-07-25T13:07:38+00:00 |  | 000116943-01 | Sharon | Rockwell | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07272017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170725066 | L03129, N186 | End stage renal disease | ICD10 | 07272017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07262017 | 2017-07-26T13:56:04+00:00 |  | 000031566-01 | ELEONORA | VELALI | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07272017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170726080 | I639 | Cerebral infarction, unspecified | ICD10 | 07272017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
