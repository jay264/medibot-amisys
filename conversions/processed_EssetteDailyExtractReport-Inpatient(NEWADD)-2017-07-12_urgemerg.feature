Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-12_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-12_URGEMERG
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
| 04172017 | 2017-04-17T10:33:41+00:00 | 025720387-7107 | 000065767-01 | JOHN | GAFNEY | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418012 | M1712, M84352D | Stress fracture, left femur, subs for fx w routn heal | ICD10 | 07122017 | 07102017 | 07122017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05172017 | 2017-05-17T11:40:52+00:00 |  | 000051311-01 | ANNA | KITCHEN | COLS BONE JOINT & HAND S | 936391 | RICHARD A | FANKHAUSER | 1023091113 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517089 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07122017 | 07112017 | 07122017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06062017 | 2017-06-06T12:33:35+00:00 |  | 000051145-01 | RICHARD | SOUTHWORTH | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606057 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07122017 | 07112017 | 07122017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06152017 | 2017-06-15T08:45:31+00:00 |  | 000107003-01 | Daniel | Danbury | HMP OF OHIO PC | 944625 | SHIVANI | BHATIA | 1558645366 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 07122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06142017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615020 | J40 | Bronchitis, not specified as acute or chronic | ICD10 | 07122017 | 06142017 | 07092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 23.0 |
| 06222017 | 2017-06-22T15:41:16+00:00 | 017853193-7164 | 000105829-01 | SHARON | THOMPSON | ORTHO & NEURO CONSULTS I | 935912 | LARRY T | TODD | 1649254087 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07122017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 07112017 | 07122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622079 | M4316, M4806 | Spinal stenosis, lumbar region | ICD10 | 07122017 | 07112017 | 07122017 | 22633, 22853, 22840, 20936, 20930, 63047 | LMCTMY;DCMP CRD/NRV RT,SNG SG-LMBR | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06262017 | 2017-06-26T11:12:36+00:00 | 166018407176 | 000052668-01 | ROBERT | ROMINE SR | CENTRAL OHIO SURG ASSOC | 906771 | KRISTINE D | SLAM | 1396917274 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06252017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626052 | K5660 | Unspecified intestinal obstruction | ICD10 | 07122017 | 06252017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 06272017 | 2017-06-27T09:54:08+00:00 | 025626922-7164 | 000050418-01 | DONNA | KELLEY | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627047 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07122017 | 07112017 | 07122017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06272017 | 2017-06-27T09:56:26+00:00 | 017853676-7164 | 000073891-01 | Mary | Stierhoff | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627048 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07122017 | 07112017 | 07122017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06282017 | 2017-06-28T11:16:05+00:00 |  | 000090418-01 | Norma | Barnes | SAMAAN, ROBERT G | 921469 | ROBERT G | SAMAAN | 1265482871 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06272017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628052 | D62 | Acute posthemorrhagic anemia | ICD10 | 07122017 | 06272017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06282017 | 2017-06-28T16:08:34+00:00 |  | 000043374-01 | Rise | Surface-Hurley | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 07102017 | 07112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629006 | M84362K | Stress fracture, left tibia, subs for fx w nonunion | ICD10 | 07122017 | 07102017 | 07112017 | 27720 | RPR TIBIA WO GRAFT | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
| 06292017 | 2017-06-29T10:02:35+00:00 |  | 000061519-01 | Wayne | Brown | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629031 | J189 | Pneumonia, unspecified organism | ICD10 | 07122017 | 06282017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T10:30:13+00:00 |  | 000085696-01 | John | Karg | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629044 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07122017 | 07112017 | 07122017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06292017 | 2017-06-29T13:28:05+00:00 |  | 000114689-01 | Stephen | Gihl | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629068 | A419, R319 | Hematuria, unspecified | ICD10 | 07122017 | 06282017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 06302017 | 2017-06-30T14:53:45+00:00 |  | 000103473-01 | Jill | Reeves | MOUNT CARMEL MEDICAL CTR | 920534 |  | MOUNT CARMEL MEDICAL CTR REHAB | 1578648085 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 07122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06302017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630051 | I639 | Cerebral infarction, unspecified | ICD10 | 07122017 | 06302017 | 07112017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 |  | 12 | CPT | C4 |  |  |  | 11.0 |
| 07032017 | 2017-07-03T09:47:04+00:00 |  | 000078372-01 | Betty | Tilton | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05302017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703074 | L03116 | Cellulitis of left lower limb | ICD10 | 07122017 | 06302017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07052017 | 2017-07-05T14:17:57+00:00 |  | 000010325-01 | JAUNITA | ROUSH | CENTRAL OH HSPISTS INC | 910565 | JAMES C | FOSTER | 1770700320 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07052017 | 07092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705083 | K625, K921 | Melena | ICD10 | 07122017 | 07052017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07052017 | 2017-07-05T14:45:11+00:00 |  | 000000006-01 | LESTER | STRAWN | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07042017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705108 | J189, R0902 | Hypoxemia | ICD10 | 07122017 | 07042017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07062017 | 2017-07-06T09:24:29+00:00 | 257201417186 | 000048223-01 | ROBERT | MILLER | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07052017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706011 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 07122017 | 07052017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07062017 | 2017-07-06T08:47:53+00:00 |  | 000044068-01 | PATRICIA | WHITE | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07052017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706063 | R002, R55 | Syncope and collapse | ICD10 | 07122017 | 07052017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07062017 | 2017-07-06T11:46:49+00:00 |  | 000084931-01 | Arthur | Byrd Jr | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07052017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706074 | J810, R0600, R0902 | Hypoxemia | ICD10 | 07122017 | 07052017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07072017 | 2017-07-07T07:52:35+00:00 |  | 000022394-01 | LORRAINE | CROMWELL | HMP OF PICKAWAY COUNTY L | 914637 | EMMANUEL | CHUKWUNYERE | 1821235540 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07062017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707012 | G9341, N390, R4182 | Altered mental status, unspecified | ICD10 | 07122017 | 07062017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07072017 | 2017-07-07T09:51:47+00:00 | 250642567188 | 000050706-01 | Sharon | Kirkland | HMP OF OHIO PC | 923291 | BASHAR | ALAWAD | 1396024121 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07072017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707019 | J159 | Unspecified bacterial pneumonia | ICD10 | 07122017 | 07072017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07072017 | 2017-07-07T12:21:37+00:00 |  | 000034547-01 | BETTY | JEFFERS | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07042017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707043 | N186 | End stage renal disease | ICD10 | 07122017 | 07042017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07072017 | 2017-07-07T12:31:00+00:00 | 025396581-7187 | 000072450-01 | Leslie | Haley | MOUNT CARMEL HLTH PRVDRS | 934996 | G STEPHEN | VINCENT | 1043251218 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 07102017 | 07122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707048 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 07122017 | 07102017 | 07122017 | 34812, 34825, 34820 | XPOSE FOR ENDOPROSTH, ILIAC | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 07072017 | 2017-07-07T14:52:00+00:00 |  | 000071782-01 | Phillip | Parker | ALLIANCE PHYSICIANS INC | 903846 | DEEPTHI R | MOSALI | 1538108881 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07062017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707070 | I4891 | Unspecified atrial fibrillation | ICD10 | 07122017 | 07062017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07072017 | 2017-07-07T23:28:16+00:00 |  | 000117393-01 | James | Lama | OHIOHEALTH PHYS GRP | 905892 | ANTHONY T | CHAPEKIS | 1558366906 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07012017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710001 | I4901 | Ventricular fibrillation | ICD10 | 07122017 | 07012017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T07:52:59+00:00 |  | 000040244-01 | JOYCE | CLARK | THE OH STATE UNIVERSITY | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07082017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710052 | C9500 | Acute leukemia of unsp cell type not achieve remission | ICD10 | 07122017 | 07082017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T09:47:11+00:00 |  | 000101359-01 | RICKY | CRAIG | ONCOLOGY HEMATOLOGY CARE | 923344 | JAMES | ESSELL | 1265425078 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 07122017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07072017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710073 | Z5111 | Encounter for antineoplastic chemotherapy | ICD10 | 07122017 | 07072017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T12:27:17+00:00 |  | 000041306-01 | ANITA | KOEBEL | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07072017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710076 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 07122017 | 07072017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07102017 | 2017-07-10T13:23:39+00:00 | 017340595-7181 | 000029265-01 | MYRIAM | PLACE | MOUNT CARMEL HLTH PRVDRS | 934996 | G STEPHEN | VINCENT | 1043251218 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | EMR | ACO - Pulmonary | Inpatient | 07072017 | 07122017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710087 | J159 | Unspecified bacterial pneumonia | ICD10 | 07122017 | 07072017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07112017 | 2017-07-11T09:56:11+00:00 | 252971737191 | 000042455-01 | LOUIS | SIEGEL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 07102017 | 07122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711005 | S73001A | Unspecified subluxation of right hip, initial encounter | ICD10 | 07122017 | 07102017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07102017 | 2017-07-10T15:08:29+00:00 |  | 000048585-01 | ROBERT | KEY | OSU SURGERY LLC | 947363 | IHAB O | ELHASSAN | 1043415755 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711029 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 07122017 | 07072017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07112017 | 2017-07-11T13:18:43+00:00 | 017865273-7177 | 000084528-01 | Robert | Barrett | ORTHO ASSOC OF ZANESVILL | 921890 | BRAD E | BRAUTIGAN | 1114919479 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07122017 | Approved | MediGold Southeast OH Essential Care | EMR | EIS | Inpatient | 07112017 | 07122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711042 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07122017 | 07112017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07112017 | 2017-07-11T08:02:51+00:00 |  | 000022289-01 | JAMES | WILSON | AKSM HEALTHCARE COLLABO | 934886 | DAVID W | STEWART | 1720029903 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 07102017 | 07112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712001 | N1330 | Unspecified hydronephrosis | ICD10 | 07122017 | 07102017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07072017 | 2017-07-07T15:36:29+00:00 |  | 000040479-01 | PATRICIA | PIERCE | THE OH STATE UNIVERSITY HSP REHAB | 936564 |  | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 936564 | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HSP REHAB | 07122017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 07122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170707072 | C221, N19 | Unspecified kidney failure | ICD10 | 07122017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
