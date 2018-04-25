Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-18_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-18_SNF
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
| 01082018 | 2018-01-08T10:01:31+00:00 |  | 000043578-01 | DEBORAH | NUNGESTER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 03182018 | Standard |  |  | 2018-01-04 | 17/RVX01=$6171.24 PER DIEM RATE OF $200.00/DAY=$9,600.00 TOTAL PAYMENT TO FACILITY=$15,771.24 | 23 | 2018-03-18 |  | 2018-04-16 | 2018-04-16 | 68 | 91 | 15771.24 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108082 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 04182018 | 01042018 | 03182018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 74 | Revenue | RV |  |  |  | 5.0 |
| 01302018 | 2018-01-30T10:36:13+00:00 |  | 000032105-01 | Anna | Young | AMERICAN HLTH NETWORK OF | 904794 | JAMES G | FITKIN | 1295846673 | GUARDIAN ELDER CARE OF COLS | 923938 | 1386994671 | GUARDIAN ELDER CARE OF COLS | 1386994671 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GUARDIAN ELDER CARE OF COLS | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01242018 | 04132018 | Standard |  |  | 2018-01-24 | RUC01=$6,049.81 PER DIEM RATE OF $250.00/DAY X 59 DAYS=$14,750.00 TOTAL PAYMENT TO FACILITY=$20,799.81 | 0 | 2018-04-13 |  | 2018-04-13 | 2018-04-13 | 79 | 79 | 20799.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130086 | S42341S | Displaced spiral fx shaft of humerus, right arm, sequela | ICD10 | 04182018 | 01242018 | 04132018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 80 | Revenue | RV |  |  |  | 3.0 |
| 02152018 | 2018-02-15T06:47:30+00:00 |  | 000034789-01 | LAWRENCE | DOWDEN | BERGER HEALTH PARTNERS | 913727 | KEVIN M | SELLERS | 1306085220 | LOGAN ELM HLTH CARE CTR | 904042 | 1326022898 | LOGAN ELM HEALTH CARE CENTER | 1326022898 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LOGAN ELM HEALTH CARE CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02132018 | 04132018 | Standard |  |  | 2018-02-13 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 33 days = $6600.00 Per Diem: $250.00/day x 6 days = $1500.00 TOTAL PAYMENT = $15,433.11 | 0 | 2018-04-13 |  | 2018-04-16 | 2018-04-16 | 59 | 59 | 15433.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215004 | S72042S | Displaced fracture of base of neck of left femur, sequela | ICD10 | 04182018 | 02132018 | 04132018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 60 | Revenue | RV |  |  |  | 4.0 |
| 03052018 | 2018-03-05T11:59:56+00:00 |  | 000064964-01 | LOIS | LEFFLER | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03012018 | 04152018 | Standard |  |  | 2018-03-01 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $200.00/dy x 25 days = $5000.00 TOTAL PAYMENT = $10,813.99 | 0 | 2018-04-15 | 2018-03-29 | 2018-04-16 | 2018-04-16 | 45 | 45 | 10813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305114 | Z5189, Z9049 | Acquired absence of other specified parts of digestive tract | ICD10 | 04182018 | 03012018 | 04152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 7.0 |
| 03152018 | 2018-03-15T16:59:18+00:00 |  | 000007279-01 | HENRY | WALTER | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03142018 | 04152018 | Standard |  |  | 2018-03-14 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 12 days = $2400.00 TOTAL PAYMENT = $9733.11 | 0 | 2018-04-15 | 2018-04-12 | 2018-04-17 | 2018-04-17 | 32 | 32 | 9733.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316001 | I10, K219, M25559, R2681, R531, Z7901, Z9181 | History of falling | ICD10 | 04182018 | 03142018 | 04152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9733 | 9733 | Approved | 33 | Revenue | RV |  |  |  | 5.0 |
| 03282018 | 2018-03-28T16:04:25+00:00 |  | 000065207-01 | HAZEL | CURTIS | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD GARDENS REHABI | 949221 | 1235684309 | COUNTRY LANE GARDENS REHABILITATION | 1235684309 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY LANE GARDENS REHABILITATION | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03272018 | 04162018 | Standard |  |  | 2018-03-27 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-04-16 |  | 2018-04-17 | 2018-04-16 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329007 | R6889 | Other general symptoms and signs | ICD10 | 04182018 | 03272018 | 04162018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04032018 | 2018-04-03T13:07:18+00:00 |  | 000061057-01 | RUTH | WARTH | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03282018 | 04112018 | Standard |  |  | 2018-03-28 | 17/rma01= $2477.40 | 0 | 2018-04-11 |  | 2018-04-17 |  | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403094 | D649, D72829, E119, E785, E871, I10, I5030, N185, N390, R6889, Z942 | Lung transplant status | ICD10 | 04182018 | 03282018 | 04112018 | RMA01 | MEDIUM REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 15 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 03202018 | 2018-03-20T14:43:45+00:00 |  | 000008170-01 | JAMES | HENDERSON | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03172018 | 04052018 | Standard |  |  | 2018-03-17 | 17/RUC01=$6,049.81 | 0 | 2018-04-05 |  | 2018-04-18 |  | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321013 | F0280 | Dementia in oth diseases classd elswhr w/o behavrl disturb | ICD10 | 04182018 | 03172018 | 04052018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 03262018 | 2018-03-26T10:31:16+00:00 |  | 000002338-01 | BETTY | YOUNG | CIRCLEVILLE CENTER | 935078 | VERNON G | BOLENDER | 1255322814 | LOGAN ELM HLTH CARE CTR | 904042 | 1326022898 | LOGAN ELM HEALTH CARE CENTER | 1326022898 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LOGAN ELM HEALTH CARE CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03212018 | 04132018 | Standard |  |  | 2018-03-21 | Per MDS: 16/RUA01 = $3214.76 | 0 | 2018-04-13 | 2018-04-11 | 2018-04-16 | 2018-04-16 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326073 | I10 | Essential (primary) hypertension | ICD10 | 04182018 | 03212018 | 04132018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 03262018 | 2018-03-26T10:36:41+00:00 |  | 000037155-01 | DOROTHY | GREEN | BERGER HEALTH PARTNERS | 913727 | KEVIN M | SELLERS | 1306085220 | LOGAN ELM HLTH CARE CTR | 904042 | 1326022898 | LOGAN ELM HEALTH CARE CENTER | 1326022898 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LOGAN ELM HEALTH CARE CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03212018 | 04032018 | Standard |  |  | 2018-03-21 | Per MDS: 16/RVB01 = $3350.20 | 0 | 2018-04-03 |  | 2018-04-16 | 2018-04-16 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326075 | A419, G9340, J9601 | Acute respiratory failure with hypoxia | ICD10 | 04182018 | 03212018 | 04032018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 03262018 | 2018-03-26T16:11:21+00:00 |  | 000102675-01 | Carol | Adams | WEST JEFFERSON FAM PRCT | 936655 | MARK W | GARWOOD | 1275595274 | LONDON HEALTH & REHAB CENTER | 943587 | 1912387879 | LONDON HEALTH & REHAB CENTER | 1912387879 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LONDON HEALTH & REHAB CENTER | 04182018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03232018 | 04052018 | Standard |  |  | 2018-03-23 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-04-05 |  | 2018-04-18 |  | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327064 | K7460 | Unspecified cirrhosis of liver | ICD10 | 04182018 | 03232018 | 04052018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 04042018 | 2018-04-04T09:59:30+00:00 |  | 000072311-01 | Lee | Young | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 04182018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03282018 | 03312018 | Standard |  |  | 2018-03-28 | 3 DAYS @ $200.00= $600.00 | 0 | 2018-03-31 |  |  |  | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404027 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 04182018 | 03282018 | 03312018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 04112018 | 2018-04-11T15:18:51+00:00 |  | 000049143-01 | BARBARA | GANTNER | CARROLL, FREDERICK C | 900430 | FREDERICK C | CARROLL | 1962431957 | THE LAURELS OF MT VERNON | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04102018 | 04172018 | Standard |  |  | 2018-04-10 | 17/RVA01= $3586.28 | 0 | 2018-04-17 |  | 2018-04-18 | 2018-04-18 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411101 | J440 | Chronic obstructive pulmon disease w acute lower resp infct | ICD10 | 04182018 | 04102018 | 04172018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 04172018 | 2018-04-17T12:16:48+00:00 |  | 000031682-01 | WILLIAM | BOWLING | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03302018 | 04142018 | Standard |  |  | 2018-03-30 | 17/RUB01= $5813.99 | 1 | 2018-04-14 |  | 2018-04-17 |  | 15 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417091 | I10, I2510, I639, J45909, M1990, N400, Z48812, E7800 | PURE HYPERCHOLESTEROLEMIA, UNSPECIFIED | ICD10 | 04182018 | 03302018 | 04142018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 03262018 | 2018-03-26T17:07:51+00:00 |  | 000112712-01 | Shirley | Stacey | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 04182018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03232018 | 04052018 | Standard |  |  | 2018-03-23 | 17/RVB01=$5,411.86 | 0 | 2018-04-05 |  | 2018-04-16 | 2018-04-16 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327077 | Z432, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 04182018 | 03232018 | 04052018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 03282018 | 2018-03-28T09:13:04+00:00 |  | 000032161-01 | RICHARD | VANORDER | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 04182018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 03262018 | 04102018 | Standard |  |  | 2018-03-26 | 17/RUC01=$ 6,049.81 | 0 | 2018-04-10 |  | 2018-04-13 | 2018-04-13 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328044 | J9811 | Atelectasis | ICD10 | 04182018 | 03262018 | 04102018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 03282018 | 2018-03-28T16:52:09+00:00 |  | 000029099-01 | Priscilla | Cox | HEARTLAND OF UPTOWN WEST | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03262018 | 04012018 | Standard |  |  | 2018-03-26 | UNSKILLED RATE OF $200.00/DAY X 6 DAYS=$1,200.00 | 0 | 2018-04-01 |  | 2018-04-14 | 2018-04-14 | 6 | 6 | 1200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329022 | I63531 | Cereb infrc d/t unsp occls or stenos of right post cereb art | ICD10 | 04182018 | 03262018 | 04012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved Skilled | 7 | Revenue | RV |  |  |  | 2.0 |
| 03292018 | 2018-03-29T11:04:47+00:00 |  | 000037112-01 | LESLEY | MERRICK | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 04182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03272018 | 04132018 | Standard |  |  | 2018-03-27 | 17/RUB01=$5,813.99 | 0 | 2018-04-13 |  | 2018-04-16 | 2018-04-16 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329052 | D509, N281, Z5189 | Encounter for other specified aftercare | ICD10 | 04182018 | 03272018 | 04132018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 8.0 |
