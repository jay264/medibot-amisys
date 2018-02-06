Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-01_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-01_SNF
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
| 12222017 | 2017-12-22T13:11:25+00:00 |  | 000024542-01 | THEODORE | LEHEW-JUNIOR | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12202017 | 01052018 | Standard |  |  | 2017-12-20 | 17/RVC01=$6,306.19 | 0 | 2018-01-05 |  | 2018-01-31 | 2018-01-31 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222060 | N390, R6520 | Severe sepsis without septic shock | ICD10 | 02012018 | 12202017 | 01052018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 12222017 | 2017-12-22T14:48:46+00:00 |  | 000015849-01 | LUCILLE | DEAN | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12202017 | 01062018 | Standard |  |  | 2017-12-20 | 17/RUB01=$5,813.99 | 0 | 2018-01-06 |  | 2018-01-31 | 2018-01-31 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222072 | F328, I10, K5000, K592, R109, R112 | Nausea with vomiting, unspecified | ICD10 | 02012018 | 12202017 | 01062018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 01052018 | 2018-01-05T11:19:56+00:00 |  | 000059853-01 | HAROLD | SEESE | JOHN R LINSCOTT MD INC | 937106 | JOSEPH C | LINSCOTT | 1811993801 | MILCREST HEALTHCARE INC | 905851 | 1871016139 | MILCREST HEALTHCARE INC | 1871016139 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MILCREST HEALTHCARE INC | 02012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 01242018 | Standard |  |  | 2018-01-05 | 17/RUC01= $6049.81 | 0 | 2018-01-24 |  | 2018-01-29 | 2018-01-29 | 19 | 19 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105056 | N139 | Obstructive and reflux uropathy, unspecified | ICD10 | 02012018 | 01052018 | 01052018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01092018 | 2018-01-09T14:31:01+00:00 |  | 000095051-01 | Mary | Nichols | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02012018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01062018 | 01192018 | Standard |  |  | 2018-01-06 | 17/RUA01= $3214.76 | 0 | 2018-01-19 |  | 2018-01-31 |  | 13 | 13 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110018 | C9312, E11618, I10, I5030 | Unspecified diastolic (congestive) heart failure | ICD10 | 02012018 | 01062018 | 01192018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01152018 | 2018-01-15T13:13:23+00:00 |  | 000077724-01 | James | Hudson | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 02012018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01132018 | 01312018 | Standard |  |  | 2018-01-13 | 16/RUA01=$3,214.76 | 0 | 2018-01-31 |  | 2018-01-31 | 2018-01-31 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115116 | N170 | Acute kidney failure with tubular necrosis | ICD10 | 02012018 | 01132018 | 01312018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 12222017 | 2017-12-22T09:19:05+00:00 |  | 000051690-01 | BETTY | GAREE | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12202017 | 01182018 | Standard |  |  | 2017-12-20 | 17/RUA01= $3214.76 4 DAYS @ $200.00= $800.00 TOTAL: $4014.76 | 0 | 2018-01-18 |  | 2018-01-16 |  | 24 | 24 | 4017.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222036 | E119, I10, I517, N179, N183, R55 | Syncope and collapse | ICD10 | 02012018 | 12202017 | 01182018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4014 | 4014 | Approved | 30 | Revenue | RV |  |  |  | 4.0 |
| 01042018 | 2018-01-04T10:45:52+00:00 |  | 000032380-01 | GLORIA | MCKOWN | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01012018 | 01122018 | Standard |  |  | 2018-01-01 | 17/RUB01=$5,813.99 | 0 | 2018-01-12 |  | 2018-01-31 | 2018-01-31 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104086 | R296, S8292XA | Unsp fracture of left lower leg, init for clos fx | ICD10 | 02012018 | 01012018 | 01122018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01082018 | 2018-01-08T13:38:20+00:00 |  | 000106232-01 | Marjorie | Williams | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02012018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01042018 | 01242018 | Standard |  |  | 2018-01-04 | 17/RUB01= $5813.99 | 0 | 2018-01-24 |  | 2018-02-01 |  | 20 | 20 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108127 | I10, N179, R531, R627 | Adult failure to thrive | ICD10 | 02012018 | 01042018 | 01242018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01092018 | 2018-01-09T17:59:57+00:00 |  | 000037869-01 | DONALD | ESHELMAN | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 01252018 | Standard |  |  | 2018-01-05 | 17/RUA01= $3214.76 | 0 | 2018-01-25 |  | 2018-02-01 |  | 20 | 20 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110052 | E039, I10, K219, M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 02012018 | 01052018 | 01252018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01102018 | 2018-01-10T11:03:39+00:00 |  | 000064139-01 | SHIRLEY | MOORE | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01082018 | 01162018 | Standard |  |  | 2018-01-08 | 17/RVB01=$5,411.86 | 0 | 2018-01-16 |  | 2018-01-31 | 2018-01-31 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110069 | I509, J09X2 | Flu due to ident novel influenza A virus w oth resp manifest | ICD10 | 02012018 | 01082018 | 01162018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 01112018 | 2018-01-11T11:34:37+00:00 |  | 000114759-01 | Robert | Camden | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 02012018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 01102018 | 01162018 | Standard |  |  | 2018-01-10 | 17/RVB01= $5411.86 | 0 | 2018-01-16 |  | 2018-02-01 | 2018-02-01 | 6 | 6 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111067 | J189 | Pneumonia, unspecified organism | ICD10 | 02012018 | 01102018 | 01162018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 01112018 | 2018-01-11T12:38:32+00:00 |  | 000028216-01 | RALPH | FRANKLIN | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 02012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01102018 | 01302018 | Standard |  |  | 2018-01-10 | 17/RUB01= $5813.99 | 26 | 2018-01-30 |  | 2018-02-01 |  | 20 | 46 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111079 | N139 | Obstructive and reflux uropathy, unspecified | ICD10 | 02012018 | 01102018 | 01302018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01152018 | 2018-01-15T13:06:43+00:00 |  | 000067067-01 | JERRY | SAPP | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02012018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01112018 | 01222018 | Standard |  |  | 2018-01-11 | 17/RUA01= $3214.76 | 0 | 2018-01-22 |  | 2018-02-01 |  | 11 | 11 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115142 | M175, M1990, M25561, M2560, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 02012018 | 01112018 | 01222018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01162018 | 2018-01-16T15:40:20+00:00 |  | 000076694-01 | David | Amos | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 02012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01122018 | 01262018 | Standard |  |  | 2018-01-12 | 17/RUB01=$5,813.99 | 0 | 2018-01-26 |  | 2018-01-31 | 2018-01-31 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116088 | M5441, M5442, R296 | Repeated falls | ICD10 | 02012018 | 01122018 | 01262018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01182018 | 2018-01-18T14:13:30+00:00 |  | 000079778-01 | Joseph | Karner | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 02012018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 01162018 | 01252018 | Standard |  |  | 2018-01-16 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-01-25 |  | 2018-02-01 | 2018-02-01 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118074 | J189 | Pneumonia, unspecified organism | ICD10 | 02012018 | 01162018 | 01252018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01192018 | 2018-01-19T12:12:31+00:00 |  | 000111648-01 | CHARLES | SHEPHERD | MEDICAL & SURG ASSOC INC | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 02012018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01172018 | 01262018 | Standard |  |  | 2018-01-17 | 17/RUA01= $3214.76 | 0 | 2018-01-26 |  | 2018-02-01 | 2018-02-01 | 9 | 9 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119052 | I2102 | STEMI involving left anterior descending coronary artery | ICD10 | 02012018 | 01172018 | 01262018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01222018 | 2018-01-22T11:55:56+00:00 |  | 000007126-01 | MARGARET | WRIGHT | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 02012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 01292018 | Standard |  |  | 2018-01-19 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-01-29 |  | 2018-01-31 | 2018-01-31 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122097 | J101, M6281, R531 | Weakness | ICD10 | 02012018 | 01192018 | 01292018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01232018 | 2018-01-23T12:53:29+00:00 |  | 000002703-01 | KENNETH | BEATTY | AEBI GINTY ROMAKER SPROU | 934863 | ROBERT J | SPROUSE | 1699754945 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01212018 | 01262018 | Standard |  |  | 2018-01-21 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-01-26 |  | 2018-02-01 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123066 | G9340, Z5189 | Encounter for other specified aftercare | ICD10 | 02012018 | 01212018 | 01262018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 01262018 | 2018-01-26T14:36:45+00:00 |  | 000056696-01 | JULIA | RUSSELL | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02012018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 01242018 | 01302018 | Standard |  |  | 2018-01-24 | 17/RMA01=$2,477.40 | 0 | 2018-01-30 |  | 2018-01-31 | 2018-01-31 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126077 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02012018 | 01242018 | 01302018 | RMA01 | MEDIUM REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
