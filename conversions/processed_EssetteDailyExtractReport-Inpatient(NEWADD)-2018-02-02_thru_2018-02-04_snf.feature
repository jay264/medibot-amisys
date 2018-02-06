Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-02_thru_2018-02-04_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-02_thru_2018-02-04_SNF
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
| 01192018 | 2018-01-19T14:39:06+00:00 |  | 000029254-01 | ERNEST | PRESTON | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01162018 | 01202018 | Standard |  |  | 2018-01-16 | 17/RVB01=$5,411.86 | 0 | 2018-01-20 |  | 2018-01-31 | 2018-01-31 | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119079 | E119, I4891, J441, R296 | Repeated falls | ICD10 | 02022018 | 01162018 | 01202018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 01082018 | 2018-01-08T09:00:34+00:00 |  | 000117550-01 | Dorothy | Leng | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 02022018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01032018 | 01232018 | Standard |  |  | 2018-01-03 | 17/RUB01= $5813.99 | 0 | 2018-01-23 |  | 2018-02-02 | 2018-02-02 | 20 | 20 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108077 | S52531A | Colles' fracture of right radius, init for clos fx | ICD10 | 02022018 | 01032018 | 01232018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 01082018 | 2018-01-08T15:33:22+00:00 |  | 000039181-01 | KENNETH | SIDERS | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 02022018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01052018 | 01242018 | Standard |  |  | 2018-01-05 | 17/RVA01= $3586.28 | 9 | 2018-01-24 |  | 2018-02-02 | 2018-02-02 | 19 | 28 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109033 | M6281 | Muscle weakness (generalized) | ICD10 | 02022018 | 01052018 | 01242018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01122018 | 2018-01-12T13:23:51+00:00 |  | 000013200-01 | JEAN | DEVER | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01262018 | Standard |  |  | 2018-01-11 | Contract/RUG: 16/RUL (Per MDS) = $5,317.57 | 0 | 2018-01-26 |  | 2018-02-01 | 2018-02-01 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112076 | J09X2 | Flu due to ident novel influenza A virus w oth resp manifest | ICD10 | 02022018 | 01112018 | 01262018 | RUL01 | ULTRA HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA O | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12282017 | 2017-12-28T16:04:33+00:00 |  | 000039332-01 | JOANN | COX | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02092018 | Standard |  |  | 2017-12-16 | 17/RVB01=$5,411.86 | 0 | 2018-01-02 |  | 2018-01-22 |  | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229004 | C3490, J189, N183, R112 | Nausea with vomiting, unspecified | ICD10 | 02022018 | 12162017 | 01022018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 01022018 | 2018-01-02T11:50:31+00:00 |  | 000037670-01 | JOHN | CRAWFORD | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12302017 | 01192018 | Standard |  |  | 2017-12-30 | 17/RUC01=-$6,049.81 | 0 | 2018-01-19 |  | 2018-02-01 |  | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102094 | E871, R600 | Localized edema | ICD10 | 02022018 | 12302017 | 01192018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 01092018 | 2018-01-09T09:35:39+00:00 |  | 000116002-01 | HOWARD | FRY | MEDICAL & SURG ASSOC INC | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02092018 | Standard |  |  | 2018-01-06 | 17/RUB01= $5813.99 | 0 | 2018-01-26 |  | 2018-02-01 | 2018-02-01 | 20 | 20 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109126 | I82409 | Acute embolism and thombos unsp deep vn unsp lower extremity | ICD10 | 02022018 | 01062018 | 01262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 8 | Revenue | RV |  |  |  | 20.0 |
| 01242018 | 2018-01-24T11:43:16+00:00 |  | 000083204-01 | Loretta | Banker | COLS INPATIENT CARE INC | 919184 | ASHITA | SINHA | 1821110693 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 01222018 | Standard |  |  | 2018-01-19 | PER DIEM RATE OF $250.00/DAY X 3 DAYS=$750.00 | 0 | 2018-01-22 |  |  |  | 3 | 3 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124054 | G8250 | Quadriplegia, unspecified | ICD10 | 02022018 | 01192018 | 01232018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 750 | 750 | Approved Skilled | 4 | Revenue | RV |  |  |  | 3.0 |
| 12212017 | 2017-12-21T15:59:28+00:00 |  | 000050876-01 | DONALD | COCHRAN | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02022018 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 12192017 | 12242017 | Standard |  |  | 2017-12-19 | 17/CC101= $3231.84 | 0 | 2017-12-24 |  | 2018-02-02 |  | 5 | 5 | 3231.84 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222002 | C9102 | Acute lymphoblastic leukemia, in relapse | ICD10 | 02022018 | 12192017 | 12242017 | CC101 | CLINICALLY COMPLEX , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 12262017 | 2017-12-26T09:11:27+00:00 |  | 000020670-01 | ALSTINE | HYDE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12212017 | 01132018 | Standard |  |  | 2017-12-21 | 17/RVC01= $6306.19 | 11 | 2017-12-13 |  | 2018-02-02 | 2018-02-02 | 23 | 34 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226065 | M6282 | Rhabdomyolysis | ICD10 | 02022018 | 12212017 | 01132018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 12282017 | 2017-12-28T15:24:42+00:00 |  | 000009293-01 | ANNALEE | GUTHRIE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12262017 | 01112018 | Standard |  |  | 2017-12-26 | 17/RVB01= $5411.86 | 0 | 2018-01-11 | 2018-02-02 | 2018-02-02 | 2018-02-02 | 16 | 16 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229001 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02022018 | 12262017 | 01112018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 01022018 | 2018-01-02T13:59:59+00:00 |  | 000085381-01 | MUHAMMAD | MALLIK | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12312017 | 01302018 | Standard |  |  | 2017-12-31 | 17/RVC01= $6306.19 10 DAYS @ $250.00= $2500.00 TOTAL: $8806.19 | 0 | 2018-01-30 |  | 2018-02-02 | 2018-02-02 | 30 | 30 | 8806.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103024 | N390 | Urinary tract infection, site not specified | ICD10 | 02022018 | 12312017 | 01302018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8806 | 8806 | Approved | 31 | Revenue | RV |  |  |  | 3.0 |
| 01042018 | 2018-01-04T11:30:25+00:00 |  | 000117926-01 | Lily | Smith | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02022018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01022018 | 01262018 | Standard |  |  | 2018-01-02 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X 4 DAYS=$800.00 TOTAL FACILITY PAYMENT=$6,211.86 | 31 | 2018-01-26 |  | 2018-01-31 | 2018-01-31 | 24 | 55 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104096 | G9341, J09X1, M6281, R1311 | Dysphagia, oral phase | ICD10 | 02022018 | 01022018 | 01262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6211 | 6211 | Approved Skilled | 25 | Revenue | RV |  |  |  | 4.0 |
| 01052018 | 2018-01-05T09:22:01+00:00 |  | 000113220-01 | Michael | Stacey | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02022018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01032018 | 01132018 | Standard |  |  | 2018-01-03 | 17/RMC01= $3027.33 | 2 | 2018-01-13 |  | 2018-02-02 |  | 10 | 12 | 3027.33 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105040 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02022018 | 01032018 | 01132018 | RMC01 | MEDIUM REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01082018 | 2018-01-08T15:19:32+00:00 |  | 000100910-01 | David | Swafford | DR HAROLD ALLEN FURGUSON | 911551 | H A | FERGUSON JR | 1659312205 | NEW LEBANON CARE & REHAB | 907212 | 1699881441 | NEW LEBANON CARE & REHAB CENTER | 1699881441 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEBANON CARE & REHAB CENTER | 02022018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01062018 | 01132018 | Standard |  |  | 2018-01-06 | 17/RVB01= $5411.86 | 0 | 2018-01-13 |  | 2018-02-02 |  | 7 | 7 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109028 | R296, R531 | Weakness | ICD10 | 02022018 | 01062018 | 02132018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 01092018 | 2018-01-09T16:48:31+00:00 |  | 000111678-01 | Sandra | Brown | AHMED, IMTIAZ | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01082018 | 01272018 | Standard |  |  | 2018-01-08 | Contract/RUG:17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-27 |  | 2018-02-02 | 2018-02-02 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110041 | J153 | Pneumonia due to streptococcus, group B | ICD10 | 02022018 | 01082018 | 01272018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01102018 | 2018-01-10T12:01:20+00:00 |  | 000001470-01 | JOHN | BRIGHT | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01092018 | 01292018 | Standard |  |  | 2018-01-09 | Per MDS: 16/RUB01 = $4429.71 | 0 | 2018-01-29 | 2018-02-02 | 2018-02-02 | 2018-02-02 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110072 | J189, J441, R55, S2241XS, S52501S, Z9181 | History of falling | ICD10 | 02022018 | 01092018 | 01292018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01122018 | 2018-01-12T10:58:36+00:00 |  | 000097232-01 | Gladys | Huffman | HERITAGESPRING HEALTH CA | 929666 | GALINA | KRAYTERMAN | 1235253378 | OTTERBEIN BATAVIA LLC | 952745 | 1598131476 | OTTERBEIN UNION TOWNSHIP | 1598131476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN UNION TOWNSHIP | 02022018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01232018 | Standard |  |  | 2018-01-11 | 17/RUC01= $6049.81 | 0 | 2018-01-23 |  | 2018-02-02 |  | 12 | 12 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112041 | I959 | Hypotension, unspecified | ICD10 | 02022018 | 01112018 | 01232018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01182018 | 2018-01-18T11:35:38+00:00 |  | 000060510-01 | JOANN | MARCZIKA | CEN OHIO GERIATRICS LLC | 922619 | AMIT R | BHOJRAJ | 1942440276 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 02022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01162018 | 01302018 | Standard |  |  | 2018-01-16 | 17/RVL01= $4874.23 | 0 | 2018-01-30 |  | 2018-02-02 | 2018-02-02 | 14 | 14 | 4874.23 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118059 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02022018 | 01162018 | 01302018 | RVL01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA OR | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01192018 | 2018-01-19T13:25:22+00:00 |  | 000055120-01 | RICHARD | SLAGLE | CEN OHIO GERIATRICS LLC | 922619 | AMIT R | BHOJRAJ | 1942440276 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 02022018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01172018 | 01302018 | Standard |  |  | 2018-01-17 | 17/RVA01= $3586.28 | 0 | 2018-01-30 |  | 2018-02-02 | 2018-02-02 | 13 | 13 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119063 | I160 | HYPERTENSIVE URGENCY | ICD10 | 02022018 | 01172018 | 01302018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01292018 | 2018-01-29T08:58:42+00:00 |  | 000109165-01 | Bonnie | Gibson | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 02022018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01262018 | 02022018 | Standard |  |  | 2018-01-26 | 16/LE201= $4231.60 | 19 | 2018-02-02 |  | 2018-02-02 | 2018-02-02 | 7 | 26 | 4231.6 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129069 | G9341, I10 | Essential (primary) hypertension | ICD10 | 02022018 | 01262018 | 02022018 | LE201 | SPECIAL CARE LOW , ADL INDEX 15-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
