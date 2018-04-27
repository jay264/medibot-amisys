Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-25_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-25_URGEMERG
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
| 04102018 | 2018-04-10T08:26:19+00:00 |  | 000079820-01 | Richard | Whittington | HOSPITALIST MEDICINE PHY | 929478 | BRIAN | KEEGAN | 1225156045 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04252018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04092018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410071 | J810, J9601 | Acute respiratory failure with hypoxia | ICD10 | 04252018 | 04092018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04122018 | 2018-04-12T01:07:15+00:00 |  | 000041563-01 | ELLEN | LACY | ALLIANCE PHYSICIANS INC | 910759 | JACK C | LUNDERMAN JR | 1871694679 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04112018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412004 | F0391 | Unspecified dementia with behavioral disturbance | ICD10 | 04252018 | 04112018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04162018 | 2018-04-16T18:07:50+00:00 |  | 000071852-01 | Ronald | Straight | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04252018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04162018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417035 | R001 | Bradycardia, unspecified | ICD10 | 04252018 | 04162018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04182018 | 2018-04-18T07:22:03+00:00 |  | 000092183-01 | Mary | Cantrell | APOGEE MED GRP OHIO INC | 947807 | AMBER L | RICHADSON | 1063850089 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04172018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418014 | K922, R55 | Syncope and collapse | ICD10 | 04252018 | 04172018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03252018 | 2018-03-25T12:37:54+00:00 |  | 000057664-01 | BARRY | CHENEY | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03242018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326043 | A419, G9340 | Encephalopathy, unspecified | ICD10 | 04252018 | 03242018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 31.0 |
| 04022018 | 2018-04-02T17:17:49+00:00 |  | 000077124-01 | John | Thomas | MOUNT CARMEL HLTH SYS | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04022018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403047 | I739, I96, I998 | Other disorder of circulatory system | ICD10 | 04252018 | 04022018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 23.0 |
| 04112018 | 2018-04-11T16:39:49+00:00 |  | 000079395-01 | Richard | Tredway | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412012 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 04252018 | 04182018 | 04242018 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 04142018 | 2018-04-14T11:40:36+00:00 |  | 000032353-01 | THOMAS | WEST | SOUND INPATIENT PHYS OF | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416014 | I442 | Atrioventricular block, complete | ICD10 | 04252018 | 04132018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 04182018 | 2018-04-18T11:07:17+00:00 |  | 000033828-01 | LANDON | ROWE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04172018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418049 | G9340, N12, N179, N390 | Urinary tract infection, site not specified | ICD10 | 04252018 | 04172018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04232018 | 2018-04-23T07:38:38+00:00 |  | 000114032-01 | Roy | Bradley | OSU INTERNAL MED LLC | 911399 | KAREN | CATIGNANI | 1083646707 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04252018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04202018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423059 | K7290 | Hepatic failure, unspecified without coma | ICD10 | 04252018 | 04202018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03232018 | 2018-03-23T10:25:18+00:00 |  | 000121309-01 | Kathy | Vollrath | MAYFIELD CLINIC | 921049 | ANDREW J | RINGER | 1134237712 | GOOD SAMARITAN OF CINCIN | 936463 | 1508835828 | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 1508835828 | Inpatient | IP | Concurrent Review | CONC |  | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 04252018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04182018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323021 | I671 | Cerebral aneurysm, nonruptured | ICD10 | 04252018 | 04182018 | 04192018 | 36224, 36226, 61624 | TRANSCATHETER OCCLUSION/EMBOLIZATION,PERCUTANEOUS, ANY METHOD, CNS | CPT | 2, 2, 1 | 2, 2, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 03262018 | 2018-03-26T12:10:42+00:00 |  | 000092990-01 | Linda | Borland | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326042 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 04252018 | 04162018 | 04192018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 2 | 2 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03272018 | 2018-03-27T08:22:15+00:00 |  | 000120785-01 | James | Conkle | DUBLIN SPRINGS PHYSICIAN | 907335 | ROWNAK | AHMED | 1952518334 | COLUMBUS BEHAVIORAL HEAL | 951769 | 1477914943 | COLUMBUS BEHAVIORAL HEALTH LLC | 1477914943 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS BEHAVIORAL HEALTH LLC | 04252018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03262018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327069 | F319, F329 | Major depressive disorder, single episode, unspecified | ICD10 | 04252018 | 03262018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 04042018 | 2018-04-04T01:30:05+00:00 |  | 000106072-01 | KATHY | EVANS | COLUMBUS BEHAVIORAL HEAL | 907335 | ROWNAK | AHMED | 1952518334 | COLUMBUS BEHAVIORAL HEAL | 951769 | 1477914943 | COLUMBUS BEHAVIORAL HEALTH LLC | 1477914943 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS BEHAVIORAL HEALTH LLC | 04252018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04032018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404044 | F329, F4325, F6389, F639, F919, G894 | Chronic pain syndrome | ICD10 | 04252018 | 04032018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 04162018 | 2018-04-16T10:23:28+00:00 |  | 000036833-01 | D | ROLLINS | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04142018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416076 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04252018 | 04142018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172018 | 2018-04-17T10:07:45+00:00 |  | 000046946-01 | BEVERLY | SEYMOUR | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04252018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04162018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417062 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04252018 | 04162018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04172018 | 2018-04-17T15:30:33+00:00 |  | 000024964-01 | JOSEPH | PANICO | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04252018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04242018 | 04252018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417101 | R079 | Chest pain, unspecified | ICD10 | 04252018 | 04152018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04192018 | 2018-04-19T11:14:47+00:00 |  | 000052880-01 | MARY | BODEN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419034 | G9340, N390, R4182 | Altered mental status, unspecified | ICD10 | 04252018 | 04182018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04192018 | 2018-04-19T14:41:09+00:00 |  | 000041396-01 | SANDRA | HAGER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04252018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 04182018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419062 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04252018 | 04182018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04202018 | 2018-04-20T09:34:20+00:00 |  | 000082360-01 | Melvin | Hobbs | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04192018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420007 | D165, I509 | Heart failure, unspecified | ICD10 | 04252018 | 04192018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04202018 | 2018-04-20T13:13:27+00:00 |  | 000079955-01 | Helen | Cripe | ALLIANCE PHYSICIANS INC | 910964 | SALEEM | AHMAD | 1013973429 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04252018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04192018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420074 | I4891 | Unspecified atrial fibrillation | ICD10 | 04252018 | 04192018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04202018 | 2018-04-20T15:31:15+00:00 |  | 000096134-01 | ELIZABETH | SUMNER | PULMONARY MED OF DAYTON | 951877 | JAMES B | GLEASON | 1982995395 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423011 | R079 | Chest pain, unspecified | ICD10 | 04252018 | 04202018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04222018 | 2018-04-22T17:42:43+00:00 |  | 000089650-01 | Robert | Morris | SOUND INPATIENT PHYS OF | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252018 | Approved | MediGold Southeast OH Essential Care | Fax | ACO - Atrial Fib | Inpatient | 04222018 | 04242018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423049 | I4891 | Unspecified atrial fibrillation | ICD10 | 04252018 | 04222018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T13:36:00+00:00 |  | 000079538-01 | Linda | Weber | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 04252018 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180423062 | I639 | Cerebral infarction, unspecified | ICD10 | 04252018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04232018 | 2018-04-23T09:23:21+00:00 |  | 000031885-01 | JAMES | LEE | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04222018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423069 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 04252018 | 04222018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T12:52:15+00:00 |  | 000018534-01 | HAROLD | SALMONS | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04192018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423086 | I10, S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 04252018 | 04192018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04232018 | 2018-04-23T13:46:30+00:00 |  | 000038100-01 | WANDA | GOIN | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04252018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04222018 | 04242018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423094 | J189 | Pneumonia, unspecified organism | ICD10 | 04252018 | 04222018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T12:07:54+00:00 |  | 000006316-01 | WILLIAM | NUTTER | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04212018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424003 | K8050, R109, R1110 | Vomiting, unspecified | ICD10 | 04252018 | 04212018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04062018 | 2018-04-06T15:32:30+00:00 |  | 000008170-01 | JAMES | HENDERSON | HOCKING VALLEY MED GRP | 949829 | TAREK M | AZIZ | 1679592075 | HOCKING VALLEY COMMUNITY HOSPITAL | 945237 | 1033263835 | HOCKING VALLEY COMMUNITY HOSPITAL | 1033263835 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSPITAL | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409015 | F39 | Unspecified mood [affective] disorder | ICD10 | 04252018 | 04052018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 04122018 | 2018-04-12T11:50:55+00:00 |  | 000084951-01 | Rebecca | Fuhrman | CLERMONT INTERNISTS ASSO | 921351 | PARAMESWARAN | HARIHARAN | 1720084460 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 04252018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04122018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412046 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04252018 | 04122018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T11:10:31+00:00 |  | 000027319-01 | DAVID | THOMAS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04252018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423093 | R079 | Chest pain, unspecified | ICD10 | 04252018 | 04202018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T11:37:45+00:00 |  | 000108141-01 | Roger | Robinette Sr | HIGHLAND DISTRICT HSP PR | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Inpatient | IP | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 04252018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04222018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424009 | L0390 | Cellulitis, unspecified | ICD10 | 04252018 | 04222018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T15:16:33+00:00 |  | 000100738-01 | Gerald | Stephens | MOUNT CARMEL MEDICAL CTR | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04232018 | 04242018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424107 | K819 | Cholecystitis, unspecified | ICD10 | 04252018 | 04232018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04252018 | 2018-04-25T08:33:06+00:00 |  | 000022160-01 | ROBERT | MOORE | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 04252018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 04252018 | 04262018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180425004 | G9340, I5023, J810 | Acute pulmonary edema | ICD10 | 04252018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
