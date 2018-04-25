Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-20_thru_2018-04-22_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-20_thru_2018-04-22_URGEMERG
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
| 04102018 | 2018-04-10T10:46:55+00:00 |  | 000070129-01 | Rita | Brooks | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 04202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04112018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410058 | I639 | Cerebral infarction, unspecified | ICD10 | 04202018 | 04112018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01232018 | 2018-01-23T15:52:12+00:00 |  | 000088116-01 | Janice | Onocki | MADISON FAMILY HEALTH | 905215 | ADAM C | WEISER | 0 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04202018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01222018 | 01242018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  | 180205155040.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124002 | N200 | Calculus of kidney | ICD10 | 04202018 | 01222018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03292018 | 2018-03-29T17:16:19+00:00 |  | 000038717-01 | ROBERT | VENTRESCO | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04032018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330004 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 04202018 | 04032018 | 04192018 | 33860 | ANEURYSM ASC AORTA W/WO VLV C BYPSS | CPT | 1 | 1 | Approved | 17 | CPT | C4 |  |  |  | 16.0 |
| 04132018 | 2018-04-13T15:16:52+00:00 |  | 000044760-01 | TIMOTHY | LENIHAN | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413072 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 04202018 | 04182018 | 04192018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08072017 | 2017-08-07T13:57:04+00:00 |  | 000081570-01 | Stewart | Holmes | ADENA EMERGENCY PHYS INC | 915805 | STEVE E | MCKEE | 1447217674 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08052017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170817122881.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808056 | R0602 | Shortness of breath | ICD10 | 04202018 | 08062017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03012018 | 2018-03-01T14:13:12+00:00 |  | 000077553-01 | Kathleen | Purcell | OSU HLTH SYSTEM NEUROSUR | 942972 | VIBNOR | KRISHNA | 1114008364 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04182018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301053 | G250 | Essential tremor | ICD10 | 04202018 | 04182018 | 04192018 | 61867 | IMPLANT NEUROELECTRODE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04062018 | 2018-04-06T14:08:20+00:00 |  | 000111381-01 | Harrod | Young | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406043 | R0600 | Dyspnea, unspecified | ICD10 | 04202018 | 04052018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 04092018 | 2018-04-09T09:26:46+00:00 |  | 000040128-01 | SANDRA | SHEETS | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04182018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409027 | M25561 | Pain in right knee | ICD10 | 04202018 | 04182018 | 04192018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04082018 | 2018-04-08T08:07:13+00:00 |  | 000077848-01 | Janice | Blevins | S DAYTON ACUTE CARE CNSL | 947057 | ELLEN S | KIM | 1912249400 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04072018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409031 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 04202018 | 04072018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04122018 | 2018-04-12T09:07:46+00:00 |  | 000100557-01 | Patrick | Boltz | KHN IP MED | 925014 | AMITH K | PAREKH | 1750510715 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04202018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04112018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412021 | N3289, R1013, R1906 | Epigastric swelling, mass or lump | ICD10 | 04202018 | 04112018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04132018 | 2018-04-13T11:55:54+00:00 |  | 000070143-01 | Charles | Engel | HOSPITALIST MEDICINE PHY | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04122018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413048 | K859, R109 | Unspecified abdominal pain | ICD10 | 04202018 | 04122018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04172018 | 2018-04-17T10:11:28+00:00 |  | 000006900-01 | NORMAN | BYERS | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417060 | I2119 | STEMI involving oth coronary artery of inferior wall | ICD10 | 04202018 | 04162018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04172018 | 2018-04-17T09:44:29+00:00 |  | 000057590-01 | GEORGE | GRIFFITH | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04172018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417061 | K5669 | Other intestinal obstruction | ICD10 | 04202018 | 04172018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04172018 | 2018-04-17T10:23:17+00:00 |  | 000065503-01 | CHARLOTTE | WITT | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417066 | K8050, K810 | Acute cholecystitis | ICD10 | 04202018 | 04162018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04182018 | 2018-04-18T11:24:32+00:00 |  | 000118009-01 | Samuel | Styer | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04202018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04182018 | 04192018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418061 | J441, R079, R091 | Pleurisy | ICD10 | 04202018 | 04182018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01152018 | 2018-01-15T10:14:06+00:00 |  | 000063397-01 | DEBRA | IRELAND | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180122152305.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115064 | A419 | Sepsis, unspecified organism | ICD10 | 04202018 | 01102018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03302018 | 2018-03-30T11:30:36+00:00 |  | 000071272-01 | William | Rogers | MOUNT CARMEL HLTH SYS | 942957 | CHARLES F | WARE III | 1528355922 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01172018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403008 | N179 | Acute kidney failure, unspecified | ICD10 | 04202018 | 01172018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04122018 | 2018-04-12T13:07:56+00:00 |  | 000049546-01 | ADELE | ROWER | MOUNT CARMEL EAST PHYS | 935055 | ANDREW B | BOKOR | 1477523454 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04202018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04182018 | 04192018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412056 | N814 | Uterovaginal prolapse, unspecified | ICD10 | 04202018 | 04182018 | 04192018 | 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
| 04122018 | 2018-04-12T16:10:30+00:00 |  | 000081101-01 | M | Weatherholt | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04202018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04182018 | 04202018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412070 | M1611, M25551 | Pain in right hip | ICD10 | 04202018 | 04182018 | 04202018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04152018 | 2018-04-15T12:23:36+00:00 |  | 000015469-01 | KEITH | HOWARD | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04132018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416044 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04202018 | 04132018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04162018 | 2018-04-16T12:52:18+00:00 |  | 000092774-01 | Richard | Ellwood | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416071 | M6281, R1084 | Generalized abdominal pain | ICD10 | 04202018 | 04132018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04162018 | 2018-04-16T14:32:16+00:00 |  | 000029921-01 | REVA | HARROW | MARIETTA HLTH CARE PHYS | 951677 | SARAH | WESCOTT | 1629418207 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04202018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04142018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416107 | E1165, J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04232018 | 04142018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04162018 | 2018-04-16T15:58:33+00:00 |  | 000008551-01 | MARILYNN | LINDAMOOD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04152018 | 04192018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417026 | J159 | Unspecified bacterial pneumonia | ICD10 | 04202018 | 04152018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04172018 | 2018-04-17T12:31:07+00:00 |  | 000085685-01 | Neil | Shumaker | MARIETTA HLTH CARE PHYS | 925532 | SUJEETH K | SHETTY | 1063627727 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04202018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04162018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417107 | I4891, R748 | Abnormal levels of other serum enzymes | ICD10 | 04202018 | 04162018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T15:35:36+00:00 |  | 000114696-01 | Bruce | Howard | FAIRFIELD HLTHCARE PROFS | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04142018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416112 | E860, K567, S01119A, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 04202018 | 04142018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04162018 | 2018-04-16T15:15:20+00:00 |  | 000114314-01 | Joyce | Bryner | OHIOHEALTH PHYS GRP | 926929 | NIRAV A | VORA | 1033254636 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04152018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416115 | I10 | Essential (primary) hypertension | ICD10 | 04202018 | 04152018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T15:25:12+00:00 |  | 000060796-01 | ILA | HART | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 04202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416116 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 04202018 | 04162018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04162018 | 2018-04-16T15:46:21+00:00 |  | 000055350-01 | Richard | Brown | ALLIANCE PHYSICIANS INC | 902624 | DAVID L | SCHUMACHER | 1336132547 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 04202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04162018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417031 | K262, R109 | Unspecified abdominal pain | ICD10 | 04202018 | 04152018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04172018 | 2018-04-17T14:42:47+00:00 |  | 000057078-01 | PATRICIA | VOSS | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04202018 | Approved | MediGold Essential Care | Fax | ACO - Pulmonary | Inpatient | 04172018 | 04202018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417127 | J101, J441, J9601 | Acute respiratory failure with hypoxia | ICD10 | 04242018 | 04172018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04192018 | 2018-04-19T08:39:44+00:00 |  | 000001539-01 | GRACE | GILL | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04202018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 04142018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419022 | R0602 | Shortness of breath | ICD10 | 04202018 | 04142018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
