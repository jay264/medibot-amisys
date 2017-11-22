Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-17_thru_2017-11-19_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-17_thru_2017-11-19_URGEMERG
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
| 11062017 | 2017-11-06T10:07:12+00:00 | 252438467310 | 000025519-01 | GERALD | THOMAS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11052017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106031 | G9340 | Encephalopathy, unspecified | ICD10 | 11172017 | 11052017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 10252017 | 2017-10-25T14:44:25+00:00 |  | 000072837-01 | Linda | Moore | MOUNT CARMEL HLTH PRVDRS | 901005 | ARTHUR N | COLE | 1891799698 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11092017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026012 | M48062 | M48062 | ICD10 | 11172017 | 11092017 | 11162017 | 22612, 22842, 63047, 22853 | INSJ BIOMECHANICAL DEVICE | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 8, 8, 8, 8 | CPT | C4 |  |  |  | 7.0 |
| 11082017 | 2017-11-08T15:35:28+00:00 | 255342217312 | 000080170-01 | Betty | Brzycki | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11082017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108064 | C450, J910, R0600 | Dyspnea, unspecified | ICD10 | 11172017 | 11082017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11132017 | 2017-11-13T10:07:48+00:00 | 166036077316 | 000078760-01 | Jerry | Daniels | SOUND PHYSICIANS OF OHI0 | 927692 | SHAHED | HASNAT | 1770915951 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11122017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113009 | N2889, S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 11172017 | 11122017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11132017 | 2017-11-13T10:18:12+00:00 | 256815127315 | 000032114-01 | MARIO | CAMBONI | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11102017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113014 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 11172017 | 11102017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09262017 | 2017-09-26T11:27:50+00:00 |  | 000083720-01 | Paula | Cupp | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11132017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926075 | E119, E6601, G4730, I10 | Essential (primary) hypertension | ICD10 | 11172017 | 11132017 | 11162017 | 43644 | LAP GASTRIC BYPASS/ROUX-EN-Y | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11162017 | 2017-11-16T14:11:55+00:00 | 017993904-7290 | 000102748-01 | Robert | Mcdonald | ORTHO & NEURO CONSULTS I | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11172017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 11152017 | 11162017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116054 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 11172017 | 11152017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11102017 | 2017-11-10T10:14:17+00:00 | 264262227313 | 000078422-01 | Michelle | Kahn | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11092017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110035 | J690, K029 | Dental caries, unspecified | ICD10 | 11172017 | 11092017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11132017 | 2017-11-13T11:19:43+00:00 | 174213257316 | 000062320-01 | JO | WOLF | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11122017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113047 | R4182 | Altered mental status, unspecified | ICD10 | 11172017 | 11122017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10302017 | 2017-10-30T10:30:31+00:00 |  | 000061911-01 | JAMES | LANG | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11152017 | 11162017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031050 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 11172017 | 11152017 | 11162017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11102017 | 2017-11-10T15:30:49+00:00 |  | 000104655-01 | David | Mccutcheon | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 11152017 | 11162017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110081 | M7138 | Other bursal cyst, other site | ICD10 | 11172017 | 11152017 | 11162017 | 63267 | LMNCTMY EXC INTRASP LES;EXTDRL-LMBR | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11072017 | 2017-11-07T10:19:19+00:00 |  | 000116215-01 | GLEN | SIDWELL JR | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11082017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107055 | K831 | Obstruction of bile duct | ICD10 | 11172017 | 11082017 | 11162017 | 47780 | ROUX-EN-Y ANAS.BIL.DUCTS & G.I TRCT | CPT | 1 | 1 | Approved | 9 | CPT | C4 |  |  |  | 8.0 |
| 11072017 | 2017-11-07T08:32:43+00:00 |  | 000017647-01 | THELMA | COLLINS | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11072017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107041 | S329XXA | Fracture of unsp parts of lumbosacral spine and pelvis, init | ICD10 | 11172017 | 11072017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11012017 | 2017-11-01T15:10:50+00:00 |  | 000010408-01 | RUTH | KESSLER | OPHTHALMIC SURGEONS & CN | 911639 | CRAIG | CZYZ | 1205043684 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101066 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 11172017 | 11012017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10132017 | 2017-10-13T16:19:45+00:00 |  | 000032163-01 | EDMUND | SWIGER | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11152017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016124 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11172017 | 11152017 | 11162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11132017 | 2017-11-13T10:46:20+00:00 | 254793177314 | 000099315-01 | LINDA | VAUGHAN | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11102017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113029 | A047, N390 | Urinary tract infection, site not specified | ICD10 | 11172017 | 11102017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10242017 | 2017-10-24T14:17:07+00:00 |  | 000099969-01 | Nancy | Brown | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10262017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025051 | I639 | Cerebral infarction, unspecified | ICD10 | 11172017 | 10262017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 11132017 | 2017-11-13T09:41:33+00:00 |  | 000107422-01 | Irene | Sekel | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11172017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11102017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113119 | I509 | Heart failure, unspecified | ICD10 | 11172017 | 11102017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11162017 | 2017-11-16T11:08:25+00:00 |  | 000028526-01 | LESTER | ABBOTT | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11172017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 11172017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171116087 | I6930, M84459A | Pathological fracture, hip, unsp, init encntr for fracture | ICD10 | 11172017 | 11172017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11162017 | 2017-11-16T10:58:54+00:00 |  | 000004789-01 | LAWRENCE | COLACCI | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11172017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 11172017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171116085 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 11172017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11132017 | 2017-11-13T15:55:15+00:00 |  | 000086166-01 | Robin | Nuthman Green | ALLIANCE PHYSICIANS INC | 951469 | AQUEEL H | PABANEY | 1275763591 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11102017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114067 | G939 | Disorder of brain, unspecified | ICD10 | 11172017 | 11102017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08252017 | 2017-08-25T13:51:15+00:00 |  | 000086293-01 | Gayle | Whip | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 11172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11132017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825063 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11172017 | 11132017 | 11162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11152017 | 2017-11-15T09:49:14+00:00 | 252198927319 | 000011848-01 | JOAN | PEARSON | SOUND PHYSICIANS OF OHI0 | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11152017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115018 | I214, R0600 | Dyspnea, unspecified | ICD10 | 11172017 | 11152017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11172017 | 2017-11-17T07:36:25+00:00 |  | 000074199-01 | William | Bowling | ORTHOPEDIC ONE INC | 907140 | ROBERT T | GORSLINE | 1003983743 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11162017 | 11172017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117001 | E1141, E11621, M869 | Osteomyelitis, unspecified | ICD10 | 11172017 | 11162017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10242017 | 2017-10-24T15:08:44+00:00 | 025334033-7297 | 000114871-01 | Joel | Kocher | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11142017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024091 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11172017 | 11142017 | 11172017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 10302017 | 2017-10-30T17:17:51+00:00 |  | 000090271-01 | Lena | Clarke | HOCKING VALLEY MED GRP | 949829 | TAREK M | AZIZ | 1679592075 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 11172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10262017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031041 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 11172017 | 10262017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 10122017 | 2017-10-12T11:40:23+00:00 | 025392162-7286 | 000026326-01 | WINNIE | CAMPBELL | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11162017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013042 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 11172017 | 11162017 | 11172017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11072017 | 2017-11-07T10:34:04+00:00 | 250675187310 | 000001616-01 | PATRICIA | LEDFORD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11062017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107048 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11172017 | 11062017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11172017 | 2017-11-17T09:14:03+00:00 |  | 000018244-01 | SUE | STEVENSON | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11172017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 11172017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171117037 | R6521 | Severe sepsis with septic shock | ICD10 | 11172017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11142017 | 2017-11-14T09:20:37+00:00 | 179996417317 | 000005319-01 | EUGENE | ERVIN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11132017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114014 | R0600 | Dyspnea, unspecified | ICD10 | 11172017 | 11132017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11132017 | 2017-11-13T13:19:31+00:00 | 180236727316 | 000011698-01 | Fred | Oberting | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11122017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113063 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 11172017 | 11122017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10252017 | 2017-10-25T11:04:26+00:00 | 025828934-7304 | 000011657-01 | SARAH | RITO | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11162017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026003 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11172017 | 11162017 | 11172017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07262017 | 2017-07-26T14:33:04+00:00 |  | 000110804-01 | Michael | Houseman | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 11172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11142017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726071 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11172017 | 11142017 | 11162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11142017 | 2017-11-14T11:55:55+00:00 |  | 000078536-01 | Ruby | Litton | GOOD SAMARITAN HSP & HLT | 910703 | SUSAN M | GRANDHI | 1073686838 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11132017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115022 | K830, R748 | Abnormal levels of other serum enzymes | ICD10 | 11172017 | 11132017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11172017 | 2017-11-17T09:37:43+00:00 |  | 000097727-01 | Ronald | Humphries | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 11162017 | 11172017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117014 | N200 | Calculus of kidney | ICD10 | 11182017 | 11162017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11152017 | 2017-11-15T10:08:12+00:00 | 255393437318 | 000032029-01 | DOROTHY | SMITH | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11142017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115031 | R443 | Hallucinations, unspecified | ICD10 | 11182017 | 11142017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11072017 | 2017-11-07T09:32:18+00:00 | 262348647310 | 000007646-01 | JOHN | ANDERSON JR | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11062017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107022 | R0602 | Shortness of breath | ICD10 | 11182017 | 11062017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11172017 | 2017-11-17T07:51:01+00:00 |  | 000085821-01 | Stephen | Blubaugh | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11162017 | 11182017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117002 | M4807 | Spinal stenosis, lumbosacral region | ICD10 | 11182017 | 11172017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11182017 | 2017-11-18T14:25:53+00:00 |  | 000044705-01 | PAMELA | STISCHOK | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 11172017 | 11182017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171118002 | N131, N135, N3281, R350 | Frequency of micturition | ICD10 | 11182017 | 11172017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T10:05:30+00:00 | 025073648-7318 | 000034367-01 | TIMOTHY | MOUZON | MOUNT CARMEL HLTH PRVDRS | 903017 | FRED P | ROMEO | 1568403814 | MOUNT CARMET WEST | 902251 | 1508941014 | MOUNT CARMEL MEDICAL CENTER PSYCH | 1508941014 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER PSYCH | 11182017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 11132017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114037 | F250 | Schizoaffective disorder, bipolar type | ICD10 | 11182017 | 11132017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11102017 | 2017-11-10T07:55:41+00:00 | 251696127313 | 000007288-01 | RICHARD | GIVEN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11092017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110006 | A419 | Sepsis, unspecified organism | ICD10 | 11182017 | 11092017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11132017 | 2017-11-13T10:52:16+00:00 | 250581477315 | 000027587-01 | THERESA | JUNCEWICZ | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11112017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113033 | T07 | Unspecified multiple injuries | ICD10 | 11182017 | 11112017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11132017 | 2017-11-13T11:06:09+00:00 | 266778497316 | 000000090-01 | LELAND | NICOL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11122017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113040 | J159 | Unspecified bacterial pneumonia | ICD10 | 11192017 | 11122017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11152017 | 2017-11-15T09:44:07+00:00 | 257947307318 | 000065350-01 | JAMES | GRIFFITH | DIZON, VICTOR V | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11142017 | 11192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115016 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 11192017 | 11142017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11192017 | 2017-11-19T15:03:48+00:00 |  | 000072110-01 | Judy | Rush | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11192017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11182017 | 11192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171119004 | K460 | Unsp abdominal hernia with obstruction, without gangrene | ICD10 | 11192017 | 11182017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
