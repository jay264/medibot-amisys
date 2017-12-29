Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-27_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-27_SNF
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
| 12262017 | 2017-12-26T15:37:00+00:00 |  | 000076516-01 | James | Boettcher | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 12272017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12222017 | 12232017 | Standard |  |  | 2017-12-22 | Per Diem: $200.00/day x 1 SNF Day = $200.00 | 0 | 2017-12-23 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226186 | J189 | Pneumonia, unspecified organism | ICD10 | 12272017 | 12222017 | 12232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 12142017 | 2017-12-14T15:08:31+00:00 |  | 000038182-01 | DAVID | JONES | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12132017 | 12202017 | Standard |  |  | 2017-12-13 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-12-20 |  | 2017-12-26 | 2017-12-26 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215047 | M6281, Z951 | Presence of aortocoronary bypass graft | ICD10 | 12272017 | 12132017 | 12202017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 12022017 | 2017-12-02T11:10:57+00:00 |  | 000009747-01 | SANDRA | ROSSIO | CENTRAL OHIO NP SERVICES | 935070 | MARTIN J | WOODARD | 1033197611 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 12272017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 11282017 | 12042017 | Standard |  |  | 2017-11-28 | UNSKILLED PER DIEM RATE OF $200.00/DAY X 2 DAYS=$400.00 | 12 | 2017-12-04 |  |  |  | 2 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A171204045 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 12272017 | 11282017 | 12042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved Unskilled | 7 | Revenue | RV |  |  |  | 4.0 |
| 12192017 | 2017-12-19T12:41:13+00:00 |  | 000063675-01 | BETTY | REED | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 12272017 | Denied Skilled - Pay Unskilled | TRINITY HEALTH | Fax |  | Inpatient | 12182017 | 12202017 | Standard |  |  | 2017-12-18 | UNSKILLED PER DIEM RATE OF $200.00/DAY X 2 DAYS=$400.00 | 0 | 2017-12-20 |  |  |  | 2 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A171219113 | F309 | Manic episode, unspecified | ICD10 | 12272017 | 12182017 | 12202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved Unskilled | 3 | Revenue | RV |  |  |  | 2.0 |
| 12042017 | 2017-12-04T11:41:35+00:00 |  | 000038230-01 | Donna | Little | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12162017 | Standard |  |  | 2017-11-30 | 17/RHA01= $2812.08 | 0 | 2017-12-16 |  | 2017-12-21 | 2017-12-21 | 16 | 16 | 2812.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204133 | M6281 | Muscle weakness (generalized) | ICD10 | 12272017 | 11302017 | 12162017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 11192017 | 2017-11-19T08:55:40+00:00 |  | 000021873-01 | THELMA | SOTHEN | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11162017 | 12152017 | Standard |  |  | 2017-11-16 | 16/RVC01= $3539.19 9 DAYS @ $200.00= $1800.00 TOTAL: $5339.19 | 0 | 2017-12-15 |  | 2017-12-21 | 2017-12-21 | 29 | 29 | 5339.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120023 | S72012D | Unsp intracap fx left femur, subs for clos fx w routn heal | ICD10 | 12272017 | 11162017 | 12152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5339 | 5339 | Approved | 30 | Revenue | RV |  |  |  | 9.0 |
| 12212017 | 2017-12-21T14:05:48+00:00 |  | 000003293-01 | ROBERT | BARNETT | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 12272017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 12182017 | 12222017 | Standard |  |  | 2017-12-18 | UNSKILLED RATE OF $200.00/DAY X 4 DAYS=$800.00 | 0 | 2017-12-22 |  |  |  | 4 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A171221073 | M6281 | Muscle weakness (generalized) | ICD10 | 12272017 | 12182017 | 12222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved Unskilled | 5 | Revenue | RV |  |  |  | 4.0 |
| 12012017 | 2017-12-01T16:34:59+00:00 |  | 000034149-01 | CHARLES | PORTER | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12152017 | Standard |  |  | 2017-11-30 | 16/RUA01= $3214.76 | 0 | 2017-12-15 |  | 2017-12-21 | 2017-12-21 | 15 | 15 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204016 | I639 | Cerebral infarction, unspecified | ICD10 | 12272017 | 11302017 | 12152017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12042017 | 2017-12-04T15:20:31+00:00 |  | 000001389-01 | BEATRICE | PURSLEY | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12022017 | 12162017 | Standard |  |  | 2017-12-02 | 16/RVB01= $3350.20 | 0 | 2017-12-16 |  | 2017-12-21 | 2017-12-21 | 11 | 11 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205005 | E039, E785, E871, G4734, G8929, I10, M810, S22040A, S22060A | Wedge compression fracture of T7-T8 vertebra, init | ICD10 | 12272017 | 12022017 | 12162017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 11142017 | 2017-11-14T10:45:57+00:00 |  | 000077901-01 | Evelyn | Akers | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 12272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 11122017 | 12022017 | Standard |  |  | 2017-11-12 | 16/RVC01= $3539.19 | 0 | 2017-12-02 |  | 2017-12-22 | 2017-12-22 | 20 | 20 | 3539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114091 | M6281 | Muscle weakness (generalized) | ICD10 | 12272017 | 11122017 | 12022017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12052017 | 2017-12-05T16:18:34+00:00 |  | 000078478-01 | Edward | Ross | TEAGUE, PHILLIP C | 944173 | PHILLIP C | TEAGUE | 1770571069 | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF COSHOCTON | 12272017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12042017 | 12192017 | Standard |  |  | 2017-12-04 | 17/RUC01= $6049.81 | 0 | 2017-12-19 |  | 2017-12-22 | 2017-12-22 | 15 | 15 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206004 | M84359D | Stress fracture, hip, unsp, subs for fx w routn heal | ICD10 | 12272017 | 12042017 | 12192017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12152017 | 2017-12-15T12:42:37+00:00 |  | 000117130-01 | Dewey | Turbeville | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | GREYSTONE HEALTH & REHABILITATION CE | 942955 | 1326438128 | GREYSTONE HEALTH & REHABILITATION CE | 1326438128 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREYSTONE HEALTH & REHABILITATION CE | 12272017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12132017 | 12162017 | Standard |  |  | 2017-12-13 | 3 DAYS NONSKILLED @ $200.00= $600.00 | 0 | 2017-12-16 |  |  |  | 3 | 0 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215079 | I82491 | Acute embolism and thrombosis of deep vein of r low extrem | ICD10 | 12272017 | 12132017 | 12162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 10242017 | 2017-10-24T17:07:33+00:00 |  | 000098031-01 | Donald | Wells | LICKING MEM HLTH PROF | 926222 | CHARLES L | GEIGER | 1235115270 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10222017 | 12112017 | Standard |  |  | 2017-10-22 | 17/RUC01= $6049.81 23 DAYS @ $250.00= $5750.00 TOTAL: $11799.81 | 21 | 2017-12-11 |  | 2017-12-26 | 2017-12-26 | 43 | 71 | 11799.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025008 | G20, I10, I4430, L03818, R001 | Bradycardia, unspecified | ICD10 | 12272017 | 10222017 | 12112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 51 | Revenue | RV |  |  |  | 7.0 |
| 09072017 | 2017-09-07T15:46:37+00:00 |  | 000037842-01 | PATRICIA | RUSS | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09052017 | 12182017 | Standard |  |  | 2017-09-05 | 17/RVC01= $6306.19 80 DAYS @ $200.00= $16000.00 TOTAL: $22306.19 | 0 | 2017-12-18 |  | 2017-12-27 |  | 100 | 100 | 22306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908039 | I639 | Cerebral infarction, unspecified | ICD10 | 12272017 | 09052017 | 12182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 105 | Revenue | RV |  |  |  | 10.0 |
| 12112017 | 2017-12-11T13:07:35+00:00 |  | 000058424-01 | LEONA | MIDDLETON | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12062017 | 12242017 | Standard |  |  | 2017-12-06 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-12-24 |  | 2017-12-26 | 2017-12-26 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211113 | I4891 | Unspecified atrial fibrillation | ICD10 | 12272017 | 12062017 | 12242017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 11032017 | 2017-11-03T11:30:15+00:00 |  | 000068308-01 | THEODORE | NUNGESSER | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11022017 | 12142017 | Standard |  |  | 2017-11-02 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-12-14 | 2017-12-11 | 2017-12-18 | 2017-12-18 | 42 | 42 | 11733.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103078 | , I10, I4891, M25552, R52, S72142D, V484XXS | Prsn brd/alit a car injured in nonclsn trnsp acc, sequela | ICD10 | 12272017 | 11022017 | 12142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 43 | Revenue | RV |  |  |  | 6.0 |
| 12012017 | 2017-12-01T14:56:33+00:00 |  | 000045673-01 | Mary | Elliott | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11292017 | 12212017 | Standard |  |  | 2017-11-29 | Per MDS: 17/RVB01 = $5411.86 | 20 | 2017-12-21 | 2017-12-22 | 2017-12-22 | 2017-12-22 | 22 | 42 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201061 | I639, Z5189 | Encounter for other specified aftercare | ICD10 | 12272017 | 11292017 | 12212017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 12142017 | 2017-12-14T12:58:15+00:00 |  | 000075822-01 | Terry | Anderson | JEFFREY J HAGGENJOS | 916460 | JEFFREY J | HAGGENJOS | 1417940172 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 12272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12122017 | 12202017 | Standard |  |  | 2017-12-12 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-12-20 |  | 2017-12-26 | 2017-12-26 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215007 | D291, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 12272017 | 12122017 | 12202017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 12112017 | 2017-12-11T15:36:40+00:00 |  | 000089442-01 | Victoria | Gerardi | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12102017 | 12212017 | Standard |  |  | 2017-12-10 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-12-21 |  | 2017-12-18 | 2017-12-21 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211158 | E039, F419, G4733, I10, K219, M47816 | Spondylosis w/o myelopathy or radiculopathy, lumbar region | ICD10 | 12272017 | 12102017 | 12212017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 12112017 | 2017-12-11T14:18:01+00:00 |  | 000044626-01 | KATHERINE | RINEHART | PICKAWAY HEALTH SERVICES | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12082017 | 12222017 | Standard |  |  | 2017-12-08 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-12-22 |  | 2017-12-22 | 2017-12-22 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211132 | J438 | Other emphysema | ICD10 | 12272017 | 12082017 | 12222017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 10202017 | 2017-10-20T16:15:36+00:00 |  | 000038090-01 | RITA | SHONK | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 12272017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 10192017 | 12212017 | Standard |  |  | 2017-10-19 | Per MDS: 16RUC01 = $7333.11 Per Diem: $250.00/day x 29 days = $7250.00 Per Diem: $200.00/day x 11 days = $2200.00 TOTAL PAYMENT = $16,783.11 | 0 | 2017-12-21 | 2017-12-18 | 2017-12-26 | 2017-12-26 | 60 | 60 | 16783.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023051 | E119, I739, N186, R296, R4182, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 12272017 | 10192017 | 12212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 64 | Revenue | RV |  |  |  | 5.0 |
| 10022017 | 2017-10-02T16:14:39+00:00 |  | 000039739-01 | ROMULA | KIGER | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09292017 | 12212017 | Standard |  |  | 2017-09-29 | Per MDS: 16RUC01 = $7333.11 Per Diem: $250.00/day x 18 days = $4500.00 Per Diem: $200.00/day x 44 days = $8800.00 TOTAL PAYMENT = $20,633.11 | 0 | 2017-12-21 | 2017-12-18 | 2017-12-26 | 2017-12-26 | 82 | 82 | 20633.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003038 | D649, E871, E876, I10, K922, R531, Z9181 | History of falling | ICD10 | 12272017 | 09292017 | 12212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 84 | Revenue | RV |  |  |  | 6.0 |
| 12152017 | 2017-12-15T09:23:07+00:00 |  | 000044681-01 | THOMAS | RICKEY | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12132017 | 12222017 | Standard |  |  | 2017-12-13 | Swing Bed Daily rate x 9 days | 0 | 2017-12-22 |  |  | 2017-12-21 | 9 | 9 | Swing Bed Daily rate x 9 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215071 | I6350 | Cereb infrc due to unsp occls or stenos of unsp cereb artery | ICD10 | 12272017 | 12132017 | 12222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 10 | Revenue | RV |  |  |  | 2.0 |
| 11292017 | 2017-11-29T10:10:37+00:00 |  | 000116828-01 | Annette | Stevenson | AMERICAN HLTH NETWORK OC | 900219 | FRANCISCO A | GARABIS | 1992747240 | ISABELLE RIDGWAY CARE CENTER | 939311 | 1225024946 | ISABELLE RIDGWAY CARE CENTER | 1225024946 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ISABELLE RIDGWAY CARE CENTER | 12272017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11272017 | 12162017 | Standard |  |  | 2017-11-27 | 17/RUA01=$3,214.76 | 0 | 2017-12-16 |  | 2017-12-27 | 2017-12-27 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129112 | G935 | Compression of brain | ICD10 | 12272017 | 11272017 | 12162017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 12182017 | 2017-12-18T12:04:18+00:00 |  | 000039765-01 | EARL | GILLOTTE | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12152017 | 12182017 | Standard |  |  | 2017-12-15 | 16/RMA01=$1,524.55 | 0 | 2017-12-18 |  | 2017-12-27 | 2017-12-19 | 3 | 3 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218126 | R296 | Repeated falls | ICD10 | 12272017 | 12152017 | 12182017 | RMA01 | MEDIUM REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 4 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 10122017 | 2017-10-12T10:55:54+00:00 |  | 000000986-01 | DARLENE | PEACE | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | EDGEWOOD MANOR OF WESTER | 952373 | 1518485820 | BUCKEYE TERRACE REHABILITATION & NUR | 1518485820 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BUCKEYE TERRACE REHABILITATION & NUR | 12272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10102017 | 12192017 | Standard |  |  | 2017-10-10 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X 50 DAYS=$10,000.00 TOTAL PAYMENT=$15,411.86 | 30 | 2017-12-19 |  | 2017-12-27 | 2017-12-27 | 70 | 100 | 15411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012043 | S8262XS | Disp fx of lateral malleolus of left fibula, sequela | ICD10 | 12272017 | 10102017 | 12192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 71 | Revenue | RV |  |  |  | 12.0 |
