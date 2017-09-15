Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-13_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-13_SNF
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
| 08282017 | 2017-08-28T14:45:21+00:00 |  | 000010999-01 | MILLARD | MEDLEY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | SUMMITS TRACE HLTHCARE C | 908932 | 1588803985 | SUMMITS TRACE HEALTHCARE CENTER | 1588803985 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SUMMITS TRACE HEALTHCARE CENTER | 09132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08252017 | 09112017 | Standard |  |  | 2017-08-25 | 16/RHB01=$2,690.49 | 45 | 2017-09-12 |  | 2017-09-12 | 2017-09-12 | 18 | 63 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828119 | A419, N390, R6520 | Severe sepsis without septic shock | ICD10 | 09132017 | 08252017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 07252017 | 2017-07-25T16:29:58+00:00 |  | 000021256-01 | MARY | MCCRATE | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 09132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07232017 | 08042017 | Standard |  |  | 2017-07-23 | 17/RUB01=$5,813.99 | 0 | 2017-08-05 |  | 2017-08-08 | 2017-09-12 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726007 | Z4789 | Encounter for other orthopedic aftercare | ICD10 | 09132017 | 07232017 | 09052017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 08232017 | 2017-08-23T15:11:29+00:00 |  | 000005522-01 | VERA | STREITENBERGER | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 09132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08212017 | 08282017 | Standard |  |  | 2017-08-21 | 16/RHB01=$2,690.49 | 18 | 2017-08-29 |  | 2017-09-12 | 2017-09-12 | 8 | 26 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824021 | R55 | Syncope and collapse | ICD10 | 09132017 | 08212017 | 08292017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 08042017 | 2017-08-04T09:36:29+00:00 |  | 000102003-01 | Hattie | McKinney | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 09132017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 08022017 | 08092017 | Standard |  |  | 2017-08-02 | UNSKILLED LEVEL OF CARE=$200.00/DAY X 8 DAYS TOTAL PAYMENT=$1,600.00 | 0 | 2017-08-10 |  |  |  | 8 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170804024 | Z4789, Z96651 | Presence of right artificial knee joint | ICD10 | 09132017 | 08022017 | 08102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved Skilled | 8 | Revenue | RV |  |  |  | 8.0 |
| 08082017 | 2017-08-08T11:36:09+00:00 |  | 000034738-01 | MARJORIE | HEDGES | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 09132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08062017 | 09052017 | Standard |  |  | 2017-08-06 | 17/RUC01= $6049.81 11 DAYS @ $200.00= $2200.00 TOTAL: $8249.81 | 0 | 2017-09-06 |  | 2017-09-12 | 2017-09-12 | 31 | 31 | 8249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809020 | S32509D | Unsp fracture of unsp pubis, subs for fx w routn heal | ICD10 | 09132017 | 08062017 | 09062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8249 | 8249 | Approved | 31 | Revenue | RV |  |  |  | 4.0 |
| 08222017 | 2017-08-22T16:31:30+00:00 |  | 000042549-01 | CHARLENE | MYERS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 09132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08182017 | 09052017 | Standard |  |  | 2017-08-18 | 17/RVC01= $6306.19 | 0 | 2017-09-06 |  | 2017-09-12 | 2017-09-12 | 19 | 19 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823026 | S82891A | Oth fracture of right lower leg, init for clos fx | ICD10 | 09132017 | 08182017 | 09062017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 08142017 | 2017-08-14T16:59:59+00:00 |  | 000034424-01 | LARRY | FALL | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 09132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08102017 | 08232017 | Standard |  |  | 2017-08-10 | 17/RVB01=$5,411.86 | 13 | 2017-08-24 |  | 2017-08-23 | 2017-09-12 | 14 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815029 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09132017 | 08102017 | 08242017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08302017 | 2017-08-30T10:41:40+00:00 |  | 000034774-01 | OTTO | LEWIS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 09132017 | Approved | THE TIMKEN COMPANY | Fax | SNF | Inpatient | 08282017 | 09032017 | Standard |  |  | 2017-08-28 | 1RVC01= $6306.19 | 0 | 2017-09-04 |  | 2017-09-12 | 2017-09-12 | 7 | 7 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830054 | M25552 | Pain in left hip | ICD10 | 09132017 | 08282017 | 09042017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 08162017 | 2017-08-16T16:22:18+00:00 |  | 000117530-01 | MARY | CUMMINGS | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 09132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08152017 | 09082017 | Standard |  |  | 2017-08-15 | 16/RUC01= $7333.11 6 DAYS @ $250.00= $1500.00 TOTAL: $8833.11 | 0 | 2017-09-09 |  | 2017-09-13 | 2017-09-13 | 26 | 26 | 883.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817017 | S7291XD | Unsp fracture of right femur, subs for clos fx w routn heal | ICD10 | 09132017 | 08152017 | 09092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8833 | 8833 | Approved | 25 | Revenue | RV |  |  |  | 6.0 |
| 09012017 | 2017-09-01T11:01:08+00:00 |  | 000092134-01 | Ruby | Norman | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 09132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08302017 | 09112017 | Standard |  |  | 2017-08-30 | Contract/RUG: 17/RVB  (Per MDS) = $5,411.86 | 0 | 2017-09-12 |  | 2017-09-12 | 2017-09-12 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901040 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 09132017 | 08302017 | 09122017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 08182017 | 2017-08-18T17:25:28+00:00 |  | 000064489-01 | BETTY | MCGREW | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 09132017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08162017 | 09092017 | Standard |  |  | 2017-08-16 | 16/RHC01= $3133.29 | 0 | 2017-09-10 |  | 2017-09-11 | 2017-09-11 | 25 | 25 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821110 | E876 | Hypokalemia | ICD10 | 09132017 | 08162017 | 09102017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 08282017 | 2017-08-28T15:49:55+00:00 |  | 000087447-01 | Emma | Coleman | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 09132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 08252017 | 09072017 | Standard |  |  | 2017-08-25 | 17/RVC01= $6306.19 | 0 | 2017-09-08 |  | 2017-09-12 | 2017-09-12 | 14 | 14 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829010 | I639 | Cerebral infarction, unspecified | ICD10 | 09132017 | 08252017 | 09082017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08312017 | 2017-08-31T14:41:04+00:00 |  | 000115486-01 | PATRICIA | WAYNE | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 09132017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 08292017 | 09082017 | Standard |  |  | 2017-08-29 | 17/RUA01= $ 3214.76 | 0 | 2017-09-09 |  | 2017-09-12 | 2017-09-12 | 11 | 11 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831069 | R001, Z471, Z96652 | Presence of left artificial knee joint | ICD10 | 09132017 | 08292017 | 09092017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 08252017 | 2017-08-25T14:04:46+00:00 |  | 000081888-01 | Sandra | Fuersich | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 09132017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 08242017 | 08312017 | Standard |  |  | 2017-08-24 | Per Diem: $200.00/day x 8 SNF Days = $1,600.00 Carve Out: IV Vanco $17.40/dose x 8 doses = $139.20 Total: $ 1,739.20 | 0 | 2017-09-01 |  | 2017-09-12 | 2017-09-12 | 8 | 8 | 1739.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825072 | J918 | Pleural effusion in other conditions classified elsewhere | ICD10 | 09132017 | 08242017 | 09012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1739 | 1739 | Approved | 8 | Revenue | RV |  |  |  | 8.0 |
| 08142017 | 2017-08-14T15:32:07+00:00 |  | 000041649-01 | Milene | Arbaugh | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 09132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08112017 | 08122017 | Standard |  |  | 2017-08-11 | 2 DAYS @ $200.00= $400.00 | 18 | 2017-08-13 |  |  |  | 2 | 20 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814125 | I4891 | Unspecified atrial fibrillation | ICD10 | 09132017 | 08112017 | 08132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
