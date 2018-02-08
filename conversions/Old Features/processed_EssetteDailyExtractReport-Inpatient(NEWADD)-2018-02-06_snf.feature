Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-06_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-06_SNF
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
| 01162018 | 2018-01-16T12:32:41+00:00 |  | 000002991-01 | THELMA | WINKS | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 02062018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01132018 | 01242018 | Standard |  |  | 2018-01-13 | 16/RUA01=$3214.76 | 0 | 2018-01-24 |  | 2018-02-02 | 2018-01-22 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116069 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02062018 | 01132018 | 01242018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 12192017 | 2017-12-19T16:59:53+00:00 |  | 000018591-01 | Carmena | Orsini | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02062018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12142017 | 02042018 | Standard |  |  | 2017-12-14 | 17/RVC01=$6,306.19 PER DIEM RATE OF $250.00/DAY X 4 DAYS=$1,000.00 PER DIEM RATE OF $200.00/DAY X 28 DAYS=$5,600.00 TOTAL PAYMENT=$12,906.19 | 0 | 2018-02-04 |  | 2018-02-05 | 2018-02-05 | 52 | 52 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220049 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 02062018 | 12142017 | 02042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 53 | Revenue | RV |  |  |  | 4.0 |
| 01042018 | 2018-01-04T13:33:40+00:00 |  | 000120775-01 | Barbara | Erickson | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 02062018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01012018 | 01212018 | Standard |  |  | 2018-01-01 | 17/RVC01=$6,306.19 | 0 | 2018-01-21 |  | 2018-02-02 | 2018-02-02 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104099 | E0580, F445, G309, G9340, I10 | Essential (primary) hypertension | ICD10 | 02062018 | 01012018 | 01212018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01102018 | 2018-01-10T16:53:52+00:00 |  | 000110605-01 | Albert | Shaffer | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 02062018 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 01102018 | 02022018 | Standard |  |  | 2018-01-10 | 16/RUC01= $7333.11 | 0 | 2018-02-02 |  | 2018-02-06 | 2018-02-06 | 23 | 23 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111020 | E43, N390 | Urinary tract infection, site not specified | ICD10 | 02062018 | 01102018 | 02022018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 01112018 | 2018-01-11T12:08:12+00:00 |  | 000034396-01 | PAUL | MELTON | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02062018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01092018 | 01252018 | Standard |  |  | 2018-01-09 | 17/RUC01=$6,049.81 | 0 | 2018-01-25 |  | 2018-02-05 | 2018-02-05 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111068 | I4891, R296, R531 | Weakness | ICD10 | 02062018 | 01092018 | 01252018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 01152018 | 2018-01-15T13:05:20+00:00 |  | 000093513-01 | Susan | Lehman | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02062018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01302018 | Standard |  |  | 2018-01-11 | 17/RUC01= $6049.81 | 0 | 2018-01-30 |  | 2018-02-05 |  | 19 | 19 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115137 | E119, E6601, E785, I10, M1711, Z4789, T3290 | Corros 90%/more of body surfc w 0% to 9% third degree corros | ICD10 | 02062018 | 01112018 | 01302018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01172018 | 2018-01-17T10:45:12+00:00 |  | 000016909-01 | SHIRLEY | RAWLINS | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02062018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01132018 | 01262018 | Standard |  |  | 2018-01-13 | 17/RUC01=$6,049.81 | 0 | 2018-01-26 |  | 2018-02-05 | 2018-02-05 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117041 | J209, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02062018 | 01132018 | 01262018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01172018 | 2018-01-17T17:16:48+00:00 |  | 000086039-01 | Harlan | Skelton | CARROLL, FREDERICK C | 900430 | FREDERICK C | CARROLL | 1962431957 | THE LAURELS OF MT VERNON | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 02062018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01152018 | 02032018 | Standard |  |  | 2018-01-15 | 17/RVC01= $6306.19 | 0 | 2018-02-03 |  | 2018-02-06 |  | 19 | 19 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118014 | M9702XD | PERIPROSTH FRACTURE AROUND INTERNAL PROSTH L HIP JT, SUBS | ICD10 | 02062018 | 01152018 | 02032018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01222018 | 2018-01-22T13:21:41+00:00 |  | 000064594-01 | JOHN | STRETTON JR | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 02062018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01202018 | 01302018 | Standard |  |  | 2018-01-20 | 10 DAYS @ $200.00= $2000.00 | 0 | 2018-01-30 |  | 2018-02-06 | 2018-01-30 | 10 | 10 | 2000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122114 | C259, K3184, R112 | Nausea with vomiting, unspecified | ICD10 | 02062018 | 01202018 | 01302018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2000 | 2000 | Approved | 11 | Revenue | RV |  |  |  | 10.0 |
| 01232018 | 2018-01-23T12:38:37+00:00 |  | 000004066-01 | ROBERT | BOYD | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 02062018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01222018 | 01302018 | Standard |  |  | 2018-01-22 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 34 | 2018-01-30 |  | 2018-02-05 |  | 8 | 42 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123063 | I63411, I69354, M6281, R1319, R2681, R41841, R4701, R488 | Other symbolic dysfunctions | ICD10 | 02062018 | 01222018 | 01302018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 01242018 | 2018-01-24T16:14:50+00:00 |  | 000106587-01 | Christopher | Jarrells | HEARTLAND OF BEAVERCREEK | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 02062018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01232018 | 01282018 | Standard |  |  | 2018-01-23 | Per Diem: $200.00/day x 5 SNF Days = $1,000.00 | 75 | 2018-01-28 |  |  |  | 5 | 80 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125017 | M6281 | Muscle weakness (generalized) | ICD10 | 02062018 | 01232018 | 01282018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 6 | Revenue | RV |  |  |  | 5.0 |
| 11272017 | 2017-11-27T12:21:57+00:00 |  | 000091992-01 | Dennis | Dawson | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 02062018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11242017 | 02032018 | Standard |  |  | 2017-11-24 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $200.00/day x 51 days = $10,200.00 TOTAL PAYMENT = $15,611.86 | 29 | 2018-02-03 |  | 2018-02-06 | 2018-02-06 | 71 | 100 | 15611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127150 | I5042 | Chronic combined systolic and diastolic hrt fail | ICD10 | 02062018 | 11242017 | 02032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 72 | Revenue | RV |  |  |  | 20.0 |
| 01032018 | 2018-01-03T13:05:30+00:00 |  | 000106123-01 | SAMUEL | RIEL | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 02062018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12292017 | 01252018 | Standard |  |  | 2017-12-29 | 27 DAYS @ $200.00= $5400.00 VANCO PER INVOICE= $46.85 TOTAL: $5446.85 | 12 | 2018-01-25 |  | 2018-02-06 | 2018-02-06 | 27 | 39 | 5446.85 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103119 | J15212 | Pneumonia due to Methicillin resistant Staphylococcus aureus | ICD10 | 02062018 | 12292017 | 01252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5446 | 5446 | Approved | 28 | Revenue | RV |  |  |  | 6.0 |
| 01092018 | 2018-01-09T11:20:33+00:00 |  | 000087767-01 | Irmgard | Behringer | INPATIENT CNSLT OF OH IN | 909701 | LEESA I | COMPARIN | 1821054982 | ST LEONARD HEALTH CARE CENTER | 915994 | 1851387047 | ST LEONARD HEALTH CARE CENTER | 1851387047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST LEONARD HEALTH CARE CENTER | 02062018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01092018 | 01272018 | Standard |  |  | 2018-01-09 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-01-27 |  | 2018-01-31 | 2018-02-06 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109139 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02062018 | 01092018 | 01272018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 01102018 | 2018-01-10T14:49:08+00:00 |  | 000106246-01 | John | Bean Jr | CATHERINE LARUFFA MD INC | 939724 | CATHERINE | LARUFFA | 1972502789 | THE LAURELS OF BLANCHEST | 948218 | 1992032148 | LAURELS OF BLANCHESTER | 1992032148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF BLANCHESTER | 02062018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 01092018 | 02022018 | Standard |  |  | 2018-01-09 | Contract/RUG: 17/RMB (Per MDS) = $2,790.37 | 0 | 2018-02-02 | 2018-01-30 | 2018-02-06 | 2018-01-30 | 20 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110099 | I482, I639, I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 02062018 | 01092018 | 02022018 | RMB01 | MEDIUM REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 01162018 | 2018-01-16T10:03:56+00:00 |  | 000100689-01 | Doris | Brock | JS AESTHETICS | 906812 | JODI I | SPERBER | 1770569741 | PATRIOT RIDGE COMMUNITY | 913103 | 1528041647 | PATRIOT RIDGE COMMUNITY | 1528041647 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATRIOT RIDGE COMMUNITY | 02062018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01132018 | 02012018 | Standard |  |  | 2018-01-13 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2018-02-01 |  | 2018-02-05 |  | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116032 | Z9181 | History of falling | ICD10 | 02062018 | 01132018 | 02012018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01232018 | 2018-01-23T16:15:02+00:00 |  | 000060981-01 | IVAN | BESTER | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 02062018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 02022018 | Standard |  |  | 2018-01-19 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-02-02 |  | 2018-02-06 | 2018-02-06 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123096 | J111, N390, R4182 | Altered mental status, unspecified | ICD10 | 02062018 | 01192018 | 02022018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01252018 | 2018-01-25T08:44:48+00:00 |  | 000030997-01 | ELVIRA | VALENTINE | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 02062018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01242018 | 02062018 | Standard |  |  | 2018-01-24 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-02-06 |  | 2018-02-06 | 2018-02-06 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125051 | Z96651 | Presence of right artificial knee joint | ICD10 | 02062018 | 01242018 | 02062018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01292018 | 2018-01-29T10:48:38+00:00 |  | 000066508-01 | LEONA | WALTERS | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02062018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02052018 | Standard |  |  | 2018-01-26 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-02-05 |  | 2018-02-06 | 2018-02-06 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129081 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 02062018 | 01262018 | 02052018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 02012018 | 2018-02-01T11:34:29+00:00 |  | 000063860-01 | BERNICE | RIFFLE | CIRCLEVILLE CENTER | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 02062018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 01302018 | 02032018 | Standard |  |  | 2018-01-30 | Admission Denial: Non-Skilled Per Diem: $200.00/day x 4 days = $800.00 TOTAL PAYMENT = $800.00 | 0 | 2018-02-03 |  |  |  | 0 | 0 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A180201056 | I509, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02062018 | 01302018 | 02032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
