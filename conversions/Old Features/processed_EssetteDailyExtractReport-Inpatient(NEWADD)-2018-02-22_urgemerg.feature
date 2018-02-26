Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-22_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-22_URGEMERG
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
| 02092018 | 2018-02-09T16:48:19+00:00 |  | 000108231-01 | Sally | Barailloux | HOSPITALIST MEDICINE PHY | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02092018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212006 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02222018 | 02092018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 02202018 | 2018-02-20T09:05:17+00:00 |  | 000088279-01 | Donald | Gardner | OSU SURGERY LLC | 924711 | DAVID C | EVANS | 1851517031 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02192018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220063 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 02222018 | 02192018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02142018 | 2018-02-14T14:26:05+00:00 |  | 000037642-01 | JAMES | CRAWFORD | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214043 | J159, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02222018 | 02132018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02162018 | 2018-02-16T10:29:35+00:00 |  | 000117945-01 | Beth | true | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02222018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02202018 | 02212018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216029 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02222018 | 02202018 | 02212018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01082018 | 2018-01-08T12:48:33+00:00 |  | 000111201-01 | Charles | Kleiner | MIAMI VALLEY HSPISTS GRP | 906659 | ANNE C | SCHOEN | 1457576266 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01072018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108118 | J159 | Unspecified bacterial pneumonia | ICD10 | 02222018 | 01072018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 44.0 |
| 01242018 | 2018-01-24T11:41:07+00:00 |  | 000083593-01 | Marcia | Shomaker | MOUNT CARMEL HLTH SYS | 924918 | ALEKSANDAR | TANCEVSKI | 1194974824 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02222018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02202018 | 02212018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124049 | M1612, M25552 | Pain in left hip | ICD10 | 02222018 | 02202018 | 02212018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01052018 | 2018-01-05T16:57:16+00:00 |  | 000049485-01 | TIMOTHY | LUCKHAUPT | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02212018 | 02212018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108005 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02222018 | 02212018 | 02212018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 02082018 | 2018-02-08T12:28:47+00:00 |  | 000032764-01 | JOAN | MCCLAIN | PREMIER UROLOGY CORP | 930560 | ADAM J | CLEMENS | 1477798049 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02202018 | 02212018 | Expedited |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208049 | D49512 | NEOPLASM OF UNSPECIFIED BEHAVIOR OF LEFT KIDNEY | ICD10 | 02222018 | 02202018 | 02212018 | 50545 | LAPARO RADICAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02132018 | 2018-02-13T19:21:25+00:00 |  | 000021228-01 | Betty | Hollar | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02222018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 02132018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214016 | I639 | Cerebral infarction, unspecified | ICD10 | 02222018 | 02132018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02192018 | 2018-02-19T08:42:33+00:00 |  | 000119546-01 | Shirley | Laymon | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02162018 | 02212018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219018 | J189 | Pneumonia, unspecified organism | ICD10 | 02222018 | 02162018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02192018 | 2018-02-19T10:55:38+00:00 |  | 000015702-01 | MARGARET | DENNIS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02162018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219043 | J09X2, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02222018 | 02162018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02192018 | 2018-02-19T13:09:43+00:00 |  | 000076336-01 | Priscilla | Rinehart | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02222018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02202018 | 02212018 | Expedited |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219059 | T8189XA | Oth complications of procedures, NEC, init | ICD10 | 02222018 | 02202018 | 02212018 | 11005 | DEBRIDE ABDOM WALL | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02192018 | 2018-02-19T12:48:32+00:00 |  | 000024814-01 | RUTH | JETT | HOSPITAL MEDICINE SERVIC | 946505 | MANORAMA | CHALUVADI | 1639433766 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02192018 | 02212018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219076 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02222018 | 02192018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02202018 | 2018-02-20T15:21:44+00:00 |  | 000079559-01 | Linda | Stanfield | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02222018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02202018 | 02212018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221043 | Z96651 | Presence of right artificial knee joint | ICD10 | 02222018 | 02202018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12152017 | 2017-12-15T11:08:50+00:00 |  | 000069815-01 | Sharon | Williams | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02202018 | 02212018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215058 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02222018 | 02202018 | 02212018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01312018 | 2018-01-31T08:11:16+00:00 |  | 000034973-01 | LEWIS | LARRICK | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131026 | N19 | Unspecified kidney failure | ICD10 | 02222018 | 01302018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 01312018 | 2018-01-31T13:20:05+00:00 |  | 000073201-01 | George | Hahnemann III | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02222018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02152018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131091 | C9200 | Acute myeloblastic leukemia, not having achieved remission | ICD10 | 02222018 | 02152018 | 02202018 | 96416 | CHEMO PROLONG INFUSE W/PUMP | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 2.0 |
| 02052018 | 2018-02-05T08:45:58+00:00 |  | 000095539-01 | Sharon | Thabat Mohamed | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02052018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205065 | N10 | Acute tubulo-interstitial nephritis | ICD10 | 02222018 | 02052018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02062018 | 2018-02-06T10:06:58+00:00 |  | 000072252-01 | KATHLEEN | BAUGHN | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02192018 | 02212018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206015 | S7221XK | Displaced subtrochnt fx r femur, subs for clos fx w nonunion | ICD10 | 02222018 | 02192018 | 02212018 | 27472 | REP NON/MALUNION FEMUR HD/NK C GRFT | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02122018 | 2018-02-12T13:06:51+00:00 |  | 000087628-01 | Angeline | Proft | LUNZ, STEVEN R | 921394 | STEVEN R | LUNZ | 1710981089 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02222018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02122018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212096 | A419, J449, R0600, R062, R0902, R6889 | Other general symptoms and signs | ICD10 | 02222018 | 02122018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02142018 | 2018-02-14T11:01:44+00:00 |  | 000027309-01 | PATRESEA | LOWERY | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214025 | R0602 | Shortness of breath | ICD10 | 02222018 | 02132018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02142018 | 2018-02-14T14:48:02+00:00 |  | 000101022-01 | Joan | George | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02132018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214051 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 02222018 | 02132018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02152018 | 2018-02-15T08:28:12+00:00 |  | 000026239-01 | M | BEAN | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02142018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215032 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 02222018 | 02142018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02162018 | 2018-02-16T15:21:10+00:00 |  | 000070528-01 | Mary | Meyers | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 02222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02152018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216074 | E039, E7800 | PURE HYPERCHOLESTEROLEMIA, UNSPECIFIED | ICD10 | 02222018 | 02152018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02192018 | 2018-02-19T12:20:24+00:00 |  | 000044603-01 | EDGAR | HUTCHINSON | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219049 | I639, R42 | Dizziness and giddiness | ICD10 | 02222018 | 02172018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02212018 | 2018-02-21T05:15:06+00:00 |  | 000063593-01 | DAVID | LEVENSON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 02192018 | 02212018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221026 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 02222018 | 02192018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02162018 | 2018-02-16T16:27:11+00:00 |  | 000121112-01 | Denise | Aliff | MERCY MEMORIAL HOSPITAL - CAH | 902498 |  | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 02222018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02162018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216082 | F0391 | Unspecified dementia with behavioral disturbance | ICD10 | 02222018 | 02162018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02192018 | 2018-02-19T13:14:43+00:00 |  | 000085530-01 | John | Park | LICKING MEM HLTH PROF | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02182018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220003 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 02222018 | 02182018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02192018 | 2018-02-19T17:43:42+00:00 |  | 000071941-01 | Lowell | Adams | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02162018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220053 | J329 | Chronic sinusitis, unspecified | ICD10 | 02222018 | 02162018 | 02222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02202018 | 2018-02-20T12:42:25+00:00 |  | 000009900-01 | ROSELLA | RIDENOUR | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02152018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220076 | M6281 | Muscle weakness (generalized) | ICD10 | 02222018 | 02152018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02202018 | 2018-02-20T16:33:48+00:00 |  | 000119231-01 | Marilyn | Gialloreto | HOSPITALIST MEDICINE PHY | 943144 | PRANAV | WASTI | 1659634236 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02222018 | Approved | Flexible Choice PPO | Fax | ACO - Pulmonary | Inpatient | 02202018 | 02212018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221059 | J189 | Pneumonia, unspecified organism | ICD10 | 02222018 | 02202018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02202018 | 2018-02-20T16:34:14+00:00 |  | 000099299-01 | Sue | Marsh | INPATIENT CNSLT OF MICHI | 927347 | DENNIS | DESIMONE | 1467468934 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02192018 | 02202018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221063 | C541 | Malignant neoplasm of endometrium | ICD10 | 02222018 | 02192018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
