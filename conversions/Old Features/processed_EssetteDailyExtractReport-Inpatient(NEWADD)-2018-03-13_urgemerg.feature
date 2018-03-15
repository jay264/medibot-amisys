Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-13_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-13_URGEMERG
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
| 03072018 | 2018-03-07T14:49:09+00:00 |  | 000003650-01 | RICHARD | HOPKINS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03132018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03062018 | 03122018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307069 | J159, R0600 | Dyspnea, unspecified | ICD10 | 03132018 | 03062018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02282018 | 2018-02-28T11:59:00+00:00 |  | 000044473-01 | SHARON | EVANS | HOSPITALIST MEDICINE PHY | 913492 | MOHAMED H | HAMZA | 1720060940 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228041 | E860, I959, J111, R112 | Nausea with vomiting, unspecified | ICD10 | 03132018 | 02262018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 03062018 | 2018-03-06T08:48:49+00:00 |  | 000056873-01 | DONALD | WRIGHT | COLS INPATIENT CARE INC | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03032018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306004 | M7981, S301XXA | Contusion of abdominal wall, initial encounter | ICD10 | 03132018 | 03032018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03052018 | 2018-03-05T13:33:06+00:00 |  | 000040490-01 | MARCELLA | KISER | CENTRAL OHIO SURG ASSOC | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03052018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305105 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 03132018 | 03052018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02132018 | 2018-02-13T11:01:31+00:00 |  | 000093362-01 | William | Martin | CAROL S NELTNER MD INC | 937243 | CAROLYN S | NELTNER | 1427055607 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03062018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213071 | M4126, M4310, M533 | Sacrococcygeal disorders, not elsewhere classified | ICD10 | 03132018 | 03062018 | 03122018 | 22612, 22614, 63047, 63048, 22842, 22633, 20930, 22853, 61783, 20936 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 03022018 | 2018-03-02T06:59:46+00:00 |  | 000117763-01 | Charles | Bartram | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03012018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302006 | C679, N390 | Urinary tract infection, site not specified | ICD10 | 03132018 | 03012018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03022018 | 2018-03-02T08:10:03+00:00 |  | 000037548-01 | SANDRA | WIGET | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03012018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302008 | R0602 | Shortness of breath | ICD10 | 03132018 | 03012018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03032018 | 2018-03-03T15:36:44+00:00 |  | 000079041-01 | Richard | Perkins | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03132018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03022018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305037 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 03132018 | 03022018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03052018 | 2018-03-05T12:23:52+00:00 |  | 000003061-01 | Stanley | Hockenberry | LICKING MEM HLTH PROF | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03012018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305096 | I4891 | Unspecified atrial fibrillation | ICD10 | 03132018 | 03012018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03062018 | 2018-03-06T09:04:01+00:00 |  | 000049757-01 | MARGARET | JONES | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03052018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306062 | I214, R079 | Chest pain, unspecified | ICD10 | 03132018 | 03052018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03092018 | 2018-03-09T12:52:41+00:00 |  | 000028442-01 | JOE | FRAZIER | SOUND INPATIENT PHYS OF | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03092018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309064 | A419, N132 | Hydronephrosis with renal and ureteral calculous obstruction | ICD10 | 03132018 | 03092018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02092018 | 2018-02-09T14:48:30+00:00 |  | 000110853-01 | John | Hartig Jr | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 03132018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209069 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 03132018 | 02122018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 29.0 |
| 02202018 | 2018-02-20T08:41:30+00:00 |  | 000018591-01 | Carmena | Orsini | CENTRAL OH HSPISTS INC | 909717 | XIUQIONG | WANG | 1497856280 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02182018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220057 | I639 | Cerebral infarction, unspecified | ICD10 | 03132018 | 02182018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02232018 | 2018-02-23T12:41:32+00:00 |  | 000120082-01 | Linda | Cote | RESILIENCY & WELLNESS CO | 946613 | DELANEY | SMITH | 1942324728 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 03132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02232018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223052 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 03132018 | 02232018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02272018 | 2018-02-27T09:39:54+00:00 |  | 000112857-01 | Clyde | Neiswanger | ST ELIZABETH PHYSICIANS | 925855 | ROBERT N | TRACY | 1003848763 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 03132018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02232018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227014 | J189, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 03132018 | 02232018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 02282018 | 2018-02-28T08:20:59+00:00 |  | 000033643-01 | MARY | BREWER | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228016 | J189, R0602 | Shortness of breath | ICD10 | 03132018 | 02272018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03012018 | 2018-03-01T10:52:25+00:00 |  | 000001565-01 | Thomas | Geary | OHIOHEALTH PHYS GRP | 909718 | KEVIN J | PUGH | 1043204704 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02282018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301040 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 03132018 | 02282018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03022018 | 2018-03-02T16:53:47+00:00 |  | 000083527-01 | Tim | Merkle | APOGEE MED GRP OHIO INC | 945887 | HIDETAKA | KITAZONO | 1033316104 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03022018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305035 | R310 | Gross hematuria | ICD10 | 03132018 | 03022018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03082018 | 2018-03-08T09:51:02+00:00 |  | 000105807-01 | Beryl | Cox | LICKING MEM HLTH PROF | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03132018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308031 | N201 | Calculus of ureter | ICD10 | 03132018 | 03072018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02262018 | 2018-02-26T16:21:35+00:00 |  | 000067194-01 | Mary | Castle | APOGEE MED GRP OHIO INC | 947840 | OSAMA | ALHAJJAR | 1801233077 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02242018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227019 | R000 | Tachycardia, unspecified | ICD10 | 03132018 | 02242018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03062018 | 2018-03-06T14:37:50+00:00 |  | 000026239-01 | M | BEAN | FAIRFIELD HLTHCARE PROFS | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306085 | A419, I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03132018 | 03062018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03062018 | 2018-03-06T15:47:25+00:00 |  | 000082825-01 | Bonita | Witenko | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03132018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307016 | I249 | Acute ischemic heart disease, unspecified | ICD10 | 03132018 | 03062018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03072018 | 2018-03-07T11:27:10+00:00 |  | 000094711-01 | John | Henize | NEUROSCIENCE CENTER | 951551 | BRYAN M | GOUGH | 1962795963 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307051 | I639 | Cerebral infarction, unspecified | ICD10 | 03132018 | 03062018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T15:25:54+00:00 |  | 000057766-01 | MARY | RAY | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03132018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 03062018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307070 | R609 | Edema, unspecified | ICD10 | 03132018 | 03062018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03082018 | 2018-03-08T10:36:42+00:00 |  | 000055045-01 | JOY | WILT | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 03132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308043 | L03115 | Cellulitis of right lower limb | ICD10 | 03132018 | 03072018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03092018 | 2018-03-09T15:02:41+00:00 |  | 000104571-01 | Charles | Hayes | OSU INTERNAL MED LLC | 943038 | ALICE S | MIMS | 1699962084 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 03132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03082018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309065 | C9590 | Leukemia, unspecified not having achieved remission | ICD10 | 03132018 | 03082018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03102018 | 2018-03-10T11:42:03+00:00 |  | 000091993-01 | Audrey | Sandlin | HOSPITALIST MEDICINE PHY | 913013 | ROBERT N | RUBIN | 1497879555 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 03132018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03102018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312009 | N132 | Hydronephrosis with renal and ureteral calculous obstruction | ICD10 | 03132018 | 03102018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03112018 | 2018-03-11T14:47:08+00:00 |  | 000113420-01 | Kalman | Dworkin | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03092018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312044 | S065X9A | Traum subdr hem w LOC of unsp duration, init | ICD10 | 03132018 | 03092018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03122018 | 2018-03-12T13:57:35+00:00 |  | 000050437-01 | CAROL | FORTNEY | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | SELECT SPECIALTY HOSPITA | 915731 | 1861492217 | SELECT SPECIALTY HOSPITAL ZANESVILLE | 1861492217 | Long Term Acute Care Hospital | LTACH | Pre-Service | PRE |  | SELECT SPECIALTY HOSPITAL ZANESVILLE | 03132018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Inpatient | 03132018 | 03142018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180312102 | J9691, N179 | Acute kidney failure, unspecified | ICD10 | 03132018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
