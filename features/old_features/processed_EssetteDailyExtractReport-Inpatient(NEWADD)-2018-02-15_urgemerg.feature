Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-15_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-15_URGEMERG
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
| 02132018 | 2018-02-13T11:22:24+00:00 |  | 000113821-01 | Judith | Thorpe | CLEVELAND CLINIC FNDN | 936488 |  | CLEVELAND CLINIC FNDN | 1679525919 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 02152018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 02082018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213073 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 02152018 | 02082018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02082018 | 2018-02-08T12:41:04+00:00 |  | 000120526-01 | Jimmy | Walker | FAIRFIELD HSPISTS INC | 925424 | CHALANA U | GUNAWARDENA | 1023276821 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 02152018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02072018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208061 | J189 | Pneumonia, unspecified organism | ICD10 | 02152018 | 02072018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01052018 | 2018-01-05T20:58:37+00:00 |  | 000023593-01 | BETTY | DINGESS | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02132018 | 02142018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108020 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02152018 | 02132018 | 02142018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02082018 | 2018-02-08T14:56:19+00:00 |  | 000043948-01 | BARRY | BRANDT | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208076 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 02152018 | 02132018 | 02142018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02132018 | 2018-02-13T07:15:12+00:00 |  | 000044350-01 | TERRY | NOGGLE | OSU INTERNAL MED LLC | 909695 | ROBERT A | BAIOCCHI | 1770599755 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213029 | C9100, R197 | Diarrhea, unspecified | ICD10 | 02152018 | 02132018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T16:05:25+00:00 |  | 000058116-01 | SHARON | CASSADY | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02102018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213046 | I509 | Heart failure, unspecified | ICD10 | 02152018 | 02102018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02122018 | 2018-02-12T18:04:41+00:00 |  | 000062462-01 | WILLIAM | HIX | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02112018 | 02132018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213049 | J189, J9601 | Acute respiratory failure with hypoxia | ICD10 | 02152018 | 02112018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02132018 | 2018-02-13T15:05:08+00:00 |  | 000027018-01 | Tony | Meeks | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02152018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02072018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213092 | M6281, M6282 | Rhabdomyolysis | ICD10 | 02152018 | 02072018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12152017 | 2017-12-15T12:12:46+00:00 |  | 000035137-01 | JOSEPH | HELBER | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | SELECT SPECIALTY HOSPITA | 900155 | 1871592386 | SELECT SPECIALTY HOSPITAL COLUMBUS | 1871592386 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL COLUMBUS | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12292017 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180105149639.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215060 | J9600, N178 | Other acute kidney failure | ICD10 | 02152018 | 12292017 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 47.0 |
| 01102018 | 2018-01-10T12:54:58+00:00 |  | 000035563-01 | LYNN | TRACY | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02132018 | 02142018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110073 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02152018 | 02132018 | 02142018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01162018 | 2018-01-16T17:17:24+00:00 |  | 000003352-01 | JAMES | LOCKARD | MARIETTA HLTH CARE PHYS | 923188 | SARA C | ROCHESTER | 1144247172 | SOUTHERN OHIO MEDICAL CENTER | 928970 | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01152018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117006 | F919, R45850 | Homicidal ideations | ICD10 | 02152018 | 01152018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 27.0 |
| 01292018 | 2018-01-29T15:32:11+00:00 |  | 000012442-01 | DON | RISER | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01272018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130026 | A419 | Sepsis, unspecified organism | ICD10 | 02152018 | 01272018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 02022018 | 2018-02-02T14:03:19+00:00 |  | 000090296-01 | Jeanette | Pendleton | ADENA MEDICAL GROUP LLC | 903781 | JAMES R | MANAZER | 1205860228 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02092018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202049 | I70212 | Athscl native arteries of extrm w intrmt claud, left leg | ICD10 | 02152018 | 02082018 | 02092018 | 35558, 35661 | BYPASS GR, NT VN, FEMORAL-FEMORAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02052018 | 2018-02-05T14:12:35+00:00 |  | 000039560-01 | GARY | HARRIS | ADENA HEALTH SYSTEMS | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02122018 | 02132018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206001 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 02152018 | 02122018 | 02132018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02092018 | 2018-02-09T13:38:13+00:00 |  | 000038028-01 | EARL | CHAFINS | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209067 | I639 | Cerebral infarction, unspecified | ICD10 | 02152018 | 02082018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02092018 | 2018-02-09T18:17:34+00:00 |  | 000043801-01 | JOEY | ASHBROOK | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02152018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 02082018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212009 | J189 | Pneumonia, unspecified organism | ICD10 | 02152018 | 02082018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02102018 | 2018-02-10T11:25:58+00:00 |  | 000110999-01 | Arlene | Fyffe | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212013 | D6489, N179 | Acute kidney failure, unspecified | ICD10 | 02152018 | 02092018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02112018 | 2018-02-11T09:08:02+00:00 |  | 000112044-01 | Adrian | Clark | CEN OH PRIMARY CARE SPEC | 906893 | JASON P | CAPPUZZELLO | 1215112149 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02152018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02092018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212028 | R0789 | Other chest pain | ICD10 | 02152018 | 02092018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02112018 | 2018-02-11T09:13:12+00:00 |  | 000005828-01 | VERONICA | VALENTINO | OH ORTHO CTR OF EXCELLEN | 906388 | BRIAN J | TSCHOLL | 1558560292 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212033 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 02152018 | 02092018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02102018 | 2018-02-10T18:52:44+00:00 |  | 000051116-01 | CHELSEA | VAWTERS | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02092018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212035 | M48061 | M48061 | ICD10 | 02152018 | 02092018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02122018 | 2018-02-12T10:09:07+00:00 |  | 000077073-01 | Ronald | Stout | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02112018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212078 | K922, R319, R791 | Abnormal coagulation profile | ICD10 | 02152018 | 02112018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T15:25:29+00:00 |  | 000052817-01 | ROBERT | LEETH | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02092018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213019 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 02152018 | 02092018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02142018 | 2018-02-14T14:43:02+00:00 |  | 000072612-01 | PEGGY | STORTS | ADENA MEDICAL GROUP LLC | 922163 | ADEDOYIN O | ADETORO | 1215260930 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02132018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214050 | J189, J90 | Pleural effusion, not elsewhere classified | ICD10 | 02152018 | 02132018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02012018 | 2018-02-01T07:30:01+00:00 |  | 000097675-01 | Susan | Garrison | HOSPITALIST MEDICINE PHY | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02152018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01312018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201001 | L03115 | Cellulitis of right lower limb | ICD10 | 02152018 | 01312018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02072018 | 2018-02-07T16:07:51+00:00 |  | 000098464-01 | Brenda | Deaton | THE CHRIST HSP MED ASSOC | 949422 | NATHAN | HUDSON | 1629311246 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 02152018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02042018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208009 | R109, R197 | Diarrhea, unspecified | ICD10 | 02152018 | 02042018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02082018 | 2018-02-08T10:24:18+00:00 |  | 000072212-01 | Patricia | Vanburen | ALLIANCE PHYSICIANS INC | 907824 | RAYMOND S | RUSSELL | 1447206933 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208040 | N200 | Calculus of kidney | ICD10 | 02152018 | 02072018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02082018 | 2018-02-08T16:05:06+00:00 |  | 000000720-01 | DARLENE | DICK | SOUND INPATIENT PHYS OF | 942960 | TAMARA J | SCOTT | 1871852863 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208082 | M549, N390 | Urinary tract infection, site not specified | ICD10 | 02152018 | 02062018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02092018 | 2018-02-09T10:07:15+00:00 |  | 000121002-01 | TOM | WONG | FIRST CARE WEST DBA MMH | 915066 | ASAD | ALI | 1790715233 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02152018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02082018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209024 | A419, C679, J159, N390 | Urinary tract infection, site not specified | ICD10 | 02152018 | 02082018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02092018 | 2018-02-09T10:26:17+00:00 |  | 000092239-01 | James | Peer | MIAMI VALLEY HSPISTS GRP | 947756 | NIKHIL | PRASAD | 1114364460 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02082018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209048 | I959, J810, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 02152018 | 02082018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02092018 | 2018-02-09T14:47:42+00:00 |  | 000079825-01 | Linda | Rapp | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209068 | R109 | Unspecified abdominal pain | ICD10 | 02152018 | 02082018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02092018 | 2018-02-09T14:33:17+00:00 |  | 000030684-01 | EDWIN | MCCLUNG | HOSPITALIST MEDICINE PHY | 947310 | KARIM T | ATTIA | 1801139217 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209074 | I509, J449, R0602 | Shortness of breath | ICD10 | 02152018 | 02082018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02102018 | 2018-02-10T12:36:06+00:00 |  | 000009747-01 | SANDRA | ROSSIO | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212021 | I509, J159 | Unspecified bacterial pneumonia | ICD10 | 02152018 | 02092018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02122018 | 2018-02-12T14:17:52+00:00 |  | 000022358-01 | CHARLES | SCHMELZER | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02102018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213003 | I130, I9589, N179, N189, R748 | Abnormal levels of other serum enzymes | ICD10 | 02152018 | 02102018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02122018 | 2018-02-12T22:22:33+00:00 |  | 000111211-01 | Floyd | Baughman | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02112018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213033 | I472, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 02152018 | 02112018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 23.0 |
| 02132018 | 2018-02-13T16:11:21+00:00 |  | 000000994-01 | ADAM | PRICE | HOSPITALIST MEDICINE PHY | 948949 | KHAIRI | SHMINA | 1205275674 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 02012018 | 02042018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214001 | M6281 | Muscle weakness (generalized) | ICD10 | 02152018 | 02012018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02142018 | 2018-02-14T15:10:06+00:00 |  | 000111247-01 | Daniel | Meseroll | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02152018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214049 | L03221, R791 | Abnormal coagulation profile | ICD10 | 02152018 | 02082018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
