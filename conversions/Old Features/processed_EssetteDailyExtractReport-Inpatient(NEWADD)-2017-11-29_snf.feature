Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-29_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-29_SNF
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
| 11202017 | 2017-11-20T14:58:13+00:00 |  | 000017949-01 | ANNA | GORDON | HOSP SVC MED GRP OF MARY | 907151 | JEROME M | KONG | 1598711657 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11172017 | 11262017 | Standard |  |  | 2017-11-17 | 17/RVB01=$5,411.86 | 0 | 2017-11-26 |  | 2017-11-27 | 2017-11-27 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120126 | S7291XD | Unsp fracture of right femur, subs for clos fx w routn heal | ICD10 | 11292017 | 11172017 | 11262017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 11152017 | 2017-11-15T15:45:15+00:00 |  | 000097375-01 | E Virginia | Evans | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | ADAMS LANE CARE CENTER | 924190 | 1841288149 | ADAMS LANE CARE CENTER | 1841288149 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ADAMS LANE CARE CENTER | 11292017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 11142017 | 11252017 | Standard |  |  | 2017-11-14 | 17/RVC01= $6306.19 | 0 | 2017-11-25 |  | 2017-11-28 | 2017-11-28 | 11 | 11 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115089 | R627 | Adult failure to thrive | ICD10 | 11292017 | 11142017 | 11252017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 11062017 | 2017-11-06T08:05:55+00:00 |  | 000026194-01 | Lesley | Oxley | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 11292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11022017 | 11252017 | Standard |  |  | 2017-11-02 | 17/RVB01=$5,411.86 | 0 | 2017-11-25 |  | 2017-11-28 | 2017-11-28 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106085 | R296 | Repeated falls | ICD10 | 11292017 | 11022017 | 11252017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 10132017 | 2017-10-13T16:37:09+00:00 |  | 000027151-01 | CARL | HOY | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10112017 | 11172017 | Standard |  |  | 2017-10-11 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.00/DAY X 17=$3,400.00 TOTAL PAYMENT=$9,706.19 | 19 | 2017-11-17 |  | 2017-11-27 | 2017-11-27 | 37 | 56 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016012 | B967 | Clostridium perfringens causing diseases classd elswhr | ICD10 | 11292017 | 10112017 | 11172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9706 | 9706 | Approved Skilled | 38 | Revenue | RV |  |  |  | 3.0 |
| 10192017 | 2017-10-19T17:05:09+00:00 |  | 000101941-01 | James | Ramey | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10112017 | 10242017 | Standard |  |  | 2017-10-11 | 17/RVA01=$3,586.28 | 8 | 2017-10-24 |  | 2017-11-28 | 2017-11-28 | 13 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020024 | M179, M6281, R262, Z471 | Aftercare following joint replacement surgery | ICD10 | 11292017 | 10112017 | 10242017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10252017 | 2017-10-25T11:44:20+00:00 |  | 000068469-01 | WILLIAM | EDWARDS | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10242017 | 11172017 | Standard |  |  | 2017-10-24 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 4 SNF Days = $800.00 Total Payment: $6,849.81 | 0 | 2017-11-17 |  | 2017-11-17 |  | 24 | 24 | 6849.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025049 | M4807 | Spinal stenosis, lumbosacral region | ICD10 | 11292017 | 10242017 | 11172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6849 | 6849 | Approved | 25 | Revenue | RV |  |  |  | 4.0 |
| 11202017 | 2017-11-20T13:36:17+00:00 |  | 000117307-01 | PAMELA | CLINE | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11172017 | 11232017 | Standard |  |  | 2017-11-17 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-11-23 |  | 2017-11-28 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120120 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11292017 | 11172017 | 11232017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 11102017 | 2017-11-10T16:16:49+00:00 |  | 000106408-01 | Ernest | Erickson | SOUND KENWOOD HSPISTS OF | 926206 | CHANTAL G | WALSH | 1740274760 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 11292017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 11092017 | 11222017 | Standard |  |  | 2017-11-09 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-11-22 |  | 2017-11-28 |  | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113005 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 11292017 | 11092017 | 11222017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 11202017 | 2017-11-20T12:17:58+00:00 |  | 000027430-01 | SALLY | SALT | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11182017 | 11272017 | Standard |  |  | 2017-11-18 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-11-27 |  | 2017-11-28 | 2017-11-28 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120085 | Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 11292017 | 11182017 | 11272017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 11092017 | 2017-11-09T15:52:52+00:00 |  | 000066862-01 | MARILYN | PHILLIPS | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | SOMERSET HEALTH & REHABILITATION C | 942963 | 1952791758 | SOMERSET HEALTH & REHABILITATION C | 1952791758 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOMERSET HEALTH & REHABILITATION C | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11072017 | 11232017 | Standard |  |  | 2017-11-07 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-11-23 |  | 2017-11-27 | 2017-11-27 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109085 | R296 | Repeated falls | ICD10 | 11292017 | 11072017 | 11232017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 11012017 | 2017-11-01T11:05:07+00:00 |  | 000031682-01 | WILLIAM | BOWLING | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10312017 | 11082017 | Standard |  |  | 2017-10-31 | 14/RVA01= $2689.71 | 0 | 2017-11-08 |  | 2017-11-14 | 2017-11-14 | 8 | 8 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101040 | Z96642 | Presence of left artificial hip joint | ICD10 | 11292017 | 10312017 | 11082017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 10312017 | 2017-10-31T10:58:25+00:00 |  | 000088157-01 | Herschel | Haulman | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 11292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10242017 | 11282017 | Standard |  |  | 2017-10-24 | Contract/RUG: 17/RVC  (Per MDS) = $6,306.19 Per Diem: $200.00/day x 15 SNF Days = $3,000.00 Total Payment: $9,306.19 | 0 | 2017-11-28 |  | 2017-11-28 | 2017-11-27 | 35 | 35 | 9306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031060 | G20, M6281, R262, R319, R443 | Hallucinations, unspecified | ICD10 | 11292017 | 10242017 | 11282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9306 | 9306 | Approved | 36 | Revenue | RV |  |  |  | 1.0 |
| 08182017 | 2017-08-18T17:32:11+00:00 |  | 000091271-01 | Stephen | Means | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 11292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08162017 | 11042017 | Standard |  |  | 2017-08-16 | PER DIEM RATE OF $200.00/DAY X 72 DAYS=14,400.00 CARVE OUT FOR IV'S VANCO & MEROPENEM=$9,400.39 CARVE OUT FOR WOUND VAC=$2,890.00 TOTAL PAYMENT=$26,690.39 | 28 | 2017-11-04 |  | 2017-11-28 | 2017-11-28 | 72 | 100 | 26690.39 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821114 | R6520 | Severe sepsis without septic shock | ICD10 | 11292017 | 08162017 | 11042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 81 | Revenue | RV |  |  |  | 1.0 |
| 11272017 | 2017-11-27T08:58:15+00:00 |  | 000066935-01 | MELENIE | BARCLAY | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 11292017 | Denied Skilled - Pay Unskilled | MediGold Essential Care | Fax |  | Inpatient | 11242017 | 11282017 | Standard |  |  | 2017-11-25 | NON-SKILLED RATE OF $200.00/DAY X 4 DAYS=$800.00 | 24 | 2017-11-28 |  |  |  | 4 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A171127126 | B0189 | Other varicella complications | ICD10 | 11292017 | 11242017 | 11282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved Unskilled | 5 | Revenue | RV |  |  |  | 4.0 |
| 11132017 | 2017-11-13T15:07:45+00:00 |  | 000064064-01 | LOUISE | GOMPF | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11092017 | 11202017 | Standard |  |  | 2017-11-09 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-11-20 |  | 2017-11-29 | 2017-11-29 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113109 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11292017 | 11092017 | 11202017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 11212017 | 2017-11-21T13:58:57+00:00 |  | 000015945-01 | ESTHER | MESSERKNECHT | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11182017 | 11222017 | Standard |  |  | 2017-11-18 | Per MDS: 17/PC101 = $2465.35 | 0 | 2017-11-22 |  | 2017-11-29 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121073 | S065X0D, Z5189 | Encounter for other specified aftercare | ICD10 | 11292017 | 11182017 | 11222017 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 11272017 | 2017-11-27T15:17:49+00:00 |  | 000096612-01 | JUDY | MCKNIGHT | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11222017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128031 | M6281, Z950 | Presence of cardiac pacemaker | ICD10 | 11292017 | 11222017 | 11282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved | 7 | Revenue | RV |  |  |  | 6.0 |
| 11192017 | 2017-11-19T08:54:02+00:00 |  | 000047744-01 | Cean | Hollenbaugh | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 11292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11162017 | 11182017 | Standard |  |  | 2017-11-16 | 2 NONSKILLED DAYS @ $200.00= $400.00 | 0 | 2017-11-18 |  |  |  | 2 | 0 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120017 | Z96652 | Presence of left artificial knee joint | ICD10 | 11292017 | 11162017 | 11182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 11142017 | 2017-11-14T13:13:06+00:00 |  | 000040763-01 | MARCIA | SHORE | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 11292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11112017 | 11252017 | Standard |  |  | 2017-11-11 | 16/RVC01=$3,539.19 | 0 | 2017-11-25 |  | 2017-11-28 | 2017-11-21 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115002 | S32402D | Unsp fracture of left acetabulum, subs for fx w routn heal | ICD10 | 11292017 | 11112017 | 11252017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
