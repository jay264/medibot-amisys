Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-09_thru_2018-02-11_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-09_thru_2018-02-11_URGEMERG
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
| 01162018 | 2018-01-16T11:52:22+00:00 |  | 000079342-01 | Rodney | Gibson | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116049 | I639 | Cerebral infarction, unspecified | ICD10 | 02092018 | 01102018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 29.0 |
| 01162018 | 2018-01-16T11:18:34+00:00 |  | 000029997-01 | LARRY | MATTES | HOSPITALIST MEDICINE PHY | 948549 | SHRAVAN | LIKKI | 1891136230 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01142018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116058 | I214, R079 | Chest pain, unspecified | ICD10 | 02092018 | 01142018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 25.0 |
| 01312018 | 2018-01-31T09:55:52+00:00 |  | 000041026-01 | ELEANOR | JONES | CEN OH PRIMARY CARE SPEC | 935499 | ANIMESH | SHARMA | 1063455939 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131060 | E860, E871, R197 | Diarrhea, unspecified | ICD10 | 02092018 | 01302018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02052018 | 2018-02-05T11:22:42+00:00 |  | 000014231-01 | DONNA | BARBER | CEN OH PRIMARY CARE SPEC | 935053 | IAN J | WILSON | 1760598239 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02042018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205063 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02092018 | 02042018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01292018 | 2018-01-29T15:07:35+00:00 |  | 000069474-01 | FRANK | WHISMAN | MIAMI VALLEY HSPISTS GRP | 947756 | NIKHIL | PRASAD | 1114364460 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01292018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129124 | R079 | Chest pain, unspecified | ICD10 | 02092018 | 01292018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10302017 | 2017-10-30T14:31:51+00:00 |  | 000074639-01 | James | Stump | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02062018 | 02082018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101023 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 02092018 | 02062018 | 02082018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01102018 | 2018-01-10T16:18:09+00:00 |  | 000055856-01 | GEORGE | PETTET | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110109 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 02092018 | 01242018 | 02082018 | 48150 | PANCREATECTOMY-SUBTOTAL-WHIPPLE | CPT | 1 | 1 | Approved | 16 | CPT | C4 |  |  |  | 15.0 |
| 01222018 | 2018-01-22T15:59:30+00:00 |  | 000060807-01 | GEORGE | WALRAVEN | MOUNT CARMEL HLTH PRVDRS | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122150 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 02092018 | 02062018 | 02082018 | 34705 | EVAC RPR A-BIILIAC NDGFT | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01262018 | 2018-01-26T12:10:49+00:00 |  | 000079976-01 | Beverly | Mayhugh | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126041 | K7291 | Hepatic failure, unspecified with coma | ICD10 | 02092018 | 01252018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 01292018 | 2018-01-29T15:14:18+00:00 |  | 000104389-01 | HOBERT | PARKER | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01292018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129122 | J189 | Pneumonia, unspecified organism | ICD10 | 02092018 | 01292018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01302018 | 2018-01-30T01:16:36+00:00 |  | 000114346-01 | Cinda | Rimer | BECKETT SPRINGS LLC | 940170 |  | BECKETT SPRINGS HOSPITAL | 1538404371 | BECKETT SPRINGS LLC | 940170 | 1538404371 | BECKETT SPRINGS HOSPITAL | 1538404371 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | BECKETT SPRINGS HOSPITAL | 02092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01292018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130045 | F319 | Bipolar disorder, unspecified | ICD10 | 02092018 | 01292018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01302018 | 2018-01-30T11:54:13+00:00 |  | 000010759-01 | MARY | REA | CENTRAL OH HSPISTS INC | 913721 | FALGUNI H | PATEL | 1922336890 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131002 | R079 | Chest pain, unspecified | ICD10 | 02092018 | 01302018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01302018 | 2018-01-30T19:38:44+00:00 |  | 000019068-01 | JOHN | MCCOMAS | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131023 | G9341, J9601 | Acute respiratory failure with hypoxia | ICD10 | 02092018 | 01302018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01312018 | 2018-01-31T11:44:28+00:00 |  | 000034905-01 | BARBARA | FREEMAN | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 01302018 | 02082018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131045 | I509 | Heart failure, unspecified | ICD10 | 02092018 | 01302018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02062018 | 2018-02-06T09:09:23+00:00 |  | 000059142-01 | ROY | LUCAS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02052018 | 02082018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206025 | M5126, M6281 | Muscle weakness (generalized) | ICD10 | 02092018 | 02052018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02082018 | 2018-02-08T07:31:58+00:00 |  | 000093758-01 | Janet | Gerling | MOUNT CARMEL EAST PHYS | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02062018 | 02072018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208024 | R1032, R1909 | Other intra-abdominal and pelvic swelling, mass and lump | ICD10 | 02092018 | 02062018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10252017 | 2017-10-25T13:26:03+00:00 |  | 000079963-01 | Gene | Stotridge | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 171103138263.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025056 | E875, R4182 | Altered mental status, unspecified | ICD10 | 02092018 | 10242017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01212018 | 2018-01-21T14:53:33+00:00 |  | 000113609-01 | Michael | Smallwood | COPC CENTRAL OHIO PRIMAR | 908162 | DAVID L | CONDON | 1891752994 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01202018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122050 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02092018 | 01202018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01292018 | 2018-01-29T15:55:45+00:00 |  | 000002703-01 | KENNETH | BEATTY | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01262018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130007 | A419 | Sepsis, unspecified organism | ICD10 | 02092018 | 01262018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01302018 | 2018-01-30T11:32:14+00:00 |  | 000003915-01 | MADELINE | ONEAL | OHIOHEALTH PHYS GRP | 932197 | MICHELLE Y | KINCAID | 1396943601 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01292018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130082 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 02092018 | 01292018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02012018 | 2018-02-01T10:42:58+00:00 |  | 000046857-01 | EDNA | LOWE | COPC CENTRAL OHIO PRIMAR | 924573 | ANILA S | JAJODIA | 1508006859 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201035 | K829 | Disease of gallbladder, unspecified | ICD10 | 02092018 | 01312018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02022018 | 2018-02-02T08:48:09+00:00 |  | 000010999-01 | MILLARD | MEDLEY | OSU INTERNAL MED LLC | 926726 | ANN-MARIE T | TANTOCO | 1366686586 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02012018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202021 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 02092018 | 02012018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02022018 | 2018-02-02T13:23:50+00:00 |  | 000050251-01 | JOSEPH | PULSINELLI | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02012018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202048 | J9602, N179 | Acute kidney failure, unspecified | ICD10 | 02092018 | 02012018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02052018 | 2018-02-05T08:50:25+00:00 |  | 000079031-01 | Mary | Ingram | CMH REGIONAL HLTH SYSTEM | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205068 | J45901 | Unspecified asthma with (acute) exacerbation | ICD10 | 02092018 | 02022018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02052018 | 2018-02-05T12:03:13+00:00 |  | 000013529-01 | CHARLES | SHERWOOD | MEASE HOSPITAL COUNTRYSIDE | 934716 |  | MEASE HOSPITAL COUNTRYSIDE | 1265419907 | MEASE HOSPITAL COUNTRYSIDE | 934716 | 1265419907 | MEASE HOSPITAL COUNTRYSIDE | 1265419907 | Inpatient | IP | Concurrent Review | CONC |  | MEASE HOSPITAL COUNTRYSIDE | 02092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02032018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205108 | I509 | Heart failure, unspecified | ICD10 | 02092018 | 02032018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02052018 | 2018-02-05T14:45:38+00:00 |  | 000120650-01 | MICHAEL | ABBOTT | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02042018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205115 | I639 | Cerebral infarction, unspecified | ICD10 | 02092018 | 02042018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02062018 | 2018-02-06T11:48:46+00:00 |  | 000098244-01 | Marshall | Short | MARIETTA HLTH CARE PHYS | 915210 | CYNTHIA M | GAERKE | 1538184437 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02092018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 02052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206026 | R6510, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 02092018 | 02052018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02062018 | 2018-02-06T10:58:15+00:00 |  | 000088853-01 | Glina | Stitzel | HSPIST MED PHYS OF SYLVA | 911083 | PARAS S | PATEL | 1295973766 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02092018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206048 | I2699, R0602, R0902, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 02092018 | 02052018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02062018 | 2018-02-06T16:19:11+00:00 |  | 000019943-01 | WILFORD | WILLIAMS JR | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207017 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02092018 | 02052018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02072018 | 2018-02-07T14:33:18+00:00 |  | 000021357-01 | JAMES | WALTERS | MOUNT CARMEL HLTH SYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02062018 | 02072018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207068 | K4090, K420 | Umbilical hernia with obstruction, without gangrene | ICD10 | 02092018 | 02062018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01232018 | 2018-01-23T15:03:18+00:00 |  | 000070111-01 | Simeon | Gjamov | CEN OH UROLOGY GRP INC | 913736 | JASON | JANKOWSKI | 1053512822 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02112018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02082018 | 02102018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123085 | C61 | Malignant neoplasm of prostate | ICD10 | 02112018 | 02082018 | 02102018 | 38571, 55866 | LAPARO RADICAL PROSTATECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 01252018 | 2018-01-25T15:10:01+00:00 |  | 000031217-01 | KENNETH | SCHOOLEY | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125078 | N179, R1310, Z431 | Encounter for attention to gastrostomy | ICD10 | 02092018 | 01242018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 01262018 | 2018-01-26T13:23:21+00:00 |  | 000006246-01 | MARY | HEIN | HAQUE, MAX M | 904471 | MAX M | HAQUE | 1700884111 | HOCKING VALLEY COMMUNITY HOSPITAL | 945237 | 1033263835 | HOCKING VALLEY COMMUNITY HOSPITAL | 1033263835 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126051 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 02092018 | 01252018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 01302018 | 2018-01-30T09:22:12+00:00 |  | 000070087-01 | Dorothy | Skeens | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01292018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130063 | R079 | Chest pain, unspecified | ICD10 | 02112018 | 01292018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 01302018 | 2018-01-30T16:21:00+00:00 |  | 000099899-01 | Lawrence | Poe | HIGHLAND DISTRICT HSP PR | 908708 | RAMESH | SHIVANI | 1477545390 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 02092018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01292018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131011 | F0281 | Dementia in oth diseases classd elswhr w behavioral disturb | ICD10 | 02092018 | 01292018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02022018 | 2018-02-02T15:40:31+00:00 |  | 000117787-01 | Doris | Thompson | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02022018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202059 | R109 | Unspecified abdominal pain | ICD10 | 02112018 | 02022018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02052018 | 2018-02-05T07:56:13+00:00 |  | 000090815-01 | Harold | Bartley | GULF COAST MEDICAL GROUP | 940103 | BRYAN L | SMITH | 1639243983 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02042018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205051 | G8191 | Hemiplegia, unspecified affecting right dominant side | ICD10 | 02092018 | 02042018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02052018 | 2018-02-05T12:31:43+00:00 |  | 000008292-01 | MARVIN | GREEN | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02112018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 02052018 | 02102018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205085 | E871, I5023, J90 | Pleural effusion, not elsewhere classified | ICD10 | 02112018 | 02052018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02062018 | 2018-02-06T07:42:21+00:00 |  | 000087933-01 | Diane | Bereczky | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02032018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206012 | M25559 | Pain in unspecified hip | ICD10 | 02112018 | 02032018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02062018 | 2018-02-06T09:22:15+00:00 |  | 000049715-01 | LEXIE | PROCTOR | OSU INTERNAL MED LLC | 947621 | ERIC J | NOLAN | 1336427434 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206039 | R4182 | Altered mental status, unspecified | ICD10 | 02092018 | 02052016 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02062018 | 2018-02-06T08:45:24+00:00 |  | 000065536-01 | Joan | Olsson | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02052018 | 02092018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206056 | J449, R0902, R531 | Weakness | ICD10 | 02092018 | 02052018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02062018 | 2018-02-06T15:27:26+00:00 |  | 000066121-01 | ROBERT | HODGE | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02112018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02052018 | 02072018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207016 | R6889 | Other general symptoms and signs | ICD10 | 02112018 | 02052018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02062018 | 2018-02-06T16:26:19+00:00 |  | 000083174-01 | James | Fedor | INPATIENT CNSLT OF FL | 930297 | JOSE D | CERON-FUENTES | 1861581852 | PHYSICIANS REGIONAL MED CENTER | 903975 | 1316992134 | PHYSICIANS REGIONAL MED CENTER | 1316992134 | Inpatient | IP | Concurrent Review | CONC |  | PHYSICIANS REGIONAL MED CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207022 | I4891 | Unspecified atrial fibrillation | ICD10 | 02092018 | 02052018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02062018 | 2018-02-06T15:43:00+00:00 |  | 000072803-01 | Howard | Herrick | BUDZIK, RONALD J | 919797 | RONALD J | BUDZIK | 1043212319 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207023 | E782 | Mixed hyperlipidemia | ICD10 | 02092018 | 02052018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02072018 | 2018-02-07T12:51:36+00:00 |  | 000006729-01 | CHARLES | STEVERS | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02112018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 02062018 | 02092018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207049 | I509 | Heart failure, unspecified | ICD10 | 02112018 | 02062018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02072018 | 2018-02-07T11:21:34+00:00 |  | 000016893-01 | EVELYN | SCHILLER | COPC CENTRAL OHIO PRIMAR | 952403 | SYDULU G | BATHINI | 1003235912 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02112018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 02062018 | 02092018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207062 | I509 | Heart failure, unspecified | ICD10 | 02112018 | 02062018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02072018 | 2018-02-07T15:25:24+00:00 |  | 000053947-01 | THEODORE | WETZEL | CEN OH UROLOGY GRP INC | 914520 | FREDERICK L | TAYLOR | 1558527192 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207074 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 02112018 | 02062018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02082018 | 2018-02-08T09:32:18+00:00 |  | 000099438-01 | John | Scott | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02112018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02062018 | 02092018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208027 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02112018 | 02062018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02082018 | 2018-02-08T12:33:04+00:00 |  | 000016716-01 | NANCY | DOTSON | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02112018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 02062018 | 02092018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208058 | I4891, J159 | Unspecified bacterial pneumonia | ICD10 | 02112018 | 02062018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02082018 | 2018-02-08T16:50:21+00:00 |  | 000031921-01 | JO | WARD | MOUNT CARMEL HLTH SYS | 932260 | IRINA C | ARP | 1558625780 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02072018 | 02082018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209008 | K3580, R109 | Unspecified abdominal pain | ICD10 | 02092018 | 02072018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02092018 | 2018-02-09T08:54:00+00:00 |  | 000022043-01 | MARJORIE | ONEIL | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02112018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02082018 | 02102018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209012 | R0600, R825 | Elevated urine levels of drug/meds/biol subst | ICD10 | 02112018 | 02082018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
