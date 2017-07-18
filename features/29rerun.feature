Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-29_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-29_SNF
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
| 03022017 | 2017-03-02T14:43:59+00:00 |  | 000000165-01 | ANN | MOORE | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03022017 | 03082017 | Standard |  |  | 2017-03-02 | Contract/RUG: 16/LD2    (PER MDS) = $4,114.96 | 37 | 2017-03-09 |  | 2017-03-21 | 2017-03-21 | 7 | 44 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170303001 | N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 06292017 | 03022017 | 03092017 | LD201 | SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03142017 | 2017-03-14T16:15:22+00:00 |  | 000094277-01 | Patricia | Mckinney | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 06292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06292017 | 07062017 | Standard |  |  | 2017-03-13 | 16/RVC01 x 20 days=$3,539.19 PER DIEM OF $250.00 X53 DAYS=$13,250.00 PER DIEM OF $200.00 X 27 DAYS=5,400.00 TOTAL PAYMENT TO FACILITY=$22,189.19 | 0 | 2017-06-22 |  | 2017-06-22 | 2017-06-22 | 100 | 100 | 22189.19 | 170316090465.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170315033 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 06292017 | 03132017 | 06222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 8 | Revenue | RV |  |  |  | 11.0 |
| 04262017 | 2017-04-26T12:07:47+00:00 |  | 000070150-01 | Mildred | Whaley | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 06292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04242017 | 06242017 | Standard |  |  | 2017-04-24 | Per MDS: 16/RVA01 = $2689.71 Per Diem: $250.00/day x 11 days = $2750.00 Per Diem: $200.00/day x 31 days = $6200.00 TOTAL PAYMENT = $11,639.71 | 25 | 2017-06-25 | 2017-06-22 | 2017-06-27 | 2017-06-27 | 62 | 87 | 11639.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427023 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 06292017 | 04242017 | 06252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 62 | Revenue | RV |  |  |  | 9.0 |
| 05012017 | 2017-05-01T12:25:44+00:00 |  | 000033770-01 | LUISITO | TOLENTINO | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06292017 | 07062017 | Standard |  |  | 2017-04-28 | 16/RUX01=$7,339.86 PER DIEM AMT OF $200.00/DAY X 23 DAYS=$4,600.00 TOTAL PAYMENT TO FACILITY=$11,939.86 | 19 | 2017-06-10 |  | 2017-06-20 | 2017-06-07 | 43 | 62 | 11939.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502054 | Z933 | Colostomy status | ICD10 | 06292017 | 04282017 | 06102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 8 | Revenue | RV |  |  |  | 9.0 |
| 05052017 | 2017-05-05T09:49:29+00:00 |  | 000060738-01 | Glenna | Spears | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 06292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05032017 | 05172017 | Standard |  |  | 2017-05-03 | 17/RUC01=$6049.81 | 0 | 2017-05-17 |  | 2017-06-29 | 2017-06-29 | 15 | 15 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505048 | M79602 | Pain in left arm | ICD10 | 06292017 | 05032017 | 05182017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05082017 | 2017-05-08T11:53:17+00:00 |  | 000065561-01 | DAVID | WEBB | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05042017 | 06222017 | Standard |  |  | 2017-05-04 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 28 days = $7000.00 Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $13.213.99 | 0 | 2017-06-23 | 2017-06-20 | 2017-06-27 | 2017-06-20 | 50 | 50 | 13213.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508093 | N3001, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 06292017 | 05042017 | 06232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 50 | Revenue | RV |  |  |  | 4.0 |
| 05122017 | 2017-05-12T13:36:36+00:00 |  | 000084783-01 | John | Phillips | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 06292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05102017 | 05232017 | Standard |  |  | 2017-05-10 | 17/RVA01=$3586.28 | 0 | 2017-05-24 |  | 2017-05-31 | 2017-05-31 | 13 | 13 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512077 | I25709 | Atherosclerosis of CABG, unsp, w unsp angina pectoris | ICD10 | 06292017 | 05102017 | 05242017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 05182017 | 2017-05-18T15:44:29+00:00 |  | 000005057-01 | DOROTHY | SCHLAFLY | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05172017 | 06122017 | Standard |  |  | 2017-05-17 | 17/RUC01=$6049.81 7 DAYS @ $250.00= $1750.00 TOTAL: $7799.81 | 0 | 2017-06-13 |  | 2017-06-28 | 2017-06-28 | 27 | 27 | 7799.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518074 | R55, S0093XA, Z9181 | History of falling | ICD10 | 06292017 | 05172017 | 06132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7799 | 7799 | Approved | 27 | Revenue | RV |  |  |  | 7.0 |
| 05302017 | 2017-05-30T15:06:50+00:00 |  | 000046399-01 | John | Brennan | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05272017 | 06212017 | Standard |  |  | 2017-05-27 | Per MDS: 17/RHB01 = $3699.42 Per Diem: $250.00/day x 6 days = $1500.00 TOTAL PAYMENT = $5199.42 | 0 | 2017-06-22 |  | 2017-06-27 | 2017-06-27 | 26 | 26 | 5199.42 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530208 | L03116 | Cellulitis of left lower limb | ICD10 | 06292017 | 05272017 | 06222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5199 | 5199 | Approved | 26 | Revenue | RV |  |  |  | 6.0 |
| 05312017 | 2017-05-31T16:12:11+00:00 |  | 000064275-01 | GUS | PAPPAS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 06292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06292017 | 07062017 | Standard |  |  | 2017-05-30 | 17/RVA01=$3,586.28 | 0 | 2017-06-19 |  | 2017-06-26 | 2017-06-26 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601015 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 06292017 | 05302017 | 06192017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06022017 | 2017-06-02T15:53:22+00:00 |  | 000002688-01 | SARAH | RHODES | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | EDGEWOOD MANOR OF WESTER | 936550 | 1134133986 | EDGEWOOD MANOR OF WESTERVILLE | 1134133986 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDGEWOOD MANOR OF WESTERVILLE | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05312017 | 07062017 | Standard |  |  | 2017-05-31 | 16/RVA01=$2,689.71 | 0 | 2017-06-16 |  | 2017-06-20 | 2017-06-20 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605052 | N10 | Acute tubulo-interstitial nephritis | ICD10 | 06292017 | 05312017 | 06162017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 37 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 06052017 | 2017-06-05T08:19:28+00:00 |  | 000116060-01 | ROBERT | ROWLES JR | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06292017 | 07062017 | Standard |  |  | 2017-06-01 | 16/RUC01=$7,333.11 | 28 | 2017-06-12 |  | 2017-06-21 | 2017-06-21 | 11 | 39 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605088 | A419, N390, R319 | Hematuria, unspecified | ICD10 | 06292017 | 06012017 | 06122017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06052017 | 2017-06-05T10:49:13+00:00 |  | 000006724-01 | LOIS | SEWARD | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06292017 | 07062017 | Standard |  |  | 2017-06-02 | 16/RUB01=$4,429.71 | 0 | 2017-06-16 |  | 2017-06-22 | 2017-06-22 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605100 | L03113, R2689, R531 | Weakness | ICD10 | 06292017 | 06022017 | 06162017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 06062017 | 2017-06-06T16:27:43+00:00 |  | 000022285-01 | CHRISTOPHER | DAVIS | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06292017 | 07062017 | Standard |  |  | 2017-06-05 | 17/RVB01=$5,411.86 | 0 | 2017-06-23 |  | 2017-06-20 | 2017-06-26 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607009 | S12000D | Unsp disp fx of first cervcal vert, subs for fx w routn heal | ICD10 | 06292017 | 06052017 | 06232017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 06072017 | 2017-06-07T15:48:36+00:00 |  | 000073730-01 | Nellie | Cline | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06062017 | 06262017 | Standard |  |  | 2017-06-06 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x1 day = $250.00 TOTAL PAYMENT = $6556.19 | 20 | 2017-06-27 | 2017-06-27 | 2017-06-27 | 2017-06-27 | 21 | 41 | 6556.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607080 | S72041D | Disp fx of base of nk of r femr, 7thD | ICD10 | 06292017 | 06062017 | 06272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6556 | 6556 | Approved | 21 | Revenue | RV |  |  |  | 1.0 |
| 06092017 | 2017-06-09T09:22:54+00:00 |  | 000028856-01 | PATRICIA | CHESTER | HMP OF OHIO PC | 912793 | PIYUSH | GUPTA | 1275618803 | CENTERBURG RESPIRATORY A | 949066 | 1083157747 | CENTERBURG RESPIRATORY AND SPECIALTY | 1083157747 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG RESPIRATORY AND SPECIALTY | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06132017 | 06132017 | Standard |  |  | 2017-06-13 | 1 days @ $520.00/vent | 0 | 2017-06-14 |  | 2017-06-29 | 2017-06-29 | 1 | 1 | 520.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609008 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 06292017 | 06132017 | 06142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 520 | 520 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
| 06122017 | 2017-06-12T10:00:26+00:00 |  | 000047586-01 | Joan | Schumacher | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06082017 | 06272017 | Standard |  |  | 2017-06-08 | Per MDS: 17/RVA01= $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-06-28 |  | 2017-06-28 | 2017-06-28 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612068 | F339, M4856XS | Collapsed vertebra, NEC, lumbar region, sequela of fracture | ICD10 | 06292017 | 06082017 | 06282017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06122017 | 2017-06-12T15:55:10+00:00 |  | 000052060-01 | ELIZABETH | BOND | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06292017 | 07062017 | Standard |  |  | 2017-06-09 | 17/RVB01=$5,411.86 | 0 | 2017-06-18 |  | 2017-06-23 | 2017-06-23 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612143 | L0390 | Cellulitis, unspecified | ICD10 | 06292017 | 06092017 | 06182017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 06152017 | 2017-06-15T08:13:55+00:00 |  | 000090850-01 | Ronald | Day | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06292017 | 07062017 | Standard |  |  | 2017-06-13 | 17/RUB01=$5,813.99 | 0 | 2017-06-24 |  | 2017-06-26 |  | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615029 | T148 | Other injury of unspecified body region | ICD10 | 06292017 | 06132017 | 06232017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06152017 | 2017-06-15T13:50:14+00:00 |  | 000021651-01 | ELEANOR | WALTERS | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD GARDENS REHABI | 949221 | 1235684309 | FAIRFIELD GARDENS REHAB AND CARE CTR | 1235684309 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAIRFIELD GARDENS REHAB AND CARE CTR | 06292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06142017 | 06262017 | Standard |  |  | 2017-06-14 | Per MDS: 17/RVC01 = $6306.19 TOTAL PAYMENT = $6306.19 | 0 | 2017-06-27 |  | 2017-06-28 |  | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615067 | J449, R1310 | Dysphagia, unspecified | ICD10 | 06292017 | 06142017 | 06272017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06192017 | 2017-06-19T15:27:39+00:00 |  | 000051871-01 | Paul | Collins | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 06292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06152017 | 06262017 | Standard |  |  | 2017-06-15 | Per MDS: 17/RVC01 = $6306.19 TOTAL PAYMENT = $6306.19 | 0 | 2017-06-27 |  | 2017-06-28 |  | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619134 | A419, G9341, J9601 | Acute respiratory failure with hypoxia | ICD10 | 06292017 | 06152017 | 06272017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
