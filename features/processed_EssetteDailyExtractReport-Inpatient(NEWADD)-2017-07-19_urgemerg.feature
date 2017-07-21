Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-19_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-19_URGEMERG
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
| 03012017 | 2017-03-01T09:10:56+00:00 | FIN0266256187044 | 000027920-01 | NORMA | BREECE | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 02282017 | 03012017 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170301003 | N186 | End stage renal disease | ICD10 | 07192017 | 02282017 | 03012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05252017 | 2017-05-25T14:47:20+00:00 |  | 000054803-01 | SALLY | STILES | COLS BONE JOINT & HAND S | 936391 | RICHARD A | FANKHAUSER | 1023091113 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525054 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07192017 | 07182017 | 07192017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06052017 | 2017-06-05T10:26:19+00:00 |  | 000083448-01 | Mary | Burton | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605055 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07192017 | 07102017 | 07132017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06052017 | 2017-06-05T10:53:38+00:00 |  | 000070625-01 | Margaret | Mccoy | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605081 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07192017 | 07102017 | 07132017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06062017 | 2017-06-06T14:15:56+00:00 |  | 000083903-01 | Gloria | Lowe | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06282017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606072 | T84032A | Mech loosening of internal right knee prosthetic joint, init | ICD10 | 07192017 | 06282017 | 07012017 | 27487, 27488 | RMVL KNEE PROS INC TOTAL KNEE | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 06262017 | 2017-06-26T12:25:14+00:00 |  | 000082375-01 | Carolyn | Hill | ADENA MEDICAL GROUP LLC | 928524 | CHRISTIN L | SPAHN | 1861654105 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Post-Service | POST |  | ADENA REGIONAL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06242017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A170626131 | R112 | Nausea with vomiting, unspecified | ICD10 | 07192017 | 06242017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06262017 | 2017-06-26T16:55:37+00:00 |  | 000082233-01 | Ronald | Greenhill | GULF COAST MEDICAL CENTER | 900308 |  | GULF COAST MEDICAL CENTER | 0 | GULF COAST MEDICAL CENTER | 900308 | 0 | GULF COAST MEDICAL CENTER | 0 | Inpatient | IP | Post-Service | POST |  | GULF COAST MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06232017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A170627030 | I214, I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 07192017 | 06232017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06272017 | 2017-06-27T14:35:01+00:00 |  | 000010271-01 | LORELLE | EDWARDS | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627105 | R002 | Palpitations | ICD10 | 07192017 | 06262017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 06282017 | 2017-06-28T16:07:27+00:00 |  | 000100164-01 | Lonnie | Hubbard | MERCY HEALTH PHYSICIANS | 920971 | SURESH | NAYAK | 1730184946 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07192017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629004 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07192017 | 07122017 | 07142017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06292017 | 2017-06-29T09:21:36+00:00 |  | 000109974-01 | Mazel | Ross | APOGEE MED GRP OHIO INC | 943792 | PRATIVA | RAJBHANDARI | 1659628667 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06292017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629039 | D72829, I214, I5021 | Acute systolic (congestive) heart failure | ICD10 | 07192017 | 06292017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06292017 | 2017-06-29T16:35:14+00:00 | 025571230-7179 | 000056582-01 | ROBERT | BALLAH | ORTHO & NEURO CONSULTS I | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07132017 | 07182017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630001 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07192017 | 07132017 | 07182017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 06302017 | 2017-06-30T15:12:15+00:00 |  | 000100444-01 | Pauline | Danner | AINA MEDICAL INC | 939947 | OLAYINKA O | AINA | 1295706976 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 928906 | 1811988009 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 1811988009 | Inpatient | IP | Concurrent Review | CONC |  | ADAMS COUNTY REGIONAL MEDICAL CENTER | 07192017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630072 | E860, M6282, N390 | Urinary tract infection, site not specified | ICD10 | 07192017 | 06302017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T07:30:28+00:00 |  | 000087526-01 | Thomas | Ricketts | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07012017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703066 | S5002XA, S72002A, W010XXA | Fall same lev from slip/trip w/o strike against object, init | ICD10 | 07192017 | 07012017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 07032017 | 2017-07-03T11:03:53+00:00 |  | 000078377-01 | Dennis | Miller | FAIRFIELD HLTHCARE PROFS | 905153 | P ARYEH | COHEN | 1306063656 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07192017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 06302017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703083 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07192017 | 06302017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 07032017 | 2017-07-03T14:51:52+00:00 |  | 000100568-01 | Ruby | Belcher | OSU INTERNAL MED LLC | 946409 | TARA M | BAUTISTA | 1205219375 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07012017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703128 | K5660, R112, R6883 | Chills (without fever) | ICD10 | 07192017 | 07012017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07042017 | 2017-07-04T12:18:53+00:00 |  | 000095036-01 | Edison | Montgomery | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07192017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 07032017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705010 | I509 | Heart failure, unspecified | ICD10 | 07192017 | 07032017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07042017 | 2017-07-04T12:36:30+00:00 |  | 000077415-01 | DOROTHY | MARTIN | COMMUNITY HSPIST LLC | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07032017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705013 | E860, R197 | Diarrhea, unspecified | ICD10 | 07192017 | 07032017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07052017 | 2017-07-05T07:58:25+00:00 |  | 000056450-01 | MARTHA | PECK | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07032017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705051 | I4891 | Unspecified atrial fibrillation | ICD10 | 07192017 | 07032017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07052017 | 2017-07-05T14:08:13+00:00 |  | 000103610-01 | David | Turner | RIVERSIDE NEPHROLOGY ASS | 935918 | KEVIN L | SCHROEDER | 1982662078 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07042017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705086 | N179, N184, R109 | Unspecified abdominal pain | ICD10 | 07192017 | 07042017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07052017 | 2017-07-05T14:52:42+00:00 |  | 000079578-01 | Martha | Brown | S DAYTON ACUTE CARE CNSL | 903782 | SIVAKRISHNA | BHANDARU | 1629017884 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 07192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07022017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705094 | B953, R509, R531 | Weakness | ICD10 | 07192017 | 07022017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 07062017 | 2017-07-06T09:36:21+00:00 |  | 000086882-01 | Arnold | Strausbaugh | APOGEE MED GRP OHIO INC | 947863 | SARAH | KHAN | 1336481670 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07192017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07032017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706014 | M899 | Disorder of bone, unspecified | ICD10 | 07192017 | 07032017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07072017 | 2017-07-07T09:30:37+00:00 | 261755787187 | 000021233-01 | DOROTHY | MINOR | HMP OF OHIO PC | 926900 | ANIRBAN | BISWAS | 1871891614 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07062017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707013 | D649, I509 | Heart failure, unspecified | ICD10 | 07192017 | 07062017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 07072017 | 2017-07-07T10:38:33+00:00 |  | 000066373-01 | HOWARD | FRENCH | APOGEE MED GRP OHIO INC | 943521 | BERTHA S | VALDIVIESO | 1356571236 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07192017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 07062017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707041 | I509, J9600, R0602 | Shortness of breath | ICD10 | 07192017 | 07062017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07072017 | 2017-07-07T12:57:52+00:00 |  | 000051642-01 | DONNA | CODY | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07062017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707054 | E875, G9341, I4891, N172, N390 | Urinary tract infection, site not specified | ICD10 | 07192017 | 07062017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07092017 | 2017-07-09T10:09:27+00:00 |  | 000049318-01 | JERRY | KOCHER | OHIOHEALTH PHYS GRP | 931989 | VICTOR M | AWUOR | 1316110604 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710006 | T07 | Unspecified multiple injuries | ICD10 | 07192017 | 07072017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07102017 | 2017-07-10T08:38:42+00:00 |  | 000096354-01 | JERRY | SANDAGE | HMP OF OHIO PC | 947866 | KALYN M | JOLIVETTE | 1447693239 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07192017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07092017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710025 | R0602 | Shortness of breath | ICD10 | 07192017 | 07092017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T10:33:19+00:00 |  | 000084959-01 | Harold | Harr | OHIOHEALTH PHYS GRP | 905892 | ANTHONY T | CHAPEKIS | 1558366906 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07082017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710070 | R0602 | Shortness of breath | ICD10 | 07192017 | 07082017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07102017 | 2017-07-10T10:38:41+00:00 |  | 000070581-01 | Anna | Mullins | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07092017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710071 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 07192017 | 07092017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T12:32:58+00:00 |  | 000116240-01 | MIRIAM | SMITH | MERCY HEALTH PHYSICIANS | 902845 | MARVIN M | NARCELLES | 1871583666 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07092017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710085 | L02211 | Cutaneous abscess of abdominal wall | ICD10 | 07192017 | 07092017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07112017 | 2017-07-11T10:39:38+00:00 |  | 000102646-01 | Shirl | Curry | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07092017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711016 | K859 | Acute pancreatitis, unspecified | ICD10 | 07192017 | 07092017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07122017 | 2017-07-12T10:13:29+00:00 | 254791927192 | 000113937-01 | Theresa | Mitchell | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07192017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07112017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712006 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07192017 | 07112017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07112017 | 2017-07-11T16:29:40+00:00 |  | 000110423-01 | Trudy | Ware | UNIVERSITY OF CINCINNATI | 928404 | TIMOTHY | PRITTS | 1194793786 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 07192017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07102017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712027 | K651, L988 | Oth disrd of the skin and subcutaneous tissue | ICD10 | 07192017 | 07102017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07122017 | 2017-07-12T13:03:12+00:00 | 258942847193 | 000048383-01 | Fred | Ray Jr | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07192017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07112017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712036 | L0390 | Cellulitis, unspecified | ICD10 | 07192017 | 07112017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07122017 | 2017-07-12T15:50:14+00:00 | 250229457193 | 000010736-01 | MAURICE | CORE | COPC CENTRAL OHIO PRIMAR | 910704 | JENNIFER A | STURGILL | 1386803328 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07122017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712075 | I639 | Cerebral infarction, unspecified | ICD10 | 07192017 | 07122017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07132017 | 2017-07-13T09:21:43+00:00 | 251336537193 | 000008757-01 | ALLAN | BAUSCH | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07132017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713009 | R0602 | Shortness of breath | ICD10 | 07192017 | 07122017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07122017 | 2017-07-12T14:02:35+00:00 |  | 000022011-01 | RAYMOND | DETTY | COMMUNITY HSPIST LLC | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07122017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713013 | A419, R0902, R509 | Fever, unspecified | ICD10 | 07192017 | 07122017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07132017 | 2017-07-13T09:36:15+00:00 | 254390037193 | 000083327-01 | Walter | Harris | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07122017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713014 | R531 | Weakness | ICD10 | 07192017 | 07122017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07132017 | 2017-07-13T17:50:23+00:00 |  | 000062940-01 | ROBERT | GREEN | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07132017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713076 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 07192017 | 07132017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07132017 | 2017-07-13T13:17:57+00:00 |  | 000096890-01 | Richard | Ernst | ALLIANCE PHYSICIANS INC | 939986 | CHRISTOPHER R | SCHNEIDER | 1588689475 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07122017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714005 | E860, I639 | Cerebral infarction, unspecified | ICD10 | 07192017 | 07122017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07142017 | 2017-07-14T12:15:17+00:00 |  | 000073898-01 | Sandra | Patterson | KNOX COMMUNITY HSP PHYS | 931881 | MICHAEL D | HEUMAN | 1457349680 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 07192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07152017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714045 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 07192017 | 07132017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07142017 | 2017-07-14T12:06:32+00:00 |  | 000065695-01 | ROBERT | DETILLION | OSU INTERNAL MED LLC | 946409 | TARA M | BAUTISTA | 1205219375 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07132017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714060 | R109 | Unspecified abdominal pain | ICD10 | 07192017 | 07132017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T11:33:19+00:00 | 264761377196 | 000039019-01 | WILLIAM | DAVIS | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 07152017 | 07192017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717028 | J189 | Pneumonia, unspecified organism | ICD10 | 07192017 | 07152017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07172017 | 2017-07-17T11:34:39+00:00 | 25485347 | 000017346-01 | WILMA | HAYES | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07152017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717029 | S129XXA | Fracture of neck, unspecified, initial encounter | ICD10 | 07192017 | 07152017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T12:51:04+00:00 | 25078412 | 000090601-01 | John | Manos | COPC CENTRAL OHIO PRIMAR | 910704 | JENNIFER A | STURGILL | 1386803328 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07142017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717049 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07192017 | 07142017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07172017 | 2017-07-17T13:46:21+00:00 | 169728837197 | 000034790-01 | JOAN | MOON | HMP OF OHIO PC | 913492 | MOHAMED H | HAMZA | 1720060940 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07162017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717073 | I639 | Cerebral infarction, unspecified | ICD10 | 07192017 | 07162017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T14:42:23+00:00 | 252365277196 | 000109977-01 | Larry | Sims | HMP OF OHIO PC | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 07152017 | 07182017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717100 | I4891, I509 | Heart failure, unspecified | ICD10 | 07192017 | 07152017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T15:02:25+00:00 | 262538857197 | 000112651-01 | Christine | Stortecky | HMP OF OHIO PC | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 07162017 | 07192017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717103 | R079 | Chest pain, unspecified | ICD10 | 07192017 | 07162017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T15:21:58+00:00 | 251231267196 | 000040630-01 | Gerald | Will | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07142017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717106 | D6489, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07192017 | 07142017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07182017 | 2017-07-18T13:14:25+00:00 | 252610077199 | 000107283-01 | Walter | Martin | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718097 | J159 | Unspecified bacterial pneumonia | ICD10 | 07192017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07192017 | 2017-07-19T10:32:07+00:00 |  | 000047038-01 | JUDITH | STATEN | ORTHOPEDIC ONE INC | 925417 | CRAIG | DIMITRIS | 1801045364 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07192017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 07182017 | 07192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719033 | S42231A | 3-part fracture of surgical neck of right humerus, init | ICD10 | 07192017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07182017 | 2017-07-18T12:22:32+00:00 |  | 000076017-01 | Vanessa | Powell | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL REHAB | 923738 | 1912258898 | LICKING MEMORIAL HOSPITAL REHAB | 1912258898 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL REHAB | 07192017 | Denied | MediGold Southeast OH Essential Care | Fax | Criteria Not Met | Inpatient | 07192017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170718103 | I639 | Cerebral infarction, unspecified | ICD10 | 07192017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
