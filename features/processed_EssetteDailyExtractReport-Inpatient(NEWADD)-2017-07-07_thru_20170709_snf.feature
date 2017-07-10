Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-07_thru_20170709_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-07_thru_20170709_SNF
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
| 04202017 | 2017-04-20T14:12:58+00:00 |  | 000010325-01 | JAUNITA | ROUSH | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04182017 | 07032017 | Standard |  |  | 2017-04-18 | 16/RVC01=$ 3539.19 53 DAYS @ $200.00-= $10600.00 TOTAL: $14139.19 | 0 | 2017-07-04 |  | 2017-05-09 | 2017-07-07 | 73 | 73 | 14139.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420096 | S329XXA, S8290XA | Unsp fracture of unsp lower leg, init for clos fx | ICD10 | 07072017 | 04182017 | 07042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 77 | Revenue | RV |  |  |  | 5.0 |
| 05242017 | 2017-05-24T09:05:45+00:00 |  | 000029661-01 | JAMES | DOUGLAS | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07142017 | Standard |  |  | 2017-05-22 | 17/RUB01=$5,813.99 | 0 | 2017-06-03 |  | 2017-06-27 | 2017-06-27 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524037 | J209 | Acute bronchitis, unspecified | ICD10 | 07072017 | 05222017 | 06032017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 05262017 | 2017-05-26T14:13:37+00:00 |  | 000015216-01 | MINNIE | BRONSON | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05242017 | 06062017 | Standard |  |  | 2017-05-24 | 17/RUB01=$5,813.99 | 0 | 2017-06-06 |  | 2017-06-27 | 2017-06-27 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526071 | I10, I5030, I509, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 07072017 | 05242017 | 06062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06012017 | 2017-06-01T08:28:25+00:00 |  | 000072575-01 | RONALD | TUCKER | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06012017 | 06242017 | Standard |  |  | 2017-07-01 | 16/RUC01=$7,333.11 | 0 | 2017-07-24 | 2017-06-28 | 2017-06-28 | 2017-06-28 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601032 | I330, I639 | Cerebral infarction, unspecified | ICD10 | 07072017 | 06012017 | 06242017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 24 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06052017 | 2017-06-05T07:59:39+00:00 |  | 000036726-01 | SIGRID | LUBELL | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07142017 | Standard |  |  | 2017-06-01 | 17/RVC01=$6,306.19 | 0 | 2017-06-21 |  | 2017-06-28 | 2017-06-28 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605087 | Z9181 | History of falling | ICD10 | 07072017 | 06012017 | 06212017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06062017 | 2017-06-06T16:23:32+00:00 |  | 000042489-01 | MARY | HEWITT | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07142017 | Standard |  |  | 2017-06-05 | 16/RUC01=$7,333.11 | 0 | 2017-06-21 |  | 2017-06-27 | 2017-06-27 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607007 | J189 | Pneumonia, unspecified organism | ICD10 | 07072017 | 06052017 | 06212017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 06092017 | 2017-06-09T12:58:33+00:00 |  | 000043599-01 | RUTH | WATSON | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07142017 | Standard |  |  | 2017-06-07 | 17/RUC01=$6,049.81 | 0 | 2017-06-20 |  | 2017-06-27 | 2017-06-27 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609055 | R079 | Chest pain, unspecified | ICD10 | 07072017 | 06072017 | 07202017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06122017 | 2017-06-12T08:26:53+00:00 |  | 000033073-01 | MARGARET | FATHBRUCKNER | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07142017 | Standard |  |  | 2017-07-08 | 16/RUC01=$7,333.11 | 13 | 2017-07-21 | 2017-06-28 | 2017-06-28 | 2017-06-28 | 13 | 26 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612057 | J189, J9601 | Acute respiratory failure with hypoxia | ICD10 | 07072017 | 06082017 | 07212017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06122017 | 2017-06-12T10:46:21+00:00 |  | 000085466-01 | Carron | Toon | MONTEREY CARE CENTER | 936519 |  | MONTEREY CARE CENTER | 1245239862 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07072017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06082017 | 06232017 | Standard |  |  | 2017-06-08 | 17/RUB01=$5,813.99 | 0 | 2017-06-23 |  | 2017-06-27 | 2017-06-27 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612083 | I4891, K5792, K859 | Acute pancreatitis, unspecified | ICD10 | 07072017 | 06082017 | 06232017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 06142017 | 2017-06-14T14:27:30+00:00 |  | 000005509-01 | JANET | YAILLEN | COPC CENTRAL OHIO PRIMAR | 901490 | ANURADHA | KESARI | 1740389352 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06132017 | 06242017 | Standard |  |  | 2017-06-13 | 17/RUB01=$5,813.99 | 15 | 2017-06-24 |  | 2017-06-29 | 2017-06-29 | 11 | 26 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614062 | I4892 | Unspecified atrial flutter | ICD10 | 07072017 | 06132017 | 06242017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06152017 | 2017-06-15T10:38:41+00:00 |  | 000043355-01 | DOW | CISCO JR | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06132017 | 07032017 | Standard |  |  | 2017-06-13 | 17/HB101=$3,448.45 | 0 | 2017-07-03 |  | 2017-07-03 | 2017-07-03 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615055 | A419, J189, J449, M1612, N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 07072017 | 06132017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 06152017 | 2017-06-15T16:09:54+00:00 |  | 000029909-01 | BERNICE | HURD | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06142017 | 07032017 | Standard |  |  | 2017-06-14 | 16/RUC01=$7,333.11 | 0 | 2017-07-03 |  | 2017-07-05 | 2017-07-05 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616010 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 07072017 | 06142017 | 07032017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 06162017 | 2017-06-16T12:56:30+00:00 |  | 000083695-01 | Patricia | Diamond | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06152017 | 06272017 | Standard |  |  | 2017-06-15 | 16/RUA01=$3,214.76 | 0 | 2017-06-27 |  | 2017-06-30 | 2017-06-30 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616056 | Z96641 | Presence of right artificial hip joint | ICD10 | 07072017 | 06152017 | 06272017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 06192017 | 2017-06-19T15:51:24+00:00 |  | 000097662-01 | James | Hannahs | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 07072017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 06152017 | 06292017 | Standard |  |  | 2017-06-15 | 16/RUB01=$4,429.71 | 0 | 2017-06-29 |  | 2017-06-30 | 2017-06-30 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619140 | J90, K8080 | Other cholelithiasis without obstruction | ICD10 | 07072017 | 06152017 | 06292017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 06202017 | 2017-06-20T13:34:11+00:00 |  | 000020845-01 | IRENE | RILEY | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07142017 | Standard |  |  | 2017-06-19 | 17/RUB01=$5,813.99 | 0 | 2017-06-29 |  | 2017-06-29 | 2017-06-29 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620110 | S2220XD | Unsp fracture of sternum, subs for fx w routn heal | ICD10 | 07072017 | 06192017 | 06292017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06212017 | 2017-06-21T14:38:50+00:00 |  | 000043170-01 | CHARLES | MCDORMAN | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06202017 | 06292017 | Standard |  |  | 2017-06-20 | 17/RUB01=$5,813.99 | 0 | 2017-06-29 |  | 2017-07-05 | 2017-07-05 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621067 | M172 | Bilateral post-traumatic osteoarthritis of knee | ICD10 | 07072017 | 06202017 | 06292017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 06222017 | 2017-06-22T14:43:35+00:00 |  | 000006262-01 | LARRY | BICE | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06212017 | 07012017 | Standard |  |  | 2017-06-21 | 17/RVC01=$6,306.19 | 0 | 2017-07-01 |  | 2017-06-27 |  | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622077 | J189 | Pneumonia, unspecified organism | ICD10 | 07072017 | 06212017 | 07012017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 06272017 | 2017-06-27T15:24:00+00:00 |  | 000034578-01 | DUANE | SHOULTS | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 07072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06232017 | 07022017 | Standard |  |  | 2017-06-23 | Per MDS: 17/RVB01 = $5411.86 TOTAL PAYMENT = $5411.86 | 2 | 2017-07-03 |  | 2017-07-07 | 2017-07-07 | 10 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628026 | J449, K921, M6281 | Muscle weakness (generalized) | ICD10 | 07072017 | 06232017 | 07032017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 07062017 | 2017-07-06T15:12:40+00:00 |  | 000117628-01 | Rose | Lee | MARIETTA MEM HSP | 916420 | TIMOTHY P | CLARE | 1861469876 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 07072017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07052017 | 07062017 | Standard |  |  | 2017-07-05 | 2 days @ $200.00= $400.00 | 18 | 2017-07-07 |  |  |  | 2 | 20 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706106 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 07072017 | 07052017 | 07072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 400 |  | 2 | Revenue | RV |  |  |  | 2.0 |
