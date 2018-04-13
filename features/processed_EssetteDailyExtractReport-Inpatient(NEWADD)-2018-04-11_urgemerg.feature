Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-11_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-11_URGEMERG
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
| 04082018 | 2018-04-08T11:12:43+00:00 |  | 000031942-01 | ALBERT | MORAINE JR | OHIOHEALTH PHYS GRP | 939540 | LUCIA | CHOWDHURY | 1851346647 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409014 | R680 | Hypothermia, not associated w low environmental temperature | ICD10 | 04112018 | 04052018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04062018 | 2018-04-06T17:27:30+00:00 |  | 000117201-01 | Michael | Seme | HEALTHSOUTH REHABILITATI | 947611 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | HEALTHSOUTH REHABILITATI | 947611 | 1538440904 | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 04112018 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 04112018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180409016 | M1991 | Primary osteoarthritis, unspecified site | ICD10 | 04112018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04062018 | 2018-04-06T13:09:15+00:00 |  | 000018798-01 | RUSSELL | TAYLOR | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 04112018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 04112018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180406026 | J189 | Pneumonia, unspecified organism | ICD10 | 04112018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03142018 | 2018-03-14T13:57:31+00:00 |  | 000062601-01 | JAMES | HALL | SOUND INPATIENT PHYS OF | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 04102018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314062 | E876, I509 | Heart failure, unspecified | ICD10 | 04112018 | 03132018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 28.0 |
| 02202018 | 2018-02-20T11:57:03+00:00 |  | 000104403-01 | HARRIET | BRUST | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04022018 | 04042018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221003 | T84021S | Dislocation of internal left hip prosthesis, sequela | ICD10 | 04112018 | 04022018 | 04042018 | 27137 | REVSN TOT HIP ARTHPLSTY ACTBLR COMP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03272018 | 2018-03-27T13:47:15+00:00 |  | 000040475-01 | DONALD | ORR | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03252018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327097 | S72141A | Displaced intertrochanteric fracture of right femur, init | ICD10 | 04112018 | 03252018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 03302018 | 2018-03-30T16:18:57+00:00 |  | 000079342-01 | Rodney | Gibson | HOSPITALIST MEDICINE PHY | 922163 | ADEDOYIN O | ADETORO | 1215260930 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402012 | J159 | Unspecified bacterial pneumonia | ICD10 | 04112018 | 03292018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 04022018 | 2018-04-02T12:50:01+00:00 |  | 000023713-01 | CAROLYN | EMMERT | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04012018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402083 | Z751 | Person awaiting admission to adequate facility elsewhere | ICD10 | 04112018 | 04012018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04022018 | 2018-04-02T14:43:50+00:00 |  | 000092256-01 | Ruth | Peer | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03292018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402115 | J159 | Unspecified bacterial pneumonia | ICD10 | 04112018 | 03292018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T15:44:16+00:00 |  | 000039281-01 | BOBBY | HIGGINBOTHAM | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04032018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404028 | A419, R0902 | Hypoxemia | ICD10 | 04112018 | 04032018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04042018 | 2018-04-04T12:56:27+00:00 |  | 000031210-01 | KYOKO | MCKINNEY | HOSPITALIST MEDICINE PHY | 952668 | HO AN | KANG | 1275945545 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404069 | I639 | Cerebral infarction, unspecified | ICD10 | 04112018 | 03312018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04052018 | 2018-04-05T15:09:08+00:00 |  | 000041735-01 | RUBY | BOWENS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04042018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405055 | J471 | Bronchiectasis with (acute) exacerbation | ICD10 | 04112018 | 04042018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04092018 | 2018-04-09T16:06:52+00:00 |  | 000066662-01 | DENNIS | CONNER | ORTHOPEDIC ONE INC | 936025 | KENNETH J | WESTERHEIDE | 1679566889 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04112018 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 04082018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409090 | L089 | Local infection of the skin and subcutaneous tissue, unsp | ICD10 | 04112018 | 04082018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04022018 | 2018-04-02T09:32:34+00:00 |  | 000034878-01 | RUTH | MOORE | HOSPITALIST MEDICINE PHY | 912793 | PIYUSH | GUPTA | 1275618803 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402055 | J189, R0902 | Hypoxemia | ICD10 | 04112018 | 03302018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04022018 | 2018-04-02T13:48:34+00:00 |  | 000096572-01 | Patricia | Workman | HIGHLAND DISTRICT HSP PR | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Inpatient | IP | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04012018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402091 | R69 | Illness, unspecified | ICD10 | 04112018 | 04012018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04032018 | 2018-04-03T13:22:36+00:00 |  | 000029332-01 | ALFRED | LONG JR | NCHMD INC | 950871 | MATTHEW | DENUNZIO | 1760826499 | NAPLES COMMUNITY HOSPITA | 934630 | 1720085137 | NAPLES COMMUNITY HOSPITAL | 1720085137 | Inpatient | IP | Concurrent Review | CONC |  | NAPLES COMMUNITY HOSPITAL | 04112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04022018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403105 | D62, D696, D72829, K922, R55, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 04112018 | 04022018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T14:48:57+00:00 |  | 000114615-01 | Ronald | Oxley | MOUNT CARMEL HLTH PRVDRS | 910451 | MICHAEL G | MONCMAN | 1114927571 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04112018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04092018 | 04102018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404002 | M47812 | Spondylosis w/o myelopathy or radiculopathy, cervical region | ICD10 | 04112018 | 04092018 | 04102018 | 22551, 22845, 20931 | ALLOGRAFT FOR SPINE SURGERY ONLY; STRUCTURAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04032018 | 2018-04-03T14:50:40+00:00 |  | 000023351-01 | LOU | MARCUM | MOUNT CARMEL HLTH PRVDRS | 933630 | CHRISTINA P | CHAN | 1245527118 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04012018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404017 | I959, R296, R55 | Syncope and collapse | ICD10 | 04112018 | 04012018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04032018 | 2018-04-03T14:52:01+00:00 |  | 000112420-01 | Verna | Taylor | COPC CENTRAL OHIO PRIMAR | 943209 | NASIR | SUMMIYAH | 1962692103 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04012018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404021 | R109 | Unspecified abdominal pain | ICD10 | 04112018 | 04012018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04072018 | 2018-04-07T12:26:00+00:00 |  | 000053909-01 | RICHARD | TURNER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04062018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409012 | I471 | Supraventricular tachycardia | ICD10 | 04112018 | 04062018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04082018 | 2018-04-08T11:58:28+00:00 |  | 000083029-01 | Sandra | Bird | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04072018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409047 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04112018 | 04072018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04082018 | 2018-04-08T10:44:27+00:00 |  | 000024165-01 | TREVOR | MUSE | SOUND INPATIENT PHYS OF | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04062018 | 04102018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409048 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04112018 | 04062018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03092018 | 2018-03-09T16:44:22+00:00 |  | 000098114-01 | Alyce | Crume | DAYTON COLON & RECTAL CT | 933433 | MICHAEL D | JOHNSON | 1043482797 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04052018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312001 | K5732, N823 | Fistula of vagina to large intestine | ICD10 | 04112018 | 04052018 | 04082018 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03132018 | 2018-03-13T14:52:55+00:00 |  | 000079012-01 | Joyce | Fellows | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03182018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313076 | I639 | Cerebral infarction, unspecified | ICD10 | 04112018 | 03182018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 03142018 | 2018-03-14T14:47:04+00:00 |  | 000120244-01 | Christine | Andrew | ORTHOCINCY | 924293 | MICHAEL L | SWANK | 1982641999 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 04112018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04092018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314063 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 04112018 | 04092018 | 04102018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03142018 | 2018-03-14T14:52:29+00:00 |  | 000033189-01 | DONALD | CONGROVE | FLORIDA HOSPITAL WAUCHULA | 915303 |  | FLORIDA HOSPITAL WAUCHULA | 1275511651 | FLORIDA HOSPITAL WAUCHULA | 915303 | 1275511651 | FLORIDA HOSPITAL WAUCHULA | 1275511651 | Inpatient | IP | Concurrent Review | CONC |  | FLORIDA HOSPITAL WAUCHULA | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314073 | J159, R042, R222 | Localized swelling, mass and lump, trunk | ICD10 | 04112018 | 03142018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03182018 | 2018-03-18T14:31:10+00:00 |  | 000111981-01 | Patricia | Mcpeek | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03172018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319035 | R109 | Unspecified abdominal pain | ICD10 | 04112018 | 03172018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03262018 | 2018-03-26T10:13:12+00:00 |  | 000049747-01 | BETTY | BURDEN | OSU INTERNAL MED LLC | 941548 | JAMES S | BLACHLY | 1679779284 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03252018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326103 | D61818 | Other pancytopenia | ICD10 | 04112018 | 03252018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 03282018 | 2018-03-28T11:34:58+00:00 |  | 000023327-01 | JOAN | MORGAN | IMMEDIATE HEALTH ASSOC | 907782 | THOMAS J | HURM | 1730121773 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328077 | R4189, T07 | Unspecified multiple injuries | ICD10 | 04112018 | 03272018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03272018 | 2018-03-27T12:26:58+00:00 |  | 000059558-01 | ROY | COFFEY | OHIOHEALTH PHYS GRP | 937345 | CHARLES A | PUE | 1447228705 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 03262018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328085 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04112018 | 03262018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04022018 | 2018-04-02T08:58:33+00:00 |  | 000037672-01 | DONALD | EMERSON | MOUNT CARMEL HLTH PRVDRS | 919157 | DANA P | HOUSER | 1982857165 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 03222018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402003 | I959, R55 | Syncope and collapse | ICD10 | 04112018 | 03222018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03302018 | 2018-03-30T19:47:47+00:00 |  | 000088298-01 | Wanda | Roffe | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402015 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 04112018 | 03302018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04022018 | 2018-04-02T07:38:12+00:00 |  | 000012389-01 | REVA | HENINGER | THE OH STATE UNIVERSITY | 913100 | GUIBIN | LI | 1578733325 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402038 | G9340, I10 | Essential (primary) hypertension | ICD10 | 04112018 | 03302018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 04052018 | 2018-04-05T17:22:15+00:00 |  | 000028952-01 | REBECCA | BANNER | MOUNT CARMEL HLTH SYS | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406006 | K5660, R109 | Unspecified abdominal pain | ICD10 | 04112018 | 04042018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04092018 | 2018-04-09T11:39:47+00:00 |  | 000074971-01 | Betty | Rife | HOSPITALIST MEDICINE PHY | 911142 | JILL | BARNO | 1922030915 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04062018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410017 | I509, R0902 | Hypoxemia | ICD10 | 04112018 | 04062018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T15:20:00+00:00 |  | 000026287-01 | JOAN | MILLIRON | HOSPITALIST MEDICINE PHY | 952668 | HO AN | KANG | 1275945545 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04072018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410041 | J111, R001 | Bradycardia, unspecified | ICD10 | 04112018 | 04072018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T16:56:02+00:00 |  | 000029726-01 | Bernard | Edwards | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04072018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410052 | A419 | Sepsis, unspecified organism | ICD10 | 04112018 | 04072018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T18:47:47+00:00 |  | 000078760-01 | Jerry | Daniels | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04082018 | 04102018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410053 | N200 | Calculus of kidney | ICD10 | 04112018 | 04082018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04102018 | 2018-04-10T15:09:15+00:00 |  | 000061637-01 | CHARLES | CONLEY | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04112018 | Approved | MediGold Essential Care | Fax | ACO - Atrial Fib | Inpatient | 04072018 | 04102018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410106 | I4891 | Unspecified atrial fibrillation | ICD10 | 04112018 | 04072018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04022018 | 2018-04-02T15:26:27+00:00 |  | 000072375-01 | Robert | Hankey Jr | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04022018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402118 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 04112018 | 04022018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04032018 | 2018-04-03T08:46:36+00:00 |  | 000109867-01 | Randall | Givens | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04112018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04022018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403063 | R109 | Unspecified abdominal pain | ICD10 | 04112018 | 04022018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04032018 | 2018-04-03T14:18:56+00:00 |  | 000078464-01 | Paul | Harshberger Jr | MARIETTA HLTH CARE PHYS | 921990 | ROBERT | BEHNKE | 1073710869 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04112018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04022018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404024 | I2699, Z789 | Other specified health status | ICD10 | 04112018 | 04022018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04042018 | 2018-04-04T14:46:33+00:00 |  | 000085975-01 | Erika | Woebking | ORTHO INSTITUTE OF DAYTO | 913991 | RYAN D | BAUMAN | 1760455489 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04102018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404081 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 04112018 | 04102018 | 04112018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04052018 | 2018-04-05T08:27:49+00:00 |  | 000031381-01 | LARNEY | COLE | OHIOHEALTH PHYS GRP | 920738 | MARSHALL C | SPALDING | 1316261100 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 04112018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04022018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405003 | M629 | Disorder of muscle, unspecified | ICD10 | 04112018 | 04022018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04052018 | 2018-04-05T16:30:36+00:00 |  | 000029948-01 | MICHAEL | FOSTER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405070 | R4182 | Altered mental status, unspecified | ICD10 | 04112018 | 04042018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04062018 | 2018-04-06T14:19:01+00:00 |  | 000112616-01 | Randel | Collier | ADENA MEDICAL GROUP LLC | 936383 | DANIEL J | EVANS | 1760477640 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406044 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 04112018 | 04052018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T08:51:05+00:00 |  | 000055184-01 | ROSEMARY | BETHEL | OHIOHEALTH PHYS GRP | 946385 | KESHAV | DESHPANDE | 1285958611 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04062018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410001 | S0101XA, S066X0A, S0990XA, W19XXXA | Unspecified fall, initial encounter | ICD10 | 04112018 | 04062018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T10:19:23+00:00 |  | 000040814-01 | CARL | MCGRAW | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04062018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410002 | J189, R0602 | Shortness of breath | ICD10 | 04112018 | 04062018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04092018 | 2018-04-09T12:36:35+00:00 |  | 000070176-01 | Sue | Collins | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04082018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410018 | J159 | Unspecified bacterial pneumonia | ICD10 | 04112018 | 04082018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04092018 | 2018-04-09T12:15:23+00:00 |  | 000107757-01 | David | Miller | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04072018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410030 | R29810, R531 | Weakness | ICD10 | 04112018 | 04072018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04102018 | 2018-04-10T10:19:59+00:00 |  | 000029134-01 | ELIZABETH | WILSON | MOUNT CARMEL HLTH PRVDRS | 903017 | FRED P | ROMEO | 1568403814 | MOUNT CARMEL WEST PSYCHI | 902251 | 1508941014 | MOUNT CARMEL MEDICAL CENTER PSYCH | 1508941014 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER PSYCH | 04112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410084 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 04112018 | 04052018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04102018 | 2018-04-10T16:16:26+00:00 |  | 000072156-01 | Howard | Hutchison | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04112018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04092018 | 04102018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411003 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04112018 | 04092018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
