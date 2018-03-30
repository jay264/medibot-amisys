Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-29_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-29_SNF
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
	And the test pauses for "5" seconds
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
| 02052018 | 2018-02-05T12:59:16+00:00 |  | 000086889-01 | Clifford | Shorkey | MERITAS MEDICAL INC | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 03292018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 02022018 | 03222018 | Standard |  |  | 2018-02-02 | 16/RVC01= $3539.19 28 DAYS @ $200.00= $5600.00 TOTAL: $9139.19 | 0 | 2018-03-22 |  | 2018-03-23 | 2018-03-23 | 48 | 48 | 9139.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205086 | S72135S | Nondisplaced apophyseal fracture of left femur, sequela | ICD10 | 03292018 | 02022018 | 03222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9139 | 9139 | Approved | 49 | Revenue | RV |  |  |  | 3.0 |
| 01162018 | 2018-01-16T11:08:29+00:00 |  | 000101004-01 | Charles | George | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 03292018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01122018 | 03102018 | Standard |  |  | 2018-01-12 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 26 days = $6500.00 Per Diem: $200.00/day x 11 days = $2200.00 TOTAL PAYMENT = $14,111.86 | 0 | 2018-03-10 | 2018-03-29 | 2018-03-29 | 2018-03-29 | 57 | 57 | 14111.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116062 | Z4789, Z5189 | Encounter for other specified aftercare | ICD10 | 03292018 | 01122018 | 03102018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 58 | Revenue | RV |  |  |  | 2.0 |
| 01182018 | 2018-01-18T15:25:28+00:00 |  | 000046176-01 | KRISTY | BURKHAMMER | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 03292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01162018 | 03262018 | Standard |  |  | 2018-01-16 | 17/RUB01=$5,813.99 PER DIEM RATE OF $250.00/DAY X 10 DAYS=$2,500.00 PER DIEM RATE OF $200.00/DAY X 36 DAYS=$7,200.00 TOTAL PAYMENT TO FACILITY=$15,513.99 | 0 | 2018-03-26 |  | 2018-03-27 | 2018-03-26 | 66 | 66 | 15513.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118082 | E8779, J09X2, J9601, N186, Z992 | Dependence on renal dialysis | ICD10 | 03292018 | 01162018 | 03262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 70 | Revenue | RV |  |  |  | 5.0 |
| 01192018 | 2018-01-19T14:33:20+00:00 |  | 000026007-01 | WARREN | GIFFORD | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01162018 | 03172018 | Standard |  |  | 2018-01-16 | 17/RUL01=$5,317.57 PER DIEM RATE OF $200.0/DAY X 36 DAYS=$7,200.00 TOTAL PAYMENT TO FACILITY=$12,517.57 | 0 | 2018-03-17 |  | 2018-03-29 | 2018-03-29 | 56 | 56 | 12517.57 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119071 | E119, I4891, J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 03292018 | 01162018 | 03172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 61 | Revenue | RV |  |  |  | 4.0 |
| 01302018 | 2018-01-30T09:43:28+00:00 |  | 000072375-01 | Robert | Hankey Jr | COLS INPATIENT CARE INC | 919184 | ASHITA | SINHA | 1821110693 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 03072018 | Standard |  |  | 2018-01-26 | 17/RUC01=$6,049.81 PER DIEM RATE OF $200.00/DAY X 20 DAYS=$4,000.00 TOTAL PAYMENT TO FACILITY=$10,049.81 | 0 | 2018-03-07 | 2018-03-29 | 2018-03-29 | 2018-03-29 | 40 | 40 | 10049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130070 | I509, M6281, R5382 | Chronic fatigue, unspecified | ICD10 | 03292018 | 01262018 | 03072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 41 | Revenue | RV |  |  |  | 6.0 |
| 02262018 | 2018-02-26T12:28:36+00:00 |  | 000015182-01 | EUGENE | WHITE | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 03292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02222018 | 03232018 | Standard |  |  | 2018-02-22 | 17/RVC01= $6306.19 9 DAYS @ $200.00= $1800.00 TOTAL: $8106.19 | 0 | 2018-03-23 |  | 2018-03-29 | 2018-03-29 | 29 | 29 | 8106.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226076 | S52502A | Unsp fracture of the lower end of left radius, init | ICD10 | 03292018 | 02222018 | 03232018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8106 | 8106 | Approved | 30 | Revenue | RV |  |  |  | 2.0 |
| 02282018 | 2018-02-28T13:26:12+00:00 |  | 000014285-01 | JUANITA | NELSON | CLINICAL CARE CONSULTANT | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 03292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02262018 | 03272018 | Standard |  |  | 2018-03-26 | NO REQUEST RECEIVED TO EXTEND AFTER MEMBER'S LCD DAY OF 3/25/18= 28 PAID DAYS 17/RUC01=$6,049.81 PER DIEM RATE OF $250.00/DAY X 8 DAYS=$2,000.00 TOTAL PAYMENT TO FACILITY=$8,049.81 | 0 | 2018-03-27 |  | 2018-03-29 | 2018-03-29 | 28 | 29 | 8049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228058 | R296 | Repeated falls | ICD10 | 03292018 | 02262018 | 03272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8049 | 8049 | Approved Skilled | 30 | Revenue | RV |  |  |  | 8.0 |
| 03052018 | 2018-03-05T16:00:38+00:00 |  | 000090089-01 | Harold | Wilson | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD GARDENS REHABI | 949221 | 1235684309 | COUNTRY LANE GARDENS REHABILITATION | 1235684309 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY LANE GARDENS REHABILITATION | 03292018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03042018 | 03242018 | Standard |  |  | 2018-03-04 | PEr MDS: 17/RHA01 = $2812.08 | 0 | 2018-03-24 |  | 2018-03-29 | 2018-03-29 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306023 | F0280 | Dementia in oth diseases classd elswhr w/o behavrl disturb | ICD10 | 03292018 | 03042018 | 03242018 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 03052018 | 2018-03-05T16:46:26+00:00 |  | 000083102-01 | Susan | Graham | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 03292018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03052018 | 03102018 | Standard |  |  | 2018-03-05 | 16/CA101= $2698.63 | 0 | 2018-03-10 |  | 2018-03-29 | 2018-03-29 | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306039 | M4326, Z111 | Encounter for screening for respiratory tuberculosis | ICD10 | 03292018 | 03052018 | 03102018 | CA101 | CLINICALLY COMPLEX , ADL INDEX 0-1/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 03062018 | 2018-03-06T15:39:06+00:00 |  | 000100253-01 | James | Indiciani | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 03292018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03042018 | 03242018 | Standard |  |  | 2018-03-04 | 17/RVB01= $5411.86 | 20 | 2018-03-24 |  | 2018-03-29 | 2018-03-29 | 20 | 40 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306095 | J09X2 | Flu due to ident novel influenza A virus w oth resp manifest | ICD10 | 03292018 | 03042018 | 03242018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 03062018 | 2018-03-06T16:19:17+00:00 |  | 000094422-01 | Daniel | Cottrell | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 03292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03052018 | 03262018 | Standard |  |  | 2018-03-05 | 16/RUC01= $7333.11 1 DAY @ $200.00= $200.00 TOTAL: $7533.11 | 0 | 2018-03-26 |  | 2018-03-29 | 2018-03-29 | 21 | 21 | 7533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307001 | M84353A | Stress fracture, unspecified femur, init encntr for fracture | ICD10 | 03292018 | 03052018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T15:52:15+00:00 |  | 000066096-01 | ROBERT | KOCHER | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03072018 | 03272018 | Standard |  |  | 2018-03-07 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-03-27 |  | 2018-03-29 | 2018-03-29 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309075 | Z5189, Z4889 | Encounter for other specified surgical aftercare | ICD10 | 03292018 | 03072018 | 03272018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 03142018 | 2018-03-14T10:41:00+00:00 |  | 000003650-01 | RICHARD | HOPKINS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 03292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03122018 | 03212018 | Standard |  |  | 2018-03-12 | 17/RVA01= $3586.287 | 0 | 2018-03-21 |  | 2018-03-29 | 2018-03-29 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314024 | J189 | Pneumonia, unspecified organism | ICD10 | 03292018 | 03122018 | 03212018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
