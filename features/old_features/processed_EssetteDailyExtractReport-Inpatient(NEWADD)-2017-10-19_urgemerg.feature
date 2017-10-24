Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-19_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-19_URGEMERG
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
| 10052017 | 2017-10-05T11:03:49+00:00 | 026516976-7286 | 000117826-01 | TONY | REED | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 10192017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10172017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005042 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 10192017 | 10172017 | 10182017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09252017 | 2017-09-25T11:50:24+00:00 | 163071307266 | 000074800-01 | Gary | Clapham | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10192017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09232017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925068 | F10239 | Alcohol dependence with withdrawal, unspecified | ICD10 | 10192017 | 09232017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 25.0 |
| 10092017 | 2017-10-09T16:03:53+00:00 | 250577567282 | 000037159-01 | LOIS | JAMES | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10092017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009109 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 10192017 | 10092017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10102017 | 2017-10-10T15:17:37+00:00 | 025107490-7279 | 000046274-01 | Carolyn | Slone | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10162017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011023 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10192017 | 10162017 | 10182017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10112017 | 2017-10-11T11:48:02+00:00 |  | 000011863-01 | LESLIE | GATWOOD | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10102017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011067 | I998, M62262 | Nontraumatic ischemic infarction of muscle, left lower leg | ICD10 | 10192017 | 10102017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10192017 | 2017-10-19T08:36:11+00:00 |  | 000009470-01 | Mary | Lang | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10192017 | Approved | MediGold Essential Care | EMR | EIS | Inpatient | 10172017 | 10182017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019010 | K439 | Ventral hernia without obstruction or gangrene | ICD10 | 10192017 | 10172017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T09:51:14+00:00 | 250728647288 | 000047872-01 | SARA | MCLAUGHLIN | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10152017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016043 | A047, E162, F10129 | Alcohol abuse with intoxication, unspecified | ICD10 | 10192017 | 10152017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09152017 | 2017-09-15T15:46:25+00:00 | 025217275-7250 | 000023052-01 | WILLIAM | PAUL | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10172017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918086 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10192017 | 10172017 | 10182017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09152017 | 2017-09-15T14:55:44+00:00 |  | 000074166-01 | Janet | Perrini | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10172017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918039 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 10192017 | 10172017 | 10182017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10162017 | 2017-10-16T10:42:46+00:00 | 251107277288 | 000074105-01 | Thaida | Santavicca | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10152017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016054 | I639 | Cerebral infarction, unspecified | ICD10 | 10192017 | 10152017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10022017 | 2017-10-02T08:25:05+00:00 |  | 000099822-01 | Stephen | Larkin | MERCY HEALTH PHYSICIANS | 920951 | BRION P | MORAN | 1174528970 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 10192017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10172017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002074 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 10192017 | 10172017 | 10182017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10092017 | 2017-10-09T10:40:30+00:00 |  | 000103588-01 | Johnny | Clay | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10062017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009086 | I639, R531 | Weakness | ICD10 | 10192017 | 10062017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10032017 | 2017-10-03T13:04:49+00:00 |  | 000095502-01 | Joseph | Allen | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 10192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10062017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003065 | M4806 | Spinal stenosis, lumbar region | ICD10 | 10192017 | 10062017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10082017 | 2017-10-08T06:47:35+00:00 |  | 000049778-01 | CHARLES | TERRY | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10192017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 10072017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009001 | R4182 | Altered mental status, unspecified | ICD10 | 10192017 | 10072017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 10042017 | 2017-10-04T15:49:07+00:00 |  | 000088527-01 | John | Craig | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10192017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10042017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005002 | M869 | Osteomyelitis, unspecified | ICD10 | 10192017 | 10042017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10162017 | 2017-10-16T10:14:27+00:00 |  | 000111431-01 | Michelle | Householder | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10152017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016115 | R1013 | Epigastric pain | ICD10 | 10192017 | 10152017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10132017 | 2017-10-13T11:59:08+00:00 |  | 000009427-01 | FLO | WHEELER | COPC CENTRAL OHIO PRIMAR | 914697 | JEAN E | FLAHERTY | 1740449669 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 10192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10132017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013050 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 10192017 | 10132017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10162017 | 2017-10-16T12:49:01+00:00 |  | 000105063-01 | Laverne | Schoch | CLERMONT INTERNISTS ASSO | 924471 | VIDHYA | MURUKESAN | 1003047564 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 10192017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10132017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017018 | M6282, M84412S, S72002A, W06XXXA | Fall from bed, initial encounter | ICD10 | 10192017 | 10132017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T11:30:57+00:00 |  | 000116381-01 | Vinette | Massari | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 10192017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10072017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009098 | R05 | Cough | ICD10 | 10192017 | 10072017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T09:40:17+00:00 | 174847777286 | 000055928-01 | IRVIN | HENDERSON | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10132017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016039 | M6281 | Muscle weakness (generalized) | ICD10 | 10192017 | 10132017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10172017 | 2017-10-17T09:12:25+00:00 |  | 000092432-01 | Stephen | Springer | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10162017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017045 | R42 | Dizziness and giddiness | ICD10 | 10192017 | 10162017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10162017 | 2017-10-16T09:18:12+00:00 | 251643477288 | 000005319-01 | EUGENE | ERVIN | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10192017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10152017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016033 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 10192017 | 10152017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10192017 | 2017-10-19T09:23:00+00:00 | 168284017291 | 000046142-01 | ROBERT | TOWNSEND SR | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10182017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019034 | I959 | Hypotension, unspecified | ICD10 | 10192017 | 10182017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T10:01:36+00:00 | 250975357288 | 000070967-01 | Patricia | Rader | COPC CENTRAL OHIO PRIMAR | 905425 | SVITLANA | HAYNES | 1457307837 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10192017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10152017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016050 | T83592A | I/I REACT D/T INDWELLING URETERAL STENT, INITIAL ENCOUNTER | ICD10 | 10192017 | 10152017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10152017 | 2017-10-15T15:33:25+00:00 |  | 000007093-01 | Mildred | Forte | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 10192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10132017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016087 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 10192017 | 10132017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10162017 | 2017-10-16T12:02:10+00:00 |  | 000080231-01 | Barbara | Fulton | CHE FU KUO MD PHD | 915220 | CHE FU | KUO | 1659367068 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 10192017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10132017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017015 | L0390 | Cellulitis, unspecified | ICD10 | 10192017 | 10132017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10162017 | 2017-10-16T09:04:57+00:00 | 171446997286 | 000051416-01 | Richard | Robinson | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10132017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016024 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 10192017 | 10132017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10052017 | 2017-10-05T09:08:18+00:00 |  | 000068305-01 | Vickie | Davis | MOUNT CARMEL HLTH SYS | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10192017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10162017 | 10192017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005010 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 10192017 | 10162017 | 10192017 | 44620 | CLOSE ENTEROSTOMY-LARGE, SM INTEST | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 10162017 | 2017-10-16T08:16:35+00:00 | 175487237288 | 000108356-01 | Norma | Harber | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10192017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 10152017 | 10192017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016007 | R32 | Unspecified urinary incontinence | ICD10 | 10192017 | 10152017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
