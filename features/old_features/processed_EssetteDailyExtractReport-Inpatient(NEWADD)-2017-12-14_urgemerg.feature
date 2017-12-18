Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-14_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-14_URGEMERG
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
| 11252017 | 2017-11-25T20:39:03+00:00 |  | 000038182-01 | DAVID | JONES | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11242017 | 12132017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125015 | R079 | Chest pain, unspecified | ICD10 | 12132017 | 11242017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 12032017 | 2017-12-03T11:54:20+00:00 |  | 000013831-01 | RUTH | PARRISH | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12022017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171203001 | R4182 | Altered mental status, unspecified | ICD10 | 12132017 | 12022017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 12042017 | 2017-12-04T09:29:57+00:00 | 180444167335 | 000020385-01 | RALPH | HAYES | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12012017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204033 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 12132017 | 12012017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 12082017 | 2017-12-08T07:27:02+00:00 | 264580217341 | 000070751-01 | Robert | Blackstone | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12132017 | Approved | MediGold Medical Only | Reports | Inpatient | Inpatient | 12082017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208001 | R001 | Bradycardia, unspecified | ICD10 | 12132017 | 12082017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12102017 | 2017-12-10T07:29:11+00:00 | 025156017-7343 | 000062167-01 | ROBERTA | DUFF | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12132017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 12092017 | 12132017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211008 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12132017 | 12092017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12072017 | 2017-12-07T10:13:39+00:00 | 250582347340 | 000027314-01 | WILLIAM | JOHNSTON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12062017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207031 | R079 | Chest pain, unspecified | ICD10 | 12132017 | 12062017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12132017 | 2017-12-13T22:37:25+00:00 |  | 000069789-01 | JIMMIE | BROWNING JR | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12132017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12122017 | 12132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213111 | K810, K861 | Other chronic pancreatitis | ICD10 | 12132017 | 12122017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12042017 | 2017-12-04T09:48:49+00:00 | 250403187337 | 000040994-01 | Jane | Gischler | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 12042017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204048 | J159 | Unspecified bacterial pneumonia | ICD10 | 12142017 | 12042017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12112017 | 2017-12-11T10:45:11+00:00 | 258289347343 | 000011657-01 | SARAH | RITO | COPC CENTRAL OHIO PRIMAR | 908066 | BHAIRAVI M | PATEL | 1740381532 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12092017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211068 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 12142017 | 12092017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12112017 | 2017-12-11T10:57:04+00:00 | 256696547344 | 000117329-01 | Jannette | Scarbury | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12142017 | Approved | MediGold Essential Care | Reports | ACO - Pulmonary | Inpatient | 12102017 | 12132017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211076 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12142017 | 12102017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12122017 | 2017-12-12T10:10:11+00:00 | 250463527345 | 000093551-01 | Pamela | Habart | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 12112017 | 12132017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212023 | F419 | Anxiety disorder, unspecified | ICD10 | 12142017 | 12112017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T10:34:32+00:00 | 170323307344 | 000115308-01 | Bonnie | Hildreth | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 12102017 | 12132017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211055 | I509 | Heart failure, unspecified | ICD10 | 12142017 | 12102017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12142017 | 2017-12-14T08:30:47+00:00 |  | 000057165-01 | JOHN | JONES | ORTHOPEDIC ONE INC | 935076 | RAYMOND K | WURAPA | 1417940594 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 12122017 | 12132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214003 | M65841 | Other synovitis and tenosynovitis, right hand | ICD10 | 12142017 | 12122017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12062017 | 2017-12-06T08:58:19+00:00 | 018033372-7325 | 000115182-01 | Susan | White | ZANESVILLE XPRESS ORTHO | 921890 | BRAD E | BRAUTIGAN | 1114919479 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12142017 | Approved | MediGold Southeast OH Essential Care | Fax | EIS | Inpatient | 12122017 | 12132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206041 | S42201A | Unsp fracture of upper end of right humerus, init | ICD10 | 12142017 | 12122017 | 12132017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12112017 | 2017-12-11T11:06:34+00:00 | 265597187342 | 000058907-01 | ANNIE | KING | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12082017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211081 | J0190, R220 | Localized swelling, mass and lump, head | ICD10 | 12142017 | 12082017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12112017 | 2017-12-11T12:18:30+00:00 | 252118277344 | 000041983-01 | PATRICK | MURNANE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12102017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211093 | C159, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 12142017 | 12102017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12082017 | 2017-12-08T14:47:05+00:00 |  | 000033295-01 | NETA | PICKETT | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12072017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208070 | R000, R0600 | Dyspnea, unspecified | ICD10 | 12142017 | 12072017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09262017 | 2017-09-26T16:25:23+00:00 |  | 000086710-01 | Carl | Wilmot | FAIRFIELD HLTHCARE PROFS | 943028 | RYAN K | HARRISON | 1528295169 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12112017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927037 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12142017 | 12112017 | 12132017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12112017 | 2017-12-11T09:54:26+00:00 |  | 000091357-01 | Louise | Arledge | ADENA MEDICAL GROUP LLC | 920163 | MUHAMMAD K | AHSAN | 1467408344 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12082017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211124 | R296 | Repeated falls | ICD10 | 12142017 | 12082017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11302017 | 2017-11-30T11:31:17+00:00 |  | 000038092-01 | CHARLES | HILL | KNOX COMMUNITY HSP PHYS | 904518 | DAVID A | KITTOE | 1730149154 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11292017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130100 | A419 | Sepsis, unspecified organism | ICD10 | 12142017 | 11292017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12132017 | 2017-12-13T10:08:59+00:00 | 251158647346 | 000061491-01 | SHARON | THOMPSON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12122017 | 12132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213048 | N201 | Calculus of ureter | ICD10 | 12142017 | 12122017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T14:55:48+00:00 |  | 000083576-01 | Joyce | Gabbard | HOSPITALIST MEDICINE PHY | 946140 | MALATHY | VARATHARAJAH | 1669470050 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12142017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11132017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115051 | E860, N3001, R0902, R5383, R911, Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 12142017 | 11132017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11242017 | 2017-11-24T14:43:05+00:00 |  | 000106587-01 | Christopher | Jarrells | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 12142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11232017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127078 | I5021, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 12142017 | 11232017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 11222017 | 2017-11-22T07:57:59+00:00 |  | 000072791-01 | Rebecca | Davis | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122054 | C169 | Malignant neoplasm of stomach, unspecified | ICD10 | 12142017 | 11282017 | 12142017 | 43631 | GASTRECTOMY, PARTIAL, DISTAL; W/GASTRODUODENOSTOMY | CPT | 1 | 1 | Approved | 17 | CPT | C4 |  |  |  | 16.0 |
| 11142017 | 2017-11-14T17:01:44+00:00 | 025618889-7320 | 000011949-01 | YOUNG | PAK | MOUNT CARMEL HLTH PRVDRS | 952270 | ZOE | ZHANG | 1407080138 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12112017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115037 | G912 | (Idiopathic) normal pressure hydrocephalus | ICD10 | 12142017 | 12112017 | 12142017 | 62272 | SPNL PUNC FOR DRAINAGE SPNL FLUID | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 12082017 | 2017-12-08T12:05:06+00:00 |  | 000115775-01 | Donald | Barnes | LICKING MEM HLTH PROF | 908828 | ERIC M | LAYNE | 1316164817 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12142017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 12072017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208055 | F251 | Schizoaffective disorder, depressive type | ICD10 | 12142017 | 12072017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12122017 | 2017-12-12T10:12:48+00:00 | 253390807346 | 000057414-01 | ALICE | HUCK | HOSPITALIST MEDICINE PHY | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12112017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212024 | I5031 | Acute diastolic (congestive) heart failure | ICD10 | 12142017 | 12112017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12132017 | 2017-12-13T16:55:54+00:00 |  | 000093439-01 | Archie | Hall | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 12142017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 12142017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171214001 | I639 | Cerebral infarction, unspecified | ICD10 | 12142017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12112017 | 2017-12-11T07:55:41+00:00 |  | 000021414-01 | BOBBIE | BROWN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12142017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 12102017 | 12142017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211013 | R0602 | Shortness of breath | ICD10 | 12142017 | 12102017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12142017 | 2017-12-14T08:25:26+00:00 |  | 000092239-01 | James | Peer | MIAMI VALLEY HSPISTS GRP | 940511 | VISALAKSHI | KUNAPULI | 1811100027 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 12142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12072017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214019 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 12142017 | 12072017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12082017 | 2017-12-08T13:48:46+00:00 |  | 000114465-01 | FRANCIS | KEIFFER JR | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12142017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12082017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208068 | I4891 | Unspecified atrial fibrillation | ICD10 | 12142017 | 12082017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T16:21:51+00:00 |  | 000079799-01 | Ondina | Bonser | DIGESTIVE SPEC INC | 903147 | CHRISTOPHER J | BARDE | 1215918263 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12082017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212001 | I10, I4892, R002 | Palpitations | ICD10 | 12142017 | 12082017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12112017 | 2017-12-11T08:10:17+00:00 |  | 000057441-01 | TERRY | PETERS | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12072017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211044 | R0600, R262, R531 | Weakness | ICD10 | 12142017 | 12072017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11302017 | 2017-11-30T10:32:24+00:00 |  | 000106429-01 | Clyde | Buckmaster | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12142017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11292017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130087 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 12142017 | 11292017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12112017 | 2017-12-11T10:52:44+00:00 |  | 000052710-01 | JIM | WRIGHT | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12102017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211135 | R509 | Fever, unspecified | ICD10 | 12142017 | 12102017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11302017 | 2017-11-30T09:56:06+00:00 | 252234547334 | 000005857-01 | Sherman | Ross | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11302017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130022 | R410 | Disorientation, unspecified | ICD10 | 12142017 | 11302017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 12122017 | 2017-12-12T13:12:09+00:00 | 026744220-7347 | 000049497-01 | JOHN | GROOME | COPC CENTRAL OHIO PRIMAR | 932738 | SRIKANTH | KESARI | 1932487337 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 12092017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212062 | C799 | Secondary malignant neoplasm of unspecified site | ICD10 | 12142017 | 12092017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12052017 | 2017-12-05T10:29:45+00:00 |  | 000100910-01 | David | Swafford | ALLIANCE PHYSICIANS INC | 906934 | BRIAN P | SCHWARTZ | 1255315453 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12042017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214036 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 12142017 | 12042017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12142017 | 2017-12-14T16:16:09+00:00 | 025839071-7321 | 000116357-01 | CAROL | GUNDERMAN | ORTHO & NEURO CONSULTS I | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12142017 | Approved | MediGold Essential Care | EMR | EIS | Inpatient | 12132017 | 12142017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214058 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 12142017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11292017 | 2017-11-29T16:02:41+00:00 | 026300019-7321 | 000027995-01 | CLIFFORD | KNERR | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130083 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12142017 | 12132017 | 12142017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12082017 | 2017-12-08T08:49:24+00:00 | 026772855-7332 | 000093698-01 | Glendon | Mullett | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208048 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 12142017 | 12132017 | 12142017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
