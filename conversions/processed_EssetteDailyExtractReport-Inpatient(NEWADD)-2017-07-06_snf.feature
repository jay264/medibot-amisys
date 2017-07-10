Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-06_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-06_SNF
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
| 05042017 | 2017-05-04T11:22:57+00:00 |  | 000117391-01 | Shirley | Wiggins | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 07062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05012017 | 06302017 | Standard |  |  | 2017-05-01 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 38 days = $9500.00 TOTAL PAYMENT = $14,911.86 | 23 | 2017-07-01 | 2017-06-28 | 2017-07-06 | 2017-07-06 | 58 | 81 | 14911.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505014 | S72001B | Fx unsp part of neck of r femur, init for opn fx type I/2 | ICD10 | 07062017 | 05012017 | 07012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 61 | Revenue | RV |  |  |  | 5.0 |
| 05092017 | 2017-05-09T15:00:47+00:00 |  | 000053829-01 | ANNA | DANGELO | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 07062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05052017 | 05122017 | Standard |  |  | 2017-05-05 | 17/RVA01=$3586.28 | 0 | 2017-05-13 |  | 2017-05-30 | 2017-05-30 | 8 | 8 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510060 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07062017 | 05052017 | 05132017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 05302017 | 2017-05-30T10:56:37+00:00 |  | 000085055-01 | Marjorie | White | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | HIGHLAND OAKS HEALTH CENTER | 934015 | 1083929186 | HIGHLAND OAKS HEALTH CENTER | 1083929186 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HIGHLAND OAKS HEALTH CENTER | 07062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06122017 | Standard |  |  | 2017-05-25 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-06-13 |  | 2017-07-05 |  | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530141 | S32409D | Unsp fracture of unsp acetabulum, subs for fx w routn heal | ICD10 | 07062017 | 05252017 | 06132017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 06052017 | 2017-06-05T13:17:07+00:00 |  | 000089500-01 | Joanne | Bowman | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 07062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06032017 | 06222017 | Standard |  |  | 2017-06-03 | 17/RVC01=$6306.19 | 0 | 2017-06-23 |  | 2017-07-06 | 2017-07-06 | 20 | 20 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605126 | I69152 | Hemiplga following ntrm intcrbl hemor aff left dominant side | ICD10 | 07062017 | 06032017 | 06232017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06122017 | 2017-06-12T12:08:47+00:00 |  | 000070781-01 | Betty | Mitchell | PICKAWAY HEALTH SERVICES | 913727 | KEVIN M | SELLERS | 1306085220 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 07062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06092017 | 06282017 | Standard |  |  | 2017-06-09 | Per MDS: 17/RHA01 = $2812.08 TOTAL PAYMENT = $2812.08 | 0 | 2017-06-29 |  | 2017-06-23 | 2017-07-05 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612093 | F0390, M6281 | Muscle weakness (generalized) | ICD10 | 07062017 | 06092017 | 06292017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06122017 | 2017-06-12T13:13:08+00:00 |  | 000085766-01 | Richard | Boyer | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 07062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06092017 | 06272017 | Standard |  |  | 2017-06-09 | Per MDS: $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-06-28 |  | 2017-07-06 |  | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612107 | I10, S3289XD | Fracture of oth parts of pelvis, subs for fx w routn heal | ICD10 | 07062017 | 06092017 | 06282017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 06142017 | 2017-06-14T15:25:18+00:00 |  | 000097637-01 | Charles | Parker | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 07062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06092017 | 06302017 | Standard |  |  | 2017-06-09 | Per MDS: 17/RUB01 = $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-07-01 |  | 2017-07-05 | 2017-07-05 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614068 | M4326 | Fusion of spine, lumbar region | ICD10 | 07062017 | 06092017 | 07012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 06222017 | 2017-06-22T13:41:45+00:00 |  | 000082339-01 | Garry | Mills | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 07062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06212017 | 06282017 | Standard |  |  | 2017-06-21 | 17/RVB01= $5411.86 | 0 | 2017-06-29 |  | 2017-07-06 | 2017-07-06 | 8 | 8 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622069 | Z471 | Aftercare following joint replacement surgery | ICD10 | 07062017 | 06212017 | 06292017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06232017 | 2017-06-23T11:33:33+00:00 |  | 000080721-01 | James | Paisley | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | WILLOW HAVEN CARE CENTER | 924194 | 1306834148 | WILLOW HAVEN CARE CENTER | 1306834148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WILLOW HAVEN CARE CENTER | 07062017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 06162017 | 06282017 | Standard |  |  | 2017-06-16 | 17/RUB01=$5813.99 | 5 | 2017-06-29 |  | 2017-07-05 |  | 13 | 18 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623049 | K55019 | ACUTE ISCHEMIA OF SMALL INTESTINE, EXTENT UNSPECIFIED | ICD10 | 07062017 | 06162017 | 06292017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06252017 | 2017-06-25T12:00:21+00:00 |  | 000099240-01 | Monda | Smart | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 07062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06222017 | 06272017 | Standard |  |  | 2017-06-22 | Contract/RUG: 17/RMC  (Per MDS) = $3,027.33 | 0 | 2017-06-28 |  | 2017-07-05 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626005 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07062017 | 06222017 | 06282017 | RMC01 | MEDIUM REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 07062017 | 2017-07-06T12:16:25+00:00 |  | 000074716-01 | James | Stewart | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 07062017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07042017 | 07052017 | Standard |  |  | 2017-07-04 | 2 days @ $200.00= $400.00 | 0 | 2017-07-07 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706079 | C250, I10, I4891 | Unspecified atrial fibrillation | ICD10 | 07062017 | 07042017 | 07062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
| 06302017 | 2017-06-30T16:23:10+00:00 |  | 000048795-01 | SHIRLEY | NOWAK | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD GARDENS REHABI | 949221 | 1235684309 | FAIRFIELD GARDENS REHAB AND CARE CTR | 1235684309 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAIRFIELD GARDENS REHAB AND CARE CTR | 07062017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 06292017 | 07052017 | Standard |  |  | 2017-06-29 | Admission Denial Unskilled Per Diem; $200.00/day x 7 days = $1400.00 TOTAL PAYMENT = $1400.00 | 0 | 2017-07-06 |  |  |  | 0 | 0 | 1400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170703008 | R079, R110, R197 | Diarrhea, unspecified | ICD10 | 07062017 | 06292017 | 07062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved | 7 | Revenue | RV |  |  |  | 7.0 |
