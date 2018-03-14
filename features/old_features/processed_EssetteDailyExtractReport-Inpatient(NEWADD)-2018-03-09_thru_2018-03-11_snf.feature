Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-09_thru_2018-03-11_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-09_thru_2018-03-11_SNF
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
| 09182017 | 2017-09-18T10:54:55+00:00 |  | 000098655-01 | Barbara | Kolesar | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 03092018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 09152017 | 09222017 | Standard |  |  | 2017-09-15 | NON SKILLED RATE OF $200.00/DAY X 7 DAYS=$1,400.00 | 0 | 2017-09-22 |  | 2017-09-26 |  | 7 | 0 | 1400.0 | 170928130955.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170918066 | A419, M6281, R296 | Repeated falls | ICD10 | 03092018 | 09152017 | 09222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved Skilled | 8 | Revenue | RV |  |  |  | 7.0 |
| 02152018 | 2018-02-15T16:23:21+00:00 |  | 000085969-01 | Brynton | Gibson | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 03092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02132018 | 02252018 | Standard |  |  | 2018-02-13 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 19 | 2018-02-25 |  | 2018-03-08 |  | 12 | 31 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216004 | A0472 | A0472 | ICD10 | 03092018 | 02132018 | 02252018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 02232018 | 2018-02-23T17:10:02+00:00 |  | 000108972-01 | William | Wolfskill | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02222018 | 03092018 | Standard |  |  | 2018-02-22 | per MDS: 17/RUC01 = $6049.81 | 0 | 2018-03-09 |  | 2018-03-02 | 2018-03-09 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226019 | E119, G20, I509, J189, R0602 | Shortness of breath | ICD10 | 03092018 | 02222018 | 03092018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06292017 | 2017-06-29T13:16:09+00:00 |  | 000016092-01 | ANNE | LOWERY | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 03092018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 06262017 | 07102017 | Standard |  |  | 2017-06-26 | NON-SKILLED RATE OF $200.00/DAY (AUTHORIZED FOR 7 DAYS 6/26/17-7/2/17)=$1,400.00 | 0 | 2017-07-10 |  |  |  | 7 | 0 | 1400.0 | 170824124409.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170629073 | K51811 | Other ulcerative colitis with rectal bleeding | ICD10 | 03092018 | 06262017 | 07102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved Skilled | 15 | Revenue | RV |  |  |  | 7.0 |
| 07122017 | 2017-07-12T15:30:07+00:00 |  | 000001747-01 | NORMA | FINIGAN | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 03092018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 07112017 | 07162017 | Standard |  |  | 2017-07-11 | UNSKILLED RATE OF $200.00/DAY AUTHORIZED X 5 DAYS ONLY. DAYS COVERED: 7/11/17-7/15/17 TOTAL PAYMENT=$1000.00 | 0 | 2017-07-16 |  |  |  | 5 | 0 | 1000.0 | 170818123186.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170712076 | Z471, Z96641 | Presence of right artificial hip joint | ICD10 | 03092018 | 07112017 | 07162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Unskilled | 6 | Revenue | RV |  |  |  | 5.0 |
| 08042017 | 2017-08-04T09:36:29+00:00 |  | 000102003-01 | Hattie | McKinney | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 03092018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 08022017 | 08102017 | Standard |  |  | 2017-08-02 | UNSKILLED LEVEL OF CARE=$200.00/DAY X 8 DAYS TOTAL PAYMENT=$1,600.00 | 0 | 2017-08-10 |  |  |  | 8 | 0 | 1600.0 | 170914128008.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170804024 | Z4789, Z96651 | Presence of right artificial knee joint | ICD10 | 03092018 | 08022017 | 08102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved Skilled | 9 | Revenue | RV |  |  |  | 8.0 |
| 01122018 | 2018-01-12T14:30:04+00:00 |  | 000042530-01 | RONALD | SINES | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | SUMMITS TRACE HLTHCARE C | 908932 | 1588803985 | SUMMITS TRACE HEALTHCARE CENTER | 1588803985 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SUMMITS TRACE HEALTHCARE CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 03052018 | Standard |  |  | 2018-01-11 | 16/RUC01=$7,333.11 PER DIEM RATE OF $250.00/DAY X 21 DAYS=$5,250.00 PER DIEM RATE OF $200.00/DAY X 12 DAYS=$2,400.00 TOTAL PAYMENT=$14,983.11 | 0 | 2018-03-05 |  | 2018-03-08 |  | 53 | 53 | 14983.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112093 | G20, L89159, M1990, M6281, Z741 | Need for assistance with personal care | ICD10 | 03092018 | 01112018 | 03052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 54 | Revenue | RV |  |  |  | 5.0 |
| 01272018 | 2018-01-27T20:52:04+00:00 |  | 000020427-01 | LLOYD | BAKER | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 03092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01252018 | 02222018 | Standard |  |  | 2018-01-25 | 17/RUC01= $6049.81 8 DAYS @ $200.00= $1600.00 1 DAY @ $250.00= $250.00 TOTAL: $7899.81 | 0 | 2018-02-22 |  | 2018-03-09 | 2018-03-09 | 28 | 28 | 7899.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129063 | J189 | Pneumonia, unspecified organism | ICD10 | 03092018 | 01252018 | 02222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7899 | 7899 | Approved | 29 | Revenue | RV |  |  |  | 1.0 |
| 02112018 | 2018-02-11T19:50:31+00:00 |  | 000016802-01 | JOHN | ADELSBERGER | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 03092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082018 | 02172018 | Standard |  |  | 2018-02-08 | 17/RVA01= $3586.28 | 0 | 2018-02-17 |  | 2018-03-09 |  | 9 | 9 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212040 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 03092018 | 02082018 | 02272018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 02212018 | 2018-02-21T08:49:50+00:00 |  | 000052880-01 | MARY | BODEN | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02192018 | 03092018 | Standard |  |  | 2018-02-19 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-03-09 |  | 2018-03-01 | 2018-03-09 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221048 | E108, J449, N390 | Urinary tract infection, site not specified | ICD10 | 03092018 | 02192018 | 03092018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 02262018 | 2018-02-26T10:38:09+00:00 |  | 000005583-01 | DONALD | EWELL | COLS INPATIENT CARE INC | 910322 | BHAVESH P | PATEL | 1669632469 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 03092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02242018 | 03092018 | Standard |  |  | 2018-02-24 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-03-09 |  | 2018-03-09 | 2018-03-09 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226071 | R5381 | Other malaise | ICD10 | 03092018 | 02242018 | 03092018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 03022018 | 2018-03-02T10:17:02+00:00 |  | 000042333-01 | MARY | PLACE | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03012018 | 03072018 | Standard |  |  | 2018-03-01 | 16/HC101= $3481.78 | 10 | 2018-03-07 |  | 2018-03-09 | 2018-03-09 | 6 | 16 | 3481.78 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302019 | J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03092018 | 03012018 | 03072018 | HC101 | SPECIAL CARE HIGH , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 06262017 | 2017-06-26T14:13:26+00:00 |  | 000006396-01 | Stella | Pickrell | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 03092018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 06232017 | 06302017 | Standard |  |  | 2017-06-23 | non-skilled rate of $200.00/day x 7 days=$1,400.00 | 0 | 2017-06-30 |  |  |  | 7 | 0 | 1400.0 | 170810121490.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170626117 | M1711, R531, Z471 | Aftercare following joint replacement surgery | ICD10 | 03092018 | 06232017 | 06302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved Unskilled | 8 | Revenue | RV |  |  |  | 7.0 |
| 07032017 | 2017-07-03T14:23:30+00:00 |  | 000025030-01 | ADONNA | SMITH | CAPITOL MED ASSOC LLC | 901490 | ANURADHA | KESARI | 1740389352 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 03092018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 07012017 | 07082017 | Standard |  |  | 2017-07-01 | NON-SKILLED PER DIEM RATE OF $200.00/DAY X 7 DAYS=$1400.00 | 0 | 2017-07-08 |  |  |  | 7 | 0 | 1400.0 | 170831125820.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170703115 | Z4731 | Aftercare following explantation of shoulder jt prosthesis | ICD10 | 03092018 | 07012017 | 07082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved Unskilled | 8 | Revenue | RV |  |  |  | 7.0 |
| 09202017 | 2017-09-20T13:55:42+00:00 |  | 000074833-01 | Arthur | Arnett | FCMH MED & SURG ASSOC | 906134 | DAVID J | GUNDERMAN | 1508861246 | THE LAURELS OF HILLSBORO | 952248 | 1255387221 | THE LAURELS OF HILLSBORO | 1255387221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE LAURELS OF HILLSBORO | 03092018 | Denied Skilled - Pay Unskilled | MediGold Essential Care | Fax |  | Inpatient | 09192017 | 09252017 | Standard |  |  | 2017-09-19 | AUTHORIZED PAYMENT FOR NON-SKILLED STAY= $200.00/DAY X 5 DAYS TOTAL PAYMENT=$1,000.00 | 0 | 2017-09-25 |  |  |  | 5 | 0 | 1000.0 | 171002131649.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170920102 | M6281 | Muscle weakness (generalized) | ICD10 | 03092018 | 09192017 | 09252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved Unskilled | 7 | Revenue | RV |  |  |  | 1.0 |
| 02122018 | 2018-02-12T12:48:19+00:00 |  | 000087933-01 | Diane | Bereczky | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 03092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02102018 | 03022018 | Standard |  |  | 2018-02-10 | Contract/RUG:17/RVB (Per MDS) = $5,411.86 | 0 | 2018-03-02 |  | 2018-03-08 |  | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212103 | R2681, Z471 | Aftercare following joint replacement surgery | ICD10 | 03092018 | 02102018 | 03022018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02192018 | 2018-02-19T16:15:28+00:00 |  | 000116889-01 | ROBERT | MORELAND | RUKSENAS, AUDRIUS | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND AT CARECORE | 952605 | 1417470527 | WESTMORELAND AT CARECORE LLC | 1417470527 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND AT CARECORE LLC | 03092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02162018 | 03082018 | Standard |  |  | 2018-02-16 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2018-03-08 | 2018-03-08 | 2018-03-08 | 2018-03-08 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220038 | Z4781, Z89512 | Acquired absence of left leg below knee | ICD10 | 03092018 | 02162018 | 03082018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02272018 | 2018-02-27T16:40:48+00:00 |  | 000036889-01 | MARVIN | WISECUP | RUKSENAS, AUDRIUS | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND AT CARECORE | 952605 | 1417470527 | WESTMORELAND AT CARECORE LLC | 1417470527 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND AT CARECORE LLC | 03092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02192018 | 03062018 | Standard |  |  | 2018-02-19 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 13 | 2018-03-06 | 2018-03-08 | 2018-03-08 | 2018-03-08 | 15 | 28 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228004 | Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 03092018 | 02192018 | 03062018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 02282018 | 2018-02-28T15:29:33+00:00 |  | 000038056-01 | EMIL | HILES | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 03092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02262018 | 02272018 | Standard |  |  | 2018-02-26 | 1 DAY @ $200.00 | 0 | 2018-02-27 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228085 | C649 | Malignant neoplasm of unsp kidney, except renal pelvis | ICD10 | 03092018 | 02262018 | 02272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 02282018 | 2018-02-28T17:30:40+00:00 |  | 000095958-01 | Ronald | Cahoone | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 03092018 | Denied Skilled - Pay Unskilled | MediGold Southeast OH Classic Preferred | Fax |  | Inpatient | 02272018 | 03022018 | Standard |  |  | 2018-02-27 | 3 NONSKILLED DAYS @ $200.00= $600.00 | 0 | 2018-03-02 |  |  |  | 3 | 0 | 600.0 | 180306160008.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A180301010 | C171, Z9049 | Acquired absence of other specified parts of digestive tract | ICD10 | 03092018 | 02272018 | 03022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
