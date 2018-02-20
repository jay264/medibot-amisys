Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-19_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-19_URGEMERG
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
| 01182018 | 2018-01-18T09:47:49+00:00 |  | 000033059-01 | HENRY | VENRICK | MOUNT CARMEL HLTH SYS | 925969 | JASON R | FERREL | 1063790657 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02152018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118039 | M50020 | CERV DISC DISORD WITH MYELPATH, MID-CERVICAL RGN, UNSP LEVEL | ICD10 | 02192018 | 02152018 | 02182018 | 63048, 22600, 22614, 22842, L0180 | CERVICAL, MULTIPLE POST COLLAR, OCCIPITAL/MANDIBULAR SUPPORTS, | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4 | HCPCS | HC |  |  |  | 3.0 |
| 02102018 | 2018-02-10T13:18:56+00:00 |  | 000034063-01 | NATALIA | WYMER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02162018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212020 | J189 | Pneumonia, unspecified organism | ICD10 | 02192018 | 02092018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01092018 | 2018-01-09T11:29:47+00:00 |  | 000028674-01 | WILLIAM | MODER | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109134 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02192018 | 02132018 | 02162018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 02012018 | 2018-02-01T10:30:59+00:00 |  | 000078610-01 | Thomas | Ellinger | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201013 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02192018 | 01302018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 02052018 | 2018-02-05T11:16:41+00:00 |  | 000001151-01 | JANICE | ERLICH | SOUND INPATIENT PHYS OF | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02042018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205061 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02192018 | 02042018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 02062018 | 2018-02-06T14:16:04+00:00 |  | 000110483-01 | John | Beedy | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02062018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207006 | I509, J810, N179, R0602, R4182 | Altered mental status, unspecified | ICD10 | 02192018 | 02062018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02072018 | 2018-02-07T14:25:46+00:00 |  | 000030085-01 | JOHN | GERMAINE | ORTHOPEDIC ONE INC | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | TRINITY HEALTH | Fax | EIS | Inpatient | 02152018 | 02162018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207050 | M12811 | Oth specific arthropathies, NEC, right shoulder | ICD10 | 02192018 | 02152018 | 02162018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02112018 | 2018-02-11T19:10:57+00:00 |  | 000049003-01 | DOROTHY | NORRIS | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02192018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 02092018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212063 | I4891 | Unspecified atrial fibrillation | ICD10 | 02192018 | 02092018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02122018 | 2018-02-12T16:12:35+00:00 |  | 000097600-01 | Dorothy | Ward | OHIOHEALTH PHYS GRP | 927691 | ROSE | TRESS | 1184944373 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02112018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213023 | J189 | Pneumonia, unspecified organism | ICD10 | 02192018 | 02112018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02132018 | 2018-02-13T14:50:04+00:00 |  | 000039615-01 | BILLY | SENTER | MOUNT CARMEL HLTH PRVDRS | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02162018 | 02182018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213099 | J849, R590 | Localized enlarged lymph nodes | ICD10 | 02192018 | 02162018 | 02182018 | 31622, 32666 | THORACOSCOPY W/WEDGE RESECT | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 02142018 | 2018-02-14T09:46:05+00:00 |  | 000107001-01 | Jerry | Mazzone | HOSPITAL MEDICINE SERVIC | 941188 | ABDAL R | ALHYARI | 1205051570 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02192018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02132018 | 02172018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214018 | R079 | Chest pain, unspecified | ICD10 | 02192018 | 02132018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01292018 | 2018-01-29T09:12:55+00:00 |  | 000052524-01 | FRANK | WISE | MEM HSP OF UNION COUNTY | 906815 | DOUGLAS S | SKURA | 1073517710 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129067 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 02192018 | 02132018 | 02162018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 2.0 |
| 01312018 | 2018-01-31T13:15:24+00:00 |  | 000051881-01 | GALE | LIVELY | MOUNT CARMEL HLTH PRVDRS | 904972 | BRADFORD B | MULLIN | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02142018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131086 | D430 | Neoplasm of uncertain behavior of brain, supratentorial | ICD10 | 02192018 | 02142018 | 02172018 | 61510, 61781 | SCAN PROC CRANIAL INTRA | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 02052018 | 2018-02-05T15:16:03+00:00 |  | 000090772-01 | Cynthia | Strausbaugh | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02032018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206005 | R112 | Nausea with vomiting, unspecified | ICD10 | 02192018 | 02032018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02072018 | 2018-02-07T14:14:28+00:00 |  | 000083465-01 | Judy | Tarrence | S DAYTON ACUTE CARE CNSL | 908033 | INDU | RAO | 1447242045 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02062018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207043 | G939 | Disorder of brain, unspecified | ICD10 | 02192018 | 02062018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 02082018 | 2018-02-08T15:20:20+00:00 |  | 000098482-01 | Manifred | Smoot | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02072018 | 02172018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208077 | I509 | Heart failure, unspecified | ICD10 | 02192018 | 02072018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02092018 | 2018-02-09T10:02:57+00:00 |  | 000065745-01 | PAUL | BICE | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 02082018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209022 | E46, K632 | Fistula of intestine | ICD10 | 02192018 | 02082018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02092018 | 2018-02-09T10:35:24+00:00 |  | 000075768-01 | Floyd | Martin | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209030 | K631, R198 | Oth symptoms and signs involving the dgstv sys and abdomen | ICD10 | 02192018 | 02082018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02102018 | 2018-02-10T11:43:58+00:00 |  | 000021022-01 | CARROLL | HUNT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212014 | G9341, N390 | Urinary tract infection, site not specified | ICD10 | 02192018 | 02092018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02122018 | 2018-02-12T14:19:37+00:00 |  | 000106009-01 | DIXIE | SCHEFFLER | ALLIANCE PHYSICIANS INC | 948102 | CHRISTA | SIEBENBURGEN | 1114247251 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02112018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213005 | S72141A | Displaced intertrochanteric fracture of right femur, init | ICD10 | 02192018 | 02112018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02122018 | 2018-02-12T14:22:35+00:00 |  | 000087451-01 | William | Short | S DAYTON ACUTE CARE CNSL | 913547 | SVEN E | RAYMOND | 1609830876 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02112018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213007 | C61, R188 | Other ascites | ICD10 | 02192018 | 02112018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02132018 | 2018-02-13T09:49:05+00:00 |  | 000023618-01 | JEAN | CHAN | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02122018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213054 | A419, E872 | Acidosis | ICD10 | 02192018 | 02122018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02132018 | 2018-02-13T09:02:16+00:00 |  | 000100253-01 | James | Indiciani | OHIOHEALTH PHYS GRP | 919351 | SABREEN O | ABU OBAID | 1700026556 | DUBLIN METHODIST HOSP | 905908 | 1801937008 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02122018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213070 | E875 | Hyperkalemia | ICD10 | 02192018 | 02122018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02132018 | 2018-02-13T09:11:33+00:00 |  | 000085409-01 | Nancy | Fields | ADENA MEDICAL GROUP LLC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02122018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213076 | R0602 | Shortness of breath | ICD10 | 02192018 | 02122018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02132018 | 2018-02-13T10:48:40+00:00 |  | 000107304-01 | Johnny | Weiss | LICKING MEM HLTH PROF | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02122018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213090 | L089 | Local infection of the skin and subcutaneous tissue, unsp | ICD10 | 02192018 | 02122018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02132018 | 2018-02-13T11:12:09+00:00 |  | 000097205-01 | Bernard | Chapman | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 |  | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02122018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213095 | J111, J189 | Pneumonia, unspecified organism | ICD10 | 02192018 | 02122018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02132018 | 2018-02-13T13:28:34+00:00 |  | 000080890-01 | Clyde | Berkshire | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02122018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213112 | M25532, M25552, S0990XA, S52502A, S72002A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 02192018 | 02122018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02132018 | 2018-02-13T14:55:43+00:00 |  | 000117383-01 | JOANN | BURTON | HOSPITALIST MEDICINE PHY | 927955 | WILLIAM J | FORTON | 1902067853 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 02192018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02132018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214010 | R079 | Chest pain, unspecified | ICD10 | 02192018 | 02132018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02142018 | 2018-02-14T11:36:58+00:00 |  | 000095006-01 | Portia | Davis | MIAMI VALLEY HSPISTS GRP | 947756 | NIKHIL | PRASAD | 1114364460 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02132018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214030 | E875, R0602, R112, R197 | Diarrhea, unspecified | ICD10 | 02192018 | 02132018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02142018 | 2018-02-14T11:29:28+00:00 |  | 000116929-01 | JAMES | LEWIS | SOUND KENWOOD HSPISTS OF | 932447 | OLGA A | MELZER | 1740414283 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02132018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214032 | L089, T148XXA | T148XXA | ICD10 | 02192018 | 02132018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02142018 | 2018-02-14T15:37:21+00:00 |  | 000051904-01 | FRED | MOORE | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214055 | K5660 | Unspecified intestinal obstruction | ICD10 | 02192018 | 02132018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02152018 | 2018-02-15T08:59:15+00:00 |  | 000016977-01 | BONNIE | HOLST | SOUND INPATIENT PHYS OF | 935011 | JAY M | WALLIN | 1528090768 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02142018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215021 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 02192018 | 02142018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02152018 | 2018-02-15T12:01:02+00:00 |  | 000120638-01 | SHARON | SALLY | HOSPITALIST MEDICINE PHY | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02142018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215040 | K6389, R109 | Unspecified abdominal pain | ICD10 | 02192018 | 02142018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02152018 | 2018-02-15T09:35:50+00:00 |  | 000063406-01 | DANNY | HOLDREN | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02142018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215048 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02192018 | 02142018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02162018 | 2018-02-16T10:37:27+00:00 |  | 000008181-01 | BETTY | PYLES | OHIOHEALTH PHYS GRP | 910835 | PAUL R | BEERY | 1508918319 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02152018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216038 | S02600A | Fracture of unsp part of body of mandible, init for clos fx | ICD10 | 02192018 | 02152018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02192018 | 2018-02-19T11:04:06+00:00 |  | 000110483-01 | John | Beedy | APOGEE MED GRP OHIO INC | 945647 | RIDHWAN Y | BABA | 1225318397 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02182018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219032 | E8779, R4182 | Altered mental status, unspecified | ICD10 | 02192018 | 02182018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
