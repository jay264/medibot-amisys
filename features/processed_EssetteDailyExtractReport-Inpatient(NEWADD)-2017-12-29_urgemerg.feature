Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-29_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-29_URGEMERG
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
| 12182017 | 2017-12-18T09:51:15+00:00 |  | 000109362-01 | ESTHER | HACKER | OSU SURGERY LLC | 947108 | JONATHAN R | WISLER | 1821257353 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12292017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12152017 | 12172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218128 | R296, W010XXA | Fall same lev from slip/trip w/o strike against object, init | ICD10 | 12292017 | 12152017 | 12172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T15:44:06+00:00 |  | 000108665-01 | Bonnie | Stanforth | RCHP WILMINGTON LLC | 901968 | MARK S | COLLINS | 1962451021 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 12292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12202017 | 12272017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219012 | C8330 | Diffuse large B-cell lymphoma, unspecified site | ICD10 | 12292017 | 12202017 | 12272017 | 96416 | CHEMO PROLONG INFUSE W/PUMP | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 5.0 |
| 12262017 | 2017-12-26T09:54:33+00:00 | 250163017357 | 000059222-01 | HERBERT | COFFIELD | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12232017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226050 | J90, J9589, R0600 | Dyspnea, unspecified | ICD10 | 12292017 | 12232017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12192017 | 2017-12-19T15:23:03+00:00 | 250909407354 | 000104911-01 | PATRICIA | MURPHY | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12192017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219108 | N170 | Acute kidney failure with tubular necrosis | ICD10 | 12292017 | 12192017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12152017 | 2017-12-15T10:26:55+00:00 | 260391657349 | 000034164-01 | ROBERTA | ELLINGER | HOSPITALIST MEDICINE PHY | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12142017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215044 | E870, R4182 | Altered mental status, unspecified | ICD10 | 12292017 | 12142017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 12202017 | 2017-12-20T09:59:32+00:00 | 261875797353 | 000008900-01 | NONA | THOMAS | COVENANT PHYS SERV LTD | 902704 | JAMES W | KAEHR | 1184659708 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12192017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220029 | G8194, R7881 | Bacteremia | ICD10 | 12292017 | 12192017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12232017 | 2017-12-23T16:20:11+00:00 | 025839594-7356 | 000111639-01 | JOYCE | SHOCKLEY | COPC CENTRAL OHIO PRIMAR | 932891 | CHRISTINA M | JEPSON | 1740574128 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12292017 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 12232017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171223010 | N12 | Tubulo-interstitial nephritis, not spcf as acute or chronic | ICD10 | 12292017 | 12232017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12222017 | 2017-12-22T09:58:59+00:00 | 252537277355 | 000073975-01 | Gregory | Waller | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12212017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222027 | R079 | Chest pain, unspecified | ICD10 | 12292017 | 12212017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11282017 | 2017-11-28T10:04:35+00:00 | 016850394-7331 | 000075812-01 | Gloria | Morris | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128085 | M1711, T84022A | Instability of internal right knee prosthesis, init encntr | ICD10 | 12292017 | 12272017 | 12282017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12192017 | 2017-12-19T09:53:40+00:00 | 250888897353 | 000046984-01 | GLENN | PLYBON | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12182017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219053 | I472 | Ventricular tachycardia | ICD10 | 12292017 | 12182017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 12202017 | 2017-12-20T10:32:09+00:00 | 250910177354 | 000020356-01 | LOIS | PRESTON | COPC CENTRAL OHIO PRIMAR | 935072 | CAMERON M | WOODLIEF | 1922083633 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12202017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220039 | S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 12292017 | 12202017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12182017 | 2017-12-18T11:30:18+00:00 |  | 000105082-01 | DELORES ANN | CASTELLO | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12152017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219019 | S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 12292017 | 12152017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12202017 | 2017-12-20T14:09:34+00:00 |  | 000108625-01 | Carl | Birkemeyer | TRIHEALTH H LLC | 932557 | BRADLEY J | SCHULTZ | 1821366618 | MCCULLOUGH-HYDE MEM HSP | 923689 | 1245216183 | MCCULLOUGH HYDE MEMORIAL HOSPITAL | 1245216183 | Inpatient | IP | Concurrent Review | CONC |  | MCCULLOUGH HYDE MEMORIAL HOSPITAL | 12292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12192017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220067 | N3001 | Acute cystitis with hematuria | ICD10 | 12292017 | 12192017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12202017 | 2017-12-20T08:21:18+00:00 |  | 000075695-01 | Patricia | Fries | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12292017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12192017 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220020 | K5900 | Constipation, unspecified | ICD10 | 12292017 | 12192017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12182017 | 2017-12-18T10:16:00+00:00 |  | 000020385-01 | RALPH | HAYES | COPC CENTRAL OHIO PRIMAR | 908371 | JOHN | GREEN | 1518949106 | GRADY MEMORIAL HOSPITAL | 906147 | 1235174327 | GRADY MEMORIAL HOSPITAL 1500 | 0 | Inpatient | IP | Concurrent Review | CONC |  | GRADY MEMORIAL HOSPITAL 1500 | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12162017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218136 | Z992 | Dependence on renal dialysis | ICD10 | 12292017 | 12162017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T13:09:05+00:00 |  | 000099810-01 | Kurt | Armutat | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 936463 |  | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 1508835828 | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 936463 | 1508835828 | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 1508835828 | Inpatient | IP | Concurrent Review | CONC |  | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 12292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12242017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226152 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 12292017 | 12242017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03292017 | 2017-03-29T07:19:54+00:00 |  | 000099005-01 | Richard | Betts | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 12292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12112017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170329010 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12292017 | 12112017 | 12122017 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12262017 | 2017-12-26T08:50:09+00:00 |  | 000049497-01 | JOHN | GROOME | OSU INTERNAL MED LLC | 949059 | JISHU K | DAS | 1326276247 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12222017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226081 | G9340 | Encephalopathy, unspecified | ICD10 | 12292017 | 12222017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12142017 | 2017-12-14T13:19:42+00:00 |  | 000109777-01 | Daisy | Thompson | TRIHEALTH G LLC | 950677 | WHITNEY | WHITIS | 1841639424 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 12292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12122017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214035 | A419, R6520 | Severe sepsis without septic shock | ICD10 | 12292017 | 12122017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12272017 | 2017-12-27T10:29:13+00:00 |  | 000052604-01 | GLENVIL | MCGUIRE | NEUROSCIENCE CENTER | 945250 | DEEPAK K | GULATI | 1669797890 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12242017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227064 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 12292017 | 12242017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12202017 | 2017-12-20T08:12:22+00:00 | 026524494-7353 | 000103955-01 | Rita | Farley | HOSPITALIST MEDICINE PHY | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12292017 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 12192017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220009 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 12292017 | 12192017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 12052017 | 2017-12-05T15:27:17+00:00 |  | 000111185-01 | Ellen | Griffith | MUHAMMAD ZAFAR MD SC | 931173 | MUHAMMAD | ZAFAR | 1811985856 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 12292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12032017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205090 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 12292017 | 12032017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 25.0 |
| 12272017 | 2017-12-27T09:13:01+00:00 | 266722567361 | 000065518-01 | ROBERT | OLSSON | HOSPITALIST MEDICINE PHY | 913492 | MOHAMED H | HAMZA | 1720060940 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12262017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227020 | R55 | Syncope and collapse | ICD10 | 12292017 | 12262017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12182017 | 2017-12-18T07:04:47+00:00 |  | 000075463-01 | Lou | Parks | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12172017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218080 | R4182 | Altered mental status, unspecified | ICD10 | 12292017 | 12172017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 12222017 | 2017-12-22T12:37:14+00:00 |  | 000101167-01 | Larry | Edington | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12212017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222054 | I4891, J189 | Pneumonia, unspecified organism | ICD10 | 12292017 | 12212017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11152017 | 2017-11-15T16:11:23+00:00 | 025214865-7354 | 000040865-01 | FLOELLA | RAMEY | ORTHO & NEURO CONSULTS I | 942983 | RYAN M | PALMER | 1912134487 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12282017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116047 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 12292017 | 12282017 | 12292017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12232017 | 2017-12-23T17:20:28+00:00 |  | 000042530-01 | RONALD | SINES | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12232017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171223014 | R627 | Adult failure to thrive | ICD10 | 12292017 | 12232017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12262017 | 2017-12-26T13:00:22+00:00 |  | 000015341-01 | EMMA | WORLEY | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12252017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226153 | I4891, I5031 | Acute diastolic (congestive) heart failure | ICD10 | 12292017 | 12252017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12202017 | 2017-12-20T09:43:10+00:00 |  | 000038354-01 | ALICE | BEAVERS | NORTH FLORIDA REG MED CTR | 934691 |  | NORTH FLORIDA REG MED CTR | 1174579155 | NORTH FLORIDA REG MED CTR | 934691 | 1174579155 | NORTH FLORIDA REG MED CTR | 1174579155 | Inpatient | IP | Concurrent Review | CONC |  | NORTH FLORIDA REG MED CTR | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220036 | N179 | Acute kidney failure, unspecified | ICD10 | 12292017 | 12192017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12012017 | 2017-12-01T11:21:43+00:00 |  | 000049939-01 | MARJORIE | MCNEAL | ADENA MEDICAL GROUP LLC | 902458 | WILBUR E | SEVER III | 1780603282 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11302017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201042 | K639 | Disease of intestine, unspecified | ICD10 | 12292017 | 11302017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 12122017 | 2017-12-12T15:47:30+00:00 |  | 000026941-01 | NORMA | RINEHART | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12112017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213073 | D649, J9622, R0600 | Dyspnea, unspecified | ICD10 | 12292017 | 12112017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12182017 | 2017-12-18T10:55:06+00:00 |  | 000095593-01 | Larry | Fisher | HOSPITAL MEDICINE SERVIC | 949224 | KASHYAP B | PATEL | 1033476189 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12172017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219002 | S82209A | Unsp fracture of shaft of unsp tibia, init for clos fx | ICD10 | 12292017 | 12172017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12232017 | 2017-12-23T16:31:05+00:00 | 025336307-7357 | 000000537-01 | CHONG | TWIGG | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 12222017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171223011 | K56609 | K56609 | ICD10 | 12292017 | 12222017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12192017 | 2017-12-19T14:11:32+00:00 |  | 000055045-01 | JOY | WILT | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12182017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219103 | L0390 | Cellulitis, unspecified | ICD10 | 12292017 | 12182017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12262017 | 2017-12-26T09:43:44+00:00 | 251196557358 | 000004265-01 | RAYMOND | WAY | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12242017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226039 | J159 | Unspecified bacterial pneumonia | ICD10 | 12292017 | 12242017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12262017 | 2017-12-26T10:02:51+00:00 |  | 000105150-01 | RUTH | PEAKE | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12292017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12242017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226099 | I509 | Heart failure, unspecified | ICD10 | 12292017 | 12242017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12062017 | 2017-12-06T17:59:16+00:00 |  | 000005236-01 | JAMES | MORGAN | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12082017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207002 | S7290XS | Unspecified fracture of unspecified femur, sequela | ICD10 | 12292017 | 12082017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12272017 | 2017-12-27T08:31:52+00:00 |  | 000095593-01 | Larry | Fisher | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12292017 | Approved | MediGold Southeast OH Classic Preferred | EMR | Inpatient | Inpatient | 12262017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227010 | G9340 | Encephalopathy, unspecified | ICD10 | 12292017 | 12262017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T11:29:45+00:00 |  | 000079976-01 | Beverly | Mayhugh | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12252017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226133 | K7290 | Hepatic failure, unspecified without coma | ICD10 | 12292017 | 12252017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12082017 | 2017-12-08T11:19:23+00:00 |  | 000034373-01 | PAUL | HEDGES | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12072017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208058 | N3289 | Other specified disorders of bladder | ICD10 | 12292017 | 12072017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
