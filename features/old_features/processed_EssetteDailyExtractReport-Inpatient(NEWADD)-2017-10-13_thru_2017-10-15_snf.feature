Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-13_thru_2017-10-15_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-13_thru_2017-10-15_SNF
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
| 09202017 | 2017-09-20T17:20:44+00:00 |  | 000057687-01 | LOWELL | BROWN | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 10132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09192017 | 10132017 | Standard |  |  | 2017-09-19 | Per MDS: 16/RUB01 = $4429.71 | 0 | 2017-10-13 |  | 2017-10-10 | 2017-10-10 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921068 | D649, I2510, I509, J449, J918, N189, R6520 | Severe sepsis without septic shock | ICD10 | 10132017 | 09192017 | 10132017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 09222017 | 2017-09-22T10:57:58+00:00 |  | 000038120-01 | MARY | WALLIN | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 10132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09192017 | 10032017 | Standard |  |  | 2017-09-19 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-10-03 |  | 2017-10-12 | 2017-10-12 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922037 | S32000S | Wedge compression fracture of unsp lumbar vertebra, sequela | ICD10 | 10132017 | 09192017 | 10032017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 10032017 | 2017-10-03T10:32:59+00:00 |  | 000029156-01 | LUCILLE | WARD | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 10132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09292017 | 10132017 | Standard |  |  | 2017-09-29 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-10-13 |  | 2017-10-12 | 2017-10-12 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003050 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 10132017 | 09292017 | 10132017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08292017 | 2017-08-29T09:59:11+00:00 |  | 000048632-01 | WILLIAM | OYER | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 10132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08252017 | 10092017 | Standard |  |  | 2017-08-25 | Per MDS: 17/RHC01 = $4132.02 Per Diem: $200.00/day x 25 days = $5000.00 TOTAL PAYMENT = $9132.02 | 0 | 2017-10-09 | 2017-10-06 | 2017-10-12 | 2017-10-12 | 45 | 45 | 9132.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829054 | M6281 | Muscle weakness (generalized) | ICD10 | 10132017 | 08252017 | 10092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9132 | 9132 | Approved | 46 | Revenue | RV |  |  |  | 3.0 |
| 08212017 | 2017-08-21T14:42:48+00:00 |  | 000013701-01 | WILLIAM | BAY | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LOGAN HEALTHCARE LEASING | 951357 | 1073053070 | LOGAN CARE & REHABILITATION | 1073053070 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LOGAN CARE & REHABILITATION | 10132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08182017 | 10072017 | Standard |  |  | 2017-08-18 | Per Diem: 17/RVA01 = $3586.28 Per Diem: $200.00/day x 30 days = $6000.00 TOTAL PAYMENT = $9586.28 | 0 | 2017-10-07 | 2017-10-12 | 2017-09-05 | 2017-10-12 | 50 | 50 | 9586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822045 | M6281, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 10132017 | 08182017 | 10072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9586 | 9586 | Approved | 51 | Revenue | RV |  |  |  | 30.0 |
| 09272017 | 2017-09-27T10:48:33+00:00 |  | 000049489-01 | SANDRA | STOTTLEMIRE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 10132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09252017 | 10052017 | Standard |  |  | 2017-09-25 | Per MDS: 16/RVC01 = $3539.19 | 51 | 2017-10-05 |  | 2017-10-13 | 2017-10-13 | 10 | 61 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927048 | R0902 | Hypoxemia | ICD10 | 10132017 | 09252017 | 10052017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 09262017 | 2017-09-26T14:58:19+00:00 |  | 000105017-01 | Ruth | Hysell | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 10132017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 09252017 | 10132017 | Standard |  |  | 2017-09-25 | 17/RVB01=$5,411.86 | 0 | 2017-10-13 |  | 2017-10-13 | 2017-10-13 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926086 | R5381 | Other malaise | ICD10 | 10132017 | 09252017 | 10132017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 10032017 | 2017-10-03T11:25:21+00:00 |  | 000079936-01 | C Darlene | Schick | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 10132017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10022017 | 10132017 | Standard |  |  | 2017-10-02 | 17/RUB01=$5,813.99 | 0 | 2017-10-13 |  | 2017-10-13 | 2017-10-13 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003061 | I480 | Paroxysmal atrial fibrillation | ICD10 | 10132017 | 10022017 | 10132017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 09262017 | 2017-09-26T16:03:31+00:00 |  | 000088761-01 | Nancy | Atkinson | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 10132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09222017 | 10132017 | Standard |  |  | 2017-09-22 | Contract/RUG: 16/RUC (Per MDS) = $7,333.11 | 0 | 2017-10-13 |  | 2017-10-13 |  | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926089 | Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 10132017 | 09222017 | 10132017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 10122017 | 2017-10-12T11:55:23+00:00 |  | 000116381-01 | Vinette | Massari | THE ATLANTES | 932811 |  | THE ATLANTES | 1720326416 | THE ATLANTES | 932811 | 1720326416 | THE ATLANTES | 1720326416 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE ATLANTES | 10132017 | Denied | MediGold Southwest OH Essential Care | Fax | Services Available In-Network | Inpatient | 10132017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171013002 | J189 | Pneumonia, unspecified organism | ICD10 | 10132017 | 10132017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08152017 | 2017-08-15T13:34:04+00:00 |  | 000032978-01 | RICHARD | GRIFFIN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 10132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08142017 | 10122017 | Standard |  |  | 2017-08-14 | 16/HD101=$3,681.73 PER DIEM OF $250.00/DAY X 6 DAYS=$1,200.00 PER DIEM OF #200.00/DAY X 33 DAYS=$6,600.00 TOTAL PAYMENT TO FACILITY=$11,481.73 | 0 | 2017-10-12 |  | 2017-10-13 |  | 59 | 59 | 11481.73 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815080 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 10132017 | 08142017 | 10122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 60 | Revenue | RV |  |  |  | 10.0 |
