Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-08_thru_2017-09-10_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-08_thru_2017-09-10_SNF
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
| 08212017 | 2017-08-21T09:09:56+00:00 |  | 000077191-01 | Barbara | Greenlee | OSU INTERNAL MED LLC | 947928 | DANIEL | MILLER | 1144618380 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 09082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08172017 | 08292017 | Standard |  |  | 2017-08-17 | 16/RUC01=$7,333.11 | 0 | 2017-08-30 |  | 2017-08-31 | 2017-08-31 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821118 | Z96659 | Presence of unspecified artificial knee joint | ICD10 | 09082017 | 08172017 | 08302017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 08112017 | 2017-08-11T11:27:35+00:00 |  | 000087767-01 | Irmgard | Behringer | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | ST LEONARD HEALTH CARE CENTER | 915994 | 1851387047 | ST LEONARD HEALTH CARE CENTER | 1851387047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST LEONARD HEALTH CARE CENTER | 09082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08102017 | 08262017 | Standard |  |  | 2017-08-10 | Contract/RUG: 17/RVA  (Per MDS) = $3,586.28 | 0 | 2017-08-27 |  | 2017-09-07 | 2017-09-07 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811060 | I10, S8001XD, Z9181 | History of falling | ICD10 | 09082017 | 08102017 | 08272017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 08292017 | 2017-08-29T15:38:39+00:00 |  | 000065913-01 | LONNIE | BOGGS | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 09082017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 08252017 | 09012017 | Standard |  |  | 2017-08-25 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2017-09-02 |  | 2017-09-06 | 2017-09-06 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830007 | M4806 | Spinal stenosis, lumbar region | ICD10 | 09082017 | 08252017 | 09022017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 08232017 | 2017-08-23T11:15:07+00:00 |  | 000111896-01 | Janice Elaine | Karlak | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | EDGEWOOD MANOR OF WESTER | 936550 | 1134133986 | EDGEWOOD MANOR OF WESTERVILLE | 1134133986 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDGEWOOD MANOR OF WESTERVILLE | 09082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08212017 | 09072017 | Standard |  |  | 2017-08-21 | 16/RVL01=$4,874.23 | 15 | 2017-09-08 |  | 2017-09-06 | 2017-09-06 | 18 | 33 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823049 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 09082017 | 08212017 | 09082017 | RVL01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA OR | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 08142017 | 2017-08-14T14:51:56+00:00 |  | 000108209-01 | M | SHEARD | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 09082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 08112017 | 08312017 | Standard |  |  | 2017-08-11 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-09-01 |  | 2017-09-06 | 2017-09-06 | 20 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814116 | R262, Z5189 | Encounter for other specified aftercare | ICD10 | 09082017 | 08112017 | 09012017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 08142017 | 2017-08-14T15:05:25+00:00 |  | 000091696-01 | Vicki | Vigiris | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 09082017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 08122017 | 08312017 | Standard |  |  | 2017-08-12 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-09-01 |  | 2017-09-07 | 2017-09-07 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814119 | S42291A | Oth disp fx of upper end of right humerus, init for clos fx | ICD10 | 09082017 | 08122017 | 09012017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07172017 | 2017-07-17T16:53:01+00:00 |  | 000026610-01 | Sharon | Bailey | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 09082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07142017 | 07262017 | Standard |  |  | 2017-07-14 | PER DIEM RATE OF $200.00/DAY X 13 DAYS=$2,600.00 CARVE OUT FOR WOUND VAC PER INVOICE=$1,302.42 CARVE OUT FOR IV CEFAZOLIN PER INVOICE=$131.00 TOTAL PAYMENT TO FACILITY=$4,033.42 | 0 | 2017-07-27 |  | 2017-09-06 | 2017-09-06 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718100 | T8451XD | Infect/inflm reaction due to internal right hip prosth, subs | ICD10 | 09082017 | 07142017 | 07272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4033 | 4033 | Approved Skilled | 13 | Revenue | RV |  |  |  | 13.0 |
| 08172017 | 2017-08-17T15:01:57+00:00 |  | 000064480-01 | BETTY | BURKE | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 09082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08162017 | 08292017 | Standard |  |  | 2017-08-16 | 16/RUC01=$7,333.11 | 0 | 2017-08-30 |  | 2017-09-07 | 2017-09-07 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818029 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 09082017 | 08162017 | 08302017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08162017 | 2017-08-16T14:18:09+00:00 |  | 000039549-01 | BERTHA | SELBY | TIMOTHY J BRIGHT DO INC | 935342 | TIMOTHY J | BRIGHT | 1760405393 | CENTERBURG POINTE | 915833 | 1033410295 | CENTERBURG POINTE | 1033410295 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG POINTE | 09082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08142017 | 09032017 | Standard |  |  | 2017-08-14 | 17/rhb01= $3699.42 | 0 | 2017-09-04 |  | 2017-09-06 | 2017-09-06 | 21 | 21 | 3699.42 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816070 | S32050A | Wedge compression fracture of fifth lumbar vertebra, init | ICD10 | 09082017 | 08142017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07142017 | 2017-07-14T16:21:06+00:00 |  | 000111377-01 | James | Zavisin | THE CHRIST HSP MED ASSOC | 940558 | RUTH | ALLENDOERFER-F | 1013964246 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 09082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 07132017 | 08232017 | Standard |  |  | 2017-07-13 | Per Diem: $200.00/day x 42 SNF Days = $8,400.00 Wound Vac/Supplies:  $749.62 Vancomycin $12.00/dose x 14 doses = $168.00 Total: $9,317.62 | 0 | 2017-08-24 |  | 2017-08-25 |  | 42 | 42 | 9317.62 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714078 | L97329 | Non-pressure chronic ulcer of left ankle with unsp severity | ICD10 | 09082017 | 07132017 | 08242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9317 | 9317 | Approved | 42 | Revenue | RV |  |  |  | 6.0 |
| 07172017 | 2017-07-17T15:00:15+00:00 |  | 000065875-01 | JOHN | TRIMBLE | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 09082017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 06262017 | 08282017 | Standard |  |  | 2017-06-26 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $200.00/day x 44 SNF Days = $8,800.00 Total: $12,150.20 | 0 | 2017-08-29 |  | 2017-09-07 | 2017-09-07 | 64 | 64 | 12150.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717115 | I69154, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 09082017 | 06262017 | 08292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 64 | Revenue | RV |  |  |  | 5.0 |
| 07312017 | 2017-07-31T16:19:08+00:00 |  | 000053460-01 | ROBERTA | NOEL | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 09082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07282017 | 08272017 | Standard |  |  | 2017-07-28 | 16/RUC01= $7333.11 3 DAYS @ $250.00= $750.00 5 DAYS @ $200.00= $1000.00 TOTAL: $9083.11 | 0 | 2017-08-28 |  | 2017-09-08 | 2017-09-08 | 28 | 28 | 9083.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801077 | R918, S72142D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 09082017 | 07282017 | 08282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9083 | 9083 | Approved | 31 | Revenue | RV |  |  |  | 1.0 |
| 08212017 | 2017-08-21T13:53:45+00:00 |  | 000006915-01 | FRANCES | HARRISON | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 09082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08172017 | 08312017 | Standard |  |  | 2017-08-17 | 16/RUB01= $4429.71 | 0 | 2017-09-01 |  | 2017-09-08 | 2017-09-08 | 15 | 15 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822036 | S32501D, S52571D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 09082017 | 08172017 | 09012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 08242017 | 2017-08-24T13:42:37+00:00 |  | 000065104-01 | Carl | Salyer | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 09082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08222017 | 09052017 | Standard |  |  | 2017-08-22 | 16/RUB01= $4429.71 | 0 | 2017-09-06 |  | 2017-09-08 | 2017-09-08 | 15 | 15 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824078 | R4182, R5381 | Other malaise | ICD10 | 09082017 | 08222017 | 09062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 08212017 | 2017-08-21T11:21:28+00:00 |  | 000027154-01 | CAROLE | KNAPP | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 09082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08192017 | 08262017 | Standard |  |  | 2017-08-19 | 16/CB101=$2,865.25 | 0 | 2017-08-27 |  | 2017-09-07 | 2017-09-07 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822005 | F339 | Major depressive disorder, recurrent, unspecified | ICD10 | 09082017 | 08192017 | 08272017 | CB101 | CLINICALLY COMPLEX , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 08282017 | 2017-08-28T17:00:15+00:00 |  | 000037914-01 | NICK | MAVROMATIS | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 09082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08262017 | 09012017 | Standard |  |  | 2017-08-26 | 7 DAYS OF NON-SKILLED @ $200.00= $1400.00 | 0 | 2017-09-02 |  |  |  | 7 | 7 | 1400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829027 | G3184 | Mild cognitive impairment, so stated | ICD10 | 09082017 | 08262017 | 09022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved | 7 | Revenue | RV |  |  |  | 7.0 |
| 08172017 | 2017-08-17T15:03:51+00:00 |  | 000019429-01 | DAVID | HOWARD | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 09082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08162017 | 08252017 | Standard |  |  | 2017-08-16 | 16/RUB01=$4,429.71 | 0 | 2017-08-26 |  | 2017-09-07 | 2017-09-07 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818031 | G4089 | Other seizures | ICD10 | 09082017 | 08162017 | 08262017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 08162017 | 2017-08-16T19:48:46+00:00 |  | 000008900-01 | NONA | THOMAS | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 09082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08142017 | 08242017 | Standard |  |  | 2017-08-14 | Contract/RUG: 17/RVA  (Per MDS) = $3,586.28 | 0 | 2017-08-25 |  | 2017-09-07 |  | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817023 | I5022 | Chronic systolic (congestive) heart failure | ICD10 | 09082017 | 08142017 | 08252017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 08302017 | 2017-08-30T14:54:22+00:00 |  | 000022389-01 | ROBERT | GRAY | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 09082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08282017 | 08302017 | Standard |  |  | 2017-08-28 | 16/PC101= $2465.35 | 0 | 2017-08-31 |  | 2017-09-08 |  | 3 | 3 | 2465.35 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830077 | E860, N179, S32029D, S32049D | Unsp fx fourth lum vertebra, subs for fx w routn heal | ICD10 | 09082017 | 08282017 | 08312017 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 3 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 09052017 | 2017-09-05T10:21:23+00:00 |  | 000100080-01 | Dennis | Neumann | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 09082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08312017 | 09012017 | Standard |  |  | 2017-08-31 | Per Diem: $200.00/day x 2 SNF Days = $400.00 | 33 | 2017-09-02 |  |  |  | 2 | 35 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905096 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 09082017 | 08312017 | 09022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
| 08142017 | 2017-08-14T16:12:01+00:00 |  | 000074254-01 | Rosemary | Lail | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 09082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 08112017 | 09072017 | Standard |  |  | 2017-08-11 | Contract/RUG: 16/RUB   (per MDS) = $4,429.71 Per Diem: $250.00/day x 8 SNF Days = $2,000.00 Total: $6,429.71 | 0 | 2017-09-08 |  | 2017-09-08 | 2017-09-08 | 28 | 28 | 6429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815020 | N390, Z9181 | History of falling | ICD10 | 09082017 | 08112017 | 09082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6429 | 6429 | Approved | 28 | Revenue | RV |  |  |  | 1.0 |
