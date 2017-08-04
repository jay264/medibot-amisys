Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-01_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-01_URGEMERG
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
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 08012017 | 2017-08-01T11:41:34+00:00 |  | 000014018-01 | MARY | QUARANTO | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 07312017 | 08012017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801064 | R0789 | Other chest pain | ICD10 | 08012017 | 07312017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07272017 | 2017-07-27T08:11:36+00:00 |  | 000077332-01 | Jerome | Keller | SOUND PHYSICIANS OF OHI | 948123 | AHMED N | HADID | 1205268505 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08012017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07262017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727007 | D72829, E875, N3000, R531 | Weakness | ICD10 | 08012017 | 07262017 | 07292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07212017 | 2017-07-21T12:01:30+00:00 |  | 000105509-01 | Mary | Pool | SOUND PHYSICIANS OF OHI | 948123 | AHMED N | HADID | 1205268505 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08012017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07202017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721030 | L03818 | Cellulitis of other sites | ICD10 | 08012017 | 07202017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07272017 | 2017-07-27T09:49:15+00:00 | 263934787207 | 000030741-01 | THERESA | DIXON | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07262017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727015 | M6281 | Muscle weakness (generalized) | ICD10 | 08012017 | 07262017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07282017 | 2017-07-28T13:14:16+00:00 |  | 000098183-01 | Robert | Sells Sr | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | UNKNOWN PROVIDER | 08012017 | Denied | MediGold Medical Only | Fax | Criteria Not Met | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170728041 | J189 | Pneumonia, unspecified organism | ICD10 | 08012017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07262017 | 2017-07-26T13:20:10+00:00 |  | 000108925-01 | Bonnie | Luken | EASTSIDE INTERNAL MED | 921408 | JYOTI J | MEHTA | 1932170933 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 08012017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07252017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726062 | E43, N179, R110 | Nausea | ICD10 | 08012017 | 07252017 | 07292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T11:35:26+00:00 | 251690107209 | 000076029-01 | S | Protich Formyduval | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07292017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731040 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 08012017 | 07282017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T13:42:16+00:00 | 25582764 | 000043219-01 | MICHAEL | OBERT | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07282017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731064 | M8638 | Chronic multifocal osteomyelitis, other site | ICD10 | 08012017 | 07282017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07122017 | 2017-07-12T13:04:23+00:00 |  | 000083883-01 | Bruce | Thomas | GENESIS MEDICAL GRP LLC | 904911 | DAVID M | BARBARA | 1619929981 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08012017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07242017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712039 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 08012017 | 07242017 | 07312017 | 44207, 44620 | CLOSE ENTEROSTOMY-LARGE, SM INTEST | CPT | 1, 1 | 1, 1 | Approved, Approved | 8, 8 | CPT | C4 |  |  |  | 2.0 |
| 07312017 | 2017-07-31T11:29:42+00:00 | 256962467209 | 000064969-01 | JERRY | JENKINS | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 07282017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731038 | A419 | Sepsis, unspecified organism | ICD10 | 08012017 | 07282017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07182017 | 2017-07-18T08:29:30+00:00 |  | 000040702-01 | Boyd | Johnson | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07172017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718099 | N179, R42 | Dizziness and giddiness | ICD10 | 08012017 | 07172017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 07312017 | 2017-07-31T14:02:25+00:00 |  | 000043086-01 | JAMES | ROBERTS | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07282017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731073 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08012017 | 07282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07212017 | 2017-07-21T09:18:48+00:00 |  | 000006586-01 | CAROL | STEPP | DUBLIN SPRINGS LLC | 923693 |  | COLUMBUS SPRINGS DUBLIN | 1164798708 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 08012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07212017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721025 | F331 | Major depressive disorder, recurrent, moderate | ICD10 | 08012017 | 07212017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07232017 | 2017-07-23T16:24:36+00:00 |  | 000103753-01 | TROY | GIBSON | MERCY HEALTH PHYSICIANS | 921166 | LESTER E | SUNA | 1871592576 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08012017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07212017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724032 | R079, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 08012017 | 07212017 | 07292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07252017 | 2017-07-25T09:50:23+00:00 | 250583867205 | 000028434-01 | COALENE | JENKINS | SOUND PHYSICIANS OF OHI | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07242017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725021 | I4891 | Unspecified atrial fibrillation | ICD10 | 08012017 | 07242017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07212017 | 2017-07-21T15:25:56+00:00 |  | 000013009-01 | PATRICIA | WAUGH | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721070 | I442 | Atrioventricular block, complete | ICD10 | 08012017 | 07202017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07062017 | 2017-07-06T11:40:45+00:00 |  | 000053311-01 | DORIS | CREGO | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 08012017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170706072 | I639 | Cerebral infarction, unspecified | ICD10 | 08012017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 06222017 | 2017-06-22T15:55:37+00:00 |  | 000115975-01 | Debra | Baird | ORTHO ASSOC SPFLD INC | 918581 | NOSHIR E | DEBOO | 1164609814 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 08012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07242017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622080 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08012017 | 07242017 | 07262017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07312017 | 2017-07-31T11:13:01+00:00 | 251777277211 | 000020416-01 | BETTY | HICKMAN | EMERGENCY SERVICES INC | 935095 | PAUL | ZEEB | 1427036094 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 07302017 | 08012017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731036 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 08012017 | 07302017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07262017 | 2017-07-26T10:04:56+00:00 |  | 000073619-01 | Catherine | Bauserman | MED ASSOCS OF CAMBRIDGE | 922079 | DOUGLAS | RUSH | 1467457846 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08012017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07252017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726033 | D709 | Neutropenia, unspecified | ICD10 | 08012017 | 07252017 | 07302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07312017 | 2017-07-31T16:02:32+00:00 |  | 000081945-01 | Violet | Schwart | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07252017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731108 | K8050 | Calculus of bile duct w/o cholangitis or cholecyst w/o obst | ICD10 | 08012017 | 07252017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07282017 | 2017-07-28T15:12:56+00:00 |  | 000110690-01 | Judith | Weimer | HILLTOP PHYSICIANS INC | 923505 | JAMES I | FIDELHOLTZ | 1245449438 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08012017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728052 | K838, N289, R109, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 08012017 | 07272017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07262017 | 2017-07-26T14:56:21+00:00 |  | 000083206-01 | Trudy | Woltz | FAIRFIELD MEDICAL CENTER | 936439 |  | FAIRFIELD MEDICAL CENTER | 1467433763 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07252017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726081 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 08012017 | 07252017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T12:53:08+00:00 | 259084697211 | 000089306-01 | Paula | Goman | SOUND PHYSICIANS OF OHI | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07302017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731054 | J9600, T17920A | Food in resp tract, part unsp causing asphyxiation, init | ICD10 | 08012017 | 07302017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T08:02:01+00:00 |  | 000106699-01 | John | Kotsifas | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07282017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731098 | I509 | Heart failure, unspecified | ICD10 | 08012017 | 07282017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07282017 | 2017-07-28T13:54:15+00:00 |  | 000108919-01 | Sharon | Creacey | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07272017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728044 | E041, S72002A, W010XXA | Fall same lev from slip/trip w/o strike against object, init | ICD10 | 08012017 | 07272017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07272017 | 2017-07-27T10:05:37+00:00 | 178997067207 | 000100182-01 | BENNETT | WISE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07272017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727021 | R4020 | Unspecified coma | ICD10 | 08012017 | 07272017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07272017 | 2017-07-27T07:58:15+00:00 |  | 000086287-01 | Barbara | Carpenter | INTL MED & GERATRICS CAR | 921436 | KETAN K | PATEL | 1699721050 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 08012017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07262017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727009 | N179 | Acute kidney failure, unspecified | ICD10 | 08012017 | 07262017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07262017 | 2017-07-26T09:46:20+00:00 | 251466117206 | 000023768-01 | DALE | COX | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07252017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726012 | M549 | Dorsalgia, unspecified | ICD10 | 08012017 | 07252017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07272017 | 2017-07-27T09:48:29+00:00 | 254157767208 | 000065504-01 | BURHL | CALTRIDER | CANYON MEDICAL CENTER | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07262017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727014 | I82403 | Acute embolism and thombos unsp deep veins of low extrm, bi | ICD10 | 08012017 | 07262017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07262017 | 2017-07-26T13:11:23+00:00 |  | 000107728-01 | Raymond | Walters | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08012017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 07252017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726058 | D62, K625, K921, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 08012017 | 07252017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07202017 | 2017-07-20T10:09:43+00:00 | 266567237200 | 000117335-01 | DEBRA | MAYNARD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07202017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720020 | I509, N179 | Acute kidney failure, unspecified | ICD10 | 08012017 | 07202017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07252017 | 2017-07-25T11:00:52+00:00 | 254988717206 | 000091537-01 | John | Rorabaugh | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07242017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725043 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 08012017 | 07242017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07312017 | 2017-07-31T12:56:44+00:00 |  | 000085446-01 | Naomi | Sandidge | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07292017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801052 | R079 | Chest pain, unspecified | ICD10 | 08012017 | 07292017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07242017 | 2017-07-24T13:59:06+00:00 |  | 000099144-01 | Linda | Bourland | ONCOLOGY HEMATOLOGY CARE | 921204 | PATRICK J | WARD | 1093709297 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 08012017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07212017 | 07292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724085 | K1230, K209 | Esophagitis, unspecified | ICD10 | 08012017 | 07212017 | 07302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07262017 | 2017-07-26T09:49:14+00:00 | 250778947206 | 000001557-01 | RUBY | MILLER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07252017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726015 | L97509 | Non-pressure chronic ulcer oth prt unsp foot w unsp severity | ICD10 | 08012017 | 07252017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07312017 | 2017-07-31T13:34:08+00:00 | 25065657 | 000001061-01 | DORA | LEVENSTEIN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07292017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731062 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 08012017 | 07292017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
