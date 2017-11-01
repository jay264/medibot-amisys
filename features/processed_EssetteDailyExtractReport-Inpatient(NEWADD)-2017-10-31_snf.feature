Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-31_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-31_SNF
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
| 09212017 | 2017-09-21T08:59:22+00:00 |  | 000006937-01 | WILLIAM | SCHWARTZ | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09192017 | 10092017 | Standard |  |  | 2017-09-19 | 17/RVC01=$6,306.19 | 0 | 2017-10-09 |  | 2017-10-30 | 2017-10-30 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921069 | Z982 | Presence of cerebrospinal fluid drainage device | ICD10 | 10312017 | 09192017 | 10092017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10122017 | 2017-10-12T13:10:45+00:00 |  | 000066535-01 | BETTY | CASTO | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10102017 | 10302017 | Standard |  |  | 2017-10-10 | 17/RUA01=$3,214.76 | 0 | 2017-10-30 |  | 2017-10-30 | 2017-10-30 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012045 | R262, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 10312017 | 10102017 | 10302017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10112017 | 2017-10-11T07:59:34+00:00 |  | 000106016-01 | Michelle | Damon | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 10312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10092017 | 10292017 | Standard |  |  | 2017-10-09 | 17/LD101=$3,448.45 | 55 | 2017-10-29 |  | 2017-10-30 | 2017-10-30 | 20 | 75 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011010 | N19 | Unspecified kidney failure | ICD10 | 10312017 | 10092017 | 10292017 | LD101 | SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10052017 | 2017-10-05T16:09:51+00:00 |  | 000006717-01 | LEONARD | JANISCH JR | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10032017 | 10282017 | Standard |  |  | 2017-10-03 | 17/RUB01=$5,813.99 PER DIEM OF $200.00/DAY X 5 DAYS=$1,000.00 TOTAL PAYMENT=$6,813.99 | 0 | 2017-10-28 |  | 2017-10-30 | 2017-10-30 | 25 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005058 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 10312017 | 10032017 | 10282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6813 | 6813 | Approved Skilled | 26 | Revenue | RV |  |  |  | 5.0 |
| 10122017 | 2017-10-12T13:57:03+00:00 |  | 000110797-01 | Jo | Ross | DEEPAK SARWAL MD LLC | 902805 | DEEPAK | SARWAL | 1235159559 | KINGSTON OF MIAMISBURG | 927958 | 1972590115 | KINGSTON OF MIAMISBURG | 1972590115 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINGSTON OF MIAMISBURG | 10312017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 10112017 | 10282017 | Standard |  |  | 2017-10-11 | Contract/RUG: 17/RUB  (Per MDS) = $5,813.99 | 0 | 2017-10-28 |  | 2017-10-27 | 2017-10-30 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012046 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 10312017 | 10112017 | 10282017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 10102017 | 2017-10-10T12:57:38+00:00 |  | 000031805-01 | LOUISE | BERRY | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10082017 | 10212017 | Standard |  |  | 2017-10-08 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2017-10-21 |  | 2017-10-30 | 2017-10-30 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010050 | M84454D | Pathological fracture, pelvis, subs for fx w routn heal | ICD10 | 10312017 | 10082017 | 10212017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10112017 | 2017-10-11T13:58:08+00:00 |  | 000117468-01 | CAROLYN | MINK | JS AESTHETICS | 906812 | JODI I | SPERBER | 1770569741 | PATRIOT RIDGE COMMUNITY | 913103 | 1528041647 | PATRIOT RIDGE COMMUNITY | 1528041647 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATRIOT RIDGE COMMUNITY | 10312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10092017 | 10282017 | Standard |  |  | 2017-10-09 | Contract/RUG: 16/RUA (Per MDS) = $3,214.76 | 0 | 2017-10-28 |  | 2017-10-30 | 2017-10-30 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011059 | R0600 | Dyspnea, unspecified | ICD10 | 10312017 | 10092017 | 10282017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 08292017 | 2017-08-29T12:31:15+00:00 |  | 000009860-01 | LESTER | YODER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08282017 | 10302017 | Standard |  |  | 2017-08-28 | PER DIEM RATE OF $250.00/DAY X 59 DAYS=$14,750.00 | 35 | 2017-10-30 |  | 2017-10-31 | 2017-10-31 | 59 | 94 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829068 | I469 | Cardiac arrest, cause unspecified | ICD10 | 10312017 | 08282017 | 10302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 64 | Revenue | RV |  |  |  | 11.0 |
| 10062017 | 2017-10-06T10:00:50+00:00 |  | 000023471-01 | FRANK | KYNKOR | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10042017 | 10132017 | Standard |  |  | 2017-10-04 | 17/RVC01=$6,306.19 | 0 | 2017-10-13 |  | 2017-10-31 | 2017-10-31 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006041 | A4189 | Other specified sepsis | ICD10 | 10312017 | 10042017 | 10132017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 10092017 | 2017-10-09T15:09:21+00:00 |  | 000002689-01 | KATHLEEN | BOPP | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10062017 | 10172017 | Standard |  |  | 2017-10-06 | 17/HC101=$3,481.78 | 0 | 2017-10-17 |  | 2017-10-31 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009111 | K5669 | Other intestinal obstruction | ICD10 | 10312017 | 10062017 | 10172017 | HC101 | SPECIAL CARE HIGH , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 10192017 | 2017-10-19T11:35:50+00:00 |  | 000040861-01 | Ann | Payne | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10172017 | 11292017 | Standard |  |  | 2017-10-17 | 17/RVB01= $5411.86 | 0 | 2017-10-29 |  | 2017-10-30 | 2017-10-30 | 12 | 12 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019067 | I480 | Paroxysmal atrial fibrillation | ICD10 | 10312017 | 10172017 | 10292017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 44 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 10052017 | 2017-10-05T13:07:44+00:00 |  | 000047225-01 | MYRTLE | MOORE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10022017 | 10112017 | Standard |  |  | 2017-10-02 | 17/RVC01=$6,306.19 | 0 | 2017-10-11 |  | 2017-10-31 | 2017-10-31 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005047 | N390 | Urinary tract infection, site not specified | ICD10 | 10312017 | 10022017 | 10112017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 10162017 | 2017-10-16T15:17:15+00:00 |  | 000107274-01 | Evelyn | Stevens | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 10312017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 10132017 | 10272017 | Standard |  |  | 2017-10-13 | 16 DAYS @ $200.00= $3200.00 | 1 | 2017-10-28 | 2017-10-30 | 2017-10-30 | 2017-10-30 | 16 | 17 | 3200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017056 | K559 | Vascular disorder of intestine, unspecified | ICD10 | 10312017 | 10132017 | 10272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3200 | 3200 | Approved | 15 | Revenue | RV |  |  |  | 2.0 |
| 08012017 | 2017-08-01T16:11:54+00:00 |  | 000027038-01 | HOBERT | BURKE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07302017 | 10142017 | Standard |  |  | 2017-07-30 | 17/RVC01=$6,306.19 PER DIEM RATE OF $250.00/DAY X 56 DAYS= $14,000.00 TOTAL PAYMENT=$20,306.19 | 0 | 2017-10-14 |  | 2017-10-31 | 2017-10-31 | 76 | 76 | 20306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802029 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 10312017 | 07302017 | 10142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 77 | Revenue | RV |  |  |  | 7.0 |
| 10172017 | 2017-10-17T16:21:49+00:00 |  | 000089702-01 | Ruth | Pheneger | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10142017 | 11262017 | Standard |  |  | 2017-10-14 | 12 DAYS @ $200.00= $2400.00 | 0 | 2017-10-26 |  | 2017-10-31 | 2017-10-31 | 12 | 12 | 2400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018036 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 10312017 | 10142017 | 10262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2400 | 2400 | Approved | 44 | Revenue | RV |  |  |  | 12.0 |
| 10202017 | 2017-10-20T14:33:30+00:00 |  | 000091084-01 | Marilyn | Labaki | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 10312017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 10192017 | 10302017 | Standard |  |  | 2017-10-19 | 17/RUB01= $5813.99 | 0 | 2017-10-30 |  | 2017-10-31 | 2017-10-31 | 11 | 11 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020071 | M545, S22080D | Wedge comprsn fx T11-T12 vertebra, subs for fx w routn heal | ICD10 | 10312017 | 10192017 | 10302017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 10102017 | 2017-10-10T14:07:09+00:00 |  | 000105734-01 | Viola | Milligan | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10082017 | 11272017 | Standard |  |  | 2017-10-08 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-10-27 |  | 2017-10-30 | 2017-10-30 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010078 | M6281, Z5189 | Encounter for other specified aftercare | ICD10 | 10312017 | 10082017 | 10272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 51 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 10112017 | 2017-10-11T14:22:01+00:00 |  | 000071485-01 | Helen | Kincaid | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10092017 | 10292017 | Standard |  |  | 2017-10-09 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-10-29 |  | 2017-10-30 |  | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011065 | M6281, Z5189 | Encounter for other specified aftercare | ICD10 | 10312017 | 10092017 | 10292017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09282017 | 2017-09-28T17:56:37+00:00 |  | 000022489-01 | CHARLES | BRAHLER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 10312017 | Approved | THE TIMKEN COMPANY | Fax | SNF | Inpatient | 09262017 | 10282017 | Standard |  |  | 2017-09-26 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X12=$2,400.00 TOTAL PAYMENT=$7,811.76 | 18 | 2017-10-28 |  | 2017-10-31 | 2017-10-31 | 32 | 50 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929011 | S82209A | Unsp fracture of shaft of unsp tibia, init for clos fx | ICD10 | 10312017 | 09262017 | 10282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7811 | 7811 | Approved Skilled | 33 | Revenue | RV |  |  |  | 12.0 |
| 08232017 | 2017-08-23T15:27:55+00:00 |  | 000078904-01 | Sue | Mudgett | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 10312017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 08222017 | 10192017 | Standard |  |  | 2017-08-22 | 41 DAYS @ $520.00= $21320.00 15 DAYS  @ $200.00= $3000.00 TOTAL: $24320.00 | 0 | 2017-10-19 |  | 2017-10-26 | 2017-10-26 | 56 | 56 | 24320.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824024 | T3120 | Burns of 20-29% of body surfc w 0% to 9% third degree burns | ICD10 | 10312017 | 08222017 | 10192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 59 | Revenue | RV |  |  |  | 8.0 |
| 10232017 | 2017-10-23T14:00:37+00:00 |  | 000092400-01 | Suzann | Williams | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 10312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10212017 | 10292017 | Standard |  |  | 2017-10-21 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-10-29 | 2017-10-31 | 2017-10-31 | 2017-10-31 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023136 | R5381 | Other malaise | ICD10 | 10312017 | 10212017 | 10292017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 10052017 | 2017-10-05T13:03:31+00:00 |  | 000017798-01 | VIOLETTE | CROLEY | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10042017 | 10312017 | Standard |  |  | 2017-10-04 | RVC01=$6306.19 PER DIEM RATE OF $200.00/DAY X 7 DAYS=$1,400.00 TOTAL PAYMENT=$7,706.19 | 0 | 2017-10-31 |  | 2017-10-31 | 2017-10-31 | 27 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005046 | S3289XD | Fracture of oth parts of pelvis, subs for fx w routn heal | ICD10 | 10312017 | 10042017 | 10312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7706 | 7706 | Approved Skilled | 28 | Revenue | RV |  |  |  | 7.0 |
| 10022017 | 2017-10-02T14:29:06+00:00 |  | 000026970-01 | MARY | NELSON | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09202017 | 10052017 | Standard |  |  | 2017-09-20 | 17/RVA01=$3,586.28 | 0 | 2017-10-05 |  | 2017-10-16 | 2017-10-16 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002142 | A4152, J151, M6281 | Muscle weakness (generalized) | ICD10 | 10312017 | 09202017 | 10052017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 10112017 | 2017-10-11T16:05:00+00:00 |  | 000104637-01 | John | Willis | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10072017 | 10262017 | Standard |  |  | 2017-10-07 | 17/RVC01=$6,306.19 | 0 | 2017-10-26 |  | 2017-10-31 | 2017-10-31 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012005 | L0390 | Cellulitis, unspecified | ICD10 | 10312017 | 10072017 | 10262017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 09152017 | 2017-09-15T14:47:52+00:00 |  | 000019335-01 | RODGER | HEISER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09132017 | 10302017 | Standard |  |  | 2017-09-13 | 17/RUC01= $6049.81 25 DAYS @ $250.00= $6250.00 TOTAL: $12299.81 | 0 | 2017-10-30 | 2017-10-27 | 2017-10-31 | 2017-10-31 | 45 | 45 | 12299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915105 | S060X0A | Concussion without loss of consciousness, initial encounter | ICD10 | 10312017 | 09132017 | 10302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 48 | Revenue | RV |  |  |  | 4.0 |
| 10202017 | 2017-10-20T16:08:16+00:00 |  | 000057879-01 | HOWARD | LEWINTER | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 10312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10182017 | 10272017 | Standard |  |  | 2017-10-18 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-10-27 |  | 2017-10-30 | 2017-10-30 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020085 | I213, I214, I509 | Heart failure, unspecified | ICD10 | 10312017 | 10182017 | 10272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
