Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-16_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-16_SNF
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
| 09202017 | 2017-09-20T16:41:55+00:00 |  | 000003846-01 | LORETTA | BALLENGER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 10162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09182017 | 09252017 | Standard |  |  | 2017-09-18 | 17/RVC01=$6,306.19 | 0 | 2017-09-25 |  | 2017-10-11 |  | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921058 | S82402D | Unsp fx shaft of left fibula, subs for clos fx w routn heal | ICD10 | 10162017 | 09182017 | 10252017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 09012017 | 2017-09-01T12:19:14+00:00 |  | 000076192-01 | Don | Skillman | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | RIVERSIDE NURSING & REHAB | 910253 | 1114918836 | RIVERSIDE NURSING & REHAB | 1114918836 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | RIVERSIDE NURSING & REHAB | 10162017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 08312017 | 09242017 | Standard |  |  | 2017-08-31 | Contract/RUG: 16/RHB (Per MDS) = $2,690.49 | 20 | 2017-09-24 |  | 2017-09-20 | 2017-10-13 | 20 | 44 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901046 | F312 | Bipolar disord, crnt episode manic severe w psych features | ICD10 | 10162017 | 08312017 | 09242017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 08082017 | 2017-08-08T09:54:37+00:00 |  | 000026534-01 | MEREDITH | RICHARD | WORTHINGTON CHRISTIAN VI | 939361 |  | WORTHINGTON CHRISTIAN VILLAGE | 1194722744 | WORTHINGTON CHRISTIAN VI | 939361 | 1194722744 | WORTHINGTON CHRISTIAN VILLAGE | 1194722744 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WORTHINGTON CHRISTIAN VILLAGE | 10162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08112017 | 10112017 | Standard |  |  | 2017-08-11 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $250.00/day x 41 SNF Days = $10,250.00 Total Payment: $16,556.19 | 0 | 2017-10-11 |  | 2017-10-13 | 2017-10-13 | 61 | 61 | 16556.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809004 | D62, E039, E213, I10, I213, I2510, I4430, I4891, I714, M810, S72142D, Z950 | Presence of cardiac pacemaker | ICD10 | 10162017 | 08112017 | 10112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 62 | Revenue | RV |  |  |  | 5.0 |
| 10022017 | 2017-10-02T12:52:34+00:00 |  | 000052780-01 | WILLIAM | FLESHMAN | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 10162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09292017 | 10142017 | Standard |  |  | 2017-09-29 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-10-14 | 2017-10-15 | 2017-10-06 | 2017-10-15 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002121 | E119, I10, M4800, N189, Z9181 | History of falling | ICD10 | 10162017 | 09292017 | 10142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 09222017 | 2017-09-22T15:15:23+00:00 |  | 000086191-01 | Elizabeth | Briggs | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09212017 | 10132017 | Standard |  |  | 2017-09-21 | Swing Bed Daily rate x 22 days | 14 | 2017-10-13 |  |  | 2017-10-11 | 22 | 36 | swing bed daily rate x 22 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922069 | S72143A | Displaced intertrochanteric fracture of unsp femur, init | ICD10 | 10162017 | 09212017 | 10132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 23 | Revenue | RV |  |  |  | 2.0 |
| 09142017 | 2017-09-14T10:13:21+00:00 |  | 000087540-01 | Lucille | Mitchell | DUDNEY, JERALD | 935969 | JERALD | DUDNEY | 1770669871 | GOOD SHEPHERD VILLAGE | 920229 | 1396862314 | GOOD SHEPHERD VILLAGE | 1396862314 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GOOD SHEPHERD VILLAGE | 10162017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09122017 | 10162017 | Standard |  |  | 2017-09-12 | Contract/RUG: 16/RUA (Per MDS) = $3,214.76 Per Diem: $250.00/Day x 15 SNF Days = $3,750.00 Total Payment: $6,964.76 | 0 | 2017-10-16 |  | 2017-10-06 | 2017-10-13 | 35 | 35 | 6964.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914103 | M6281, R2681 | Unsteadiness on feet | ICD10 | 10162017 | 09122017 | 10162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6964 | 6964 | Approved | 35 | Revenue | RV |  |  |  | 5.0 |
| 09272017 | 2017-09-27T13:10:07+00:00 |  | 000005690-01 | SUSAN | STARNER | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 10162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09262017 | 10112017 | Standard |  |  | 2017-09-26 | 16/RVA01= $2689.71 | 0 | 2017-10-11 |  | 2017-10-12 | 2017-10-12 | 15 | 15 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927058 | N390 | Urinary tract infection, site not specified | ICD10 | 10162017 | 09262017 | 10112017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 10022017 | 2017-10-02T11:29:02+00:00 |  | 000091129-01 | Juanita | Little | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | THE OAKS AT BETHESDA | 930994 | 1295172047 | THE OAKS AT BETHESDA | 1295172047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE OAKS AT BETHESDA | 10162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 09282017 | 10122017 | Standard |  |  | 2017-09-28 | 16/RUC01= $7333.11 | 0 | 2017-10-12 |  | 2017-10-13 | 2017-10-13 | 14 | 14 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002111 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 10162017 | 09282017 | 10122017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 09222017 | 2017-09-22T15:28:54+00:00 |  | 000077347-01 | Phillip | Schenk | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 10162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 09212017 | 10142017 | Standard |  |  | 2017-09-21 | 17/RUC01= $6049.81 3 DAYS @ $200.00= $600.00 TOTAL: $6649.81 | 0 | 2017-10-14 |  | 2017-10-16 | 2017-10-16 | 23 | 23 | 6649.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922071 | I618, R296 | Repeated falls | ICD10 | 10162017 | 09212017 | 10142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6649 | 6649 | Approved | 24 | Revenue | RV |  |  |  | 3.0 |
| 09262017 | 2017-09-26T14:40:24+00:00 |  | 000100486-01 | Mary | Barker | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 10162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09232017 | 10112017 | Standard |  |  | 2017-09-23 | Contract/RUG: 16/RUB (Per MDS) =$4,429.71 | 0 | 2017-10-11 |  | 2017-10-16 | 2017-10-16 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926085 | R262, R4182 | Altered mental status, unspecified | ICD10 | 10162017 | 09232017 | 10112017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
