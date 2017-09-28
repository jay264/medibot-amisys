Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-26_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-26_URGEMERG
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
| 09212017 | 2017-09-21T09:57:32+00:00 | 252342257264 | 000005522-01 | VERA | STREITENBERGER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09212017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921025 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 09262017 | 09212017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09192017 | 2017-09-19T11:02:24+00:00 |  | 000079244-01 | Verne | Biehl | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09172017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920009 | A419, R509 | Fever, unspecified | ICD10 | 09262017 | 09172017 | 09232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09072017 | 2017-09-07T15:51:19+00:00 |  | 000052742-01 | VELMA | WERTZ | SURG ASSOC OF SPRINGFIEL | 906099 | STEVEN E | CONKEL | 1770615338 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 09262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908035 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 09262017 | 09072017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09192017 | 2017-09-19T10:45:00+00:00 |  | 000067172-01 | PAUL | GWILYM | OHIOHEALTH PHYS GRP | 951190 | NIRAV R | RANA | 1710203781 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09182017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920038 | K9421 | Gastrostomy hemorrhage | ICD10 | 09262017 | 09182017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09222017 | 2017-09-22T09:46:33+00:00 | 250990657264 | 000044324-01 | BETTY | RINEHART | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09212017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922021 | N10 | Acute tubulo-interstitial nephritis | ICD10 | 09262017 | 09212017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09182017 | 2017-09-18T13:30:20+00:00 |  | 000106055-01 | Lorraine | Heizer | MERCY HEALTH CLERMONT HO | 917916 |  | MERCY HOSPITAL CLERMONT | 1568562551 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 09262017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09162017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919117 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 09262017 | 09162017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08292017 | 2017-08-29T11:51:20+00:00 | 016951821-7227 | 000043220-01 | RICHARD | BOWMAN | COLON & RECTAL SURG INC | 935327 | JASWANT | MADHAVAN | 1790785897 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09212017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829055 | C20 | Malignant neoplasm of rectum | ICD10 | 09262017 | 09212017 | 09262017 | 44208 | L COLECTOMY/COLOPROCTOSTOMY | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 09182017 | 2017-09-18T16:10:54+00:00 |  | 000077925-01 | Edward | Rhoades | SOUND KENWOOD HSPISTS OF | 943552 | CAITLIN M | RICHARDSON-ROY | 1922351881 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 09262017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09152017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919104 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 09262017 | 09152017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09182017 | 2017-09-18T12:57:39+00:00 | 256125647258 | 000108049-01 | Marjorie | Hill | MOUNT CARMEL WEST PHYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09252017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919120 | M12811 | Oth specific arthropathies, NEC, right shoulder | ICD10 | 09262017 | 09252017 | 09262017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09182017 | 2017-09-18T10:51:26+00:00 |  | 000027040-01 | MONA | LEMON | OSU INTERNAL MED LLC | 908560 | BHUVANESWARI D | RAMASWAMY | 1851348098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09172017 | 09232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919018 | M84453A | Pathological fracture, unsp femur, init encntr for fracture | ICD10 | 09262017 | 09172017 | 09232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09212017 | 2017-09-21T15:42:03+00:00 | 250476237264 | 000105017-01 | Ruth | Hysell | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 09212017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921083 | J40, K625 | Hemorrhage of anus and rectum | ICD10 | 09262017 | 09212017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09062017 | 2017-09-06T09:38:20+00:00 | 259863037248 | 000062972-01 | MARIANNE | BECKELHEIMER | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09052017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906019 | I639 | Cerebral infarction, unspecified | ICD10 | 09262017 | 09052017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 09182017 | 2017-09-18T13:56:11+00:00 |  | 000075796-01 | Freda | Thompson | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 09262017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09152017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919075 | D709, K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 09262017 | 09152017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09212017 | 2017-09-21T09:54:17+00:00 | 252310757263 | 000053251-01 | ARMINDA | STEVENS | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09202017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921023 | R0602 | Shortness of breath | ICD10 | 09262017 | 09202017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09202017 | 2017-09-20T10:36:42+00:00 | 262032367263 | 000028644-01 | MARY | SWARTZ | SOUND PHYSICIANS OF OHI0 | 943144 | PRANAV | WASTI | 1659634236 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09192017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920051 | I63512 | Cereb infrc d/t unsp occls or stenos of left mid cereb art | ICD10 | 09262017 | 09192017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09252017 | 2017-09-25T08:52:21+00:00 | 251370277266 | 000062430-01 | Sheila | Bailey | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 09222017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925009 | J441, R1310 | Dysphagia, unspecified | ICD10 | 09262017 | 09222017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08232017 | 2017-08-23T13:22:00+00:00 |  | 000057255-01 | RONALD | FORTMAN | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09262017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 09252017 | 09252017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824043 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 09262017 | 09252017 | 09252017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 09212017 | 2017-09-21T15:38:12+00:00 | 025052960-7264 | 000004036-01 | EDITH | HAMMOND | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09212017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921082 | I509 | Heart failure, unspecified | ICD10 | 09262017 | 09212017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09222017 | 2017-09-22T07:35:53+00:00 | 025478515-7264 | 000048916-01 | ROBERT | FOOS | ORTHO & NEURO CONSULTS I | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09262017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 09212017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922003 | M4804 | Spinal stenosis, thoracic region | ICD10 | 09262017 | 09212017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09222017 | 2017-09-22T15:45:16+00:00 | 253784277265 | 000063674-01 | JANICE | STORIE | CAPITAL PARK FAM HLTH CT | 931392 | YAN | ZHU | 1518389287 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09222017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922059 | M8660 | Other chronic osteomyelitis, unspecified site | ICD10 | 09262017 | 09222017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09152017 | 2017-09-15T15:03:24+00:00 |  | 000040207-01 | JAMES | MORRIS JR | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09142017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915082 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 09262017 | 09142017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09252017 | 2017-09-25T13:22:08+00:00 | 263665157266 | 000071120-01 | Antonio | Poullet-Martinez | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09222017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925086 | I639 | Cerebral infarction, unspecified | ICD10 | 09262017 | 09222017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08222017 | 2017-08-22T11:00:37+00:00 |  | 000082735-01 | Linda | Vandyke | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920534 | 1710067376 | MOUNT CARMEL MEDICAL CTR REHAB | 1578648085 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CTR REHAB | 09262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822098 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 09262017 | 09252017 | 09262017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09012017 | 2017-09-01T12:36:57+00:00 |  | 000080214-01 | Gale | Ellis | MARIETTA MEM HSP | 929667 | LANE M | LEE | 1073600979 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 09262017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09142017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901045 | Z932 | Ileostomy status | ICD10 | 09262017 | 09142017 | 09252017 | 44620, 44625, 44626, 44340 | REVISION COLOSTOMY, SIMPLE | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 12, 12, 12, 12 | CPT | C4 |  |  |  | 3.0 |
| 09112017 | 2017-09-11T09:57:47+00:00 | 255258657253 | 000016544-01 | FRANCIS | KRISTOFIC | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09102017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911037 | I2510, R079 | Chest pain, unspecified | ICD10 | 09262017 | 09102017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 09212017 | 2017-09-21T09:58:13+00:00 | 250638807264 | 000025843-01 | BILL | KIRK | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09212017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921024 | I639, M6289 | Other specified disorders of muscle | ICD10 | 09262017 | 09212017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09152017 | 2017-09-15T09:43:54+00:00 | 257849357257 | 000098084-01 | Ina | Taylor | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09142017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915026 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 09262017 | 09142017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 09062017 | 2017-09-06T09:41:35+00:00 |  | 000070555-01 | Rebecca | Swope | WALLENBROCK, ANGELA B | 902462 | ANGELA B | WALLENBROCK | 1215907332 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 09262017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09032017 | 09172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906021 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 09262017 | 09032017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 09252017 | 2017-09-25T13:18:55+00:00 | 256546907265 | 000008041-01 | LARRY | MARKIN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09222017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925084 | I2601 | Septic pulmonary embolism with acute cor pulmonale | ICD10 | 09262017 | 09222017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09132017 | 2017-09-13T09:01:06+00:00 | 026258983-7256 | 000053764-01 | ADELBERT | TICKNER | ORTHO & NEURO CONSULTS I | 902411 | DONALD J | ROHL | 1578547097 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09262017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 09222017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914003 | M4316, M4806, M5416 | Radiculopathy, lumbar region | ICD10 | 09262017 | 09222017 | 09252017 | 22612, 63047, 63048, 22614, 22842, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 2, 2, 1, 1 | 1, 1, 2, 2, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 09192017 | 2017-09-19T10:05:54+00:00 |  | 000008707-01 | MARLENE | HAY | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09192017 | 09232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919057 | I639 | Cerebral infarction, unspecified | ICD10 | 09262017 | 09192017 | 09232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09202017 | 2017-09-20T12:51:11+00:00 |  | 000106699-01 | John | Kotsifas | STEVEN J MORGENSTERN MD | 935242 | STEVEN J | MORGENSTERN | 1417916651 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09192017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920093 | I959, N179, R42, R748 | Abnormal levels of other serum enzymes | ICD10 | 09262017 | 09192017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09192017 | 2017-09-19T11:09:20+00:00 | 017906888-7233 | 000067750-01 | MARVIN | SEYMOUR | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919068 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 09262017 | 09252017 | 09252017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 09192017 | 2017-09-19T15:10:45+00:00 |  | 000079979-01 | Raymond | Back | TRAUMA INC | 910892 | URMIL B | PANDYA | 1619137601 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 09262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920028 | S329XXA, W19XXXA | Unspecified fall, initial encounter | ICD10 | 09262017 | 09182017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09182017 | 2017-09-18T14:13:47+00:00 |  | 000113875-01 | Anita | Begley | KETTERING MEDICAL CENTER SYCAMORE | 905903 |  | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 09262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09172017 | 09232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919078 | K7290 | Hepatic failure, unspecified without coma | ICD10 | 09262017 | 09172017 | 09232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09192017 | 2017-09-19T11:20:26+00:00 | 254557207261 | 000022223-01 | TSING | HO | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09182017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919058 | I639 | Cerebral infarction, unspecified | ICD10 | 09262017 | 09182017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09212017 | 2017-09-21T15:44:54+00:00 | 257752997265 | 000017997-01 | LARRY | WALSH | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09212017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921084 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 09262017 | 09212017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09222017 | 2017-09-22T09:49:18+00:00 | 251038377264 | 000049489-01 | SANDRA | STOTTLEMIRE | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09212017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922023 | S329XXA, W19XXXA | Unspecified fall, initial encounter | ICD10 | 09262017 | 09212017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09212017 | 2017-09-21T09:26:11+00:00 | 258690667263 | 000033098-01 | GEORGE | GRIFFITH | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09202017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921011 | J159 | Unspecified bacterial pneumonia | ICD10 | 09262017 | 09202017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
