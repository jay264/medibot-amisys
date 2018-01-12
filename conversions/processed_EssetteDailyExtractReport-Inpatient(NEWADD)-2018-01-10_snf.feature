Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-10_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-10_SNF
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
| 01082018 | 2018-01-08T12:20:29+00:00 |  | 000026941-01 | NORMA | RINEHART | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | NATIONAL CHURCH RESIDENCES AT HOME I | 906261 | 1922104041 | NATIONAL CHURCH RESIDENCES AT HOME I | 1922104041 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NATIONAL CHURCH RESIDENCES AT HOME I | 01102018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01082018 | Standard |  |  | 2018-01-04 | Per MDS: 17/RMB01 = $2790.37 | 10 | 2018-01-08 |  | 2018-01-09 |  | 4 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108116 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 01102018 | 01042018 | 01082018 | RMB01 | MEDIUM REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 01022018 | 2018-01-02T11:33:27+00:00 |  | 000005578-01 | ROLAND | CARMAN | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 01102018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12292017 | 01062018 | Standard |  |  | 2017-12-29 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-01-06 |  | 2018-01-08 | 2018-01-08 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102089 | I10, J90, J9621, M6281, R41841, R488, R54 | Age-related physical debility | ICD10 | 01102018 | 12292017 | 01062018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 12142017 | 2017-12-14T16:32:32+00:00 |  | 000070751-01 | Robert | Blackstone | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 01102018 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 12132017 | 01022018 | Standard |  |  | 2017-12-13 | 17/RUB01=$5,813.99 | 0 | 2018-01-02 |  | 2018-01-07 | 2018-01-07 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215053 | B179 | Acute viral hepatitis, unspecified | ICD10 | 01102018 | 12132017 | 01022018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11272017 | 2017-11-27T14:08:18+00:00 |  | 000106640-01 | Charles | Clouser | FCMH MED & SURG ASSOC | 906134 | DAVID J | GUNDERMAN | 1508861246 | THE LAURELS OF HILLSBORO | 952248 | 1255387221 | THE LAURELS OF HILLSBORO | 1255387221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE LAURELS OF HILLSBORO | 01102018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11252017 | 11302017 | Standard |  |  | 2017-11-25 | 17/PB101=$2,132.09 | 25 | 2017-11-30 |  | 2017-12-28 |  | 5 | 30 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128006 | I482, M6281 | Muscle weakness (generalized) | ICD10 | 01102018 | 11252017 | 11302017 | PB101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved Skilled | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 12202017 | 2017-12-20T14:17:42+00:00 |  | 000087636-01 | Mary | Davis | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 01102018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12192017 | 12292017 | Standard |  |  | 2017-12-19 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-12-29 |  | 2018-01-09 | 2018-01-02 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220078 | Z471 | Aftercare following joint replacement surgery | ICD10 | 01102018 | 12192017 | 12292017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 11172017 | 2017-11-17T15:58:07+00:00 |  | 000099969-01 | Nancy | Brown | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 01102018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11162017 | 12282017 | Standard |  |  | 2017-11-16 | 17/RUB01=$5,813.99 PER DIEM RATE OF $250.00/DAY X 22 DAYS=$5,500.00 TOTAL PAYMENT TO FACILITY= $11,313.99 | 0 | 2017-12-28 |  | 2018-01-09 | 2018-01-09 | 42 | 42 | 11313.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117089 | I6340 | Cerebral infarction due to embolism of unsp cerebral artery | ICD10 | 01102018 | 11162017 | 12282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 43 | Revenue | RV |  |  |  | 8.0 |
| 12272017 | 2017-12-27T17:21:59+00:00 |  | 000031103-01 | RUTH | FISHER | FAIRFIELD COUNTY COMBINE | 936838 | MARK E | AEBI | 1760461693 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 01102018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12272017 | 12312017 | Standard |  |  | 2017-12-27 | Per MDS: 16/RVC01 = $3539.19 | 0 | 2017-12-31 |  | 2018-01-10 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228007 | K9423 | Gastrostomy malfunction | ICD10 | 01102018 | 12272017 | 12312017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 12142017 | 2017-12-14T11:08:16+00:00 |  | 000079799-01 | Ondina | Bonser | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 01102018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12132017 | 01022018 | Standard |  |  | 2017-12-13 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-01-02 |  | 2018-01-09 | 2018-01-09 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214057 | I10, I4892, R002, R54 | Age-related physical debility | ICD10 | 01102018 | 12132017 | 01022018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10042017 | 2017-10-04T11:11:18+00:00 |  | 000083381-01 | George | Lee | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 01102018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 10022017 | 01102018 | Standard |  |  | 2017-10-02 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 22 days = $5500.00 Per Diem: $200.00/day x 58 days = $11,600.00 TOTAL PAYMENT = $22,511.86 | 0 | 2018-01-10 |  | 2018-01-10 |  | 100 | 100 | 22511.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004060 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 01102018 | 10022017 | 01102018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 101 | Revenue | RV |  |  |  | 12.0 |
| 11292017 | 2017-11-29T11:39:41+00:00 |  | 000000107-01 | MINNIE | BEATTY | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11272017 | 01082018 | Standard |  |  | 2017-11-27 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 22 days = $4400.00 TOTAL PAYMENT = $10,706.19 | 0 | 2018-01-08 | 2018-01-10 | 2018-01-10 | 2018-01-10 | 42 | 42 | 10706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129114 | S32509D, Z5189 | Encounter for other specified aftercare | ICD10 | 01102018 | 11272017 | 01082018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 43 | Revenue | RV |  |  |  | 5.0 |
| 12182017 | 2017-12-18T11:41:01+00:00 |  | 000091241-01 | Mary | Perry | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 01102018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12162017 | 01012018 | Standard |  |  | 2017-12-16 | Contract/RUG: 17/HB1 (Per MDS) = $3,448.45 | 0 | 2018-01-01 |  | 2018-01-09 |  | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218124 | T8453XA | Infect/inflm reaction due to internal r knee prosth, init | ICD10 | 01102018 | 12162017 | 01012018 | HB101 | SPECIAL CARE HIGH , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 09272017 | 2017-09-27T15:03:00+00:00 |  | 000094631-01 | Benjamin | Wile Sr | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 01102018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09242017 | 11302017 | Standard |  |  | 2017-09-24 | 16/RVC01= $3539.19 32 DAYS @ $250.00= $8000.00 15 DAYS @ $200.00= $3000000 WOUND VAC PER INVOICES= $493.00 TOTAL: $15032.19 | 0 | 2017-11-30 |  | 2017-12-14 | 2017-12-14 | 67 | 67 | 15032.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927076 | L03115, N390, R296, R531, S92911D | Unsp fracture of right toe(s), subs for fx w routn heal | ICD10 | 01102018 | 09242017 | 11302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 68 | Revenue | RV |  |  |  | 6.0 |
