Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-19_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-19_URGEMERG
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
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
| 02152017 | 2017-02-15T13:45:05+00:00 |  | 000075690-01 | David | Stenger | MERCY HEALTH PHYSICIANS | 921063 | BRIAN | ROTTINGHAUS | 1912238890 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05192017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05152017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215084 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05192017 | 05152017 | 05162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 03272017 | 2017-03-27T13:17:56+00:00 |  | 000094437-01 | Mona | Piper | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05172017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170327119 | E119, E6601, I10, I872, K219, Z6842 | Body mass index (BMI) 45.0-49.9, adult | ICD10 | 05192017 | 05172017 | 05182017 | 43644 | LAP GASTRIC BYPASS/ROUX-EN-Y | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03282017 | 2017-03-28T10:25:53+00:00 |  | 000077701-01 | Jane | Fields | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170328009 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05192017 | 05172017 | 05192017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04122017 | 2017-04-12T15:28:04+00:00 |  | 000117590-01 | Judy | Sauer | ALLIANCE PHYSICIANS INC | 910039 | DONALD W | AMES | 1306857891 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05162017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170412094 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 05192017 | 05162017 | 05182017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04212017 | 2017-04-21T13:27:16+00:00 |  | 000109073-01 | Claude | Keim Jr | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04202017 | 04262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424037 | R0602 | Shortness of breath | ICD10 | 05192017 | 04202017 | 04262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04262017 | 2017-04-26T13:01:27+00:00 |  | 000063634-01 | KAREN | WEHRLEY | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427025 | M84451K | Pathological fracture, right femur, subs for fx w nonunion | ICD10 | 05192017 | 05172017 | 05192017 | 20680, 27245 | OPEN TREATMENT OF INTERTROCHANTERIC, PERTROCHANTERIC OR SUBTROCHANTERI | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 04272017 | 2017-04-27T11:40:44+00:00 | 017789714-7089 | 000080637-01 | Birg | Harrington | ORTHO SPEC & SPORTS MED | 935034 | EDWARD L | WESTERHEIDE | 1821019258 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05172017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427039 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 05192017 | 05172017 | 05182017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05012017 | 2017-05-01T15:05:27+00:00 |  | 000105907-01 | Kenzel | Sizemore | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 912043 | 1043233984 | KETTERING MEDICAL CTR REHABILITATION | 1952324899 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | KETTERING MEDICAL CTR REHABILITATION | 05192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05022017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501134 | I739, I96, L98499 | Non-pressure chronic ulcer of skin of sites w unsp severity | ICD10 | 05192017 | 05022017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 05052017 | 2017-05-05T08:52:35+00:00 |  | 000094259-01 | Daniel | Bonnell | FIRST SETTLEMENT ORTHOS | 924320 | JASON L | GESSEL | 1861672669 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient | IP | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 05192017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05162017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505025 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 05192017 | 05162017 | 05192017 | 27447, 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 05082017 | 2017-05-08T10:05:24+00:00 |  | 000093997-01 | James | Hyslop | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05202017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 05192017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508023 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05202017 | 05192017 | 05202017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05052017 | 2017-05-05T09:00:38+00:00 |  | 000076208-01 | Anna | Robson | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 05192017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05042017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508064 | E1010, S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 05192017 | 05042017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 05082017 | 2017-05-08T13:52:03+00:00 |  | 000008757-01 | ALLAN | BAUSCH | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05062017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508079 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05192017 | 05062017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05082017 | 2017-05-08T12:02:23+00:00 | 016647200-7086 | 000080504-01 | Paul | Nash | NORTH CEN OHIO FAM CARE | 916037 | CHRISTOPHER D | MCCLUNG | 1285804252 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05182017 | 05192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508083 | N393 | Stress incontinence (female) (male) | ICD10 | 05192017 | 05182017 | 05192017 | 53445, 52000 | CYSTOURETHOSCOPY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 05082017 | 2017-05-08T13:49:36+00:00 |  | 000075785-01 | Ronald | Winget | AAMIR KHAN MD INC | 905477 | AAMIR | KHAN | 1295824746 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05192017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 05052017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509069 | R319 | Hematuria, unspecified | ICD10 | 05192017 | 05052017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05082017 | 2017-05-08T09:12:53+00:00 |  | 000010670-01 | RICHARD | HERRON | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05072017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509095 | S72031A | Displaced midcervical fracture of right femur, init | ICD10 | 05192017 | 05072017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05102017 | 2017-05-10T09:39:15+00:00 |  | 000083503-01 | Charles | Blakely | HMP OF OHIO PC | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03242017 | 03312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510008 | A419, E875, N186 | End stage renal disease | ICD10 | 05192017 | 03242017 | 03312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05102017 | 2017-05-10T09:58:49+00:00 | 265131627129 | 000107092-01 | Joseph | Mettle | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05192017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05092017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510015 | J159 | Unspecified bacterial pneumonia | ICD10 | 05192017 | 05092017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05092017 | 2017-05-09T14:19:09+00:00 |  | 000053726-01 | REITALEE | MARTIN | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05082017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510058 | J189, R0600, R079 | Chest pain, unspecified | ICD10 | 05192017 | 05082017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05102017 | 2017-05-10T08:34:47+00:00 |  | 000095036-01 | Edison | Montgomery | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05192017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 05092017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510083 | I509, K7031, K7460 | Unspecified cirrhosis of liver | ICD10 | 05192017 | 05092017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05102017 | 2017-05-10T13:25:12+00:00 |  | 000002925-01 | THOMAS | PASSEN | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511014 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05192017 | 05172017 | 05192017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05102017 | 2017-05-10T11:43:14+00:00 |  | 000074843-01 | Julie | Hinds | HOSPITAL MEDICINE SERVIC | 949224 | KASHYAP B | PATEL | 1033476189 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05192017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05082017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511018 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 05192017 | 05082017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05112017 | 2017-05-11T11:00:02+00:00 |  | 000048267-01 | CAROL | PENDEXTER | MOUNT CARMEL HLTH PRVDRS | 936315 | THOMAS P | ARCHER | 1336102888 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05102017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511028 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05192017 | 05102017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05112017 | 2017-05-11T13:21:11+00:00 |  | 000067082-01 | PEGGY | HINKLE | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05102017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511048 | K921 | Melena | ICD10 | 05192017 | 05102017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05112017 | 2017-05-11T13:23:18+00:00 |  | 000080087-01 | Elma | Shock | KEVIN M REID DO INC | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511074 | E860, R197 | Diarrhea, unspecified | ICD10 | 05192017 | 05102017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05112017 | 2017-05-11T17:19:32+00:00 | 025715130-7129 | 000065000-01 | DANIEL | SCHAAF | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05182017 | 05192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511086 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 05192017 | 05182017 | 05192017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05122017 | 2017-05-12T10:56:53+00:00 |  | 000038776-01 | MARY LOU | RATLIFF | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05112017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512023 | I469 | Cardiac arrest, cause unspecified | ICD10 | 05192017 | 05112017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05122017 | 2017-05-12T14:39:00+00:00 |  | 000024040-01 | Ariel | Etgen | HMP OF OHIO PC | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05112017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512078 | I509 | Heart failure, unspecified | ICD10 | 05202017 | 05112017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05142017 | 2017-05-14T16:15:16+00:00 |  | 000020888-01 | GENEVA | BENNETT | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05132017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515003 | G459, I10, R55 | Syncope and collapse | ICD10 | 05192017 | 05132017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T10:50:24+00:00 |  | 000006540-01 | PAUL | HICKMAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05142017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515040 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05192017 | 05142017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05152017 | 2017-05-15T10:18:46+00:00 |  | 000089390-01 | Michael | Workman | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05142017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515047 | J811, L03119 | Cellulitis of unspecified part of limb | ICD10 | 05192017 | 05142017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05152017 | 2017-05-15T11:39:21+00:00 |  | 000060665-01 | SARAH | COLLINS | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05142017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515070 | J810 | Acute pulmonary edema | ICD10 | 05192017 | 05142017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05152017 | 2017-05-15T13:17:41+00:00 |  | 000048166-01 | MARIAN | BELL | CENTRAL OHIO SURG ASSOC | 934982 | THOMAS M | VARA | 1457390130 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05182017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515112 | K810 | Acute cholecystitis | ICD10 | 05192017 | 05182017 | 05192017 | 47600 | CHOLECYSTECTOMY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05152017 | 2017-05-15T14:03:20+00:00 |  | 000030473-01 | MARY JO | STRATTON | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05132017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515120 | E806, K869 | Disease of pancreas, unspecified | ICD10 | 05192017 | 05132017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05152017 | 2017-05-15T16:46:01+00:00 |  | 000078023-01 | Marianne | Walther | MIAMI VALLEY HSPISTS GRP | 914307 | PARASRAM | RAMDEO | 1821246125 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | HealthHelp | Inpatient | Inpatient | 05122017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515148 | I2109 | STEMI involving oth coronary artery of anterior wall | ICD10 | 05192017 | 05122017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05162017 | 2017-05-16T10:44:51+00:00 |  | 000031366-01 | NOUPHET | THEUAMTHALARAY | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05152017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516021 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 05192017 | 05152017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05162017 | 2017-05-16T11:00:07+00:00 |  | 000031136-01 | SHIRLEY | MALONE | HMP OF OHIO PC | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05152017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516025 | L02416, L0390 | Cellulitis, unspecified | ICD10 | 05202017 | 05152017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05162017 | 2017-05-16T11:14:58+00:00 |  | 000025142-01 | DALE | GARBER | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05152017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516033 | N201 | Calculus of ureter | ICD10 | 05192017 | 05152017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05162017 | 2017-05-16T11:21:21+00:00 |  | 000098026-01 | Gary | Lustgarten | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05202017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 05162017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516039 | G809 | Cerebral palsy, unspecified | ICD10 | 05202017 | 05162017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05162017 | 2017-05-16T11:35:01+00:00 |  | 000090406-01 | Annabelle | West | ADENA MEDICAL GROUP LLC | 902397 | KINGSLEY A | LARTEY | 1376510289 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05192017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516073 | J9621, J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 05192017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T14:06:26+00:00 |  | 000081681-01 | Doris | Hall | ER MED PHYS OF IREDELL C | 926511 | MEGAN | LEONARD | 1467726323 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05152017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516090 | I2699, I4891, R05, R0600, R079 | Chest pain, unspecified | ICD10 | 05192017 | 05152017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05162017 | 2017-05-16T14:12:05+00:00 |  | 000096266-01 | Danny | Hill | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05152017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516091 | E162, E876, I509 | Heart failure, unspecified | ICD10 | 05192017 | 05152017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05172017 | 2017-05-17T10:21:07+00:00 | 261022317136 | 000001839-01 | HELEN | YOUNG | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | ACO | Inpatient | 05162017 | 05192017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517023 | R0600 | Dyspnea, unspecified | ICD10 | 05192017 | 05162017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05172017 | 2017-05-17T14:37:03+00:00 |  | 000013321-01 | RICHARD | LOMBARDI | COPC CENTRAL OHIO PRIMAR | 910704 | JENNIFER A | STURGILL | 1386803328 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05162017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517072 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 05192017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05192017 | 2017-05-19T11:38:52+00:00 |  | 000083215-01 | Jennifer | Evans | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05182017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519041 | M5380 | Other specified dorsopathies, site unspecified | ICD10 | 05192017 | 05182017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05192017 | 2017-05-19T14:42:16+00:00 |  | 000108147-01 | Gloria | Steinbrenner | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05182017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519067 | R55 | Syncope and collapse | ICD10 | 05192017 | 05182017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05172017 | 2017-05-17T14:33:36+00:00 |  | 000081845-01 | Rodney | Goff | ALPHA MEDICAL SRVS LLC | 913771 | ELIO | VENTRESCA | 1811904139 | SELECT SPECIALTY HOSPITA | 900155 | 1871592386 | SELECT SPECIALTY HOSPITAL COLUMBUS | 1871592386 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL COLUMBUS | 05192017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 05192017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170517064 | J9600, N179 | Acute kidney failure, unspecified | ICD10 | 05192017 | 05192017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05172017 | 2017-05-17T18:27:17+00:00 |  | 000052594-01 | DONALD | MEADE | HEALTHSOUTH REHABILITATI | 949538 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 05192017 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Inpatient | 05192017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170518002 | I639 | Cerebral infarction, unspecified | ICD10 | 05192017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05182017 | 2017-05-18T14:28:37+00:00 |  | 000029661-01 | JAMES | DOUGLAS | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05192017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 05192017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170518062 | I639 | Cerebral infarction, unspecified | ICD10 | 05192017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05192017 | 2017-05-19T11:20:15+00:00 |  | 000073976-01 | Mary | Nauer | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | SELECT SPECIALTY HOSPITA | 915731 | 1861492217 | SELECT SPECIALTY HOSPITAL ZANESVILLE | 1861492217 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL ZANESVILLE | 05192017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 05192017 | 05202017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170519044 | K5660 | Unspecified intestinal obstruction | ICD10 | 05192017 | 05192017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
