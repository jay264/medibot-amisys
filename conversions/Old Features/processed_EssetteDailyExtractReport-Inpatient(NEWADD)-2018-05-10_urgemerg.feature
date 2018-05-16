Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-10_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-10_URGEMERG
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
| 05042018 | 2018-05-04T13:30:34+00:00 |  | 000096004-01 | DONALD | MCCORMICK | CLERMONT INTERNISTS ASSO | 924704 | SUSHEELA | RAJAN | 1144273673 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 05102018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05032018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504049 | E871, I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 05102018 | 05032018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04212018 | 2018-04-21T10:54:26+00:00 |  | 000031743-01 | G | MCCOY | HOSPITALIST MEDICINE PHY | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423026 | I462, M6282 | Rhabdomyolysis | ICD10 | 05102018 | 04202018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 04262018 | 2018-04-26T11:12:40+00:00 |  | 000105689-01 | RONALD | CONLEY | MOUNT CARMEL HLTH PRVDRS | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05082018 | 05092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426038 | I481 | Persistent atrial fibrillation | ICD10 | 05102018 | 05082018 | 05092018 | 33340 | PERQ CLSR TCAT L ATR APNDGE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04262018 | 2018-04-26T17:19:05+00:00 |  | 000030226-01 | M | Salmons Frederick | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427001 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 05102018 | 05032018 | 05092018 | 33430 | MITRAL VALVE REPLACEMENT-OPEN | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 04262018 | 2018-04-26T17:45:58+00:00 |  | 000007065-01 | DONALD | REESE | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05082018 | 05092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427005 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 05102018 | 05082018 | 05092018 | 33418 | REPAIR TCAT MITRAL VALVE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04112018 | 2018-04-11T11:06:33+00:00 |  | 000028059-01 | MARY | SELBE | CENTRAL OHIO SURG ASSOC | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04172018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411077 | C179 | Malignant neoplasm of small intestine, unspecified | ICD10 | 05102018 | 04172018 | 05092018 | 49000, 44120 | ENTERECTOMY SMALL BOWEL | CPT | 1, 1 | 1, 1 | Approved, Approved | 23, 23 | CPT | C4 |  |  |  | 22.0 |
| 04182018 | 2018-04-18T10:38:28+00:00 |  | 000118535-01 | Arunkumr | Desai | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05082018 | 05092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418035 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05102018 | 05082018 | 05092018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04182018 | 2018-04-18T15:34:59+00:00 |  | 000008292-01 | MARVIN | GREEN | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05072018 | 05092018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418064 | D4010 | Neoplasm of uncertain behavior of unspecified testis | ICD10 | 05102018 | 05072018 | 05092018 | 52601 | TRANSURETHRAL RESECT PROSTATE | CPT | 0 | 1 |  | 3 | CPT | C4 |  |  |  | 2.0 |
| 04272018 | 2018-04-27T15:24:04+00:00 |  | 000092541-01 | Mary | Schirmer | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05102018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427066 | R748 | Abnormal levels of other serum enzymes | ICD10 | 05102018 | 04252018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T14:32:23+00:00 |  | 000041949-01 | VIRGEL | METCALF | COPC CENTRAL OHIO PRIMAR | 936972 | NISHIT G | JHAVERI | 1356400659 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501015 | J189, R6521 | Severe sepsis with septic shock | ICD10 | 05102018 | 04292018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05012018 | 2018-05-01T09:23:15+00:00 |  | 000053703-01 | JAMES | PERRY | HOSPITALIST MEDICINE PHY | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501065 | J189, R0902 | Hypoxemia | ICD10 | 05102018 | 04302018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05022018 | 2018-05-02T09:16:42+00:00 |  | 000039158-01 | ELIZABETH | HUTTON | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502026 | I4891, I509, R079, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 05102018 | 05012018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05022018 | 2018-05-02T09:25:14+00:00 |  | 000104722-01 | Eugene | Nance | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05012018 | 05092018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502035 | I509 | Heart failure, unspecified | ICD10 | 05102018 | 05012018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05022018 | 2018-05-02T12:07:16+00:00 |  | 000100531-01 | Christina | Grubb | MOUNT CARMEL HLTH PRVDRS | 952401 | SUSANNE K | TAEGE | 1225268535 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05082018 | 05092018 | Expedited |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502044 | N993 | Prolapse of vaginal vault after hysterectomy | ICD10 | 05102018 | 05082018 | 05092018 | 57110, 57210 | PERINEORRHAPHY-NON OBSTETRICAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 05022018 | 2018-05-02T13:00:14+00:00 |  | 000121987-01 | Donald | Beaudoin | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05022018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502079 | E1310 | Oth diabetes mellitus with ketoacidosis without coma | ICD10 | 05102018 | 05022018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05022018 | 2018-05-02T16:49:33+00:00 |  | 000049483-01 | ROY | MAPLE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502100 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 05102018 | 04252018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 04192018 | 2018-04-19T11:03:17+00:00 |  | 000079056-01 | Larry | Lovelace | MERCY HEALTH PHYSICIANS | 921193 | SAMUEL R | VESTER | 1629008628 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 05102018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04302018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419038 | G8918, I2510, Z951 | Presence of aortocoronary bypass graft | ICD10 | 05102018 | 04302018 | 05052018 | 33519 | CORONARY BYPASS, THREE VENOUS GRAFTS | CPT | 0 | 1 |  | 6 | CPT | C4 |  |  |  | 5.0 |
| 04242018 | 2018-04-24T10:59:33+00:00 |  | 000082540-01 | David | Hough | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05072018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424039 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05102018 | 05072018 | 05092018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04262018 | 2018-04-26T14:02:24+00:00 |  | 000040377-01 | LEWIS | HAMLER | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Phone | Inpatient | Inpatient | 05072018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426053 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 05102018 | 05072018 | 05092018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04302018 | 2018-04-30T11:45:06+00:00 |  | 000112480-01 | Lucille | Winland | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04282018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430056 | R4182 | Altered mental status, unspecified | ICD10 | 05102018 | 04282018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T15:09:42+00:00 |  | 000118148-01 | PAMELA | THERRIEN | OSU INTERNAL MED LLC | 909562 | JENNIFER W | MCCALLISTER | 1588775209 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05102018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04282018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501020 | B9562, J159 | Unspecified bacterial pneumonia | ICD10 | 05102018 | 04282018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05032018 | 2018-05-03T12:33:11+00:00 |  | 000065038-01 | DON | QUEEN | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05102018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 05022018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503037 | R55 | Syncope and collapse | ICD10 | 05102018 | 05022018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05052018 | 2018-05-05T20:18:11+00:00 |  | 000036653-01 | PETE | HUGHES | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 05042018 | 05092018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507028 | I10, I214, I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05102018 | 05042018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05062018 | 2018-05-06T10:17:17+00:00 |  | 000039077-01 | CHARLES | GROOMS | HOSPITALIST MEDICINE PHY | 943369 | SAMVEL | NERSISYAN | 1184982357 | GRADY MEMORIAL HOSPITAL | 936495 | 1235174327 | GRADY MEMORIAL HOSPITAL | 1235174327 | Inpatient | IP | Concurrent Review | CONC |  | GRADY MEMORIAL HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05052018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507045 | R531 | Weakness | ICD10 | 05102018 | 05052018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05062018 | 2018-05-06T10:55:49+00:00 |  | 000096965-01 | Duane | Wegner | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05052018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507051 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 05102018 | 05052018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05072018 | 2018-05-07T11:11:48+00:00 |  | 000049035-01 | SAMUEL | WALKER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507095 | J189, R0602 | Shortness of breath | ICD10 | 05102018 | 05032018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04292018 | 2018-04-29T13:02:17+00:00 |  | 000111008-01 | ALEXANDER | STEWART | CEN OH PRIMARY CARE SPEC | 901084 | RICHARD L | GUMMER II | 1104809771 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04282018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430012 | R2990 | Unspecified symptoms and signs involving the nervous system | ICD10 | 05102018 | 04282018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04292018 | 2018-04-29T13:08:15+00:00 |  | 000010759-01 | MARY | REA | HYPERENSION & KIDNEY SPE | 901477 | TEFERI G | MENGESHA | 1093763823 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04282018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430014 | E875 | Hyperkalemia | ICD10 | 05102018 | 04282018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T11:06:49+00:00 |  | 000022905-01 | LORANA | SALYER | OHIOHEALTH PHYS GRP | 910110 | SANJAY | MEHTA | 1265416374 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430055 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 05102018 | 04292018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05022018 | 2018-05-02T15:42:22+00:00 |  | 000113474-01 | Lenora | Banks | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04282018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502077 | I25119 | Athscl heart disease of native cor art w unsp ang pctrs | ICD10 | 05102018 | 04282018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T13:57:28+00:00 |  | 000063312-01 | ARTHUR | MURRAY JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 05032018 | 05092018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504035 | I509 | Heart failure, unspecified | ICD10 | 05102018 | 05032018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05052018 | 2018-05-05T17:12:48+00:00 |  | 000118054-01 | Jerry | Caldwell | JACK STANKO MD LLC | 934869 | JACK | STANKO JR | 1891751319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Essential Care | Fax | ACO - Atrial Fib | Inpatient | 05042018 | 05092018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507022 | I4891 | Unspecified atrial fibrillation | ICD10 | 05102018 | 05042018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05072018 | 2018-05-07T06:44:45+00:00 |  | 000105302-01 | Paul | Wiehe | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05032018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507062 | I200, I2510, Z951 | Presence of aortocoronary bypass graft | ICD10 | 05102018 | 05032018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05072018 | 2018-05-07T16:07:01+00:00 |  | 000115067-01 | Darlene | Schaeffer-Bryant | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 05102018 | Denied | Flexible Choice PPO | Fax | Criteria Not Met | Inpatient | 05102018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180508002 | I639 | Cerebral infarction, unspecified | ICD10 | 05102018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05072018 | 2018-05-07T15:46:11+00:00 |  | 000027595-01 | JACQUELINE | SIZEMORE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05052018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508009 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05102018 | 05052018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05072018 | 2018-05-07T12:44:18+00:00 |  | 000077229-01 | Larry | Reed | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508015 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05102018 | 05042018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05072018 | 2018-05-07T16:11:54+00:00 |  | 000031680-01 | ROBERT | MIESSE | HOCKING VALLEY MED GRP | 949829 | TAREK M | AZIZ | 1679592075 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508017 | F4321 | Adjustment disorder with depressed mood | ICD10 | 05102018 | 05032018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05072018 | 2018-05-07T18:35:06+00:00 |  | 000104916-01 | DENNIS | GROSE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Essential Care | Fax | ACO - Atrial Fib | Inpatient | 05072018 | 05082018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508027 | I4892 | Unspecified atrial flutter | ICD10 | 05102018 | 05072018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05082018 | 2018-05-08T08:19:28+00:00 |  | 000021846-01 | EARL | DERRING | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 05072018 | 05092018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508058 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05102018 | 05072018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092018 | 2018-05-09T12:20:51+00:00 |  | 000093606-01 | Valerie | Snider | DOCTORS HOSPITAL | 903408 |  | DOCTORS HOSPITAL | 1972535052 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 05102018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 03112018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509038 | I10 | Essential (primary) hypertension | ICD10 | 05102018 | 03112018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05092018 | 2018-05-09T09:48:06+00:00 |  | 000013114-01 | VERA | DAVIS | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05062018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509054 | R109 | Unspecified abdominal pain | ICD10 | 05102018 | 05062018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
