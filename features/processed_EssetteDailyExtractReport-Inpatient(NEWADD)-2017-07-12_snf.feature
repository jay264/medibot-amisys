Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-12_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-12_SNF
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
| 04062017 | 2017-04-06T14:42:32+00:00 |  | 000115738-01 | Victoria | Gardner | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | CEDAR HILL CARE CENTER | 924191 | 1326035130 | CEDAR HILL CARE CENTER | 1326035130 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CEDAR HILL CARE CENTER | 07122017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 04042017 | 07052017 | Standard |  |  | 2017-04-04 | 17/RVA01=$3586.28 73 DAYS @ $200.00= $14600.00 VANCO (PER INVOICE)= $3474.76 INVANZ= $8905.85 WOUND VAC CANISTERS=$679.40 WOUND VAC RENTAL= $2249.00 WOUND VAC FOAM $563.00 WOUND VAC DRESSINGS= $400.00 TOTAL: $34458.29 | 0 | 2017-07-06 |  | 2017-07-11 | 2017-07-11 | 93 | 93 | 34458.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170406077 | M14671 | Charcot's joint, right ankle and foot | ICD10 | 07122017 | 04042017 | 07062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 93 | Revenue | RV |  |  |  | 8.0 |
| 04242017 | 2017-04-24T10:27:21+00:00 |  | 000116419-01 | Cornelius | Schaub | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | CAMBRIDGE HEALTHCARE AND | 930700 | 1053662429 | ASTORIA PLACE OF CAMBRIDGE | 1053662429 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF CAMBRIDGE | 07122017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 04222017 | 06132017 | Standard |  |  | 2017-04-22 | 16/RVB01= $3350.20 31 DAYS @ $200.00= $6200.00 TOTAL: $9550.20 | 0 | 2017-06-14 |  | 2017-07-11 |  | 51 | 51 | 9550.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424083 | I255 | Ischemic cardiomyopathy | ICD10 | 07122017 | 04222017 | 06142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9550 | 9550 | Approved | 53 | Revenue | RV |  |  |  | 5.0 |
| 05192017 | 2017-05-19T08:53:13+00:00 |  | 000051573-01 | JIMMIE | HARRIS | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07122017 | 07192017 | Standard |  |  | 2017-05-17 | 17?RVB01=$5,411.86 | 0 | 2017-05-26 |  | 2017-05-31 | 2017-05-31 | 9 | 9 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519038 | J449, K7460 | Unspecified cirrhosis of liver | ICD10 | 07122017 | 05172017 | 05262017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 06052017 | 2017-06-05T17:37:19+00:00 |  | 000011115-01 | BEULAH | SMITH | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 07122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06012017 | 07052017 | Standard |  |  | 2017-06-01 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 9 days = $2250.00 Per Diem: $200.00/day x 6 days = $1200.00 TOTAL PAYMENT = $9756.19 | 0 | 2017-07-06 |  | 2017-07-11 |  | 35 | 35 | 9756.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606039 | Z4789, Z9181 | History of falling | ICD10 | 07122017 | 06012017 | 07062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9756 | 9756 | Approved | 35 | Revenue | RV |  |  |  | 1.0 |
| 06122017 | 2017-06-12T13:56:52+00:00 |  | 000088946-01 | Barbara | Stingel | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 07122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 06092017 | 06192017 | Standard |  |  | 2017-06-09 | 16/RVB01= $3350.20 | 0 | 2017-06-20 |  | 2017-07-11 | 2017-07-11 | 11 | 11 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612112 | R0602 | Shortness of breath | ICD10 | 07122017 | 06092017 | 06202017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06152017 | 2017-06-15T15:38:55+00:00 |  | 000109064-01 | Bonita | Carpenter | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 07122017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 06142017 | 07052017 | Standard |  |  | 2017-06-14 | 17/RVB01=$5411.86 | 40 | 2017-07-06 |  | 2017-07-11 | 2017-07-11 | 22 | 62 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615081 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07122017 | 06142017 | 07062017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 06192017 | 2017-06-19T08:10:17+00:00 |  | 000010172-01 | GEORGE | STRODE | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 07122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06162017 | 06252017 | Standard |  |  | 2017-06-16 | Per MDS: 17/RVC01 = $6306.19 | 37 | 2017-06-25 |  | 2017-07-11 |  | 9 | 46 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619044 | I4891, N390 | Urinary tract infection, site not specified | ICD10 | 07122017 | 06162017 | 06252017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 06202017 | 2017-06-20T09:54:24+00:00 |  | 000080748-01 | Troy | Wilson | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 07122017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 06172017 | 07062017 | Standard |  |  | 2017-06-17 | 16/RVB01= $3350.20 | 8 | 2017-07-07 |  | 2017-07-11 | 2017-07-11 | 20 | 28 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620059 | A419, R6521 | Severe sepsis with septic shock | ICD10 | 07122017 | 06172017 | 07072017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06202017 | 2017-06-20T11:11:29+00:00 |  | 000071616-01 | Constantinos | Karatsoridis | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06162017 | 06232017 | Standard |  |  | 2017-06-16 | Per MDS: 17/HE201 = $4714.89 | 0 | 2017-06-24 |  | 2017-07-10 | 2017-07-10 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620087 | I4891, M6281, R296 | Repeated falls | ICD10 | 07122017 | 06162017 | 06242017 | HE201 | SPECIAL CARE HIGH , ADL INDEX 15-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06202017 | 2017-06-20T15:54:57+00:00 |  | 000116778-01 | Carol | Luaces | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 07122017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06172017 | 06262017 | Standard |  |  | 2017-06-17 | 17/RVB01=$5411.86 | 9 | 2017-06-27 |  | 2017-07-10 | 2017-07-10 | 10 | 19 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620117 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 07122017 | 06172017 | 06272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 06212017 | 2017-06-21T09:55:23+00:00 |  | 000060211-01 | MARILYN | HALASI | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | EDGEWOOD MANOR OF WESTER | 936550 | 1134133986 | EDGEWOOD MANOR OF WESTERVILLE | 1134133986 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDGEWOOD MANOR OF WESTERVILLE | 07122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06192017 | 07052017 | Standard |  |  | 2017-06-19 | Per MDS: 16/RVA01 = $2689.71 | 0 | 2017-07-06 |  | 2017-07-06 | 2017-07-06 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621045 | S3210XD | Unsp fracture of sacrum, subs for fx w routn heal | ICD10 | 07122017 | 06192017 | 07062017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 06222017 | 2017-06-22T07:16:18+00:00 |  | 000038400-01 | DAVID | KNOPP | WEST JEFFERSON FAM PRCT | 936655 | MARK W | GARWOOD | 1275595274 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 07122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06202017 | 06212017 | Standard |  |  | 2017-06-20 | Per MDS: 17/PB101 = $2132.09 | 0 | 2017-06-22 |  | 2017-07-11 |  | 2 | 2 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622007 | C669, N135 | Crossing vessel and stricture of ureter w/o hydronephrosis | ICD10 | 07122017 | 06202017 | 06222017 | PB101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 2 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 06232017 | 2017-06-23T13:10:31+00:00 |  | 000087572-01 | John | Sellars | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 07122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06212017 | 07102017 | Standard |  |  | 2017-06-21 | 16/RUC01=$7333.11 | 0 | 2017-07-11 |  | 2017-07-12 | 2017-07-12 | 20 | 20 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623057 | C799, C8518, I10, I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 07122017 | 06212017 | 07112017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06262017 | 2017-06-26T15:14:40+00:00 |  | 000010601-01 | D | MILES | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | ISABELLE RIDGWAY CARE CENTER | 939311 | 1225024946 | ISABELLE RIDGWAY CARE CENTER | 1225024946 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ISABELLE RIDGWAY CARE CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06232017 | 07042017 | Standard |  |  | 2017-06-23 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-07-05 |  | 2017-07-11 |  | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626128 | N390, R42 | Dizziness and giddiness | ICD10 | 07122017 | 06232017 | 07052017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 06292017 | 2017-06-29T11:22:04+00:00 |  | 000037212-01 | ERIC | WHITE | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06272017 | 06282017 | Standard |  |  | 2017-06-27 | Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $400.00 | 0 | 2017-06-29 |  | 2017-07-01 |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629054 | H547, I10, M4322, M79601, N186 | End stage renal disease | ICD10 | 07122017 | 06272017 | 06292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
| 04242017 | 2017-04-24T15:12:31+00:00 |  | 000112350-01 | Eleanor | Sanford | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 07122017 | Denied | MediGold Essential Care | Fax | Requested Medical Documentation Not Received | Inpatient | 07122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170425057 | M4800 | Spinal stenosis, site unspecified | ICD10 | 07122017 | 04192017 |  | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 0 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 05032017 | 2017-05-03T15:09:20+00:00 |  | 000072345-01 | Joyce | Glick | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 07122017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 07122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170504051 | S72002A, Z9181 | History of falling | ICD10 | 07122017 | 05012017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05052017 | 2017-05-05T10:46:05+00:00 |  | 000048832-01 | WAYNE | EVANS | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 07122017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 07122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170505052 | I25810 | Atherosclerosis of CABG w/o angina pectoris | ICD10 | 07122017 | 05032017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 06052017 | 2017-06-05T09:20:50+00:00 |  | 000048832-01 | WAYNE | EVANS | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 07122017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 07122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170605093 | K5660 | Unspecified intestinal obstruction | ICD10 | 07122017 | 05152017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
