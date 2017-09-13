Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-12_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-12_URGEMERG
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
| 09082017 | 2017-09-08T16:11:30+00:00 | 250948067251 | 000009747-01 | SANDRA | ROSSIO | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09082017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908086 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 09122017 | 09082017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T12:00:50+00:00 |  | 000013936-01 | WILLIAM | HUFFMAN | OHIOHEALTH PHYS GRP | 918222 | BENJAMIN C | TAYLOR | 1659595866 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09032017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906078 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 09122017 | 09032017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08312017 | 2017-08-31T09:35:27+00:00 | 262629267243 | 000019728-01 | HERMAN | HIGGINBOTHAM | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08302017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831020 | T819XXA | Unspecified complication of procedure, initial encounter | ICD10 | 09122017 | 08302017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 09062017 | 2017-09-06T13:15:16+00:00 |  | 000114073-01 | Johnnie | Hyatt | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09042017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907074 | N179, R197 | Diarrhea, unspecified | ICD10 | 09122017 | 09042017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T12:07:25+00:00 |  | 000001826-01 | LOIS | RIEBEL | ORTHOPEDIC ONE INC | 918846 | GREGORY E | BELLISARI | 1588872774 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09042017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906081 | I4891 | Unspecified atrial fibrillation | ICD10 | 09122017 | 09042017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08252017 | 2017-08-25T13:11:12+00:00 |  | 000109016-01 | Mary | Feltz | ALLIANCE PHYSICIANS INC | 914727 | GURPAL S | AHLUWALIA | 1740314954 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 09122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09062017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825077 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09122017 | 09062017 | 09082017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09112017 | 2017-09-11T08:15:35+00:00 | 251414627252 | 000072259-01 | Roy | Burgess | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09122017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 09092017 | 09122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911005 | M549 | Dorsalgia, unspecified | ICD10 | 09122017 | 09092017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09072017 | 2017-09-07T10:23:25+00:00 | 250455267250 | 000024843-01 | JANEEN | HUFF | COPC CENTRAL OHIO PRIMAR | 935499 | ANIMESH | SHARMA | 1063455939 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09072017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907032 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 09122017 | 09072017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09062017 | 2017-09-06T09:23:57+00:00 |  | 000104722-01 | Eugene | Nance | SOUND PHYSICIANS OF OHI0 | 948549 | SHRAVAN | LIKKI | 1891136230 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 09122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09032017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906014 | A419, R0902 | Hypoxemia | ICD10 | 09122017 | 09032017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09072017 | 2017-09-07T09:33:22+00:00 | 179467567249 | 000071747-01 | Constance | Bethel | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09062017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907014 | H6690 | Otitis media, unspecified, unspecified ear | ICD10 | 09122017 | 09062017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09032017 | 2017-09-03T19:15:11+00:00 |  | 000081386-01 | Gloria | Brown | NEEL RAYA MD INC | 906799 |  | NEELKANT RAYA MD INC | 1720268626 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09022017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905076 | R112 | Nausea with vomiting, unspecified | ICD10 | 09122017 | 09022017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09112017 | 2017-09-11T09:40:47+00:00 | 251618017251 | 000020886-01 | CARL | EUBEL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 09092017 | 09112017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911031 | I469 | Cardiac arrest, cause unspecified | ICD10 | 09122017 | 09092017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09072017 | 2017-09-07T10:10:00+00:00 | 258284077249 | 000099156-01 | M Rolaine | Baisden | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09122017 | Approved | THE TIMKEN COMPANY | Reports | Inpatient | Inpatient | 09062017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907028 | R079 | Chest pain, unspecified | ICD10 | 09122017 | 09062017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09112017 | 2017-09-11T14:16:23+00:00 |  | 000103910-01 | Marlin | Trussell | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09122017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09072017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912048 | R410 | Disorientation, unspecified | ICD10 | 09122017 | 09072017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08232017 | 2017-08-23T14:22:55+00:00 |  | 000016323-01 | DONALD | MALOTT | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08222017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824069 | K5669 | Other intestinal obstruction | ICD10 | 09122017 | 08222017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 08232017 | 2017-08-23T08:38:08+00:00 |  | 000070474-01 | Mary | Spahr | HOCKING VALLEY MED GRP | 949829 | TAREK M | AZIZ | 1679592075 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 09122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08212017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823048 | F319 | Bipolar disorder, unspecified | ICD10 | 09122017 | 08212017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 09082017 | 2017-09-08T10:57:55+00:00 | 169188017250 | 000117886-01 | David | Smith | ORTHO FOOT & ANKLE CNTR | 948886 | MARK A | PRISSEL | 1700178035 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09072017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908040 | M19172 | Post-traumatic osteoarthritis, left ankle and foot | ICD10 | 09122017 | 09072017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07202017 | 2017-07-20T11:24:10+00:00 | 026479911-7230 | 000044492-01 | TED | FRABOTT | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 09072017 | 09112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720065 | M4126, M4726, M4806, M4807 | Spinal stenosis, lumbosacral region | ICD10 | 09122017 | 09072017 | 09112017 | 22612, 63047, 20931, 20930, 22614, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 09072017 | 2017-09-07T10:27:16+00:00 | 253094717249 | 000056803-01 | EDWARD | JOHNSON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09072017 | 09122017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907036 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 09122017 | 09072017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09022017 | 2017-09-02T10:45:41+00:00 |  | 000102117-01 | WILMA | ARNOLD | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09012017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905037 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 09122017 | 09012017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09012017 | 2017-09-01T14:47:23+00:00 |  | 000009054-01 | BOBBY | TUTTLE | S DAYTON ACUTE CARE CNSL | 922839 | KARLO A | RUFO | 1194956581 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 09122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09012017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905042 | J810 | Acute pulmonary edema | ICD10 | 09122017 | 09012017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08312017 | 2017-08-31T09:01:26+00:00 |  | 000012603-01 | LILLIAN | POCHEDLEY | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08312017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831029 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 09122017 | 08312017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09012017 | 2017-09-01T09:14:09+00:00 | 267202917243 | 000116769-01 | Rebecca | Fadis | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09122017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08312017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901011 | N179, R2230 | Localized swelling, mass and lump, unspecified upper limb | ICD10 | 09122017 | 08312017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09112017 | 2017-09-11T09:58:57+00:00 |  | 000098172-01 | Bruce | Coldiron | MEDICINE INPATIENT GROUP | 910711 | CHIRAG A | SHAH | 1043274772 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 09122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09092017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911090 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 09122017 | 09092017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08292017 | 2017-08-29T12:28:18+00:00 |  | 000084321-01 | Paul | Thomas | OHIOHEALTH PHYS GRP | 905892 | ANTHONY T | CHAPEKIS | 1558366906 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829072 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 09122017 | 08282017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 08142017 | 2017-08-14T08:21:47+00:00 |  | 000045708-01 | WILLIAM | MARRIOTT | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09122017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814088 | R079 | Chest pain, unspecified | ICD10 | 09122017 | 08112017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08292017 | 2017-08-29T15:16:38+00:00 |  | 000091992-01 | Dennis | Dawson | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08282017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830034 | A419, L03116, N179 | Acute kidney failure, unspecified | ICD10 | 09122017 | 08282017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
