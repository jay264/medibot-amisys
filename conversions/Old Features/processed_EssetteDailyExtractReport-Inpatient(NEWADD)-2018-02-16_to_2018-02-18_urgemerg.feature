Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-16_to_2018-02-18_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-16_to_2018-02-18_URGEMERG
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
| 12172017 | 2017-12-17T17:03:21+00:00 |  | 000079976-01 | Beverly | Mayhugh | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02162018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180103148957.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218129 | R197 | Diarrhea, unspecified | ICD10 | 02162018 | 12172017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01232018 | 2018-01-23T10:23:29+00:00 |  | 000059203-01 | JANICE | COMPTON | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02132018 | 02152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123073 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02162018 | 02132018 | 02152018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01302018 | 2018-01-30T14:29:17+00:00 |  | 000089815-01 | Howard | Barnthouse | PREMIER HEALTH SPEC INC | 931255 | BABAR | HASAN | 1649266016 | WAYNE HOSPITAL COMPANY | 952956 | 1861840704 | WAYNE HOSPITAL COMPANY | 1861840704 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | WAYNE HOSPITAL COMPANY | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01282018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131018 | F0391 | Unspecified dementia with behavioral disturbance | ICD10 | 02162018 | 01282018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 02092018 | 2018-02-09T15:43:40+00:00 |  | 000099996-01 | Terry | Wagle | HAVEN BEHAVIORAL SRVS OF | 927026 |  | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 1831460229 | HAVEN BEHAVIORAL SRVS OF | 927026 | 1831460229 | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 1831460229 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02152018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209082 | F333 | Major depressv disorder, recurrent, severe w psych symptoms | ICD10 | 02162018 | 02072018 | 02152018 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 |  | 9 | CPT | C4 |  |  |  | 8.0 |
| 02112018 | 2018-02-11T11:01:52+00:00 |  | 000026847-01 | BETTY | ETTERS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02102018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212046 | R569 | Unspecified convulsions | ICD10 | 02162018 | 02102018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02122018 | 2018-02-12T11:41:51+00:00 |  | 000094730-01 | Larry | Meadows | HOSPITALIST MEDICINE PHY | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02112018 | 02152018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212087 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02162018 | 02112018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11302017 | 2017-11-30T13:36:46+00:00 |  | 000032791-01 | ELEANOR | ALKIRE | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02132018 | 02152018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201021 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02162018 | 02132018 | 02152018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01172018 | 2018-01-17T10:01:21+00:00 |  | 000079627-01 | Lisa | Woods | KNOX COMMUNITY HOSPITAL | 904047 | KENNETH H | DOOLITTLE | 1609835354 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02132018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117022 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 02162018 | 02132018 | 02152018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02052018 | 2018-02-05T11:59:45+00:00 |  | 000111828-01 | DONNA | ARCHER | MARIETTA HLTH CARE PHYS | 923178 | WARREN L | COOPER | 1740288687 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02162018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02152018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205056 | N8320 | Unspecified ovarian cysts | ICD10 | 02162018 | 02072018 | 02152018 | 49000, 49203, 49204, 49205, 58720, 44140, 44139 | MOBILIZATION (TAKE-DOWN) OF SPLENIC FLEXURE PERFORMED IN CONJUNCTION | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 9, 9, 9, 9, 9, 9, 9 | CPT | C4 |  |  |  | 3.0 |
| 02072018 | 2018-02-07T08:36:55+00:00 |  | 000073720-01 | Sheila | Moffatt | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02072018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207034 | R001 | Bradycardia, unspecified | ICD10 | 02162018 | 02072018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02072018 | 2018-02-07T11:16:36+00:00 |  | 000108393-01 | Gary | Stover | OHIOHEALTH PHYS GRP | 919351 | SABREEN O | ABU OBAID | 1700026556 | DUBLIN METHODIST HOSP | 905908 | 1801937008 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 02162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02062018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207065 | J810 | Acute pulmonary edema | ICD10 | 02162018 | 02062018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02072018 | 2018-02-07T10:18:07+00:00 |  | 000024550-01 | BRYAN | LAYNE | CENTRAL OH HSPISTS INC | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208019 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02162018 | 02062018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02082018 | 2018-02-08T10:36:29+00:00 |  | 000071589-01 | Jack | Detillion | ADENA MEDICAL GROUP LLC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208026 | J189 | Pneumonia, unspecified organism | ICD10 | 02162018 | 02072018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02122018 | 2018-02-12T08:38:13+00:00 |  | 000027026-01 | KENNETH | OESTERLE | FAYETTE COUNTY MEM HSP 1 | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02112018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212064 | I509 | Heart failure, unspecified | ICD10 | 02162018 | 02112018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02112018 | 2018-02-11T19:19:30+00:00 |  | 000075749-01 | John | Schmitz | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212066 | I509 | Heart failure, unspecified | ICD10 | 02162018 | 02092018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02122018 | 2018-02-12T08:15:06+00:00 |  | 000114855-01 | DOROTHY | RODECKER | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02092018 | 02102018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212073 | C50912, C50919 | Malignant neoplasm of unsp site of unspecified female breast | ICD10 | 02162018 | 02092018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T12:14:38+00:00 |  | 000095261-01 | Samir | Mansy | TRIHEALTH G LLC | 944306 | SYDNEY S | SAXENA | 1972532810 | TRIHEALTH H LLC | 930438 | 1548695638 | TRIHEALTH H LLC | 1548695638 | Inpatient | IP | Concurrent Review | CONC |  | TRIHEALTH H LLC | 02162018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02102018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212080 | R072 | Precordial pain | ICD10 | 02162018 | 02102018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02132018 | 2018-02-13T13:06:02+00:00 |  | 000108996-01 | Jeffrey | Allen | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02162018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02132018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213109 | N186 | End stage renal disease | ICD10 | 02162018 | 02132018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02132018 | 2018-02-13T16:56:02+00:00 |  | 000111276-01 | ROBERT | MEYERS | S DAYTON ACUTE CARE CNSL | 929255 | SMITH | BEARELLY | 1013164557 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 02162018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02122018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214015 | R079 | Chest pain, unspecified | ICD10 | 02162018 | 02122018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01172018 | 2018-01-17T14:31:10+00:00 |  | 000042899-01 | LINDA | MUSICK | MOUNT CARMEL HLTH SYS | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02182018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02142018 | 02162018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117060 | M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 02182018 | 02142018 | 02162018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01302018 | 2018-01-30T19:12:55+00:00 |  | 000012284-01 | BARBARA | BAUR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131039 | A419 | Sepsis, unspecified organism | ICD10 | 02182018 | 01302018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 02012018 | 2018-02-01T11:28:16+00:00 |  | 000023086-01 | LILLIAN | SPENCER | SOUND INPATIENT PHYS OF | 927692 | SHAHED | HASNAT | 1770915951 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201044 | I639 | Cerebral infarction, unspecified | ICD10 | 02162018 | 01312018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 02052018 | 2018-02-05T09:25:22+00:00 |  | 000100999-01 | Kenneth | Kaffenbarger | APOGEE MED GRP OHIO INC | 923380 | W TRAVIS | LAWSON JR | 1134114044 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02042018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205083 | A419, L0390, L089, M79676, R509, R7989, Z8639 | Personal history of endo, nutritional and metabolic disease | ICD10 | 02162018 | 02042018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02052018 | 2018-02-05T11:46:20+00:00 |  | 000074989-01 | Robert | OGrady | ALLIANCE PHYSICIANS INC | 900794 | REGINALD | SEQUEIRA | 1215933387 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205105 | R079, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 02162018 | 02052018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02062018 | 2018-02-06T10:02:56+00:00 |  | 000108335-01 | THOMAS | KIDD | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 02162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02052018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206060 | L03221 | Cellulitis of neck | ICD10 | 02162018 | 02052018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02082018 | 2018-02-08T15:14:35+00:00 |  | 000098257-01 | GEORGE | HERB | ALLIANCE PHYSICIANS INC | 920441 | KRISTA I | MIGLIORE | 1215114889 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 02172018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02112018 | 02172018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208073 | M80051S, M9702XA | PERIPROSTH FRACTURE AROUND INTERNAL PROSTH L HIP JT, INIT | ICD10 | 02172018 | 02112018 | 02172018 | 27138 | REVSN TOT HIP ARTHPLSTY FEMRL COMP | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 02092018 | 2018-02-09T11:04:23+00:00 |  | 000022033-01 | ALICE | SHEPPARD | INPATIENT CNSLT OF MICHI | 927347 | DENNIS | DESIMONE | 1467468934 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02142018 | 02162018 | Expedited |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209034 | C541 | Malignant neoplasm of endometrium | ICD10 | 02162018 | 02142018 | 02162018 | 38571, 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 02122018 | 2018-02-12T10:37:20+00:00 |  | 000087889-01 | Fred | Harper | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02112018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212082 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02162018 | 02112018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02122018 | 2018-02-12T14:16:40+00:00 |  | 000085262-01 | Micheline | Sier | KHN IP MED | 948667 | JEREMY L | CHAPMAN | 1013341098 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02102018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213002 | J189 | Pneumonia, unspecified organism | ICD10 | 02162018 | 02102018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T14:17:52+00:00 |  | 000022358-01 | CHARLES | SCHMELZER | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02102018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213003 | I130, I9589, N179, N189, R748 | Abnormal levels of other serum enzymes | ICD10 | 02162018 | 02102018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02122018 | 2018-02-12T15:33:30+00:00 |  | 000073293-01 | Sue | Flack | HOSPITAL MEDICINE SERVIC | 949224 | KASHYAP B | PATEL | 1033476189 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02112018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213021 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 02162018 | 02112018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T17:12:38+00:00 |  | 000004774-01 | MARTHA | ORTLIEB | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213030 | I739 | Peripheral vascular disease, unspecified | ICD10 | 02182018 | 02092018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02132018 | 2018-02-13T07:44:37+00:00 |  | 000095861-01 | Judith | Bame | OSU SURGERY LLC | 932344 | DANIEL E | VAZQUEZ | 1265611297 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02122018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213035 | B029, T8130XA | Disruption of wound, unspecified, initial encounter | ICD10 | 02162018 | 02122018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02132018 | 2018-02-13T10:03:20+00:00 |  | 000002352-01 | BEATRICE | MASSIE | CENTRAL OHIO SURG ASSOC | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02122018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213066 | K5660 | Unspecified intestinal obstruction | ICD10 | 02182018 | 02122018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02132018 | 2018-02-13T14:45:50+00:00 |  | 000012389-01 | REVA | HENINGER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02122018 | 02152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213104 | K819 | Cholecystitis, unspecified | ICD10 | 02162018 | 02122018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02132018 | 2018-02-13T14:22:52+00:00 |  | 000085294-01 | Tillie | Chamberlain | RIVERSIDE SURG ASSOC INC | 907601 | JOHN | LEFF | 1396744140 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214008 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 02162018 | 02132018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02142018 | 2018-02-14T09:02:50+00:00 |  | 000031880-01 | WARREN | PURTEE | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 |  | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 02162018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02122018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214014 | J101, J189 | Pneumonia, unspecified organism | ICD10 | 02162018 | 02122018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02152018 | 2018-02-15T11:13:56+00:00 |  | 000060097-01 | PATRICIA | REED | PREMIER UROLOGY CORP | 935543 | DAVID H | BROWN SR | 1578536181 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02142018 | 02152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215036 | N200, T887XXA | Unsp adverse effect of drug or medicament, init encntr | ICD10 | 02162018 | 02142018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02152018 | 2018-02-15T13:08:44+00:00 |  | 000031799-01 | FORREST | EASTER | CEN OH UROLOGY GRP INC | 934886 | DAVID W | STEWART | 1720029903 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02182018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02142018 | 02162018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215059 | N201 | Calculus of ureter | ICD10 | 02182018 | 02142018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02152018 | 2018-02-15T13:41:55+00:00 |  | 000083465-01 | Judy | Tarrence | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 912043 | 1043233984 | KETTERING MEDICAL CTR REHABILITATION | 1952324899 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | KETTERING MEDICAL CTR REHABILITATION | 02162018 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 02162018 | 02172018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180215063 | G939 | Disorder of brain, unspecified | ICD10 | 02162018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02162018 | 2018-02-16T15:06:38+00:00 |  | 000041711-01 | CAROLE | TAYLOR | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 03122018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180216073 | M4310, M48062 | M48062 | ICD10 | 02162018 |  |  | 63047, 63048, 22633, 22634, 22853, 22842, 20936, 20930, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 2, 3, 1, 1, 1, 1 | 1, 1, 1, 2, 3, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  | No child records to display. |  |
