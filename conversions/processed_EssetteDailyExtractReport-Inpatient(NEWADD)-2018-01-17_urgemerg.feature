Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-17_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-17_URGEMERG
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
| 01112018 | 2018-01-11T09:14:17+00:00 |  | 000077724-01 | James | Hudson | HOSPITALIST MEDICINE PHY | 952663 | JESSE | DION | 1619383734 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01102018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111025 | E872, I959, J189, N179, R55 | Syncope and collapse | ICD10 | 01162018 | 01102018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01112018 | 2018-01-11T14:29:35+00:00 |  | 000082821-01 | David | Fairchild | ACUTE CARE SURGEONS LLC | 935511 | DAVID R | GIAMMAR | 1154307858 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01082018 | 01102018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111074 | K458, R1084 | Generalized abdominal pain | ICD10 | 01162018 | 01082018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01112018 | 2018-01-11T10:12:52+00:00 |  | 000029254-01 | ERNEST | PRESTON | COLS INPATIENT CARE INC | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111037 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01172018 | 01102018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01082018 | 2018-01-08T10:13:00+00:00 |  | 000119461-01 | DOUGLAS | BOYD SR | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01102018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108045 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 01172018 | 01102018 | 01162018 | 33518 | CORONARY BYPASS, TWO VENOUS GRAFTS | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 01112018 | 2018-01-11T10:19:51+00:00 |  | 000085917-01 | Dorothy | Franchini | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Essential Care | Fax | ACO - CHF | Inpatient | 01102018 | 01122018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111040 | I509 | Heart failure, unspecified | ICD10 | 01172018 | 01102018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01132018 | 2018-01-13T13:56:30+00:00 |  | 000091218-01 | Barbara | Clay | MOUNT CARMEL EAST PHYS | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01122018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115039 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 01172018 | 01122018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01142018 | 2018-01-14T08:58:23+00:00 |  | 000043070-01 | JANET | ENGBERG | CEN OH PRIMARY CARE SPEC | 924573 | ANILA S | JAJODIA | 1508006859 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01122018 | 01152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115008 | N390 | Urinary tract infection, site not specified | ICD10 | 01172018 | 01122018 | 01152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01092018 | 2018-01-09T12:08:06+00:00 |  | 000118635-01 | Michael | Clemens | WRIGHT STATE PHYSICIANS | 902808 | MBAGA S | WALUSIMBI | 1295791275 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 01172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01082018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109102 | I629 | Nontraumatic intracranial hemorrhage, unspecified | ICD10 | 01172018 | 01082018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01112018 | 2018-01-11T07:25:32+00:00 |  | 000101758-01 | HORACE | SINGLETON | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01102018 | 01152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111009 | E875 | Hyperkalemia | ICD10 | 01172018 | 01102018 | 01152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01052018 | 2018-01-05T18:14:20+00:00 |  | 000056727-01 | LARRY | FERNEAU | ORTHOPEDIC ONE INC | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01152018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108013 | M12811 | Oth specific arthropathies, NEC, right shoulder | ICD10 | 01172018 | 01152018 | 01162018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01122018 | 2018-01-12T17:17:09+00:00 |  | 000092922-01 | Paul | Hoag | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 01172018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 01172018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180115027 | D72829, I309, J90 | Pleural effusion, not elsewhere classified | ICD10 | 01172018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01152018 | 2018-01-15T06:03:38+00:00 |  | 000108456-01 | HENRY | BOE | PATEL, KETAN K | 921436 | KETAN K | PATEL | 1699721050 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 01172018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01112018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115018 | R079 | Chest pain, unspecified | ICD10 | 01172018 | 01112018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01142018 | 2018-01-14T13:46:12+00:00 |  | 000010154-01 | TODE | MILENKOVSKI | MOUNT CARMEL EAST PHYS | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01132018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115048 | I4891, J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 01172018 | 01132018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01112018 | 2018-01-11T16:38:19+00:00 |  | 000103727-01 | Sarah | Sieber | MOUNT CARMEL HLTH SYS | 910442 | JOHN C | WEISS | 1215021084 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01102018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112003 | I214, J189 | Pneumonia, unspecified organism | ICD10 | 01172018 | 01102018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12142017 | 2017-12-14T09:59:12+00:00 |  | 000061150-01 | JUNE | MILLER | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01152018 | 01162018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214024 | R1909 | Other intra-abdominal and pelvic swelling, mass and lump | ICD10 | 01172018 | 01152018 | 01162018 | 38571, 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 01092018 | 2018-01-09T08:31:12+00:00 |  | 000049842-01 | JAMES | OGURCHOCK | GENESIS MEDICAL GRP LLC | 927692 | SHAHED | HASNAT | 1770915951 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01172018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 01082018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109082 | J9600, R0902 | Hypoxemia | ICD10 | 01172018 | 01082018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01092018 | 2018-01-09T08:02:23+00:00 |  | 000103623-01 | Kevin | Cook | MIAMI VALLEY HSPISTS GRP | 932164 | SAMER | MOHANDES | 1356640171 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01082018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109038 | R45851 | Suicidal ideations | ICD10 | 01172018 | 01082018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01112018 | 2018-01-11T11:59:33+00:00 |  | 000052912-01 | James | Spires | HOSPITALIST MEDICINE PHY | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01102018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111056 | G9340, N390, R443 | Hallucinations, unspecified | ICD10 | 01172018 | 01102018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12142017 | 2017-12-14T10:19:59+00:00 |  | 000022573-01 | RICHARD | BAUMANN | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01092018 | 01112018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214030 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01172018 | 01092018 | 01112018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01152018 | 2018-01-15T10:13:54+00:00 |  | 000031643-01 | RICHARD | TAGGART | HOSPITAL MEDICINE SERVIC | 922163 | ADEDOYIN O | ADETORO | 1215260930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 01152018 | 01162018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115089 | I509, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01172018 | 01152018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01162018 | 2018-01-16T11:56:43+00:00 |  | 000080362-01 | Mark | Warner | NEUROSCIENCE CENTER | 947785 | SHRADDHA | MAINALI | 1972733657 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01122018 | 01142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116063 | I639 | Cerebral infarction, unspecified | ICD10 | 01172018 | 01122018 | 01142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01052018 | 2018-01-05T11:14:17+00:00 |  | 000099304-01 | Brynietta | Sherer | INPATIENT CNSLT OF MICHI | 927347 | DENNIS | DESIMONE | 1467468934 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01172018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01152018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105045 | N8502 | Endometrial intraepithelial neoplasia [EIN] | ICD10 | 01172018 | 01152018 | 01162018 | 38571, 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  | No child records to display. |  |
| 01092018 | 2018-01-09T11:09:27+00:00 |  | 000079952-01 | Peggy | Ervin | FAIRFIELD HLTHCARE PROFS | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01082018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109093 | E875 | Hyperkalemia | ICD10 | 01172018 | 01082018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01082018 | 2018-01-08T16:57:07+00:00 |  | 000110678-01 | Peggy | Espinosa | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01062018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109016 | N390, K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 01172018 | 01062018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01132018 | 2018-01-13T13:16:45+00:00 |  | 000113408-01 | Rosemary | Cook | SOUND INPATIENT PHYS OF | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01132018 | 01162018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115031 | J189, N289 | Disorder of kidney and ureter, unspecified | ICD10 | 01172018 | 01132018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01122018 | 2018-01-12T16:09:01+00:00 |  | 000048427-01 | JERRY | MAGERS | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01112018 | 01142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115004 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 01172018 | 01112018 | 01142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01082018 | 2018-01-08T15:31:35+00:00 |  | 000118148-01 | PAMELA | THERRIEN | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 01062018 | 01142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109023 | A419, J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01172018 | 01062018 | 01142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11212017 | 2017-11-21T16:41:02+00:00 |  | 000059200-01 | PATRICIA | BOND | LANCASTER SURGICAL ASSOC | 936219 | TIMOTHY J | CUSTER | 1144211418 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122032 | E6601 | Morbid (severe) obesity due to excess calories | ICD10 | 01172018 | 01092018 | 01122018 | 43644, 43645 | LAP GASTR BYPASS INCL SMLL I | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 01162018 | 2018-01-16T10:39:59+00:00 |  | 000099682-01 | Reed | Jewett | APOGEE MED GRP OHIO INC | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01132018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116031 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01172018 | 01132018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12052017 | 2017-12-05T12:16:34+00:00 |  | 000026327-01 | LOIS | REED | ORTHOPEDIC ONE INC | 925969 | JASON R | FERREL | 1063790657 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205072 | M4316, M5417, M48062 | M48062 | ICD10 | 01172018 | 01032018 | 01152018 | 22612, 22614, 22840, 22842, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 13, 13, 13, 13, 13, 13 | CPT | C4 |  |  |  | 12.0 |
| 01042018 | 2018-01-04T08:26:06+00:00 |  | 000025244-01 | PAUL | ELKINS | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104024 | I442 | Atrioventricular block, complete | ICD10 | 01172018 | 01032018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12142017 | 2017-12-14T13:22:47+00:00 |  | 000058380-01 | KAY | THOMPSON | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01092018 | 01112018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214039 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01172018 | 01092018 | 01112018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01082018 | 2018-01-08T14:19:33+00:00 |  | 000013200-01 | JEAN | DEVER | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01072018 | 01112018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108138 | J159 | Unspecified bacterial pneumonia | ICD10 | 01172018 | 01072018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01082018 | 2018-01-08T17:33:58+00:00 |  | 000018544-01 | JAIME | RICO ORDEIX | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01042018 | 01112018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109027 | I214, R531 | Weakness | ICD10 | 01172018 | 01042018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01082018 | 2018-01-08T18:35:35+00:00 |  | 000079951-01 | Dean | Grossholz | DIZON, VICTOR V | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01062018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109056 | S52614S, S72141A, W11XXXD | Fall on and from ladder, subsequent encounter | ICD10 | 01172018 | 01062018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01092018 | 2018-01-09T16:18:36+00:00 |  | 000091883-01 | Marvin | George | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 01062018 | 01112018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110001 | D649, I509 | Heart failure, unspecified | ICD10 | 01172018 | 01062018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01162018 | 2018-01-16T11:36:37+00:00 |  | 000120630-01 | Helen | Bishop | HOSPITALIST MEDICINE PHY | 928106 | SMITHA | ACHUTHANKUTTY | 1891016119 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 01172018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01112018 | 01142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116061 | A419, N3000, R509 | Fever, unspecified | ICD10 | 01172018 | 01112018 | 01142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01082018 | 2018-01-08T14:50:10+00:00 |  | 000080875-01 | Jacqueline | Trick | KHN IP MED | 935461 | PARMINDER | MODGIL | 1528166816 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01172018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01052018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109042 | D709, R509 | Fever, unspecified | ICD10 | 01172018 | 01052018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
