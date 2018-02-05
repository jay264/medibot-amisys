Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-01_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-01_URGEMERG
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
| 01192018 | 2018-01-19T18:44:25+00:00 |  | 000114706-01 | David | Barry | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01292018 | 01312018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122018 | M1612, M87052 | Idiopathic aseptic necrosis of left femur | ICD10 | 02012018 | 01292018 | 01312018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01302018 | 2018-01-30T13:28:56+00:00 |  | 000070824-01 | Thomas | Beaver | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02012018 | Approved | MediGold Essential Care | Fax | ACO - Cardiology | Inpatient | 01292018 | 01312018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130089 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 02012018 | 01292018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01182018 | 2018-01-18T17:57:35+00:00 |  | 000077972-01 | Sandy | Daniels | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01172018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119008 | T814XXA | Infection following a procedure, initial encounter | ICD10 | 02012018 | 01172018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 01182018 | 2018-01-18T09:32:27+00:00 |  | 000054745-01 | BARBARA | EVANS | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01302018 | 01312018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118030 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 02012018 | 01302018 | 01312018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12262017 | 2017-12-26T15:22:36+00:00 |  | 000101861-01 | Leonard | Golde | OHIOHEALTH PHYS GRP | 924489 | JAMES B | FLEMING | 1245448083 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12242017 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226172 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 02012018 | 12242017 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01032018 | 2018-01-03T16:24:33+00:00 |  | 000077344-01 | Joyce | Gessel | HOSPITALIST MEDICINE PHY | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02012018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12292017 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103125 | A419 | Sepsis, unspecified organism | ICD10 | 02012018 | 12292017 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 33.0 |
| 01162018 | 2018-01-16T09:18:38+00:00 |  | 000072803-01 | Howard | Herrick | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01152018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116021 | J159 | Unspecified bacterial pneumonia | ICD10 | 02012018 | 01152018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 01192018 | 2018-01-19T16:30:34+00:00 |  | 000022855-01 | Kenneth | Conley | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01192018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122004 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02012018 | 01192018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01232018 | 2018-01-23T14:52:16+00:00 |  | 000016730-01 | JEANNE | ACKERT | CENTRAL OH HSPISTS INC | 933155 | DANIEL O | MORROW | 1598057853 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01222018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123092 | I4891 | Unspecified atrial fibrillation | ICD10 | 02012018 | 01222018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01272018 | 2018-01-27T12:14:01+00:00 |  | 000034943-01 | MARY | SIMMONS | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01262018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129005 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02012018 | 01262018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01282018 | 2018-01-28T14:29:15+00:00 |  | 000014441-01 | JACK | WALSH | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01272018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129068 | I639 | Cerebral infarction, unspecified | ICD10 | 02012018 | 01272018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01182018 | 2018-01-18T14:19:02+00:00 |  | 000117249-01 | Martha | Roberts | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01172018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118072 | E860, I4891, I959, N390, R4182 | Altered mental status, unspecified | ICD10 | 02012018 | 01172018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01222018 | 2018-01-22T14:37:58+00:00 |  | 000078767-01 | Karen | Phillabaum | MEDICINE INPATIENT GROUP | 925155 | FADI | BAILONY | 1003965385 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 02012018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 01212018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122122 | R531, R739 | Hyperglycemia, unspecified | ICD10 | 02012018 | 01212018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01232018 | 2018-01-23T10:26:18+00:00 |  | 000078313-01 | Patricia | Pricer | MIAMI VALLEY HSPISTS GRP | 933953 | JUAN C | ROJAS-GOMEZ | 1578839304 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01222018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123031 | E782, F411 | Generalized anxiety disorder | ICD10 | 02012018 | 01222018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01232018 | 2018-01-23T10:29:52+00:00 |  | 000119282-01 | Robert | Rickmon II | PREMIER HEALTH SPEC INC | 929693 | SRIKANTH | SADHU | 1174728885 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01232018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123032 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 02012018 | 01232018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01242018 | 2018-01-24T14:23:07+00:00 |  | 000071517-01 | Carol | Schiff | DOCTORS HOSPITAL | 903408 |  | DOCTORS HOSPITAL | 1972535052 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01222018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124062 | E860, M6282, N390, R531 | Weakness | ICD10 | 02012018 | 01222018 | 01252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01262018 | 2018-01-26T20:43:54+00:00 |  | 000008375-01 | CHARLINE | DEAN | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01262018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129016 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 02012018 | 01262018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01292018 | 2018-01-29T13:54:13+00:00 |  | 000044382-01 | DOROTHY | STYERS | MOUNT CARMEL WEST PHYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01272018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130020 | R4182 | Altered mental status, unspecified | ICD10 | 02012018 | 01272018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01292018 | 2018-01-29T15:40:44+00:00 |  | 000082288-01 | Leonard | Tibbs | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01282018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130028 | I4430, J441, R001 | Bradycardia, unspecified | ICD10 | 02012018 | 01282018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01252018 | 2018-01-25T08:23:43+00:00 |  | 000080879-01 | Debra | Fisher | COMMUNITY HSPIST LLC | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01252018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125010 | L02211, R1032 | Left lower quadrant pain | ICD10 | 02012018 | 01252018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01252018 | 2018-01-25T15:09:06+00:00 |  | 000086360-01 | Ronnie | Holmes | S DAYTON ACUTE CARE CNSL | 910703 | SUSAN M | GRANDHI | 1073686838 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01242018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125083 | E785, I10, I4891, Z8546 | Personal history of malignant neoplasm of prostate | ICD10 | 02012018 | 01242018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01292018 | 2018-01-29T06:43:36+00:00 |  | 000114300-01 | Sharen | Kensler | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01312018 | 02012018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129003 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 02012018 | 01312018 | 02012018 | 27495 | PROPHYLACTIC TREATMENT FEMUR | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01292018 | 2018-01-29T07:35:57+00:00 |  | 000087041-01 | Terri | Strodes | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01272018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129021 | R1010 | Upper abdominal pain, unspecified | ICD10 | 02012018 | 01272018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01302018 | 2018-01-30T13:17:22+00:00 |  | 000075561-01 | Ronald | Carns | CEN OH UROLOGY GRP INC | 936013 | ANDY J | CHO | 1063451367 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Southeast OH Classic Preferred | Fax | EIS | Inpatient | 01292018 | 01302018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130087 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 02012018 | 01292018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01302018 | 2018-01-30T11:53:56+00:00 |  | 000082032-01 | Wanza | Springer | UNIVERSITY HOSPITAL | 936399 |  | UNIVERSITY HOSPITAL | 1033154026 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 02012018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01252018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131001 | F259 | Schizoaffective disorder, unspecified | ICD10 | 02012018 | 01252018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
