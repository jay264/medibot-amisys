Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-11_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-11_SNF
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
| 07072017 | 2017-07-07T16:38:35+00:00 |  | 000080705-01 | Charles | Melanko | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | CAMBRIDGE CARE & REHAB | 951200 | 1578003570 | CAMBRIDGE CARE & REHAB | 1578003570 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CAMBRIDGE CARE & REHAB | 09112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07062017 | 07152017 | Standard |  |  | 2017-07-06 | 17/RVC01=$6306.19 | 0 | 2017-07-16 |  | 2017-07-21 |  | 10 | 10 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710002 | I4891, M6281 | Muscle weakness (generalized) | ICD10 | 09112017 | 07062017 | 07162017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 08072017 | 2017-08-07T14:05:59+00:00 |  | 000096037-01 | Elizabeth | Roberts | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 09112017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08042017 | 08302017 | Standard |  |  | 2017-08-04 | Contract/RUG: 17/RVC  (Per MDS) = $6,306.19 Per Diem: $200.00/day x 7 SNF days = $1,400.00 Total: $7,706.19 | 0 | 2017-08-31 |  | 2017-08-23 | 2017-08-31 | 27 | 27 | 7706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807105 | I25810, S22081D, Z9861 | Coronary angioplasty status | ICD10 | 09112017 | 08042017 | 08312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7706 | 7706 | Approved | 27 | Revenue | RV |  |  |  | 7.0 |
| 08282017 | 2017-08-28T15:27:24+00:00 |  | 000020015-01 | JOSEPH | PACE | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 09112017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 08252017 | 09062017 | Standard |  |  | 2017-08-25 | 17/RVC01=$6306.19 | 0 | 2017-09-07 |  | 2017-09-08 | 2017-09-08 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829001 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 09112017 | 08252017 | 09072017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 08212017 | 2017-08-21T11:11:44+00:00 |  | 000020367-01 | DOLORES | WISECUP | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08182017 | 09062017 | Standard |  |  | 2017-08-18 | 17/RVC01=$6306.19 | 0 | 2017-09-07 |  | 2017-09-11 | 2017-09-11 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821125 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 09112017 | 08182017 | 09072017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07142017 | 2017-07-14T16:20:36+00:00 |  | 000077925-01 | Edward | Rhoades | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | HEARTLAND OF MADEIRA OH LLC | 920759 | 1871534834 | HEARTLAND OF MADEIRA OH LLC | 1871534834 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MADEIRA OH LLC | 09112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 07102017 | 08282017 | Standard |  |  | 2017-07-10 | Contract/RUG: 17/RVX (Per MDS) = $6,171.24 Per Diem: $250.00/day x 21 SNF Days = $5,250.00 Carve Out: Zebrexa IV $109.56/Dose x  21/doses = $ 2,300.76 Total Payment: $13,722.00 | 59 | 2017-08-29 |  | 2017-09-10 |  | 41 | 100 | 13722.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714080 | J189 | Pneumonia, unspecified organism | ICD10 | 09112017 | 07102017 | 08292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 50 | Revenue | RV |  |  |  | 5.0 |
| 08242017 | 2017-08-24T09:39:02+00:00 |  | 000081557-01 | WILLIAM | TUITE | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08032017 | 08242017 | Standard |  |  | 2017-08-03 | 17/RVC01=$6306.19 PER DIEM RATE OF $200.00 X 2 DAYS= $400.00 TOTAL PAYMENT =$6,706.19 | 0 | 2017-08-25 |  | 2017-09-11 | 2017-09-11 | 22 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824045 | S72142D | Displ intertroch fx l femur, subs for clos fx w routn heal | ICD10 | 09112017 | 08032017 | 08252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 6706 |  | 22 | Revenue | RV |  |  |  | 2.0 |
| 08292017 | 2017-08-29T13:40:37+00:00 |  | 000033966-01 | SHIRLEY | MARTIN | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 09112017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08252017 | 09042017 | Standard |  |  | 2017-08-25 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-09-05 |  | 2017-09-07 | 2017-09-07 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829073 | I25810 | Atherosclerosis of CABG w/o angina pectoris | ICD10 | 09112017 | 08252017 | 09052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 08182017 | 2017-08-18T16:56:03+00:00 |  | 000077332-01 | Jerome | Keller | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 09112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 08172017 | 08272017 | Standard |  |  | 2017-08-17 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-08-28 |  | 2017-09-10 | 2017-09-10 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821106 | N179 | Acute kidney failure, unspecified | ICD10 | 09112017 | 08172017 | 08282017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 08232017 | 2017-08-23T16:05:49+00:00 |  | 000045598-01 | MARY | ROLL | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08222017 | 09062017 | Standard |  |  | 2017-08-22 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-09-07 |  | 2017-09-07 | 2017-09-07 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824030 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 09112017 | 08222017 | 09072017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 08182017 | 2017-08-18T11:15:57+00:00 |  | 000083357-01 | Patricia | Hall | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08172017 | 08282017 | Standard |  |  | 2017-08-17 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-08-29 |  | 2017-08-30 | 2017-09-08 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818063 | Z4733, Z96652 | Presence of left artificial knee joint | ICD10 | 09112017 | 08172017 | 08292017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 08212017 | 2017-08-21T17:35:37+00:00 |  | 000096924-01 | EMERY | BATES | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 09112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 08182017 | 08262017 | Standard |  |  | 2017-08-18 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-08-27 |  | 2017-09-10 | 2017-09-10 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822075 | M6281 | Muscle weakness (generalized) | ICD10 | 09112017 | 08182017 | 08272017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07252017 | 2017-07-25T11:48:48+00:00 |  | 000023962-01 | JEANE | BOYER | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 08302017 | Standard |  |  | 2017-07-24 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $200.00/day x 18 days = $3600.00 TOTAL PAYMENT = $9649.81 | 0 | 2017-08-31 | 2017-08-29 | 2017-09-01 | 2017-09-08 | 38 | 38 | 9649.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725092 | Z48812, Z951 | Presence of aortocoronary bypass graft | ICD10 | 09112017 | 07242017 | 08312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9649 | 9649 | Approved | 38 | Revenue | RV |  |  |  | 3.0 |
| 08232017 | 2017-08-23T12:10:24+00:00 |  | 000032980-01 | JOYCE | JOHNSON | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08222017 | 09042017 | Standard |  |  | 2017-08-22 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-09-05 |  | 2017-09-07 | 2017-09-08 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823053 | S72142D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 09112017 | 08222017 | 09052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08222017 | 2017-08-22T16:03:42+00:00 |  | 000075303-01 | Emma | Gibson | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | GREYSTONE HEALTH & REHABILITATION CE | 942955 | 1326438128 | GREYSTONE HEALTH & REHABILITATION CE | 1326438128 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREYSTONE HEALTH & REHABILITATION CE | 09112017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 08202017 | 09082017 | Standard |  |  | 2017-08-20 | 17/RUC01= $6049.81 | 0 | 2017-09-09 |  | 2017-09-11 | 2017-09-11 | 20 | 20 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823007 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 09112017 | 08202017 | 09092017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06272017 | 2017-06-27T08:11:17+00:00 |  | 000089390-01 | Michael | Workman | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | MOUNT VERNON HEALTH & REHABILITATION | 942063 | 1962892661 | MOUNT VERNON HEALTH & REHABILITATION | 1962892661 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOUNT VERNON HEALTH & REHABILITATION | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06262017 | 08252017 | Standard |  |  | 2017-06-26 | 17/RVB01= $5411.86 39 DAYS @ $200.00= $7800.00 TOTAL: $13211.86 | 0 | 2017-08-26 |  | 2017-09-08 | 2017-09-01 | 59 | 59 | 13211.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627041 | K915 | Postcholecystectomy syndrome | ICD10 | 09112017 | 06262017 | 08262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 61 | Revenue | RV |  |  |  | 4.0 |
| 06082017 | 2017-06-08T13:13:18+00:00 |  | 000005506-01 | ELWOOD | LEWIS | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD GARDENS REHABI | 949221 | 1235684309 | COUNTRY LANE GARDENS REHABILITATION | 1235684309 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY LANE GARDENS REHABILITATION | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06072017 | 08252017 | Standard |  |  | 2017-06-07 | Per Diem: $250.00/day x 80 days = $20,000.00 Cefipime = per invoice $3433.98 TOTAL PAYMENT = 23,433.98 | 20 | 2017-08-26 |  | 2017-09-08 |  | 80 | 100 | 23433.98 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608059 | G959 | Disease of spinal cord, unspecified | ICD10 | 09112017 | 06072017 | 08262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 80 | Revenue | RV |  |  |  | 12.0 |
| 09052017 | 2017-09-05T13:12:14+00:00 |  | 000107411-01 | DAVID | NORTH | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 09112017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09012017 | 09072017 | Standard |  |  | 2017-09-01 | Swing bed daily rate x7 days | 0 | 2017-09-08 |  |  | 2017-09-08 | 7 | 7 | swing bed daily rate x7 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906007 | Q762 | Congenital spondylolisthesis | ICD10 | 09112017 | 09012017 | 09082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 7 | Revenue | RV |  |  |  | 7.0 |
| 06022017 | 2017-06-02T08:52:19+00:00 |  | 000073187-01 | Georgianna | Willis | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05312017 | 09042017 | Standard |  |  | 2017-05-31 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 72 days = $18,000.00 Wound VAC: per invoice $120.00 TOTAL PAYMENT = $24,426.19 | 8 | 2017-09-05 |  | 2017-09-06 |  | 92 | 100 | 24426.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602053 | A419, J9611 | Chronic respiratory failure with hypoxia | ICD10 | 09112017 | 05312017 | 09052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 97 | Revenue | RV |  |  |  | 7.0 |
| 07312017 | 2017-07-31T12:01:22+00:00 |  | 000053568-01 | JUDITH | KELLER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07282017 | 08142017 | Standard |  |  | 2017-07-28 | 17/RVB01=$5,411.86 | 16 | 2017-08-15 |  | 2017-09-11 | 2017-09-11 | 18 | 34 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731099 | A4189, R4182 | Altered mental status, unspecified | ICD10 | 09112017 | 07282017 | 08152017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 08042017 | 2017-08-04T10:31:50+00:00 |  | 000044701-01 | JEANNE | WATTS | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08022017 | 09042017 | Standard |  |  | 2017-08-02 | 16/RUC01=$7,333.11 PER DIEM RATE OF $250.00/DAY X 3 DAYS=$750.00 PER DIEM RATE OF $200.00/DAY=$2,200.00 TOTAL PAYMENT=$10,283.11 | 0 | 2017-09-05 |  | 2017-09-11 |  | 34 | 34 | 10283.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804027 | S22082D | Unstable burst fx T11-T12 vertebra, subs for fx w routn heal | ICD10 | 09112017 | 08022017 | 09052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 34 | Revenue | RV |  |  |  | 14.0 |
| 08222017 | 2017-08-22T17:18:01+00:00 |  | 000077152-01 | Mildred | Massie | DEEPAK SARWAL MD LLC | 902805 | DEEPAK | SARWAL | 1235159559 | KINGSTON OF MIAMISBURG | 927958 | 1972590115 | KINGSTON OF MIAMISBURG | 1972590115 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINGSTON OF MIAMISBURG | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08212017 | 08312017 | Standard |  |  | 2017-08-21 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-09-01 |  | 2017-09-11 | 2017-09-11 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823032 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09112017 | 08212017 | 09012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 08232017 | 2017-08-23T13:36:14+00:00 |  | 000044725-01 | SHARON | DOUP | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 904207 | 1598831869 | COUNTRY CLUB RETIREMENT CAMPUS MT VE | 0 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY CLUB RETIREMENT CAMPUS MT VE | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08212017 | 09082017 | Standard |  |  | 2017-08-21 | 17/RVC01= $6306.19 | 0 | 2017-09-09 |  | 2017-09-11 | 2017-09-11 | 19 | 19 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823057 | M25461 | Effusion, right knee | ICD10 | 09112017 | 08212017 | 09092017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 08212017 | 2017-08-21T17:03:29+00:00 |  | 000028045-01 | ELIZABETH | KLINGAMAN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08192017 | 09072017 | Standard |  |  | 2017-08-19 | 17/RUB01= $5813.99 | 0 | 2017-09-08 |  | 2017-09-11 | 2017-09-11 | 20 | 20 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822070 | S32130D | Nondisp Zone III fx sacrum, subs for fx w routn heal | ICD10 | 09112017 | 08192017 | 09082017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 08232017 | 2017-08-23T13:38:55+00:00 |  | 000018596-01 | THEODORE | IGEL | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08222017 | 09082017 | Standard |  |  | 2017-08-22 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-09-09 |  | 2017-08-30 | 2017-09-11 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823058 | A419, I10, I480, K5190, R55 | Syncope and collapse | ICD10 | 09112017 | 08222017 | 09092017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 08232017 | 2017-08-23T14:51:26+00:00 |  | 000033389-01 | ARTHUR | TIMMONS | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08212017 | 09082017 | Standard |  |  | 2017-08-21 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-09-09 |  | 2017-09-11 | 2017-09-11 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824017 | L0390, T8579XD | Infect/inflm reaction due to oth int prosth dev/grft, subs | ICD10 | 09112017 | 08212017 | 09092017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 08252017 | 2017-08-25T16:06:45+00:00 |  | 000052923-01 | MOLLY | STICKEL | DEEPAK SARWAL MD LLC | 902805 | DEEPAK | SARWAL | 1235159559 | KINGSTON OF MIAMISBURG | 927958 | 1972590115 | KINGSTON OF MIAMISBURG | 1972590115 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINGSTON OF MIAMISBURG | 09112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08242017 | 08312017 | Standard |  |  | 2017-08-24 | Contract/RUG:17/RUA (Per MDS) = $3,214.76 | 0 | 2017-09-01 |  | 2017-09-11 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170826003 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09112017 | 08242017 | 09012017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07132017 | 2017-07-13T14:53:31+00:00 |  | 000110195-01 | JEAN | BAKER | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | HIGHLAND OAKS HEALTH CENTER | 934015 | 1083929186 | HIGHLAND OAKS HEALTH CENTER | 1083929186 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HIGHLAND OAKS HEALTH CENTER | 09112017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07082017 | 08162017 | Standard |  |  | 2017-07-08 | Per Diem: $200.00/day x 40 days = $8000.00 Ceftriaxone IV (per invoice) = $1971.63 Vancomycin (per invoice) = $750.75 TOTAL PAYMENT = $10,722.38 | 0 | 2017-08-17 |  | 2017-08-18 | 2017-08-18 | 40 | 40 | 10722.38 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713062 | I719 | Aortic aneurysm of unspecified site, without rupture | ICD10 | 09112017 | 07082017 | 08172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 40 | Revenue | RV |  |  |  | 2.0 |
| 06082017 | 2017-06-08T09:00:41+00:00 |  | 000002934-01 | DERRELL | WILLIAMS | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | EDGEWOOD MANOR OF WESTER | 936550 | 1134133986 | EDGEWOOD MANOR OF WESTERVILLE | 1134133986 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDGEWOOD MANOR OF WESTERVILLE | 09112017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 09112017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170608037 | Z48817 | Encntr for surgical aftcr fol surgery on the skin, subcu | ICD10 | 09112017 | 06062017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
