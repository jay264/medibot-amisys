Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-14_thru_2017-07-16_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-14_thru_2017-07-16_SNF
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
| 05042017 | 2017-05-04T14:52:53+00:00 |  | 000027029-01 | GLENNA | ROGERS | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272017 | 06042017 | Standard |  |  | 2017-04-27 | 17/RUB01=$5813.99 18 DAYS @$200.00=$3600.00 TOTAL: $9413.99 | 0 | 2017-06-04 |  | 2017-07-13 |  | 37 | 37 | 9413.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505071 | E1340, K5900, R0602 | Shortness of breath | ICD10 | 07142017 | 04272017 | 06042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 9413 |  | 39 | Revenue | RV |  |  |  | 4.0 |
| 05182017 | 2017-05-18T07:43:33+00:00 |  | 000034782-01 | MARY | BROWNING | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05162017 | 07122017 | Standard |  |  | 2017-05-16 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 16 days = $4000.00 Per Diem: $200.00/day x 22 days = $4400.00 TOTAL PAYMENT = $14,449.81 | 0 | 2017-07-13 |  | 2017-07-13 | 2017-07-13 | 58 | 58 | 14449.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518026 | S89001S | Unsp physeal fracture of upper end of right tibia, sequela | ICD10 | 07142017 | 05162017 | 07132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 58 | Revenue | RV |  |  |  | 7.0 |
| 05222017 | 2017-05-22T16:17:34+00:00 |  | 000052306-01 | JOHN | WESTLAKE | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05212017 | 07132017 | Standard |  |  | 2017-05-21 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 31 days = $7750.00 TOTAL PAYMENT = $15,083.11 | 0 | 2017-07-14 | 2017-07-11 | 2017-07-13 | 2017-07-13 | 51 | 51 | 15083.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523017 | I4891, I639, K922, N179, Z931, Z9981 | Dependence on supplemental oxygen | ICD10 | 07142017 | 05212017 | 07142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 54 | Revenue | RV |  |  |  | 1.0 |
| 05232017 | 2017-05-23T11:28:02+00:00 |  | 000005785-01 | MIRIAM | GARVER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05202017 | 06232017 | Standard |  |  | 2017-05-20 | 17/RVX01=$6171.24 15 DAYS @ $200.00=$3000.00 TOTAL: $9171.24 | 11 | 2017-06-24 |  | 2017-07-10 | 2017-07-10 | 35 | 46 | 9171.24 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523063 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 07142017 | 05202017 | 06242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9171 | 9171 | Approved | 35 | Revenue | RV |  |  |  | 1.0 |
| 06062017 | 2017-06-06T15:41:58+00:00 |  | 000085011-01 | Anna | Holbrook | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06052017 | 07042017 | Standard |  |  | 2017-06-05 | Per MDS: 17RVC01 = $6306.19 Per Diem: $250.00/ day x 10 days = $2500.00 TOTAL PAYMENT = $8806.19 | 30 | 2017-07-05 | 2017-07-11 | 2017-07-11 | 2017-07-11 | 30 | 60 | 8806.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606084 | I480 | Paroxysmal atrial fibrillation | ICD10 | 07142017 | 06052017 | 07052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8806 | 8806 | Approved | 30 | Revenue | RV |  |  |  | 3.0 |
| 06152017 | 2017-06-15T15:08:26+00:00 |  | 000061601-01 | WALLACE | WRIGHT JR | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06132017 | 06222017 | Standard |  |  | 2017-06-13 | 16/RVA01=$2689.71 | 0 | 2017-06-23 |  | 2017-06-29 | 2017-06-29 | 10 | 10 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615079 | M4325 | Fusion of spine, thoracolumbar region | ICD10 | 07142017 | 06132017 | 06232017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 06192017 | 2017-06-19T14:22:31+00:00 |  | 000100133-01 | David | Carroll | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 07142017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 06162017 | 07052017 | Standard |  |  | 2017-06-16 | 17/RUA01=$3214.76 | 0 | 2017-07-06 |  | 2017-07-11 | 2017-07-11 | 20 | 20 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619121 | Z96641 | Presence of right artificial hip joint | ICD10 | 07142017 | 06162017 | 07062017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06192017 | 2017-06-19T15:28:45+00:00 |  | 000073998-01 | Ronald | Bishop | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 07142017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 06162017 | 06302017 | Standard |  |  | 2017-06-16 | 17/RUB01=$5813.99 | 0 | 2017-07-01 |  | 2017-07-13 |  | 15 | 15 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619137 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 07142017 | 06162017 | 07012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06192017 | 2017-06-19T16:57:52+00:00 |  | 000020087-01 | ROBERT | HESS | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06162017 | 07132017 | Standard |  |  | 2017-06-16 | Per MDS: 16/RUC01 = $7333.11 | 25 | 2017-07-14 | 2017-07-11 | 2017-07-11 | 2017-07-11 | 28 | 53 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620045 | I2510, I4891, I517, L120, N179, N390 | Urinary tract infection, site not specified | ICD10 | 07142017 | 06162017 | 07142017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 28 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06202017 | 2017-06-20T10:11:43+00:00 |  | 000031663-01 | ANNIS | MECKLEY | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06152017 | 07042017 | Standard |  |  | 2017-06-15 | 17/RUA01=$3214.76 | 0 | 2017-07-05 |  | 2017-07-13 | 2017-07-13 | 20 | 20 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620076 | Z9181 | History of falling | ICD10 | 07142017 | 06152017 | 07052017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06202017 | 2017-06-20T10:13:38+00:00 |  | 000005227-01 | ALBERT | DUFFY | CHERRY WESTGATE FAM PRCT | 934743 | PATRICK J | SCARPITTI | 1659378115 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06172017 | 06272017 | Standard |  |  | 2017-06-17 | 17/RUC01=$6049.81 | 0 | 2017-06-28 |  | 2017-07-13 | 2017-07-13 | 11 | 11 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620079 | R0602, R531 | Weakness | ICD10 | 07142017 | 06172017 | 06282017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06222017 | 2017-06-22T12:33:23+00:00 |  | 000021672-01 | KATHERINE | OUELLETTE | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | THORNVILLE HEALTH & REHABILITATION C | 939903 | 1689064487 | THORNVILLE HEALTH & REHABILITATION C | 1689064487 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THORNVILLE HEALTH & REHABILITATION C | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06202017 | 06232017 | Standard |  |  | 2017-06-20 | Per MDS: 17/CC101 = $3231.84 | 20 | 2017-06-24 |  | 2017-07-14 |  | 4 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622064 | S72042A | Disp fx of base of neck of left femur, init for clos fx | ICD10 | 07142017 | 06202017 | 06242017 | CC101 | CLINICALLY COMPLEX , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 4 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 06222017 | 2017-06-22T14:01:04+00:00 |  | 000084931-01 | Arthur | Byrd Jr | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06212017 | 07112017 | Standard |  |  | 2017-06-21 | 16/RVB01=$3350.20 | 15 | 2017-07-12 |  | 2017-07-06 |  | 21 | 36 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622071 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 07142017 | 06212017 | 07122017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 06232017 | 2017-06-23T10:58:04+00:00 |  | 000051642-01 | DONNA | CODY | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 07142017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06212017 | 07052017 | Standard |  |  | 2017-06-21 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-07-06 |  | 2017-07-13 |  | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623043 | I6340, Z5189 | Encounter for other specified aftercare | ICD10 | 07142017 | 06212017 | 07062017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06262017 | 2017-06-26T10:08:51+00:00 |  | 000079791-01 | Elmer | Bailey | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06232017 | 07052017 | Standard |  |  | 2017-06-23 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-07-06 |  | 2017-07-10 | 2017-07-10 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626040 | J189 | Pneumonia, unspecified organism | ICD10 | 07142017 | 06232017 | 07062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06262017 | 2017-06-26T11:54:00+00:00 |  | 000009328-01 | RUBY | MOXLEY | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06222017 | 07112017 | Standard |  |  | 2017-06-22 | Per MDS: 17/RVA01 = $3586.28 | 20 | 2017-07-12 |  | 2017-07-13 | 2017-07-13 | 20 | 40 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626102 | J441, Z5189 | Encounter for other specified aftercare | ICD10 | 07142017 | 06222017 | 07122017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06262017 | 2017-06-26T15:39:23+00:00 |  | 000068548-01 | DONNA | FOOR | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06232017 | 07092017 | Standard |  |  | 2017-06-23 | 16/RVA01=$2689.71 | 0 | 2017-07-10 |  | 2017-07-11 | 2017-07-11 | 17 | 17 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626136 | Z981 | Arthrodesis status | ICD10 | 07142017 | 06232017 | 07102017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 06302017 | 2017-06-30T13:18:47+00:00 |  | 000078372-01 | Betty | Tilton | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | WILLOW HAVEN CARE CENTER | 924194 | 1306834148 | WILLOW HAVEN CARE CENTER | 1306834148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WILLOW HAVEN CARE CENTER | 07142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 06142017 | 06222017 | Standard |  |  | 2017-06-14 | 17/RUA01=$3214.76 | 8 | 2017-06-23 |  | 2017-07-12 | 2017-07-12 | 9 | 17 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630047 | S32509A | Unsp fracture of unsp pubis, init encntr for closed fracture | ICD10 | 07142017 | 06142017 | 06232017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07032017 | 2017-07-03T15:54:33+00:00 |  | 000100444-01 | Pauline | Danner | AINA MEDICAL INC | 939947 | OLAYINKA O | AINA | 1295706976 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 928906 | 1811988009 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 1811988009 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ADAMS COUNTY REGIONAL MEDICAL CENTER | 07142017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 07052017 | 07122017 | Standard |  |  | 2017-07-05 | Swing Bed Daily rate @ $200.00/day x 8 days = $1600.00 | 0 | 2017-07-13 |  |  | 2017-07-11 | 8 | 8 | 1600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705011 | I639, M6282 | Rhabdomyolysis | ICD10 | 07142017 | 07052017 | 07132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved | 8 | Revenue | RV |  |  |  | 2.0 |
| 07072017 | 2017-07-07T14:37:54+00:00 |  | 000028216-01 | RALPH | FRANKLIN | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 07142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07052017 | 07122017 | Standard |  |  | 2017-07-05 | 17/cA101=$2698.63 | 0 | 2017-07-13 |  | 2017-07-14 | 2017-07-14 | 8 | 8 | 2698.63 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707068 | J189 | Pneumonia, unspecified organism | ICD10 | 07142017 | 07052017 | 07132017 | CA101 | CLINICALLY COMPLEX , ADL INDEX 0-1/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
