Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-05_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-05_URGEMERG
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
| 03282018 | 2018-03-28T14:08:06+00:00 |  | 000098791-01 | Clyde | Canell | MERCY HEALTH PHYSICIANS | 947499 | CORY D | BARRAT | 1336450840 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 04052018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03302018 | 04032018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328067 | C20 | Malignant neoplasm of rectum | ICD10 | 04052018 | 03302018 | 04032018 | 44625 | CLSR ENTEROSTOMY C RSCTN & ANAST. | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 2.0 |
| 03062018 | 2018-03-06T16:15:47+00:00 |  | 000018798-01 | RUSSELL | TAYLOR | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03092018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307002 | I96 | Gangrene, not elsewhere classified | ICD10 | 04052018 | 03092018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 03302018 | 2018-03-30T08:02:13+00:00 |  | 000083496-01 | George | Neiswender | GRANDVIEW & SOUTHVIEW HO | 936462 |  | GRANDVIEW MEDICAL CENTER | 1053339507 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330050 | E860, R4182, R531 | Weakness | ICD10 | 04052018 | 03292018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03262018 | 2018-03-26T18:23:10+00:00 |  | 000008659-01 | VIOLA | GIFFORD | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327057 | I509 | Heart failure, unspecified | ICD10 | 04052018 | 03262018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03262018 | 2018-03-26T17:07:06+00:00 |  | 000090682-01 | Larry | Morgan | HOSPITALIST MEDICINE PHY | 947194 | KENNETH H | SURKIN | 1295050227 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 04052018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03262018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327059 | G939, J449, J9611, J9612, R590, Z01811 | Encounter for preprocedural respiratory examination | ICD10 | 04052018 | 03262018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T11:43:33+00:00 |  | 000024292-01 | PATRICIA | CHAMBERS | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04012018 | 04042018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402080 | S72011A | Unsp intracapsular fracture of right femur, init for clos fx | ICD10 | 04052018 | 04012018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02272018 | 2018-02-27T20:38:54+00:00 |  | 000113155-01 | RICHARD | ROGERS | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04032018 | 04042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228015 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04052018 | 04032018 | 04042018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03052018 | 2018-03-05T07:58:40+00:00 |  | 000041059-01 | HAROLD | SHEETS | CEN OH UROLOGY GRP INC | 914520 | FREDERICK L | TAYLOR | 1558527192 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04032018 | 04042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305057 | N393 | Stress incontinence (female) (male) | ICD10 | 04052018 | 04032018 | 04042018 | 53445 | CORRECTION URINARY INCONTINENCE | CPT | 0 | 1 | Auth Not Required | 2 | CPT | C4 |  |  |  | 1.0 |
| 03052018 | 2018-03-05T13:58:57+00:00 |  | 000114495-01 | Jacquelene | Jones | ORTHOCINCY | 924293 | MICHAEL L | SWANK | 1982641999 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 04052018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03272018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305072 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 04052018 | 03272018 | 03292018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03072018 | 2018-03-07T11:43:48+00:00 |  | 000121894-01 | Richard | Strait | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04022018 | 04042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307022 | M4310, M488X9 | Other specified spondylopathies, site unspecified | ICD10 | 04052018 | 04022018 | 04042018 | 63012, 22633, 22853, 22840, 20936, 20930, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 03092018 | 2018-03-09T09:17:50+00:00 |  | 000070819-01 | Franklin | Isaac | OSU INTERNAL MED LLC | 942381 | SOPHIA J | PENG | 1831455831 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03082018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309018 | I639 | Cerebral infarction, unspecified | ICD10 | 04052018 | 03082018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03142018 | 2018-03-14T09:39:36+00:00 |  | 000015100-01 | KENNETH | CARROLL | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04052018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04032018 | 04042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314010 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 04052018 | 04032018 | 04042018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03192018 | 2018-03-19T15:46:41+00:00 |  | 000078092-01 | Charles | Kucharski | ORTHO ASSOC OF DAYTON | 913137 | LANCE M | TIGYER | 1558320408 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03172018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320006 | R6521 | Severe sepsis with septic shock | ICD10 | 04052018 | 03172018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03202018 | 2018-03-20T12:08:13+00:00 |  | 000009076-01 | RONALD | SMALLRIDGE | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 04042018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320055 | I509 | Heart failure, unspecified | ICD10 | 04052018 | 03192018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 03232018 | 2018-03-23T13:23:52+00:00 |  | 000033350-01 | WILLIAM | MCNERNEY | HOSPITALIST MEDICINE PHY | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03222018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323052 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04052018 | 03222018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 03262018 | 2018-03-26T07:15:34+00:00 |  | 000079031-01 | Mary | Ingram | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03252018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326056 | I959, N179, R579 | Shock, unspecified | ICD10 | 04052018 | 03252018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03292018 | 2018-03-29T19:10:20+00:00 |  | 000042565-01 | JAMES | STOVER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330048 | R109, R319 | Hematuria, unspecified | ICD10 | 04052018 | 03292018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03302018 | 2018-03-30T15:41:48+00:00 |  | 000030752-01 | THERESA | GIDDINGS | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330071 | I509, T8131XA | Disruption of external operation (surgical) wound, NEC, init | ICD10 | 04052018 | 03292018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04022018 | 2018-04-02T15:38:10+00:00 |  | 000070087-01 | Dorothy | Skeens | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 04012018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403034 | E860, N179 | Acute kidney failure, unspecified | ICD10 | 04052018 | 04012018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01032018 | 2018-01-03T16:38:21+00:00 |  | 000091918-01 | Dorothy | Jerzyk | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Post-Service | POST |  | MOUNT CARMEL MEDICAL CENTER | 04052018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01302018 | 01312018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A180104033 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 04052018 | 01302018 | 01312018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 | Void | 2 | CPT | C4 |  |  |  | 1.0 |
| 01242018 | 2018-01-24T09:34:31+00:00 |  | 000029481-01 | DARRELL | KAUFMAN | SOUND INPATIENT PHYS | 915600 |  | SOUND INPATIENT PHYSICIANS | 1639311996 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180131153941.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124029 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04052018 | 01232018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03082018 | 2018-03-08T12:26:12+00:00 |  | 000071194-01 | Shirley | Newport | ORTHO ASSOC OF SW OH INC | 911335 | JOSEPH D | DICICCO | 1871595868 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03282018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308019 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 04052018 | 03282018 | 03292018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03262018 | 2018-03-26T15:14:23+00:00 |  | 000110954-01 | Ruth | Mault | HOSPITALIST MEDICINE PHY | 906496 | VALERIE A | ALIU | 1073692042 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03232018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327036 | J189 | Pneumonia, unspecified organism | ICD10 | 04052018 | 03232018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 03272018 | 2018-03-27T14:46:57+00:00 |  | 000080904-01 | Melinda | Gruenberg | PATEL, KETAN K | 921436 | KETAN K | PATEL | 1699721050 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 04052018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03272018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328070 | D649 | Anemia, unspecified | ICD10 | 04052018 | 03272018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03282018 | 2018-03-28T10:50:57+00:00 |  | 000087452-01 | Betty | Ritchie | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04052018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329009 | K561, N390, R109 | Unspecified abdominal pain | ICD10 | 04052018 | 03272018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03302018 | 2018-03-30T09:29:27+00:00 |  | 000057424-01 | HELEN | HOWARD | ORTHOPEDIC ONE INC | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04022018 | 04032018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330016 | S42231A | 3-part fracture of surgical neck of right humerus, init | ICD10 | 04052018 | 04022018 | 04032018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04012018 | 2018-04-01T15:04:04+00:00 |  | 000021075-01 | LAURA | NIXON | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402029 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04052018 | 03302018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04022018 | 2018-04-02T12:58:23+00:00 |  | 000025205-01 | WILMA | HOWARD | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04012018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402087 | K810 | Acute cholecystitis | ICD10 | 04052018 | 04012018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04032018 | 2018-04-03T10:11:21+00:00 |  | 000038021-01 | HOWARD | CHANEY | ADENA MEDICAL GROUP LLC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04022018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403074 | A419, J159, N390, R0902 | Hypoxemia | ICD10 | 04052018 | 04022018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01302018 | 2018-01-30T09:44:12+00:00 |  | 000026938-01 | LORNA | MCCOLLUM | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01292018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180206155154.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130032 | I4891, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04052018 | 01292018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03072018 | 2018-03-07T09:58:35+00:00 |  | 000082883-01 | Paul | Sager | OSU HLTH SYSTEM NEUROSUR | 911215 | MILIND | DEOGAONKAR | 1780871327 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04032018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307014 | G20 | Parkinson's disease | ICD10 | 04052018 | 04032018 | 04052018 | 61867, 20660, 77002 | FLUOROSCOPIC GUIDANCE FOR NEEDLE PLACEMENT | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 03212018 | 2018-03-21T11:20:40+00:00 |  | 000121694-01 | John | Sprouse | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01092018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321030 | Z7901, Z6834, Z86711, Z86718 | Personal history of other venous thrombosis and embolism | ICD10 | 04052018 | 01092018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03222018 | 2018-03-22T09:50:11+00:00 |  | 000039594-01 | ELEANOR | ST CLAIR | NAPLES COMMUNITY HOSPITAL INC REHAB | 926424 |  | NAPLES COMMUNITY HOSPITAL INC REHAB | 1831352087 | NAPLES COMMUNITY HOSPITAL INC REHAB | 926424 | 1831352087 | NAPLES COMMUNITY HOSPITAL INC REHAB | 1831352087 | Inpatient | IP | Concurrent Review | CONC |  | NAPLES COMMUNITY HOSPITAL INC REHAB | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322031 | S72141A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 04052018 | 03212018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 03262018 | 2018-03-26T07:49:59+00:00 |  | 000077814-01 | Robert | Newman | MIAMI VALLEY HSPISTS GRP | 947756 | NIKHIL | PRASAD | 1114364460 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04052018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03242018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326055 | R079 | Chest pain, unspecified | ICD10 | 04052018 | 03242018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 03262018 | 2018-03-26T09:54:53+00:00 |  | 000029427-01 | TRACY | STANTON | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03242018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326076 | E1110 | E1110 | ICD10 | 04052018 | 03242018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03282018 | 2018-03-28T11:35:22+00:00 |  | 000106694-01 | REBECCA | LAMB | KHN IP MED | 941454 | ISHA L | BUTLER | 1952693707 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03272018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329016 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 04052018 | 03272018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04022018 | 2018-04-02T08:14:11+00:00 |  | 000099119-01 | Helen | Schwarber | CLERMONT INTERNISTS ASSO | 921351 | PARAMESWARAN | HARIHARAN | 1720084460 | MERCY HOSPITAL CLERMONT | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 04052018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04012018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402044 | K5732 | Dvtrcli of lg int w/o perforation or abscess w/o bleeding | ICD10 | 04052018 | 04012018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032018 | 2018-04-03T10:03:00+00:00 |  | 000014487-01 | THOMAS | CHAFIN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04012018 | 04042018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403022 | I480, I509, J849, N179, R0902, R509 | Fever, unspecified | ICD10 | 04052018 | 04012018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04022018 | 2018-04-02T15:56:03+00:00 |  | 000114919-01 | Judith | Hill | APOGEE MED GRP OHIO INC | 941935 | ROBERT K | MONTAZEMI | 1184692238 | BARNESVILLE HOSPITAL | 904409 | 1235135450 | BARNESVILLE HOSPITAL | 1235135450 | Inpatient | IP | Concurrent Review | CONC |  | BARNESVILLE HOSPITAL | 04052018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03302018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403039 | J159 | Unspecified bacterial pneumonia | ICD10 | 04052018 | 03302018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032018 | 2018-04-03T11:22:49+00:00 |  | 000040543-01 | JOYCE | YODER | WILLIAMSON MEDICAL CTR | 936706 |  | WILLIAMSON MEDICAL CENTER | 1265445506 | WILLIAMSON MEDICAL CTR | 936706 | 1265445506 | WILLIAMSON MEDICAL CENTER | 1265445506 | Inpatient | IP | Concurrent Review | CONC |  | WILLIAMSON MEDICAL CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403086 | K5660 | Unspecified intestinal obstruction | ICD10 | 04052018 | 03302018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04032018 | 2018-04-03T16:36:08+00:00 |  | 000042153-01 | G | BISHOP | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04052018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 04022018 | 04042018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404031 | I099, I509 | Heart failure, unspecified | ICD10 | 04052018 | 04022018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T15:59:36+00:00 |  | 000080161-01 | Anita | Fitzpatrick | MOUNT CARMEL HLTH PRVDRS | 933631 | SHILPA A | PADIA | 1760799175 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04052018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03292018 | 03302018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404035 | C50311 | Malig neoplm of lower-inner quadrant of right female breast | ICD10 | 04052018 | 03292018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
