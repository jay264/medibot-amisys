Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-14_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-14_URGEMERG
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
| 03122018 | 2018-03-12T09:27:47+00:00 |  | 000043185-01 | ESTER | COOPER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03092018 | 03112018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312036 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03142018 | 03092018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T14:51:56+00:00 |  | 000031281-01 | DARRELL | SPARKS | HOSPITALIST MEDICINE PHY | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03072018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308047 | J09X1, J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 03142018 | 03072018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03052018 | 2018-03-05T08:42:02+00:00 |  | 000058127-01 | SANDRA | ROBSON | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03042018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305069 | J189 | Pneumonia, unspecified organism | ICD10 | 03142018 | 03042018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02122018 | 2018-02-12T14:04:22+00:00 |  | 000025849-01 | MARIAN | ABBOTT | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02112018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180222158017.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212105 | I4891, J449, R0902 | Hypoxemia | ICD10 | 03142018 | 02112018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 30.0 |
| 03052018 | 2018-03-05T14:36:51+00:00 |  | 000002474-01 | Jean | Crews | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03042018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305094 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 03142018 | 03042018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03082018 | 2018-03-08T12:24:43+00:00 |  | 000078887-01 | Barbara | Tilton | MOUNT CARMEL HLTH SYS | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308055 | S72402A | Unsp fracture of lower end of left femur, init for clos fx | ICD10 | 03142018 | 03072018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01182018 | 2018-01-18T18:05:49+00:00 |  | 000115271-01 | Christine | Fitch | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | Flexible Choice PPO | Fax | EIS | Inpatient | 02192018 | 02202018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119015 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03142018 | 02192018 | 02202018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02162018 | 2018-02-16T13:09:05+00:00 |  | 000110047-01 | Timothy | Dunlevy | ALLIANCE PHYSICIANS INC | 906934 | BRIAN P | SCHWARTZ | 1255315453 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03072018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216066 | I480 | Paroxysmal atrial fibrillation | ICD10 | 03142018 | 03072018 | 03082018 | 33340 | PERQ CLSR TCAT L ATR APNDGE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02202018 | 2018-02-20T10:51:06+00:00 |  | 000103211-01 | Rebecca | Dalesio | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03142018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220074 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03142018 | 03122018 | 03132018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02222018 | 2018-02-22T11:39:12+00:00 |  | 000085005-01 | Sallie | ODell | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03122018 | 03132018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222034 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03142018 | 03122018 | 03132018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02282018 | 2018-02-28T13:29:25+00:00 |  | 000093224-01 | Mary | Adams | TRIHEALTH G LLC | 925126 | NANCY K | MCDONOUGH | 1396857983 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 03142018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02282018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228057 | I6350 | Cereb infrc due to unsp occls or stenos of unsp cereb artery | ICD10 | 03142018 | 02282018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 03012018 | 2018-03-01T09:59:57+00:00 |  | 000002922-01 | DORIS | GRIFFIN | SOUND INPATIENT PHYS OF | 931112 | YOGEESH H | SHIVARAMAI-PRA | 1215285689 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03132018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301016 | J189, R109 | Unspecified abdominal pain | ICD10 | 03142018 | 02282018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 03022018 | 2018-03-02T15:55:56+00:00 |  | 000057879-01 | HOWARD | LEWINTER | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03082018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302071 | S2222XA | Fracture of body of sternum, init encntr for closed fracture | ICD10 | 03142018 | 03082018 | 03132018 | 21825 | FX STERNUM, OPEN TREATMENT | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 03052018 | 2018-03-05T10:16:03+00:00 |  | 000014551-01 | BONETA | HENKEL | COPC CENTRAL OHIO PRIMAR | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03042018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305026 | C799 | Secondary malignant neoplasm of unspecified site | ICD10 | 03142018 | 03042018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03072018 | 2018-03-07T09:49:47+00:00 |  | 000107061-01 | Sharon | Arledge | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307035 | I4891 | Unspecified atrial fibrillation | ICD10 | 03142018 | 03062018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03102018 | 2018-03-10T08:45:28+00:00 |  | 000032467-01 | WILLIAM | CONWAY | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03092018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312005 | I469 | Cardiac arrest, cause unspecified | ICD10 | 03142018 | 03092018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03122018 | 2018-03-12T14:18:45+00:00 |  | 000085546-01 | Helena | Anthony | MARIETTA HLTH CARE PHYS | 925532 | SUJEETH K | SHETTY | 1063627727 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03142018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 03092018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312100 | R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 03142018 | 03092018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02152018 | 2018-02-15T10:27:11+00:00 |  | 000023102-01 | GEORGIA | DAVENPORT | DOCTORS HOSPITAL | 903408 |  | DOCTORS HOSPITAL | 1972535052 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02142018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215023 | R0609 | Other forms of dyspnea | ICD10 | 03142018 | 02142018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02272018 | 2018-02-27T09:38:36+00:00 |  | 000118294-01 | JAMES | FAUSNAUGH | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227023 | M792 | Neuralgia and neuritis, unspecified | ICD10 | 03142018 | 02272018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 03052018 | 2018-03-05T11:43:32+00:00 |  | 000111654-01 | Joann | Saffell | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | Flexible Choice PPO | Fax | EIS | Inpatient | 03122018 | 03132018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305042 | C519 | Malignant neoplasm of vulva, unspecified | ICD10 | 03142018 | 03122018 | 03132018 | 56630 | RADICAL VULVECTOMY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03052018 | 2018-03-05T13:45:28+00:00 |  | 000054265-01 | PAUL | WOODBRIDGE | ADENA MEDICAL GROUP LLC | 948013 | NICKOLAS W | FOULADPOUR | 1407175052 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03042018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305108 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 03142018 | 03042018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03052018 | 2018-03-05T14:04:59+00:00 |  | 000077003-01 | Diane | Saxton | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03042018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305112 | D72829 | Elevated white blood cell count, unspecified | ICD10 | 03142018 | 03042018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03062018 | 2018-03-06T10:37:49+00:00 |  | 000097603-01 | Margaret | Hock | OSU HLTH SYS ORTHO ONC P | 943028 | RYAN K | HARRISON | 1528295169 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03052018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306068 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 03142018 | 03052018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03072018 | 2018-03-07T11:52:27+00:00 |  | 000109751-01 | Naomi | Newhouse | MARK A ASHBY | 929318 | MARK | ASHBY | 1063417616 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 03142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03062018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307055 | R339 | Retention of urine, unspecified | ICD10 | 03142018 | 03062018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T11:09:13+00:00 |  | 000048187-01 | MILDRED | MOORE | OHIOHEALTH PHYS GRP | 932197 | MICHELLE Y | KINCAID | 1396943601 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308027 | S0292XA | Unsp fracture of facial bones, init for clos fx | ICD10 | 03142018 | 03062018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03082018 | 2018-03-08T10:27:10+00:00 |  | 000090246-01 | Anna | Sharp | ALLIANCE PHYSICIANS INC | 904593 | MUJEEB | SIDDIQUI | 1619974797 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 03142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03072018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308038 | K4030, R1031 | Right lower quadrant pain | ICD10 | 03142018 | 03072018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03082018 | 2018-03-08T11:30:59+00:00 |  | 000076885-01 | Sally | McCafferty | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308049 | J189, N19, R0902 | Hypoxemia | ICD10 | 03142018 | 03072018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03092018 | 2018-03-09T12:00:11+00:00 |  | 000094711-01 | John | Henize | MALLIK, GUNWANT S | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309051 | I7771 | Dissection of carotid artery | ICD10 | 03142018 | 03062018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03112018 | 2018-03-11T11:38:06+00:00 |  | 000121732-01 | Sylvia | Demko | COPC CENTRAL OHIO PRIMAR | 952051 | THOMAS M | COWAN | 1558655423 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | Flexible Choice PPO | Fax | ACO - Atrial Fib | Inpatient | 03102018 | 03132018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312033 | I4891 | Unspecified atrial fibrillation | ICD10 | 03142018 | 03102018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03112018 | 2018-03-11T14:08:52+00:00 |  | 000024577-01 | DONNA | PERRY | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03102018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312042 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 03142018 | 03102018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03122018 | 2018-03-12T11:16:36+00:00 |  | 000098025-01 | DENA | LYONS | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03102018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312087 | I639 | Cerebral infarction, unspecified | ICD10 | 03142018 | 03102018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03122018 | 2018-03-12T13:50:20+00:00 |  | 000049835-01 | LOIS | BOLDT | SOUND INPATIENT PHYS OF | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 03112018 | 03132018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312098 | I200, R079 | Chest pain, unspecified | ICD10 | 03142018 | 03112018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03132018 | 2018-03-13T09:46:49+00:00 |  | 000031290-01 | PATRICIA | KINGSTON | COPC CENTRAL OHIO PRIMAR | 935053 | IAN J | WILSON | 1760598239 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03112018 | 03132018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313013 | N200 | Calculus of kidney | ICD10 | 03142018 | 03112018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03132018 | 2018-03-13T17:17:07+00:00 |  | 000095402-01 | David | Thomas | MOUNT CARMEL HLTH SYS | 934919 | CHARLES W | TAYLOR III | 1861492969 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 03272018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180314005 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 03142018 |  |  | 44145 | COLECTOMY C COLOPROCTOSTOMY | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  | No child records to display. |  |
| 03082018 | 2018-03-08T14:31:42+00:00 |  | 000105009-01 | Patricia | Wells | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03082018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308042 | I639 | Cerebral infarction, unspecified | ICD10 | 03142018 | 03082018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03082018 | 2018-03-08T11:10:14+00:00 |  | 000090425-01 | Freddie | Mccreary | COPC CENTRAL OHIO PRIMAR | 928116 | ONMA A | AMEH | 1578884565 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309004 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 03142018 | 03062018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03122018 | 2018-03-12T10:33:06+00:00 |  | 000109715-01 | Herbert | Francis | LICKING MEM HLTH PROF | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03102018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312070 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 03142018 | 03102018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03122018 | 2018-03-12T14:26:20+00:00 |  | 000030713-01 | AUGUSTINE | WATSON | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 03092018 | 03132018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312091 | I200, R079 | Chest pain, unspecified | ICD10 | 03142018 | 03092018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03122018 | 2018-03-12T16:12:06+00:00 |  | 000031074-01 | JONATHAN | MILLER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03102018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313001 | G459, I6350 | Cereb infrc due to unsp occls or stenos of unsp cereb artery | ICD10 | 03142018 | 03102018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03122018 | 2018-03-12T16:20:47+00:00 |  | 000115289-01 | JACQUELINE | CROUSE | KHN IP MED | 925015 | TITILAYO A | OLUWABUSI | 1912293077 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03112018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313030 | K529, K625 | Hemorrhage of anus and rectum | ICD10 | 03142018 | 03112018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03132018 | 2018-03-13T16:01:52+00:00 |  | 000091092-01 | Gertrude | Blanken | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03142018 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 03142018 | 03152018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180313097 | I639 | Cerebral infarction, unspecified | ICD10 | 03142018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03142018 | 2018-03-14T12:30:26+00:00 |  | 000115013-01 | Roger | Spangler | GRANT MEDICAL CENTER | 936409 |  | GRANT MEDICAL CENTER | 1255377149 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01082018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314037 | D500, E1165, E118, I10, K922, R531, R6510, R748 | Abnormal levels of other serum enzymes | ICD10 | 03142018 | 01082018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03142018 | 2018-03-14T11:38:54+00:00 |  | 000075233-01 | Rose | Self | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03142018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Pending Admission | Inpatient | 04232018 | 05232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180314041 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 03142018 |  |  | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  | No child records to display. |  |
