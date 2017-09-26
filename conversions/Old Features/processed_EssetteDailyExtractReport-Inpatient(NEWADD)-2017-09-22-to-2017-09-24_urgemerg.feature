Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-22-to-2017-09-24_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-22-to-2017-09-24_URGEMERG
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
| 09192017 | 2017-09-19T14:54:56+00:00 |  | 000054540-01 | DANNY | HITT | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920056 | S82891A | Oth fracture of right lower leg, init for clos fx | ICD10 | 09222017 | 09182017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09212017 | 2017-09-21T16:10:53+00:00 |  | 000016403-01 | LAURA | MERCURIO | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09222017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 09222017 | 09232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170921087 | I639 | Cerebral infarction, unspecified | ICD10 | 09222017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09182017 | 2017-09-18T09:41:31+00:00 | 179589547260 | 000101145-01 | Virginia | Sachs | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09222017 | Approved | MediGold Southwest OH Classic Preferred | Reports | Inpatient | Inpatient | 09172017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918026 | R0602 | Shortness of breath | ICD10 | 09222017 | 09172017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09112017 | 2017-09-11T14:41:03+00:00 |  | 000077499-01 | Zelda | Waites | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09092017 | 09162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912047 | R109 | Unspecified abdominal pain | ICD10 | 09222017 | 09092017 | 09162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09142017 | 2017-09-14T13:02:44+00:00 |  | 000070785-01 | Carol | Speakman | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09132017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915023 | E860 | Dehydration | ICD10 | 09222017 | 09132017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08232017 | 2017-08-23T16:10:56+00:00 | 016328374-7240 | 000036585-01 | DON | ADKINS | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09202017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824084 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09222017 | 09202017 | 09212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08182017 | 2017-08-18T15:34:31+00:00 |  | 000095539-01 | Sharon | Thabat Mohamed | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818067 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09222017 | 09182017 | 09202017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09192017 | 2017-09-19T10:48:47+00:00 | 259451307261 | 000015307-01 | ROY | BELL | CEP AMERICA - OHIO LLC | 951961 | AMANDA | ZHANG | 1609142967 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09182017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919043 | A419 | Sepsis, unspecified organism | ICD10 | 09222017 | 09182017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02152017 | 2017-02-15T12:40:54+00:00 |  | 000033704-01 | LAWRENCE | WILLIAMS | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | SENTARA NORFOLK GENERAL HOSPITAL | 902768 | 0 | SENTARA NORFOLK GENERAL HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | SENTARA NORFOLK GENERAL HOSPITAL | 09242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09242017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170216047 | R079 | Chest pain, unspecified | ICD10 | 09242017 | 02142017 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09082017 | 2017-09-08T16:48:55+00:00 | 017954086-7256 | 000098908-01 | Norma | Jones | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09202017 | 09212017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912019 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09222017 | 09202017 | 09212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04122017 | 2017-04-12T08:38:11+00:00 |  | 000070719-01 | Mike | Farkas | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04112017 | 04152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170428098826.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413023 | A419, N19, N390 | Urinary tract infection, site not specified | ICD10 | 09222017 | 04112017 | 04152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09182017 | 2017-09-18T09:01:32+00:00 | 255964047259 | 000085163-01 | Janet | Haddox | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09222017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09162017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918009 | A419 | Sepsis, unspecified organism | ICD10 | 09222017 | 09162017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09082017 | 2017-09-08T10:39:31+00:00 |  | 000112788-01 | Ginger | Steele | ADENA HEALTH SYSTEMS | 939543 | DANIEL J | IANNI | 1295816288 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09192017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908066 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 09222017 | 09192017 | 09212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05172017 | 2017-05-17T11:54:47+00:00 |  | 000069221-01 | MARIA | FANSLER | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09192017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517090 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09222017 | 09192017 | 09212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08222017 | 2017-08-22T11:04:03+00:00 |  | 000112478-01 | Deborah | Walters | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822082 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09222017 | 09182017 | 09202017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09192017 | 2017-09-19T08:09:13+00:00 |  | 000068035-01 | LORENA | BANKSTON | OSU INTERNAL MED LLC | 910831 | NATHAN J | ODORISIO | 1396750113 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09222017 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919124 | R5383 | Other fatigue | ICD10 | 09222017 | 09182017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09152017 | 2017-09-15T10:15:41+00:00 |  | 000085530-01 | John | Park | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09142017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915058 | J189, R531 | Weakness | ICD10 | 09222017 | 09142017 | 09152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09222017 | 2017-09-22T10:10:48+00:00 | 262837487264 | 000094065-01 | Rodney | Nichols | SOUND PHYSICIANS OF OHI0 | 948549 | SHRAVAN | LIKKI | 1891136230 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09222017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922029 | I7410 | Embolism and thrombosis of unspecified parts of aorta | ICD10 | 09222017 | 09222017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09192017 | 2017-09-19T13:01:05+00:00 |  | 000076017-01 | Vanessa | Powell | SIX COUNTY INC | 902464 | MUKESH R | RANGWANI | 1912072646 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09222017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09182017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920052 | F99 | Mental disorder, not otherwise specified | ICD10 | 09222017 | 09182017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09192017 | 2017-09-19T10:57:59+00:00 | 166185177263 | 000070169-01 | Robert | Schreiber | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 09182017 | 09212017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919047 | I4891 | Unspecified atrial fibrillation | ICD10 | 09222017 | 09182017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09212017 | 2017-09-21T09:40:14+00:00 | 250548267263 | 000033538-01 | BARBARA | HARTLEY | CENTRAL OHIO SURG ASSOC | 934982 | THOMAS M | VARA | 1457390130 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09202017 | 09212017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921015 | K819 | Cholecystitis, unspecified | ICD10 | 09222017 | 09202017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09112017 | 2017-09-11T15:52:16+00:00 | 251614047254 | 000112855-01 | Richard | Dearwester | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09112017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911129 | R079 | Chest pain, unspecified | ICD10 | 09222017 | 09112017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09182017 | 2017-09-18T14:39:43+00:00 |  | 000039318-01 | GERALDINE | REYNOLDS | GRANDVIEW & SOUTHVIEW HO | 936462 |  | GRANDVIEW MEDICAL CENTER | 1053339507 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09172017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919089 | J441, R0602 | Shortness of breath | ICD10 | 09222017 | 09172017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09152017 | 2017-09-15T17:17:39+00:00 |  | 000112388-01 | FREDA | GASKINS | UNIVERSITY OF CINCINNATI | 941323 | ELIZABETH K | POWELL | 1831332923 | WEST CHESTER MEDICAL CENTER | 911775 | 1851549273 | WEST CHESTER MEDICAL CENTER | 1851549273 | Inpatient | IP | Concurrent Review | CONC |  | WEST CHESTER MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09152017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918011 | N390 | Urinary tract infection, site not specified | ICD10 | 09222017 | 09152017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09142017 | 2017-09-14T14:41:49+00:00 |  | 000117555-01 | Thomas | Green | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09222017 | Approved | MediGold Southeast OH Essential Care | Fax | EIS | Inpatient | 09212017 | 09222017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915007 | C61 | Malignant neoplasm of prostate | ICD10 | 09222017 | 09212017 | 09222017 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 09122017 | 2017-09-12T11:48:28+00:00 |  | 000093734-01 | Michael | Bland | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913054 | D649 | Anemia, unspecified | ICD10 | 09222017 | 09112017 | 09172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09122017 | 2017-09-12T10:35:39+00:00 | 259970837254 | 000077347-01 | Phillip | Schenk | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09222017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Inpatient | Inpatient | 09112017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912024 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 09222017 | 09112017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09142017 | 2017-09-14T12:41:52+00:00 |  | 000065561-01 | DAVID | WEBB | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09132017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914109 | A419, I5023, W19XXXA | Unspecified fall, initial encounter | ICD10 | 09222017 | 09132017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
