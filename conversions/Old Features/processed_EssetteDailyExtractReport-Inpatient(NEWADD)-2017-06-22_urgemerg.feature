Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-22_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-22_URGEMERG
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
| 03172017 | 2017-03-17T11:30:33+00:00 |  | 000094527-01 | Carolyn | Adams | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06202017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170317017 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06222017 | 06202017 | 06212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05152017 | 2017-05-15T11:31:15+00:00 |  | 000041801-01 | JAMES | JOHNSTON | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06192017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515069 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06222017 | 06192017 | 06212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05152017 | 2017-05-15T15:00:05+00:00 |  | 000006396-01 | Stella | Pickrell | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06202017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515147 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06222017 | 06202017 | 06222017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05162017 | 2017-05-16T10:36:43+00:00 |  | 000030992-01 | ASA | EGELSTON JR | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06202017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516036 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06212017 | 06202017 | 06212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05262017 | 2017-05-26T15:05:38+00:00 |  | 000106392-01 | MARTHA | LEMON | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06202017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526073 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06222017 | 06202017 | 06212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05302017 | 2017-05-30T14:56:53+00:00 |  | 000114652-01 | Luanne | Woolfe | KNOX COMMUNITY HSP PHYS | 909698 | GREGORY J | CUSH | 1376579243 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 06222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06192017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530200 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06222017 | 06192017 | 06202017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06022017 | 2017-06-02T17:29:48+00:00 |  | 000113294-01 | LESLIE | WARD | FAIRFIELD HLTHCARE PROFS | 946665 | JAMES | PAN | 1235316589 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06222017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06052017 | 06182017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605001 | L97904, R079 | Chest pain, unspecified | ICD10 | 06222017 | 06052017 | 06182017 | 28805 | AMPUTATION FOOT-TRANSMETATARSAL | CPT | 2 | 2 | Approved | 14 | CPT | C4 |  |  |  | 13.0 |
| 06042017 | 2017-06-04T09:13:01+00:00 |  | 000009280-01 | THEOLA | WAFE | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06222017 | Approved | MediGold Medical Only | Reports | Inpatient | Inpatient | 06022017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607025 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 06222017 | 06022017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 06092017 | 2017-06-09T08:33:56+00:00 |  | 000020087-01 | ROBERT | HESS | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609024 | I517, N19 | Unspecified kidney failure | ICD10 | 06222017 | 06082017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06092017 | 2017-06-09T09:52:59+00:00 |  | 000061181-01 | DARLENE | HAUGHN | AKSM HEALTHCARE COLLABO | 934886 | DAVID W | STEWART | 1720029903 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609039 | D49511 | NEOPLASM OF UNSPECIFIED BEHAVIOR OF RIGHT KIDNEY | ICD10 | 06222017 | 06132017 | 06222017 | 50545 | LAPARO RADICAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 10 | CPT | C4 |  |  |  | 9.0 |
| 06112017 | 2017-06-11T15:04:18+00:00 |  | 000017859-01 | ROBERT | GAMBILL | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06102017 | 06182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612063 | D649, G9341, N390, R4182 | Altered mental status, unspecified | ICD10 | 06222017 | 06102017 | 06182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06132017 | 2017-06-13T15:22:05+00:00 |  | 000104150-01 | LILLIAN | CUNNINGHAM | THE OH STATE UNIVERSITY | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06122017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613070 | I4891 | Unspecified atrial fibrillation | ICD10 | 06222017 | 06122017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06152017 | 2017-06-15T07:46:59+00:00 |  | 000079361-01 | Robert | Haynes | SOUND KENWOOD HSPISTS OF | 943053 | JEFFREY T | HAUSFELD | 1023374220 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 06222017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06142017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615002 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 06222017 | 06142017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06152017 | 2017-06-15T09:14:49+00:00 | 253642667165 | 000023593-01 | BETTY | DINGESS | HMP OF OHIO PC | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06152017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615009 | K859 | Acute pancreatitis, unspecified | ICD10 | 06212017 | 06152017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06152017 | 2017-06-15T09:32:01+00:00 | 250043637165 | 000006262-01 | LARRY | BICE | FAHRIG, CHARLES M | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06142017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615017 | J159 | Unspecified bacterial pneumonia | ICD10 | 06222017 | 06142017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06152017 | 2017-06-15T11:16:11+00:00 |  | 000096342-01 | Jannie | Byndon | HMP OF RICHLAND COUNTY L | 918510 | HARMANPREET S | SHINH | 1578729174 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06222017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06152017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615047 | K5669 | Other intestinal obstruction | ICD10 | 06222017 | 06152017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06162017 | 2017-06-16T09:06:54+00:00 | 250437777166 | 000051412-01 | GLENDA | GARRISON | HMP OF OHIO PC | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06152017 | 06212017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616011 | J189, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 06222017 | 06152017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06162017 | 2017-06-16T10:09:12+00:00 | 257590257166 | 000091892-01 | Leona | Dunford | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06152017 | 06222017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616030 | I509 | Heart failure, unspecified | ICD10 | 06222017 | 06152017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06162017 | 2017-06-16T10:22:24+00:00 |  | 000002897-01 | JUDY | WILSON | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06152017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616033 | I509 | Heart failure, unspecified | ICD10 | 06212017 | 06152017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06162017 | 2017-06-16T10:40:04+00:00 |  | 000048440-01 | MICHAEL | HATFIELD | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06212017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06152017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616036 | R109 | Unspecified abdominal pain | ICD10 | 06212017 | 06152017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06162017 | 2017-06-16T10:45:38+00:00 | 257201417166 | 000048223-01 | ROBERT | MILLER | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06162017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616037 | R748 | Abnormal levels of other serum enzymes | ICD10 | 06222017 | 06162017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06162017 | 2017-06-16T14:14:05+00:00 |  | 000022428-01 | FLORENCE | JONES | ORTHO TRAUMA SRVS LTD | 909385 | BRUCE G | FRENCH | 1568447696 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06152017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616063 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 06222017 | 06152017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06162017 | 2017-06-16T14:33:17+00:00 |  | 000054135-01 | BETTY | KOZUH | MIAMI VALLEY HSPISTS GRP | 944876 | ASHOK K | KANUGULA | 1487919908 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06162017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616065 | I214, I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 06222017 | 06162017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06162017 | 2017-06-16T14:55:03+00:00 |  | 000110519-01 | BETTY | HERZOG | CHETNA MITAL MD LLC | 921414 | CHETNA | MITAL | 1285637694 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 06222017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06152017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616067 | I4891 | Unspecified atrial fibrillation | ICD10 | 06222017 | 06152017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T09:24:29+00:00 | 025547848-7168 | 000114840-01 | HENRY | HALL | HMP OF OHIO PC | 915074 | ARINZE E | AKUSOBA | 1366517591 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06212017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 06172017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619021 | A419 | Sepsis, unspecified organism | ICD10 | 06212017 | 06172017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T09:27:56+00:00 | 025656430-7169 | 000065095-01 | WILLIAM | HYPES | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06182017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619022 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 06212017 | 06182017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06192017 | 2017-06-19T11:20:30+00:00 | 253848137169 | 000074923-01 | Jane | Ryan | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06192017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619062 | I214, I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 06222017 | 06192017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T09:10:53+00:00 |  | 000110641-01 | Ruth | Jones | SOUND KENWOOD HSPISTS OF | 931299 | JIGAR | PATEL | 1497064323 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 06222017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06152017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619072 | D649, R0609 | Other forms of dyspnea | ICD10 | 06222017 | 06152017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06192017 | 2017-06-19T09:20:36+00:00 |  | 000087340-01 | Hilda | Hesse | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06222017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06182017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619075 | I638, R4701, R471 | Dysarthria and anarthria | ICD10 | 06222017 | 06182017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T12:47:20+00:00 |  | 000079976-01 | Beverly | Mayhugh | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06162017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619076 | J90, K7291, R188 | Other ascites | ICD10 | 06222017 | 06162017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T08:14:46+00:00 |  | 000106250-01 | James | Wolffram | CLERMONT INTERNISTS ASSO | 924704 | SUSHEELA | RAJAN | 1144273673 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 06222017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06162017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619087 | A419, D72829, J189, R509, R531 | Weakness | ICD10 | 06222017 | 06162017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T08:28:08+00:00 |  | 000108505-01 | Kenneth | Parsons | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06222017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06182017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619091 | A419, D709, G20, L03116, R5081, R6520 | Severe sepsis without septic shock | ICD10 | 06222017 | 06182017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T10:27:24+00:00 |  | 000076804-01 | Franklin | Bash | GENESIS MEDICAL GRP LLC | 915977 | JAMES P | ADAMO | 1194721993 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06172017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619107 | A419 | Sepsis, unspecified organism | ICD10 | 06222017 | 06172017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T14:50:50+00:00 |  | 000035014-01 | DORIS | JOHNSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06192017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619116 | E875 | Hyperkalemia | ICD10 | 06222017 | 06192017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06192017 | 2017-06-19T10:24:33+00:00 |  | 000084931-01 | Arthur | Byrd Jr | CHERRY WESTGATE FAM PRCT | 934743 | PATRICK J | SCARPITTI | 1659378115 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06172017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619141 | A419 | Sepsis, unspecified organism | ICD10 | 06222017 | 06172017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T10:28:21+00:00 |  | 000087572-01 | John | Sellars | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06142017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619144 | R319, R634 | Abnormal weight loss | ICD10 | 06222017 | 06142017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T16:03:34+00:00 |  | 000062130-01 | JOYCE | PIERCE | INTERNAL MED CARE INC | 904949 | INGRID M | BROWN | 1952309726 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06162017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620008 | D649, R000 | Tachycardia, unspecified | ICD10 | 06222017 | 06162017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06202017 | 2017-06-20T09:00:35+00:00 | 251323327170 | 000024643-01 | DONALD | ANDERSEN | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06192017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620015 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 06222017 | 06192017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06202017 | 2017-06-20T07:14:57+00:00 |  | 000106457-01 | Marjorie | Hershner | SOUND KENWOOD HSPISTS OF | 925204 | AMIT | PATEL | 1720231897 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06222017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06172017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620016 | I639 | Cerebral infarction, unspecified | ICD10 | 06222017 | 06172017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T16:39:18+00:00 |  | 000089985-01 | Georgia | King | DAYTON CHEST MEDICINE | 923217 | NAVEENA | SALLAPUDI | 1982709325 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06182017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620019 | R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 06222017 | 06182017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06202017 | 2017-06-20T08:57:49+00:00 |  | 000053741-01 | WILLIAM | SHULL | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06192017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620066 | J189, R0602, R531 | Weakness | ICD10 | 06222017 | 06192017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06202017 | 2017-06-20T11:52:36+00:00 |  | 000115145-01 | Rex | Allen | FAIRFIELD HLTHCARE PROFS | 918203 | AVNEET S | HIRA | 1750570669 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06222017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06192017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620080 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 06222017 | 06192017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06202017 | 2017-06-20T14:24:33+00:00 |  | 000104609-01 | Arnold | Brunotte | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 06222017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06192017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620098 | D72829, E872, R0600, R739, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 06222017 | 06192017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06202017 | 2017-06-20T14:27:13+00:00 | 250985037165 | 000001921-01 | DOROTHEA | RIENSTRA | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06202017 | 06212017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620099 | I4891 | Unspecified atrial fibrillation | ICD10 | 06222017 | 06202017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06202017 | 2017-06-20T15:54:25+00:00 |  | 000092910-01 | Jonathan | Brown | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06192017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620112 | E1010 | Type 1 diabetes mellitus with ketoacidosis without coma | ICD10 | 06222017 | 06192017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06212017 | 2017-06-21T10:46:47+00:00 | 251138417171 | 000093504-01 | Nancy | Tabor | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06202017 | 06212017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621024 | M25559 | Pain in unspecified hip | ICD10 | 06222017 | 06202017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06212017 | 2017-06-21T14:21:04+00:00 |  | 000065386-01 | MANUS | SCOTT SR | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06212017 | 06222017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621049 | M19011, M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 06222017 | 06212017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06212017 | 2017-06-21T20:18:05+00:00 |  | 000039116-01 | GAYLE | HUGHES | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06192017 | 06212017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621080 | I6523, I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 06212017 | 06192017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06212017 | 2017-06-21T20:44:59+00:00 |  | 000027883-01 | CEREDA | WOOTEN | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06192017 | 06212017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621081 | I6523, I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 06212017 | 06192017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06222017 | 2017-06-22T07:18:43+00:00 |  | 000052901-01 | LOIS | BEACHLER | ACUTE CARE SURGEONS LLC | 936235 | MARK | DAVANZO | 1689618118 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06222017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06212017 | 06222017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622001 | D0500 | Lobular carcinoma in situ of unspecified breast | ICD10 | 06222017 | 06212017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
