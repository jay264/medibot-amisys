Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-22_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-22_URGEMERG
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
| 01252018 | 2018-01-25T11:35:21+00:00 |  | 000030998-01 | MARTHA | CANNON | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03202018 | 03212018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125057 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 03222018 | 03202018 | 03212018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03212018 | 2018-03-21T11:42:02+00:00 |  | 000073693-01 | Margaret | Ray | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321037 | R079 | Chest pain, unspecified | ICD10 | 03222018 | 01232018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02282018 | 2018-02-28T16:11:19+00:00 |  | 000066073-01 | THOMAS | TURNER | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03222018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03202018 | 03212018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228090 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03222018 | 03202018 | 03212018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03132018 | 2018-03-13T08:27:29+00:00 |  | 000112623-01 | Ruby | Bogenrife | IMMEDIATE HEALTH ASSOC | 937264 | FRANK | ORTH | 1912954041 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313041 | J4531 | Mild persistent asthma with (acute) exacerbation | ICD10 | 03222018 | 03122018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03162018 | 2018-03-16T15:07:19+00:00 |  | 000111491-01 | SALLY | LOMBARDO | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03152018 | 03212018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316055 | J159, R0602 | Shortness of breath | ICD10 | 03222018 | 03152018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03172018 | 2018-03-17T12:04:40+00:00 |  | 000017257-01 | GEORGE | WARNER | COPC CENTRAL OHIO PRIMAR | 952403 | SYDULU G | BATHINI | 1003235912 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03162018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319022 | E875 | Hyperkalemia | ICD10 | 03222018 | 03162018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03192018 | 2018-03-19T12:10:59+00:00 |  | 000028256-01 | SHIRLEY | FRALEY | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03172018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319070 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 03222018 | 03172018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03192018 | 2018-03-19T14:29:08+00:00 |  | 000004036-01 | EDITH | HAMMOND | SOUND INPATIENT PHYS OF | 927692 | SHAHED | HASNAT | 1770915951 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03182018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319097 | J159, R042 | Hemoptysis | ICD10 | 03222018 | 03182018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03192018 | 2018-03-19T17:38:09+00:00 |  | 000037727-01 | BONITA | DAVIS | BIG RUN URGENT CARE LLC | 917248 | NATHANIEL D | RUSSELL | 1740401470 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03172018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320028 | I5023, I160 | HYPERTENSIVE URGENCY | ICD10 | 03222018 | 03172018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02202018 | 2018-02-20T11:25:08+00:00 |  | 000025363-01 | BETTY | MAYHEW | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03192018 | 03212018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221001 | M19012, M75122 | Complete rotatr-cuff tear/ruptr of left shoulder, not trauma | ICD10 | 03222018 | 03192018 | 03212018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03072018 | 2018-03-07T09:45:23+00:00 |  | 000095167-01 | Jacqueline | Crist | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENT | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 03222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03192018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307037 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03222018 | 03192018 | 03212018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03082018 | 2018-03-08T12:46:27+00:00 |  | 000020683-01 | PERRY | BOLING | MOUNT CARMEL HLTH SYS | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308056 | R6521 | Severe sepsis with septic shock | ICD10 | 03222018 | 03072018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 03122018 | 2018-03-12T10:50:18+00:00 |  | 000069764-01 | RUBY | MCFADDEN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03222018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 03112018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312039 | I509 | Heart failure, unspecified | ICD10 | 03222018 | 03112018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03122018 | 2018-03-12T11:52:41+00:00 |  | 000102198-01 | Thomas | Vaughan | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03102018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312063 | E876, R079, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 03222018 | 03102018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03132018 | 2018-03-13T14:26:18+00:00 |  | 000107746-01 | Delores | Mace | TEXAS HEALTH PRESBYTERIAN HOSPITAL P | 946888 |  | TEXAS HEALTH PRESBYTERIAN HOSPITAL P | 1770514077 | TEXAS HEALTH PRESBYTERIAN HOSPITAL P | 946888 | 1770514077 | TEXAS HEALTH PRESBYTERIAN HOSPITAL P | 1770514077 | Inpatient | IP | Concurrent Review | CONC |  | TEXAS HEALTH PRESBYTERIAN HOSPITAL P | 03222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03112018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313071 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 03222018 | 03112018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03132018 | 2018-03-13T15:57:55+00:00 |  | 000071713-01 | Ta | Lynn | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03122018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313087 | E119, N179, R2681, R296, R531 | Weakness | ICD10 | 03222018 | 03122018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03142018 | 2018-03-14T08:55:59+00:00 |  | 000078941-01 | Paul | Fleming | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314020 | M6281 | Muscle weakness (generalized) | ICD10 | 03222018 | 03132018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03142018 | 2018-03-14T13:41:46+00:00 |  | 000025613-01 | BEULAH | SMITH | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314048 | I4891, R42, R55 | Syncope and collapse | ICD10 | 03222018 | 03132018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03162018 | 2018-03-16T11:09:43+00:00 |  | 000084512-01 | Theresa | Diblasio | LICKING MEM HLTH PROF | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03152018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316031 | J159 | Unspecified bacterial pneumonia | ICD10 | 03222018 | 03152018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03162018 | 2018-03-16T11:17:30+00:00 |  | 000121051-01 | Wilma | Phillips | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03152018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316038 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 03222018 | 03152018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03162018 | 2018-03-16T14:17:46+00:00 |  | 000092544-01 | Roland | Wildman Jr | HAVEN BEHAVIORAL SRVS OF | 929368 |  | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 0 | HAVEN BEHAVIORAL SRVS OF | 929368 | 1831460229 | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 0 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 03222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03152018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316051 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 03222018 | 03152018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03182018 | 2018-03-18T12:05:09+00:00 |  | 000048638-01 | DONALD | MILBURN | MOUNT CARMEL HLTH PRVDRS | 934916 | STEVEN | TANZER | 1578526513 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03152018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319021 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 03222018 | 03152018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T09:41:36+00:00 |  | 000110356-01 | CAROLE | GARRISON | MARIETTA MEM HSP REHAB | 930519 | EMMANUEL A | AGABA | 1851698633 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03222018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03172018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319072 | K56609 | K56609 | ICD10 | 03222018 | 03172018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03122018 | 2018-03-12T14:43:06+00:00 |  | 000031074-01 | JONATHAN | MILLER | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313032 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 03222018 | 03132018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03162018 | 2018-03-16T11:14:04+00:00 |  | 000117562-01 | LLOYD | BIXLER | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03152018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316037 | M4807 | Spinal stenosis, lumbosacral region | ICD10 | 03222018 | 03152018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03182018 | 2018-03-18T14:27:53+00:00 |  | 000118366-01 | Robert | Thompson | WAFL INC | 935166 | BROCK A | LIDEN | 1598762692 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 03222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03162018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319045 | L0291 | Cutaneous abscess, unspecified | ICD10 | 03222018 | 03162018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03192018 | 2018-03-19T14:15:56+00:00 |  | 000026060-01 | Mary | Snodgrass | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03182018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319077 | I509 | Heart failure, unspecified | ICD10 | 03222018 | 03182018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03192018 | 2018-03-19T11:46:27+00:00 |  | 000106726-01 | Lola | Nixon | LICKING MEM HLTH PROF | 913806 | JOE N | HACKWORTH | 1619974987 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03182018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319082 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 03222018 | 03182018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T11:49:26+00:00 |  | 000039877-01 | WILMA | SIMCOX | LICKING MEM HLTH PROF | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03222018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 03172018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319087 | N179 | Acute kidney failure, unspecified | ICD10 | 03222018 | 03172018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03192018 | 2018-03-19T12:13:02+00:00 |  | 000037155-01 | DOROTHY | GREEN | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03172018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319090 | J189 | Pneumonia, unspecified organism | ICD10 | 03222018 | 03172018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03192018 | 2018-03-19T15:07:07+00:00 |  | 000051351-01 | VICKI | MCGRAW | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03172018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320005 | A419 | Sepsis, unspecified organism | ICD10 | 03222018 | 03172018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03192018 | 2018-03-19T15:48:33+00:00 |  | 000092400-01 | Suzann | Williams | OHIOHEALTH PHYS GRP | 901740 | NICHOLAS | PARKINSON | 1700860095 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03182018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320016 | R481 | Agnosia | ICD10 | 03222018 | 03182018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T16:06:14+00:00 |  | 000007821-01 | JOSEPHA | VASILIAUSKAS | OHIOHEALTH PHYS GRP | 943241 | THANH V | NGUYEN | 1073755294 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320020 | V892XXA | Person injured in unsp motor-vehicle accident, traffic, init | ICD10 | 03222018 | 03192018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03192018 | 2018-03-19T16:43:23+00:00 |  | 000057871-01 | KATHERINE | GOLDBERG | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320023 | K5732 | Dvtrcli of lg int w/o perforation or abscess w/o bleeding | ICD10 | 03222018 | 03192018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03202018 | 2018-03-20T08:17:55+00:00 |  | 000082357-01 | Peggy | Fry | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03222018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03192018 | 03212018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320034 | R296 | Repeated falls | ICD10 | 03222018 | 03192018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03202018 | 2018-03-20T08:22:57+00:00 |  | 000119186-01 | Teresa | Wilson | RIVERSIDE SURG ASSOC INC | 920504 | JOHN A | BACH | 1891990859 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320036 | V877XXA | Person injured in collision betw oth mtr veh (traffic), init | ICD10 | 03222018 | 03192018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03222018 | 2018-03-22T13:04:38+00:00 |  | 000085012-01 | Ronald | Belus | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 03222018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12142017 | 12182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322037 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 03222018 | 12142017 | 12182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
