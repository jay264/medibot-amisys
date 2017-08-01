Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-27_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-27_SNF
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
| 05182017 | 2017-05-18T14:43:46+00:00 |  | 000088194-01 | Rose | Travis | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07272017 | 08032017 | Standard |  |  | 2017-05-16 | PER DIEM AMT OF $200.00/DAY X 38 DAYS=$7,600.00 CARVE OUT FOR IV PER PHARMACY INVOICE=$5,147.82 TOTAL FACILITY PAYMENT=$12,747.82 | 0 | 2017-06-23 |  | 2017-07-12 | 2017-07-12 | 38 | 38 | 12747.82 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518065 | A4901, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 07272017 | 05162017 | 06232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 8 | Revenue | RV |  |  |  | 4.0 |
| 05232017 | 2017-05-23T09:33:47+00:00 |  | 000045767-01 | JANET | YOAKUM | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05192017 | 07142017 | Standard |  |  | 2017-05-19 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 20 days = $5000.00 Per Diem: $200.00/day x 17 days = $3400.00 TOTAL PAYMENT = $15,733.11 | 0 | 2017-07-15 | 2017-07-12 | 2017-07-21 | 2017-07-21 | 57 | 57 | 15733.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523047 | F061, F339, G2111 | Neuroleptic induced parkinsonism | ICD10 | 07272017 | 05192017 | 07152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 57 | Revenue | RV |  |  |  | 5.0 |
| 06092017 | 2017-06-09T11:47:44+00:00 |  | 000006234-01 | NORMA | GRAY | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06082017 | 06222017 | Standard |  |  | 2017-06-08 | 17/RUA01=$3214.76 | 0 | 2017-06-23 |  | 2017-07-26 | 2017-07-26 | 15 | 15 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609051 | N390 | Urinary tract infection, site not specified | ICD10 | 07272017 | 06082017 | 06232017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06132017 | 2017-06-13T11:46:38+00:00 |  | 000027029-01 | GLENNA | ROGERS | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06112017 | 06182017 | Standard |  |  | 2017-06-11 | 17/RUC01=$6049.81 | 37 | 2017-06-19 |  | 2017-07-26 | 2017-07-26 | 8 | 45 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613048 | J129 | Viral pneumonia, unspecified | ICD10 | 07272017 | 06112017 | 06192017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06132017 | 2017-06-13T11:49:08+00:00 |  | 000079396-01 | Sharon | Teal | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 07272017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 06092017 | 06282017 | Standard |  |  | 2017-06-09 | 17/RUA01=$3214.76 | 0 | 2017-06-28 |  | 2017-07-26 | 2017-07-26 | 20 | 20 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613049 | F339, G4700 | Insomnia, unspecified | ICD10 | 07272017 | 06092017 | 06292017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06162017 | 2017-06-16T15:06:54+00:00 |  | 000033686-01 | GENTRY | STEPP | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06142017 | 07152017 | Standard |  |  | 2017-06-14 | Per MDS: 16/RVC01 = 3539.19 Per Diem: $250.00/day = $2500.00 Per Diem: $200.00/day = $400.00 TOTAL PAYMENT = $6439.19 | 0 | 2017-07-16 | 2017-07-13 | 2017-07-21 | 2017-07-21 | 32 | 32 | 6439.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616070 | I69992 | Facial weakness following unsp cerebrovascular disease | ICD10 | 07272017 | 06142017 | 07162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6439 | 6439 | Approved | 32 | Revenue | RV |  |  |  | 5.0 |
| 06192017 | 2017-06-19T13:08:51+00:00 |  | 000112066-01 | Dorothy | Ballenger | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | THORNVILLE HEALTH & REHABILITATION C | 939903 | 1689064487 | THORNVILLE HEALTH & REHABILITATION C | 1689064487 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THORNVILLE HEALTH & REHABILITATION C | 07272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 06162017 | 07132017 | Standard |  |  | 2017-06-16 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $200.00/day x 8 days = $1600.00 TOTAL PAYMENT = $7649.81 | 0 | 2017-07-14 |  | 2017-07-24 | 2017-07-18 | 28 | 28 | 7649.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619115 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 07272017 | 06162017 | 07142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7649 | 7649 | Approved | 28 | Revenue | RV |  |  |  | 8.0 |
| 06192017 | 2017-06-19T16:01:43+00:00 |  | 000037762-01 | ROBERT | VANLUVANEE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07272017 | 08032017 | Standard |  |  | 2017-06-15 | PER DIEM RATE OF $250.00/DAY X 12 DAYS=$3,000.00 CARVE OUT FOR MEROPENIM, PER PHARMACY INVOICE: 6/16/17 DELIVERED 10 DOSES AT $420.59 6/19/17 DELIVERED 6 DOSES AT $252.36 6/22/17 DELIVERED 4 DOSES AT $168.24 IV TOTAL FOR CARVE OUT=$841.19 TOTAL PAYMENT TO FACILITY=$3,841.19 | 0 | 2017-06-27 |  | 2017-07-25 | 2017-07-25 | 12 | 12 | 3841.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619148 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 07272017 | 06152017 | 06272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3841 | 3841 | Approved Skilled | 8 | Revenue | RV |  |  |  | 12.0 |
| 06222017 | 2017-06-22T12:53:11+00:00 |  | 000007037-01 | EMMA | BARNETTE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07272017 | 08032017 | Standard |  |  | 2017-06-21 | UNSKILLED RATE OF $200.00/DAY X 8 DAYS=$1,600.00 | 0 | 2017-06-26 |  |  |  | 8 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622066 | I6990 | Unspecified sequelae of unspecified cerebrovascular disease | ICD10 | 07272017 | 06212017 | 06262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved Unskilled | 8 | Revenue | RV |  |  |  | 8.0 |
| 06222017 | 2017-06-22T16:26:29+00:00 |  | 000022214-01 | Janet | Schultz | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 07272017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07272017 | 08032017 | Standard |  |  | 2017-06-20 | 15/RVC01=$6,005.90 | 48 | 2017-06-30 |  | 2017-07-18 |  | 10 | 58 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623001 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 07272017 | 06202017 | 06302017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 06232017 | 2017-06-23T15:09:57+00:00 |  | 000083443-01 | Louise | Jones | PICKAWAY HEALTH SERVICES | 913727 | KEVIN M | SELLERS | 1306085220 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06202017 | 07202017 | Standard |  |  | 2017-06-20 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 11 skilled days = $2750.00 TOTAL PAYMENT = $8799.81 | 0 | 2017-07-21 | 2017-07-18 | 2017-07-24 | 2017-07-24 | 31 | 31 | 8799.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623064 | Z96642 | Presence of left artificial hip joint | ICD10 | 07272017 | 06202017 | 07212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8799 | 8799 | Approved | 31 | Revenue | RV |  |  |  | 4.0 |
| 06272017 | 2017-06-27T10:48:45+00:00 |  | 000001497-01 | JOHN | MORGAN | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06252017 | 07202017 | Standard |  |  | 2017-06-25 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-07-21 | 2017-07-18 | 2017-07-24 | 2017-07-24 | 26 | 26 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627037 | G40001, J189, J449, N401, R0602, R112, R509, R52 | Pain, unspecified | ICD10 | 07272017 | 06252017 | 07212017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 06292017 | 2017-06-29T10:35:28+00:00 |  | 000021718-01 | ALICE | FOX | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06262017 | 07132017 | Standard |  |  | 2017-06-26 | Per MDS: 17/RVVB01 = $5411.86 | 0 | 2017-07-14 |  | 2017-07-24 | 2017-07-24 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629045 | S8290XP | Unsp fracture of unsp lower leg, subs for clos fx w malunion | ICD10 | 07272017 | 06262017 | 07142017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 06292017 | 2017-06-29T10:37:01+00:00 |  | 000011988-01 | ELNORA | BELL | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06262017 | 07192017 | Standard |  |  | 2017-06-26 | Per MDS: 17/RVB01 = $5411.86 | 10 | 2017-07-20 | 2017-07-17 | 2017-07-24 | 2017-07-24 | 24 | 34 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629047 | Z992 | Dependence on renal dialysis | ICD10 | 07272017 | 06262017 | 07202017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 06302017 | 2017-06-30T15:31:12+00:00 |  | 000091271-01 | Stephen | Means | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 07272017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06282017 | 07222017 | Standard |  |  | 2017-06-28 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-07-23 | 2017-07-20 | 2017-07-24 | 2017-07-24 | 25 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630068 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 07272017 | 06282017 | 07232017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 06302017 | 2017-06-30T16:16:54+00:00 |  | 000053241-01 | JOAN | LITTLE | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07272017 | 08032017 | Standard |  |  | 2017-06-29 | 16/RUC01=$7,333.11 | 0 | 2017-07-13 |  | 2017-07-18 | 2017-07-18 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703007 | Z471, Z96652 | Presence of left artificial knee joint | ICD10 | 07272017 | 06292017 | 07132017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 07032017 | 2017-07-03T14:07:18+00:00 |  | 000006405-01 | HAROLD | CLASE | HARDING MEM HLTHCARE | 900889 | GHULAM | IDREES | 1447218292 | HEARTLAND OF MARION | 905550 | 1396787818 | HEARTLAND OF MARION | 1396787818 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARION | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06302017 | 07202017 | Standard |  |  | 2017-06-30 | 17/RUB01=$5813.99 | 10 | 2017-07-21 |  | 2017-07-25 | 2017-07-25 | 21 | 31 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703109 | M6281 | Muscle weakness (generalized) | ICD10 | 07272017 | 06302017 | 07222017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 07042017 | 2017-07-04T09:48:01+00:00 |  | 000077898-01 | Willard | Hatfield | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | THE OAKS AT BETHESDA | 930994 | 1295172047 | THE OAKS AT BETHESDA | 1295172047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE OAKS AT BETHESDA | 07272017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07022017 | 07022017 | Standard |  |  | 2017-07-02 | 1 DAY @ $200.00= $200.00 | 0 | 2017-07-03 |  | 2017-07-07 |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705038 | L03115, L03116 | Cellulitis of left lower limb | ICD10 | 07272017 | 07022017 | 07032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
| 07032017 | 2017-07-03T17:11:57+00:00 |  | 000050047-01 | DAVID | BEATY | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06302017 | 07192017 | Standard |  |  | 2017-06-30 | Per MDS: 16/RUB01 = $4429.71 | 0 | 2017-07-20 |  | 2017-07-24 | 2017-07-24 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705053 | E119, M810, M84359S, R296, R52, 49121 | 49121.0 | ICD10 | 07272017 | 06302017 | 07202017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07052017 | 2017-07-05T12:50:40+00:00 |  | 000048497-01 | DOLORES | STUMBO | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07272017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 07272017 | 08032017 | Standard |  |  | 2017-06-30 | 17/RUC01=$6,049.81 | 24 | 2017-07-18 |  | 2017-07-25 | 2017-07-25 | 18 | 42 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705096 | L0390, R4182, Z853 | Personal history of malignant neoplasm of breast | ICD10 | 07272017 | 06302017 | 07182017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 07052017 | 2017-07-05T15:57:44+00:00 |  | 000045627-01 | HAZEL | RADABAUGH | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07032017 | 07212017 | Standard |  |  | 2017-07-03 | Per MDS: 17/RHC01 = $4132.02 | 0 | 2017-07-22 |  | 2017-07-24 | 2017-07-24 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706007 | S12100D | Unsp disp fx of 2nd cervcal vert, subs for fx w routn heal | ICD10 | 07272017 | 07032017 | 07222017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 07062017 | 2017-07-06T10:13:04+00:00 |  | 000112388-01 | FREDA | GASKINS | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | SOMERSET HEALTH & REHABILITATION C | 942963 | 1952791758 | SOMERSET HEALTH & REHABILITATION C | 1952791758 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOMERSET HEALTH & REHABILITATION C | 07272017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07042017 | 07082017 | Standard |  |  | 2017-07-04 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-07-09 |  | 2017-07-18 | 2017-07-18 | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706054 | I10 | Essential (primary) hypertension | ICD10 | 07272017 | 07042017 | 07092017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 07072017 | 2017-07-07T13:27:19+00:00 |  | 000098149-01 | Leta | Sparks | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07272017 | 08032017 | Standard |  |  | 2017-07-06 | 17/RUC01=$6049.81 | 0 | 2017-07-21 |  | 2017-07-19 | 2017-07-19 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707060 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 07272017 | 07062017 | 07212017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 07102017 | 2017-07-10T16:03:11+00:00 |  | 000053311-01 | DORIS | CREGO | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07272017 | 08032017 | Standard |  |  | 2017-07-08 | 16/RUA01=$3,214.76 | 0 | 2017-07-15 |  | 2017-07-24 | 2017-07-24 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710132 | I63539, R2689, R531 | Weakness | ICD10 | 07272017 | 07082017 | 07152017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 07102017 | 2017-07-10T15:38:35+00:00 |  | 000075543-01 | William | Napier | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 07272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 07092017 | 07122017 | Standard |  |  | 2017-07-09 | Per Diem: $200.00/day x 4 SNF Days = $800.00 | 0 | 2017-07-13 |  |  |  | 4 | 4 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710136 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 07272017 | 07092017 | 07132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 4 | Revenue | RV |  |  |  | 4.0 |
| 07112017 | 2017-07-11T10:19:42+00:00 |  | 000003229-01 | SHIRLEY | BERG | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07272017 | 08032017 | Standard |  |  | 2017-07-09 | 17/RUB01=$5,813.99 | 0 | 2017-07-18 |  | 2017-07-25 | 2017-07-25 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711049 | G9340, R531 | Weakness | ICD10 | 07272017 | 07092017 | 07182017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07122017 | 2017-07-12T15:01:31+00:00 |  | 000048585-01 | ROBERT | KEY | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07112017 | 07192017 | Standard |  |  | 2017-07-11 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-07-20 |  | 2017-07-21 | 2017-07-21 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712071 | I10, I4891, S22078A, S2232XA, Z9181 | History of falling | ICD10 | 07272017 | 07112017 | 07202017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07142017 | 2017-07-14T11:15:49+00:00 |  | 000076763-01 | Kathryn | Rose | MARIETTA HLTH CARE PHYS | 922033 | STEVEN W | HOWE | 1053388066 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 07272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07122017 | 07202017 | Standard |  |  | 2017-07-12 | 17/RVB01=$5411.86 | 0 | 2017-07-21 |  | 2017-07-26 | 2017-07-26 | 9 | 9 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714031 | S82201D | Unsp fx shaft of right tibia, subs for clos fx w routn heal | ICD10 | 07272017 | 07122017 | 07212017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07142017 | 2017-07-14T13:17:11+00:00 |  | 000101145-01 | Virginia | Sachs | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 07272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 07132017 | 07162017 | Standard |  |  | 2017-07-13 | Contract/RUG: 16/CC1 (per MDS) = $3,231.84 | 0 | 2017-07-17 |  | 2017-07-25 | 2017-07-25 | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714053 | I10, I739, Z48812, Z952 | Presence of prosthetic heart valve | ICD10 | 07272017 | 07132017 | 07172017 | CC101 | CLINICALLY COMPLEX , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 4 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 07172017 | 2017-07-17T10:10:58+00:00 |  | 000003514-01 | RUTH | ROSENTHAL | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07142017 | 07222017 | Standard |  |  | 2017-07-14 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-07-23 |  | 2017-07-25 | 2017-07-25 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717025 | A047, I10, N179, R55 | Syncope and collapse | ICD10 | 07272017 | 07142017 | 07232017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07182017 | 2017-07-18T12:28:14+00:00 |  | 000074071-01 | Ruth | Harper | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 07272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07142017 | 07212017 | Standard |  |  | 2017-07-14 | 17/RVA01=$3586.28 | 0 | 2017-07-22 |  | 2017-07-25 | 2017-07-25 | 8 | 8 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718122 | Z96652 | Presence of left artificial knee joint | ICD10 | 07272017 | 07142017 | 07222017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07182017 | 2017-07-18T15:15:00+00:00 |  | 000012356-01 | BARBARA | BRADBURY | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 07272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07172017 | 07192017 | Standard |  |  | 2017-07-17 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-07-20 |  | 2017-07-21 | 2017-07-21 | 3 | 3 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719014 | Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 07272017 | 07172017 | 07202017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 3 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 07132017 | 2017-07-13T14:12:43+00:00 |  | 000116127-01 | Donna | Reynolds | LICKING MEM HEART CTR | 937200 | IMTIAZ | AHMED | 1407916505 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 07272017 | Denied Skilled - Pay Unskilled | MediGold Essential Care | Fax |  | Inpatient | 07122017 | 07162017 | Standard |  |  | 2017-07-12 | $200.00/day for 5 non-skilled days = $1,000.00 | 0 | 2017-07-17 |  |  |  | 0 | 0 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170713061 | M6281, Z471, Z96641 | Presence of right artificial hip joint | ICD10 | 07272017 | 07122017 | 07172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
