Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-06_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-06_SNF
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
| 05192017 | 2017-05-19T10:17:09+00:00 |  | 000017305-01 | JOHN | BALL | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05172017 | 07252017 | Standard |  |  | 2017-05-17 | 17/RVC01=6,306.19 PER DIEM RATE OF $250.00/DAY X 2 DAYS=$500.00 PER DIEM RATE OF $200.00/DAY X 48 DAYS=$9,600.00 TOTAL PAYMENT=$16,406.19 | 12 | 2017-07-26 |  | 2017-08-17 | 2017-08-17 | 70 | 82 | 16406.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519018 | M2681, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 09062017 | 05172017 | 07262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 70 | Revenue | RV |  |  |  | 2.0 |
| 07262017 | 2017-07-26T08:52:42+00:00 |  | 000113729-01 | Millie | Corrales | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 09062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07222017 | 08302017 | Standard |  |  | 2017-07-22 | 17/RUC01=$ 6049.81 20 DAYS @ $250.00= $5000.00 TOTAL: $11049.81 | 0 | 2017-08-31 |  | 2017-09-05 | 2017-09-05 | 40 | 40 | 11049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726030 | I639 | Cerebral infarction, unspecified | ICD10 | 09062017 | 07222017 | 08312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 40 | Revenue | RV |  |  |  | 2.0 |
| 08142017 | 2017-08-14T15:24:55+00:00 |  | 000104791-01 | CYNTHIA | GREEN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 09062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08082017 | 08242017 | Standard |  |  | 2017-08-08 | 17/RVC01= $6306.19 | 0 | 2017-08-25 |  | 2017-09-06 | 2017-09-06 | 17 | 17 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814121 | C519 | Malignant neoplasm of vulva, unspecified | ICD10 | 09062017 | 08082017 | 08252017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 08152017 | 2017-08-15T17:10:30+00:00 |  | 000001847-01 | THOMAS | MCCLOSKEY | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08122017 | 08312017 | Standard |  |  | 2017-08-12 | 17/RVC01= $6306.19 | 0 | 2017-09-01 |  | 2017-09-06 | 2017-09-06 | 13 | 13 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816025 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 09062017 | 08122017 | 09012017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 08012017 | 2017-08-01T11:53:28+00:00 |  | 000043174-01 | WILLIAM | WINNIESTAFFER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07292017 | 08192017 | Standard |  |  | 2017-07-29 | 17/RVA01= $3586.28 | 0 | 2017-08-19 |  | 2017-09-05 | 2017-09-05 | 19 | 19 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801125 | G936 | Cerebral edema | ICD10 | 09062017 | 07292017 | 08202017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 08042017 | 2017-08-04T17:31:11+00:00 |  | 000040824-01 | CHARLES | DERENBERGER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08022017 | 08172017 | Standard |  |  | 2017-08-02 | 17/RVC01= $6306.19 | 0 | 2017-08-18 |  | 2017-09-05 | 2017-09-05 | 16 | 16 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807069 | M545 | Low back pain | ICD10 | 09062017 | 08022017 | 08182017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 08082017 | 2017-08-08T11:48:33+00:00 |  | 000116078-01 | JOSEPH | SANOK JR | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 09062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08042017 | 08252017 | Standard |  |  | 2017-08-04 | 17/RVA01= $3586.28 | 0 | 2017-08-26 |  | 2017-09-05 | 2017-09-05 | 19 | 19 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809027 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 09062017 | 08042017 | 08262017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 08152017 | 2017-08-15T17:08:39+00:00 |  | 000098985-01 | Rosemary | Manahan | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08132017 | 08182017 | Standard |  |  | 2017-08-13 | 17/RVL01= $4874.23 | 0 | 2017-08-19 |  | 2017-09-05 |  | 6 | 6 | 4874.23 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816022 | S7291XD | Unsp fracture of right femur, subs for clos fx w routn heal | ICD10 | 09062017 | 08132017 | 08192017 | RVL01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA OR | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 08182017 | 2017-08-18T12:12:31+00:00 |  | 000097552-01 | Sandra | Campbell | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08162017 | 08242017 | Standard |  |  | 2017-08-16 | 9 days @ $200.00= $1800.00 | 0 | 2017-08-25 |  | 2017-09-05 | 2017-09-05 | 9 | 9 | 1800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818066 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 09062017 | 08162017 | 08252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1800 | 1800 | Approved | 9 | Revenue | RV |  |  |  | 9.0 |
| 08242017 | 2017-08-24T17:31:45+00:00 |  | 000005785-01 | MIRIAM | GARVER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08222017 | 08302017 | Standard |  |  | 2017-08-22 | 17/RMC01= $3027.33 | 46 | 2017-08-31 |  | 2017-09-05 | 2017-09-05 | 9 | 55 | 3027.33 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825021 | K769 | Liver disease, unspecified | ICD10 | 09062017 | 08222017 | 08312017 | RMC01 | MEDIUM REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 05222017 | 2017-05-22T16:17:34+00:00 |  | 000052306-01 | JOHN | WESTLAKE | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05212017 | 08312017 | Standard |  |  | 2017-05-21 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 80 days = $20,000.00 TOTAL PAYMENT = $27,333.11 | 0 | 2017-09-01 | 2017-07-11 | 2017-09-05 | 2017-09-05 | 100 | 100 | 27333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523017 | I4891, I639, K922, N179, Z931, Z9981 | Dependence on supplemental oxygen | ICD10 | 09062017 | 05212017 | 09012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 103 | Revenue | RV |  |  |  | 7.0 |
| 08292017 | 2017-08-29T17:35:08+00:00 |  | 000087369-01 | Dorothy | Shaffer | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 09062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08252017 | 09022017 | Standard |  |  | 2017-08-25 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-09-03 |  | 2017-09-05 | 2017-09-05 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830023 | I10, I4891, I517, N189, Z87440 | Personal history of urinary (tract) infections | ICD10 | 09062017 | 08252017 | 09032017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07172017 | 2017-07-17T16:40:55+00:00 |  | 000076639-01 | Olive | Koenig | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07132017 | 08312017 | Standard |  |  | 2017-07-13 | Per MDS: 17/RHA01 = $2812.08 Per Diem: $250.00.day x 26 days = $6500.00 TOTAL PAYMENT = $9312.08 | 0 | 2017-09-01 | 2017-08-29 | 2017-09-05 | 2017-09-05 | 46 | 46 | 9312.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718093 | K810 | Acute cholecystitis | ICD10 | 09062017 | 07132017 | 09012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9312 | 9312 | Approved | 50 | Revenue | RV |  |  |  | 4.0 |
| 07252017 | 2017-07-25T13:54:11+00:00 |  | 000074549-01 | Lyllian | Helsel | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07222017 | 08282017 | Standard |  |  | 2017-07-22 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 18 days = $4500.00 TOTAL PAYMENT = $10,806.19 | 0 | 2017-08-29 |  | 2017-09-06 |  | 38 | 38 | 10806.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725104 | S06309S | Unsp focal TBI w LOC of unsp duration, sequela | ICD10 | 09062017 | 07222017 | 08292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 38 | Revenue | RV |  |  |  | 8.0 |
| 08232017 | 2017-08-23T13:52:25+00:00 |  | 000077265-01 | Duane | Watts | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 09062017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 08212017 | 09032017 | Standard |  |  | 2017-08-21 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-09-04 |  | 2017-09-05 | 2017-09-05 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824006 | I214, I96, J189 | Pneumonia, unspecified organism | ICD10 | 09062017 | 08212017 | 09042017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 07182017 | 2017-07-18T09:37:29+00:00 |  | 000031289-01 | KENNETH | SCHUMACHER | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07152017 | 07152017 | Standard |  |  | 2017-07-15 | PER DIEM RATE OF $200.00/DAY X 1 DAY=$200.00 | 3 | 2017-07-16 |  | 2017-07-28 |  | 1 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718111 | C7972, T814XXD | Infection following a procedure, subsequent encounter | ICD10 | 09062017 | 07152017 | 07162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 1 | Revenue | RV |  |  |  | 1.0 |
| 08172017 | 2017-08-17T15:16:18+00:00 |  | 000116011-01 | HELEN | LAKATOS | DAN F BAUTISTA MD LLC | 901878 | DAN F | BAUTISTA | 1629006903 | WRIGHT NURSING & REHABILITATION CTR | 916108 | 1205966371 | WRIGHT NURSING & REHABILITATION CTR | 1205966371 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WRIGHT NURSING & REHABILITATION CTR | 09062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08102017 | 09012017 | Standard |  |  | 2017-08-10 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $200.00/day x 3 SNF Days = $600.00 Total Payment: $3,950.20 | 17 | 2017-09-02 |  | 2017-09-05 | 2017-09-05 | 23 | 40 | 3950.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818037 | M6281 | Muscle weakness (generalized) | ICD10 | 09062017 | 08102017 | 09022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3950 | 3950 | Approved | 23 | Revenue | RV |  |  |  | 3.0 |
