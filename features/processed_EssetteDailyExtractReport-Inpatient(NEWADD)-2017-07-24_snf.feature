Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-24_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-24_SNF
Given I save the auth class "<auth_class>" to a variable
Given I use "<auth_admission_date>" to determine the start and end dates and authorized days
Given I sign in to the application
When in the "Home" page I click on "Authorizations/Medical Management"
And the test pauses for "3" seconds
And in the "Authorizations Medical Management" page I click on "Certification"
And the test pauses for "10" seconds
And in the "Certification" page I should see the "Initial Date" element
And I press "Control + N"
And in the "certification" page I should see the "red_and_yellow_boxes" image
And the test pauses for "3" seconds
And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
And in the "Certification" page I enter "<member_id>" into the "Member Number" field
And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
And the test pauses for "1" seconds
And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
And the test pauses for "2" seconds
And in the "certification" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And I press "Control + S"
And the test pauses for "3" seconds

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

	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
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
	And in the "hospital_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds

  And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
  And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
  And the test pauses for "3" seconds

	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And I press "Control + N"
	And the test pauses for "5" seconds
	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "H" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<service_code>" into the "proc_number" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page if the "<service_code>" equals R0022 I enter "<final_reimb_amt>" into the "amount_authorized" image and convert the dollar amount
	And the test pauses for "3" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And I press "Tab"
	And the test pauses for "3" seconds
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

	And I input the ACO type and payment if any are contained in "<aco_type_and_payment>"
	And I input the EIS AA if any are contained in "<eis_aa>"
	And I input the first SNF assessments if any are contained in "<adm>" "<auth_for_payment>" "<days_used_prior>"
	And I input the second SNF assessments if any are contained in "<dc>" "<denc_date>" "<mds_date>"
	And I input the third SNF assessments if any are contained in "<nomnc_date>" "<total_days>" "<total_skilled_days>"
	And I input the final reimbursement amount if any is contained in "<final_reimb_amt>"
	And I input the drug doses "<add_drug_doses>" and drug reimbursement "<add_drug_reimb>" if they exist
	And I input the discharge date "<dischrg_date>" and final reimbursement amount two "<final_reimb_amt_2>" if they exist
	And I input the per diem level one "<per_diem_lvl_1>" and per diem level two "<per_diem_lvl_2>" and total days "<total_days>" and total per diem "<total_per_diem>" if they exist


	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

		Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 04132017 | 2017-04-13T10:35:58+00:00 |  | 000003752-01 | DELORIS | IVERS | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04112017 | 06232017 | Standard |  |  | 2017-04-11 | Per Diem $200.00/day x 74 SNF Days = $14,800.00 Vanco IV $22.77/dose x 39 doses = $888.03 Ceftriaxone IV $8.64/dose x 5 doses = $43.20 Wound Vac $58.62/daily x 67 SNF Days = $3,927.54 Care Sets 30/Canisters 2 Supplies = $2,627.59 Total Payment: $22,286.36 | 0 | 2017-06-24 | 2017-06-22 | 2017-07-20 | 2017-06-22 | 74 | 74 | 22286.36 | 170417096061.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413052 | L89304, M069 | Rheumatoid arthritis, unspecified | ICD10 | 07242017 | 04112017 | 06242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 74 | Revenue | RV |  |  |  | 4.0 |
| 05042017 | 2017-05-04T07:00:07+00:00 |  | 000077925-01 | Edward | Rhoades | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 07242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 05012017 | 06282017 | Standard |  |  | 2017-05-01 | Vent $520.00/day x 41 SNF Days = $21,320.0 Per Diem $250.00/day x 10 days = $2,500.00 Per Diem $200.00/day x 8 days = $1,600.00 Trach Carve Out $75.00/day x18 = $1,350.00 Total Payment: $26,770.00 | 0 | 2017-06-29 |  |  |  | 59 | 59 | 26770.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504065 | I6200, J9601 | Acute respiratory failure with hypoxia | ICD10 | 07242017 | 05012017 | 06292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 59 | Revenue | RV |  |  |  | 7.0 |
| 05122017 | 2017-05-12T10:37:57+00:00 |  | 000012055-01 | CHARLES | KING | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05102017 | 07042017 | Standard |  |  | 2017-05-10 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 36 SNF Days = $7,200.00 Total Payment: $13,506.19 | 0 | 2017-07-05 | 2017-07-11 | 2017-07-11 | 2017-07-11 | 56 | 56 | 13506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512052 | L03116, R6521 | Severe sepsis with septic shock | ICD10 | 07242017 | 05102017 | 07052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 56 | Revenue | RV |  |  |  | 5.0 |
| 05182017 | 2017-05-18T21:58:00+00:00 |  | 000027702-01 | JOANN | CLAGGETT | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-05-17 | 17/RVA01=$3,586.28 PER DIEM DENIED CASE RATE TO BE PAID ONLY | 9 | 2017-06-09 |  | 2017-07-14 | 2017-07-14 | 23 | 32 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519024 | G3181, M6281 | Muscle weakness (generalized) | ICD10 | 07242017 | 05172017 | 06092017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 06052017 | 2017-06-05T16:47:11+00:00 |  | 000039792-01 | MARY | BRANHAM | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06042017 | 07052017 | Standard |  |  | 2017-06-04 | Contract/RUG: 16/RHA (Per MDS) = $2,045.15 Per Diem: $200.00/day x 11 SNF Days = $2,200.00 Total Payment: $4,245.15 | 0 | 2017-07-06 |  | 2017-07-18 | 2017-07-18 | 31 | 31 | 4245.15 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606027 | I69351 | Hemiplga following cerebral infrc aff right dominant side | ICD10 | 07242017 | 06042017 | 07062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4245 | 4245 | Approved | 32 | Revenue | RV |  |  |  | 1.0 |
| 06092017 | 2017-06-09T14:07:16+00:00 |  | 000086874-01 | Ronald | Davish | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 07242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 06082017 | 07182017 | Standard |  |  | 2017-06-08 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 21 SNF Days = $4,200.00 Total Payment: $10,249.81 | 0 | 2017-07-19 |  | 2017-07-21 | 2017-07-21 | 41 | 41 | 10249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609058 | M545, M6281 | Muscle weakness (generalized) | ICD10 | 07242017 | 06082017 | 07192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 41 | Revenue | RV |  |  |  | 4.0 |
| 06142017 | 2017-06-14T14:35:02+00:00 |  | 000015170-01 | WANDA | BAILEY | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-14 | 17RVB01=$5,411.86 | 38 | 2017-06-27 |  | 2017-07-21 | 2017-06-26 | 13 | 51 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614055 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 07242017 | 06142017 | 06272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06152017 | 2017-06-15T17:02:32+00:00 |  | 000083100-01 | Kenneth | Heslin | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-14 | 17/RUB01=$5,813.99 | 0 | 2017-06-30 |  | 2017-07-11 | 2017-07-11 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616025 | A419 | Sepsis, unspecified organism | ICD10 | 07242017 | 06142017 | 06302017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 06192017 | 2017-06-19T16:39:03+00:00 |  | 000111202-01 | Edgar | Jansen | SMITH, KIRK E | 940202 | KIRK E | SMITH | 1730199985 | KINGSTON OF MIAMISBURG | 927958 | 1972590115 | KINGSTON OF MIAMISBURG | 1972590115 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINGSTON OF MIAMISBURG | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06162017 | 07122017 | Standard |  |  | 2017-06-16 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 7 SNF Days = $ 1,400.00 Total Payment: $7,449.81 | 0 | 2017-07-13 |  | 2017-06-30 | 2017-07-10 | 27 | 27 | 7449.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620009 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 07242017 | 06162017 | 07132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7449 | 7449 | Approved | 27 | Revenue | RV |  |  |  | 7.0 |
| 06212017 | 2017-06-21T08:11:40+00:00 |  | 000076192-01 | Don | Skillman | CATHERINE LARUFFA MD INC | 939724 | CATHERINE | LARUFFA | 1972502789 | THE LAURELS OF BLANCHEST | 948218 | 1992032148 | LAURELS OF BLANCHESTER | 1992032148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF BLANCHESTER | 07242017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 06202017 | 07092017 | Standard |  |  | 2017-06-20 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-07-10 | 2017-07-07 | 2017-07-10 | 2017-07-07 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621030 | S12230G, S12430G | Unsp traum displ spondylolysis of 5th cervcal vert, 7thG | ICD10 | 07242017 | 06202017 | 07102017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06212017 | 2017-06-21T08:34:48+00:00 |  | 000040489-01 | MARY | MAUTZ | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-19 | 16/RUA01=$3,214.76 | 0 | 2017-07-08 | 2017-07-12 | 2017-07-11 | 2017-07-11 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621036 | K209, K276 | Chr or unsp peptic ulcer, site unsp, w both hemor and perf | ICD10 | 07242017 | 06192017 | 07082017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 06212017 | 2017-06-21T18:01:03+00:00 |  | 000107003-01 | Daniel | Danbury | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | HEARTLAND OF MADEIRA OH LLC | 920759 | 1871534834 | HEARTLAND OF MADEIRA OH LLC | 1871534834 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MADEIRA OH LLC | 07242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 06192017 | 06262017 | Standard |  |  | 2017-06-19 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-06-27 |  | 2017-06-22 | 2017-06-22 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622006 | J209 | Acute bronchitis, unspecified | ICD10 | 07242017 | 06192017 | 06272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06232017 | 2017-06-23T13:28:53+00:00 |  | 000024643-01 | DONALD | ANDERSEN | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-22 | 16/RUC01=$7,333.11 | 0 | 2017-07-12 |  | 2017-07-12 | 2017-07-12 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623058 | S79912D | Unspecified injury of left hip, subsequent encounter | ICD10 | 07242017 | 06222017 | 07122017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06262017 | 2017-06-26T16:12:18+00:00 |  | 000099227-01 | Thelma | Jordan | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 07242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 06232017 | 07112017 | Standard |  |  | 2017-06-23 | Contract/RUG: 16/RVA (Per MDS) = $2,689.71 | 0 | 2017-07-12 |  | 2017-07-18 | 2017-07-18 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627007 | M069 | Rheumatoid arthritis, unspecified | ICD10 | 07242017 | 06232017 | 07122017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 06262017 | 2017-06-26T17:47:02+00:00 |  | 000104609-01 | Arnold | Brunotte | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 07242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 06232017 | 07112017 | Standard |  |  | 2017-06-23 | Contract/RUG: 16/RVA (Per MDS) = $2,689.71 | 0 | 2017-07-12 |  | 2017-07-18 | 2017-07-18 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627034 | R7881 | Bacteremia | ICD10 | 07242017 | 06232017 | 07122017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 06272017 | 2017-06-27T17:40:30+00:00 |  | 000107707-01 | Donna | Kaufman | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 07242017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-24 | 17/RUB01=$5,813.99 | 0 | 2017-07-04 |  | 2017-07-12 | 2017-07-12 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628055 | C187, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 07242017 | 06242017 | 07042017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 06282017 | 2017-06-28T12:04:55+00:00 |  | 000005522-01 | VERA | STREITENBERGER | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-26 | 16/RUC01=$7,333.11 | 0 | 2017-07-14 |  | 2017-07-17 | 2017-07-17 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628064 | S72012D, Z471, Z96642 | Presence of left artificial hip joint | ICD10 | 07242017 | 06262017 | 07142017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 06282017 | 2017-06-28T13:53:05+00:00 |  | 000000192-01 | PATRICIA | WILSON | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-26 | 17/RVC01=$6,306.19 | 0 | 2017-07-08 |  | 2017-07-12 | 2017-07-12 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628065 | I10, K219, M109, M549, M79604, W19XXXA | Unspecified fall, initial encounter | ICD10 | 07242017 | 06262017 | 07082017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 06302017 | 2017-06-30T09:07:09+00:00 |  | 000110821-01 | JEANNE | HAMMOND | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-28 | 17/RVC01=$6,306.19 | 0 | 2017-07-06 |  | 2017-07-13 | 2017-07-13 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630027 | M4326, N390 | Urinary tract infection, site not specified | ICD10 | 07242017 | 06282017 | 07062017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06302017 | 2017-06-30T10:39:42+00:00 |  | 000051265-01 | ELKE | LESTER | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-28 | 16/RUC01=$7,333.11 | 0 | 2017-07-13 |  | 2017-07-13 | 2017-07-13 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630036 | Z471, Z96652 | Presence of left artificial knee joint | ICD10 | 07242017 | 06282017 | 07132017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06302017 | 2017-06-30T14:04:33+00:00 |  | 000024843-01 | JANEEN | HUFF | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-29 | 16/RVC01=$3,539.19 | 9 | 2017-07-10 |  | 2017-07-21 | 2017-07-07 | 11 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630058 | J9600, R4182 | Altered mental status, unspecified | ICD10 | 07242017 | 06292017 | 07102017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 07032017 | 2017-07-03T09:46:20+00:00 |  | 000057562-01 | CHARLES | KENYON | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-29 | 16/LD201=$4,114.96 | 0 | 2017-07-05 |  | 2017-07-19 | 2017-07-19 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703017 | I951, R296, R531 | Weakness | ICD10 | 07242017 | 06292017 | 07052017 | LD201 | SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 07032017 | 2017-07-03T09:38:27+00:00 |  | 000087982-01 | Donna | Spangler | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 07242017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07012017 | 07042017 | Standard |  |  | 2017-07-01 | Contact/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-07-05 | 2017-07-11 | 2017-07-11 | 2017-07-11 | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703054 | S42474D, S72141D | Displ intertroch fx r femur, subs for clos fx w routn heal | ICD10 | 07242017 | 07012017 | 07052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 4 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 07032017 | 2017-07-03T12:25:31+00:00 |  | 000105544-01 | Sue | Fleming | GREENFIELD AREA MED CTR | 900949 | BERNARD K | OPPONG | 1184619041 | LONDON HEALTH & REHAB CENTER | 943587 | 1912387879 | LONDON HEALTH & REHAB CENTER | 1912387879 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LONDON HEALTH & REHAB CENTER | 07242017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 06302017 | 07122017 | Standard |  |  | 2017-06-30 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-07-13 |  | 2017-07-17 | 2017-07-17 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703089 | S32475D | Nondisp fx of med wall of l acetab, subs for fx w routn heal | ICD10 | 07242017 | 06302017 | 07132017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 07032017 | 2017-07-03T12:31:21+00:00 |  | 000081074-01 | Virginia | Hudson | LONDON FAMILY MED INC | 937382 | STEVEN G | RICHARDSON | 1629030838 | LONDON HEALTH & REHAB CENTER | 943587 | 1912387879 | LONDON HEALTH & REHAB CENTER | 1912387879 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LONDON HEALTH & REHAB CENTER | 07242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 06302017 | 07132017 | Standard |  |  | 2017-06-30 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-07-14 |  | 2017-07-17 | 2017-07-17 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703093 | S42191D | Fx oth prt scapula, r shoulder, subs for fx w routn heal | ICD10 | 07242017 | 06302017 | 07142017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 07032017 | 2017-07-03T12:18:34+00:00 |  | 000083903-01 | Gloria | Lowe | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 07242017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07012017 | 07052017 | Standard |  |  | 2017-07-01 | Swing Bed Daily Rate | 0 | 2017-07-06 |  |  | 2017-07-05 | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703103 | Z471 | Aftercare following joint replacement surgery | ICD10 | 07242017 | 07012017 | 07062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
| 07032017 | 2017-07-03T14:29:08+00:00 |  | 000043637-01 | WENDLE | SMITH | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-07-02 | 17/RUC01=$6,049.81 | 1 | 2017-07-14 |  | 2017-07-14 | 2017-07-14 | 12 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703117 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 07242017 | 07022017 | 07142017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 07032017 | 2017-07-03T17:04:02+00:00 |  | 000038400-01 | DAVID | KNOPP | WEST JEFFERSON FAM PRCT | 936655 | MARK W | GARWOOD | 1275595274 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-29 | 17/RVC01=$6,306.19 | 2 | 2017-07-08 |  | 2017-07-14 | 2017-07-14 | 9 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705022 | N179 | Acute kidney failure, unspecified | ICD10 | 07242017 | 06292017 | 07082017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07032017 | 2017-07-03T17:06:06+00:00 |  | 000065527-01 | FREDA | CRAIG | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07012017 | 07072017 | Standard |  |  | 2017-07-01 | Contact/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-07-08 |  | 2017-07-12 | 2017-07-12 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705024 | I2699, M6281 | Muscle weakness (generalized) | ICD10 | 07242017 | 07012017 | 07082017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 07032017 | 2017-07-03T17:24:33+00:00 |  | 000104381-01 | Georgia | Tolliver | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-06-30 | 17/RHB01=$3,699.42 | 0 | 2017-07-17 |  | 2017-07-19 | 2017-07-19 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705025 | J189, S3210XD | Unsp fracture of sacrum, subs for fx w routn heal | ICD10 | 07242017 | 06302017 | 07172017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 07052017 | 2017-07-05T15:35:09+00:00 |  | 000078102-01 | Charles | Young | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 07242017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07032017 | 07182017 | Standard |  |  | 2017-07-03 | 17/RVB01=$5411.86 | 0 | 2017-07-19 |  | 2017-07-21 | 2017-07-21 | 16 | 16 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706005 | M86172 | Other acute osteomyelitis, left ankle and foot | ICD10 | 07242017 | 07032017 | 07192017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 07052017 | 2017-07-05T18:03:11+00:00 |  | 000084135-01 | Mabel | Rhinehart | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | CAMBRIDGE HEALTHCARE AND | 930700 | 1053662429 | ASTORIA PLACE OF CAMBRIDGE | 1053662429 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF CAMBRIDGE | 07242017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07032017 | 07172017 | Standard |  |  | 2017-07-03 | 16/RVB01=$3350.20 | 0 | 2017-07-18 |  | 2017-07-20 | 2017-07-20 | 15 | 15 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706024 | K222, M6281 | Muscle weakness (generalized) | ICD10 | 07242017 | 07032017 | 07182017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 07062017 | 2017-07-06T12:38:14+00:00 |  | 000106575-01 | Doris | Norrish | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 07242017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 07052017 | 07142017 | Standard |  |  | 2017-07-05 | Contact/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-07-15 |  | 2017-07-17 | 2017-07-17 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706085 | Z96652 | Presence of left artificial knee joint | ICD10 | 07242017 | 07052017 | 07152017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 07062017 | 2017-07-06T15:10:55+00:00 |  | 000017782-01 | DONNA | HANDLEY | FIRST COMMUNITY VILLAGE | 939347 |  | FIRST COMMUNITY VILLAGE | 1457334476 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-07-05 | 17/RUB01=$5,813.99 | 0 | 2017-07-12 |  | 2017-07-20 | 2017-07-20 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706102 | M6281, N390, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 07242017 | 07052017 | 07122017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 07072017 | 2017-07-07T13:14:01+00:00 |  | 000082467-01 | John | Rowley | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-07-06 | 17/PC101=$2,465.35 | 0 | 2017-07-07 |  | 2017-07-19 | 2017-07-19 | 1 | 1 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707056 | R296 | Repeated falls | ICD10 | 07242017 | 07062017 | 07072017 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 07072017 | 2017-07-07T15:54:09+00:00 |  | 000051158-01 | PALESTINE | MOORE | COPC CENTRAL OHIO PRIMAR | 904883 | NILESH V | VARMA | 1558303545 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-07-06 | 17/RVC01=$6,306.19 | 0 | 2017-07-14 |  | 2017-07-21 | 2017-07-21 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707076 | S72092D | Oth fx head/neck of l femur, subs for clos fx w routn heal | ICD10 | 07242017 | 07062017 | 07142017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07102017 | 2017-07-10T11:29:56+00:00 |  | 000037062-01 | RUBY | UNGER | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-07-07 | 17/RUB01=$5,813.99 | 0 | 2017-07-16 |  | 2017-07-19 | 2017-07-19 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710098 | R5381 | Other malaise | ICD10 | 07242017 | 07072017 | 07162017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07102017 | 2017-07-10T12:24:30+00:00 |  | 000091970-01 | Jeffrey | Kimble | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 07242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07182017 | Standard |  |  | 2017-07-07 | 17/RVA01=$3586.28 | 0 | 2017-07-18 |  | 2017-07-21 | 2017-07-21 | 12 | 12 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710108 | L03115 | Cellulitis of right lower limb | ICD10 | 07242017 | 07072017 | 07192017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 07112017 | 2017-07-11T09:06:04+00:00 |  | 000051264-01 | DONNA | SAMS | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07312017 | Standard |  |  | 2017-07-08 | 16/RVB01=$3,350.20 | 0 | 2017-07-18 |  | 2017-07-21 | 2017-07-21 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711035 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 07242017 | 07082017 | 07182017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 07122017 | 2017-07-12T16:55:34+00:00 |  | 000010325-01 | JAUNITA | ROUSH | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 07242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07102017 | 07232017 | Standard |  |  | 2017-07-10 | 16/RMB01=$2232.29 | 73 | 2017-07-24 |  | 2017-07-24 | 2017-07-24 | 14 | 87 | 2232.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713027 | K625, S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 07242017 | 07102017 | 07242017 | RMB01 | MEDIUM REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 07172017 | 2017-07-17T16:24:19+00:00 |  | 000104147-01 | RAYMOND | SLASOR | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | CAMBRIDGE CARE & REHAB | 951200 | 1578003570 | CAMBRIDGE CARE & REHAB | 1578003570 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CAMBRIDGE CARE & REHAB | 07242017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07142017 | 07202017 | Standard |  |  | 2017-07-14 | 7 nonskilled days @ $200.00= $1400.00 | 0 | 2017-07-21 |  |  |  | 7 | 7 | 1400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717124 | F0391, I5040, M6281, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 07242017 | 07142017 | 07212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved | 7 | Revenue | RV |  |  |  | 7.0 |
| 07182017 | 2017-07-18T15:54:09+00:00 |  | 000084140-01 | Alfred | Perry | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | CAMBRIDGE HLTH & REHABILITATION CTR | 931795 | 1114344868 | CAMBRIDGE HLTH & REHABILITATION CTR | 1114344868 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CAMBRIDGE HLTH & REHABILITATION CTR | 07242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07172017 | 07212017 | Standard |  |  | 2017-07-17 | 5 nonskilled day @ $200.00= $1000.00 | 0 | 2017-07-21 |  |  |  | 5 | 5 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719026 | C189, E119, I509, J449, R339, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 07242017 | 07172017 | 07222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
| 05262017 | 2017-05-26T12:10:08+00:00 |  | 000006405-01 | HAROLD | CLASE | HARDING MEM HLTHCARE | 900889 | GHULAM | IDREES | 1447218292 | HEARTLAND OF MARION | 905550 | 1396787818 | HEARTLAND OF MARION | 1396787818 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARION | 07242017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 07242017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170526061 | N490 | Inflammatory disorders of seminal vesicle | ICD10 | 07242017 | 05242017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
