Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-16_to_2018-02-18_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-16_to_2018-02-18_SNF
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
| 01082018 | 2018-01-08T11:43:21+00:00 |  | 000043070-01 | JANET | ENGBERG | CANYON MEDICAL CENTER | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02162018 | 02232018 | Standard |  |  | 2018-01-05 | 17/RHB01=$3,699.42 | 0 | 2018-01-12 |  | 2018-01-17 |  | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108110 | I10, I5023, M6281 | Muscle weakness (generalized) | ICD10 | 02162018 | 01052018 | 01122018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 01052018 | 2018-01-05T13:52:31+00:00 |  | 000018527-01 | RICHARD | SAMPSON | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 02092018 | Standard |  |  | 2018-01-04 | 16/RUC01=7,333.11 PER DIEM RATE OF $250.00/DAY X 14 DAYS=$3500.00 TOTAL PAYMENT TO FACILITY=$10,833.11 *NO AUTH AFTER 2/6/18 | 0 | 2018-02-09 |  | 2018-02-09 | 2018-02-09 | 34 | 36 | 10833.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105077 | I69351 | Hemiplga following cerebral infrc aff right dominant side | ICD10 | 02162018 | 01042018 | 02092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 37 | Revenue | RV |  |  |  | 2.0 |
| 01222018 | 2018-01-22T14:53:13+00:00 |  | 000024550-01 | BRYAN | LAYNE | HOSPICE OF CENTRAL OHIO | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 02062018 | Standard |  |  | 2018-02-19 | 17/RUB01= $5813.99 | 0 | 2018-02-06 |  | 2018-02-15 |  | 18 | 18 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122132 | J09X2, J189, J449, J9621, J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 02162018 | 01192018 | 02062018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 12272017 | 2017-12-27T17:01:23+00:00 |  | 000004736-01 | JOAN | RICKELMAN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12222017 | 02092018 | Standard |  |  | 2017-12-22 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X 29 DAYS=$5,800.00 TOTAL PAYMENT=$11,211.86 | 0 | 2018-02-09 |  | 2018-02-15 | 2018-02-15 | 49 | 49 | 11211.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228006 | M25511, R279 | Unspecified lack of coordination | ICD10 | 02162018 | 12222017 | 02092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 50 | Revenue | RV |  |  |  | 7.0 |
| 01262018 | 2018-01-26T08:12:34+00:00 |  | 000091827-01 | Jean | Hardin | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01242018 | 02082018 | Standard |  |  | 2018-01-24 | Contract/RUG: 17/RHB (Per MDS) = $3,699.42 | 0 | 2018-02-08 |  | 2018-02-15 | 2018-02-15 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126037 | Z96651 | Presence of right artificial knee joint | ICD10 | 02162018 | 01242018 | 02082018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 02022018 | 2018-02-02T16:05:58+00:00 |  | 000049702-01 | DONALD | LEWIS | WELLER HEALTH TRANSITION | 917780 | CHRISTINE B | WELLER | 1811953318 | SPRINGFIELD MASONIC COMM | 939421 | 1962510305 | SPRINGFIELD MASONIC COMMUNITY | 1962510305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SPRINGFIELD MASONIC COMMUNITY | 02162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02012018 | 02142018 | Standard |  |  | 2018-02-01 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-02-14 |  | 2018-02-15 | 2018-02-15 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202063 | B963, J189, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 02162018 | 02012018 | 02142018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 02052018 | 2018-02-05T10:35:05+00:00 |  | 000102110-01 | Angelyn | Blakeman | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02152018 | Standard |  |  | 2018-02-02 | Per MDS: 17/RUB01 = $5813.99 | 16 | 2018-02-15 | 2018-02-15 | 2018-02-15 | 2018-02-15 | 13 | 29 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205037 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 02162018 | 02022018 | 02152018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 02052018 | 2018-02-05T10:45:50+00:00 |  | 000072584-01 | Helen | Helsel | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 02162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02022018 | 02152018 | Standard |  |  | 2018-02-02 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-02-15 |  | 2018-02-15 | 2018-02-15 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205041 | L02215 | Cutaneous abscess of perineum | ICD10 | 02162018 | 02022018 | 02152018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01162018 | 2018-01-16T15:39:11+00:00 |  | 000104444-01 | CHARLES | DOWNING | WELLER HEALTH TRANSITION | 917780 | CHRISTINE B | WELLER | 1811953318 | SPRINGFIELD MASONIC COMM | 939421 | 1962510305 | SPRINGFIELD MASONIC COMMUNITY | 1962510305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SPRINGFIELD MASONIC COMMUNITY | 02162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01152018 | 02172018 | Standard |  |  | 2018-01-15 | Contract/RUG: 17/RUC (Per MDS) = $ 6,049.81 Per Diem: $250.00/day x 11 SNF Days = $2,750.00 Total Payment: $ 8,799.81 | 0 | 2018-02-17 |  | 2018-02-09 | 2018-02-15 | 31 | 33 | 8799.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116087 | I639 | Cerebral infarction, unspecified | ICD10 | 02162018 | 01152018 | 02172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8799 | 8799 | Approved | 34 | Revenue | RV |  |  |  | 2.0 |
| 01292018 | 2018-01-29T08:19:31+00:00 |  | 000032733-01 | ALONZO | ESTEP | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02152018 | Standard |  |  | 2018-01-26 | 16/RUC01= $7333.11 | 0 | 2018-02-15 |  | 2018-02-16 | 2018-02-16 | 20 | 20 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129066 | S92344S | Nondisp fx of fourth metatarsal bone, right foot, sequela | ICD10 | 02162018 | 01262018 | 02152018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02052018 | 2018-02-05T09:21:04+00:00 |  | 000024673-01 | WILMA | GRAY | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02012018 | 02162018 | Standard |  |  | 2018-02-01 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 1 | 2018-02-16 | 2018-02-16 | 2018-02-16 | 2018-02-16 | 15 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205007 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02162018 | 02012018 | 02162018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 02082018 | 2018-02-08T13:08:53+00:00 |  | 000115220-01 | Thomas | Collins | ARTHUR H WIN MD LLC | 905083 | ARTHUR H | WIN | 1780667444 | ARBORS AT SPRINGFIELD | 943322 | 1467850305 | ARBORS AT SPRINGFIELD | 1467850305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT SPRINGFIELD | 02162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02052018 | 02112018 | Standard |  |  | 2018-02-05 | Per Diem: Vent $520.00/day x 6 SNF Days = $3,120.00 | 0 | 2018-02-11 |  |  |  | 6 | 6 | 3120.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208062 | I609, J690, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02162018 | 02052018 | 02112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3120 | 3120 | Approved | 7 | Revenue | RV |  |  |  | 6.0 |
| 12152017 | 2017-12-15T16:41:20+00:00 |  | 000067305-01 | JAMES | COOPER | INPATIENT CNSLT OF OH IN | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF MIAMISBURG OH LLC | 905914 | 1184666406 | HEARTLAND OF MIAMISBURG OH LLC | 1184666406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MIAMISBURG OH LLC | 02162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12142017 | 02142018 | Standard |  |  | 2017-12-14 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 42 SNF Days = $8,400.00 Total Payment: $14,449.81 | 0 | 2018-02-14 |  | 2018-02-16 | 2018-02-16 | 62 | 62 | 14449.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218049 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 02162018 | 12142017 | 02142018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 63 | Revenue | RV |  |  |  | 7.0 |
| 01242018 | 2018-01-24T11:36:59+00:00 |  | 000009900-01 | ROSELLA | RIDENOUR | COLS INPATIENT CARE INC | 919184 | ASHITA | SINHA | 1821110693 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01222018 | 01292018 | Standard |  |  | 2018-01-22 | 17/RVB01=$5,411.86 | 0 | 2018-01-29 |  | 2018-02-16 |  | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124048 | N390 | Urinary tract infection, site not specified | ICD10 | 02162018 | 01222018 | 01292018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 01242018 | 2018-01-24T11:40:16+00:00 |  | 000013252-01 | EVELYN | JOHNSON | COLS INPATIENT CARE INC | 919184 | ASHITA | SINHA | 1821110693 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01222018 | 02092018 | Standard |  |  | 2018-01-22 | 17/RUC01=$6,049.81 | 0 | 2018-02-09 |  | 2018-02-16 | 2018-02-16 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124053 | R296, S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 02162018 | 01222018 | 02092018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 01242018 | 2018-01-24T14:24:20+00:00 |  | 000012284-01 | BARBARA | BAUR | CONSOLIDATED RESOURCES H | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01172018 | 01292018 | Standard |  |  | 2018-01-17 | 17/RVC01=$6,306.19 | 0 | 2018-01-29 |  | 2018-02-15 |  | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124071 | C8591 | Non-Hodgkin lymphoma, unsp, nodes of head, face, and neck | ICD10 | 02162018 | 01172018 | 01292018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01292018 | 2018-01-29T14:34:51+00:00 |  | 000001151-01 | JANICE | ERLICH | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02042018 | Standard |  |  | 2018-01-26 | 16/RUB01=$4,429.71 | 0 | 2018-02-04 |  | 2018-02-14 |  | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129127 | J111, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02162018 | 01262018 | 02042018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01292018 | 2018-01-29T16:12:34+00:00 |  | 000042789-01 | PAUL | CAMPBELL | RUKSENAS, AUDRIUS | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND AT CARECORE | 952605 | 1417470527 | WESTMORELAND AT CARECORE LLC | 1417470527 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND AT CARECORE LLC | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02152018 | Standard |  |  | 2018-01-26 | Contract/RUG: 16/RUA (Per MDS) = $3,214.76 | 0 | 2018-02-15 | 2018-02-16 | 2018-02-16 | 2018-02-16 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130041 | G459, R29810 | Facial weakness | ICD10 | 02162018 | 01262018 | 02152018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01292018 | 2018-01-29T17:06:23+00:00 |  | 000100723-01 | John | Flood | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 02162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01272018 | 02092018 | Standard |  |  | 2018-01-27 | 16/RUC01=$7,333.11 | 0 | 2018-02-09 |  | 2018-02-13 | 2018-02-13 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130043 | I5043, J810, J9601 | Acute respiratory failure with hypoxia | ICD10 | 02162018 | 01272018 | 02092018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01302018 | 2018-01-30T17:03:25+00:00 |  | 000021759-01 | ROBERT | PARRY | HEARTLAND OF UPTOWN WEST | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02062018 | Standard |  |  | 2018-01-26 | 17/RVC01=$6,306.19 | 0 | 2018-02-06 |  | 2018-02-15 |  | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131067 | Z959 | Presence of cardiac and vascular implant and graft, unsp | ICD10 | 02162018 | 01262018 | 02062018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 02072018 | 2018-02-07T10:52:12+00:00 |  | 000032511-01 | ROBERT | MOUK | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 02162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02052018 | 02072018 | Standard |  |  | 2018-02-05 | 2 days of nonskilled @ $200.00= $400.00 | 0 | 2018-02-07 |  |  |  | 4 | 0 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207033 | K812 | Acute cholecystitis with chronic cholecystitis | ICD10 | 02162018 | 02052018 | 02072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
