Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-30_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-30_SNF
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
| 07122017 | 2017-07-12T10:44:17+00:00 |  | 000102001-01 | E N | Babcock | CEN OHIO GERIATRICS LLC | 942662 | JAYNINE D | VADO | 1073808408 | SARAH MOORE HEALTH CARE CENTER | 946271 | 1063476802 | SARAH MOORE HEALTH CARE CENTER | 1063476802 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SARAH MOORE HEALTH CARE CENTER | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07102017 | 07162017 | Standard |  |  | 2017-07-10 | 17/RUA01=$3214.76 | 0 | 2017-07-17 |  | 2017-07-20 | 2017-07-20 | 7 | 7 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712034 | M4326 | Fusion of spine, lumbar region | ICD10 | 08302017 | 07102017 | 07072017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 08282017 | 2017-08-28T14:18:32+00:00 |  | 000031136-01 | SHIRLEY | MALONE | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06012017 | 06142017 | Standard |  |  | 2017-06-01 | Per Diem: $200.00/day x 14 days = $2800.00 TOTAL PAYMENT = $2800.00 | 0 | 2017-06-15 |  | 2017-08-28 | 2017-08-28 | 14 | 14 | 2800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828112 | L03116 | Cellulitis of left lower limb | ICD10 | 08302017 | 06012017 | 06152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2800 | 2800 | Approved | 14 | Revenue | RV |  |  |  | 14.0 |
| 07182017 | 2017-07-18T12:08:29+00:00 |  | 000024325-01 | CARL | MYERS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07142017 | 08082017 | Standard |  |  | 2017-07-14 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.00/DAY X 6 DAYS=$1,200.00 TOTAL PAYMENT TO FACILITY=$7,506.19 | 0 | 2017-08-09 |  | 2017-08-25 | 2017-08-25 | 26 | 26 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719086 | G9349, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 08302017 | 07142017 | 08092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7506 | 7506 | Approved Skilled | 26 | Revenue | RV |  |  |  | 6.0 |
| 07172017 | 2017-07-17T13:38:49+00:00 |  | 000080358-01 | Gilbert | Mcgovern | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07142017 | 08102017 | Standard |  |  | 2017-07-14 | 16/RUB01=$4,429.71 PER DIEM RATE OF $200.00/DAY=$1,600.00 TOTAL PAYMENT=$6029.71  | 0 | 2017-08-11 |  | 2017-08-29 | 2017-08-29 | 28 | 28 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717096 | R1084 | Generalized abdominal pain | ICD10 | 08302017 | 07142017 | 08112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6029 | 6029 | Approved Skilled | 28 | Revenue | RV |  |  |  | 8.0 |
| 07032017 | 2017-07-03T14:23:30+00:00 |  | 000025030-01 | ADONNA | SMITH | COPC CENTRAL OHIO PRIMAR | 901490 | ANURADHA | KESARI | 1740389352 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 08302017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 07012017 | 07082017 | Standard |  |  | 2017-07-01 | NON-SKILLED PER DIEM RATE OF $200.00/DAY X 7 DAYS=$1400.00 | 0 | 2017-07-08 |  |  |  | 7 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170703115 | Z4731 | Aftercare following explantation of shoulder jt prosthesis | ICD10 | 08302017 | 07012017 | 07082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved Unskilled | 8 | Revenue | RV |  |  |  | 7.0 |
| 05192017 | 2017-05-19T12:02:58+00:00 |  | 000063380-01 | Jill | Parsons | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | CENTERBURG RESPIRATORY A | 949066 | 1083157747 | CENTERBURG RESPIRATORY AND SPECIALTY | 1083157747 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG RESPIRATORY AND SPECIALTY | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08302017 | 09062017 | Standard |  |  | 2017-05-24 | 38 DAYS @ $520.00 FOR VENT=$19760.00 4 DAYS @ $200.00= $800.00 TOTAL: $20560.00 | 0 | 2017-07-14 |  | 2017-07-17 | 2017-07-17 | 51 | 51 | 20560.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519057 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 08302017 | 05242017 | 07142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 8 | Revenue | RV |  |  |  | 7.0 |
| 06302017 | 2017-06-30T09:46:08+00:00 |  | 000003390-01 | CECILIA | GUZZO | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 08302017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 06232017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170630032 | M172 | Bilateral post-traumatic osteoarthritis of knee | ICD10 | 08302017 | 06282017 | 07032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 11 | Revenue | RV |  |  |  | 5.0 |
| 08162017 | 2017-08-16T10:21:22+00:00 |  | 000089567-01 | Lowell | Markwell | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 08302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08112017 | 08202017 | Standard |  |  | 2017-08-11 | Contract/RUG: 17/RUL (Per MDS) = $5,317.57 | 0 | 2017-08-21 |  | 2017-08-30 | 2017-08-30 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816058 | N179 | Acute kidney failure, unspecified | ICD10 | 08302017 | 08112017 | 08212017 | RUL01 | ULTRA HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA O | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 08112017 | 2017-08-11T15:01:38+00:00 |  | 000098026-01 | Gary | Lustgarten | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 08302017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 08092017 | 08262017 | Standard |  |  | 2017-08-09 | Contract/RUG: 17/RUB  (Per MDS) = $5,813.99 | 51 | 2017-08-27 |  | 2017-08-30 | 2017-08-30 | 18 | 69 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811071 | M4802 | Spinal stenosis, cervical region | ICD10 | 08302017 | 08092017 | 08272017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 08142017 | 2017-08-14T18:43:24+00:00 |  | 000112438-01 | Linda | Bass | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 08302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08122017 | 08222017 | Standard |  |  | 2017-08-12 | Contract/RUG: 17/RUA  (Per MDS) = $3,214.76 | 0 | 2017-08-23 |  | 2017-08-30 | 2017-08-30 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815030 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08302017 | 08122017 | 08232017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 08142017 | 2017-08-14T16:59:38+00:00 |  | 000097645-01 | M | Jones | INPATIENT CNSLT OF OH IN | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF MIAMISBURG OH LLC | 905914 | 1184666406 | HEARTLAND OF MIAMISBURG OH LLC | 1184666406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MIAMISBURG OH LLC | 08302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08122017 | 08252017 | Standard |  |  | 2017-08-12 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-08-26 |  | 2017-08-30 | 2017-08-30 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815028 | S22009D | Unsp fx unsp thor vertebra, subs for fx w routn heal | ICD10 | 08302017 | 08122017 | 08262017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08142017 | 2017-08-14T10:21:09+00:00 |  | 000024342-01 | RICHARD | KONIECZKO | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08112017 | 08182017 | Standard |  |  | 2017-08-11 | 17/RUB01=$5,813.99 | 0 | 2017-08-19 |  | 2017-08-22 | 2017-08-22 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814062 | S73004D | Unspecified dislocation of right hip, subsequent encounter | ICD10 | 08302017 | 08112017 | 08192017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06262017 | 2017-06-26T14:37:51+00:00 |  | 000023771-01 | Wilburt | Sills | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 08302017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 06242017 | 08082017 | Standard |  |  | 2017-06-24 | 17/RMA01=$2477.40 26 DAYS @ $200.00=$5200.00 IV ZOSYN PER INVOICES $724.18 IV VANCO PER INVOICES $279.02 WOUND VAC PER INVOICES $2960.00 TOTAL: $11640.60 | 32 | 2017-08-09 |  | 2017-08-08 | 2017-08-08 | 46 | 78 | 11640.6 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626121 | A491, M86171 | Other acute osteomyelitis, right ankle and foot | ICD10 | 08302017 | 06242017 | 08092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 2.0 |
| 08012017 | 2017-08-01T13:50:59+00:00 |  | 000086287-01 | Barbara | Carpenter | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 08302017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 07312017 | 08182017 | Standard |  |  | 2017-07-31 | Contract/RUG: 17/PC1  (Per MDS) = $2,465.35 | 0 | 2017-08-19 |  | 2017-08-30 | 2017-08-30 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802004 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 08302017 | 07312017 | 08192017 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 06272017 | 2017-06-27T13:25:49+00:00 |  | 000064097-01 | RONALD | CUNION | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 08302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06242017 | 08182017 | Standard |  |  | 2017-06-24 | 17/RUC01=$6,049.81 PER DIEM RATE OF $200.00/DAY X 35 DAYS=$7,000.00 TOTAL PAYMENT=$13,049.81 | 0 | 2017-08-19 |  | 2017-08-29 | 2017-08-29 | 55 | 56 | 13049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627092 | B9562 | Methicillin resis staph infct causing diseases classd elswhr | ICD10 | 08302017 | 06242017 | 08192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 56 | Revenue | RV |  |  |  | 1.0 |
| 07052017 | 2017-07-05T10:28:47+00:00 |  | 000048939-01 | MONA | KNOUSE | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07022017 | 08032017 | Standard |  |  | 2017-07-02 | 17/RHC01=$4,132.02 PER DIEM RATE OF $250.00/DAY X 12=$7,132.02 | 0 | 2017-08-04 |  | 2017-08-28 | 2017-08-28 | 32 | 32 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705073 | F419, R569, S62109A, S8291XA | Unsp fracture of right lower leg, init for clos fx | ICD10 | 08302017 | 07022017 | 08042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7132 | 7132 | Approved Skilled | 33 | Revenue | RV |  |  |  | 2.0 |
| 08042017 | 2017-08-04T14:30:31+00:00 |  | 000027533-01 | Beverly | Noland | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 902185 | 1205823770 | SCIOTO RETIREMENT COMMUNITY | 1205823770 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 08302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08032017 | 08242017 | Standard |  |  | 2017-08-03 | Contract/RUG: 17/RVC (Per MDS) = 6,306.19 | 0 | 2017-08-25 |  | 2017-08-30 | 2017-08-30 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804060 | M545, M6281 | Muscle weakness (generalized) | ICD10 | 08302017 | 08032017 | 08252017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 08092017 | 2017-08-09T11:39:36+00:00 |  | 000076113-01 | Melvin | Steigleder | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 08302017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 08072017 | 08262017 | Standard |  |  | 2017-08-07 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-08-27 |  | 2017-08-30 | 2017-08-30 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809057 | T8453XD | Infect/inflm reaction due to internal r knee prosth, subs | ICD10 | 08302017 | 08072017 | 08272017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07122017 | 2017-07-12T11:44:56+00:00 |  | 000073891-01 | Mary | Stierhoff | COPC CENTRAL OHIO PRIMAR | 936191 | TIMOTHY S | COSS | 1720071699 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 08302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07122017 | 07122017 | Standard |  |  | 2017-07-12 | 1 DAY @ $200.00=$200.00 | 0 | 2017-07-13 |  | 2017-08-15 |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712046 | Z96659 | Presence of unspecified artificial knee joint | ICD10 | 08302017 | 07122017 | 07132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
| 07242017 | 2017-07-24T09:20:18+00:00 |  | 000095410-01 | Letha | Rogers | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06202017 | 08182017 | Standard |  |  | 2017-07-20 | 17/RUC01=$6,049.81 PER DIEM RATE OF $200.00/DAY X 10=$2,000.00 TOTAL PAYMENT=$8,049.81 | 0 | 2017-08-19 |  | 2017-08-29 | 2017-08-29 | 30 | 30 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724037 | G4089, J449, R296, R531 | Weakness | ICD10 | 08302017 | 07202017 | 08192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8049 | 8049 | Approved Skilled | 60 | Revenue | RV |  |  |  | 10.0 |
| 07062017 | 2017-07-06T10:52:54+00:00 |  | 000078909-01 | Rose | Mcfarland | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06232017 | 08222017 | Standard |  |  | 2017-06-23 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $200.00/day x 41 SNF Days = $8,200.00 Total Care: $11,550.20 | 39 | 2017-08-23 |  | 2017-08-30 |  | 61 | 100 | 11550.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706061 | Z96651 | Presence of right artificial knee joint | ICD10 | 08302017 | 06232017 | 08232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 61 | Revenue | RV |  |  |  | 15.0 |
| 08032017 | 2017-08-03T14:19:32+00:00 |  | 000087729-01 | Barbara | Wilson | COPC CENTRAL OHIO PRIMAR | 936191 | TIMOTHY S | COSS | 1720071699 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08082017 | 08172017 | Standard |  |  | 2017-08-08 | 17/RVB01=$5411.86 | 0 | 2017-08-18 |  | 2017-08-30 | 2017-08-30 | 10 | 10 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803065 | G629, I2510, I509 | Heart failure, unspecified | ICD10 | 08302017 | 08082017 | 08182017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 08172017 | 2017-08-17T11:41:46+00:00 |  | 000077191-01 | Barbara | Greenlee | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08162017 | 08162017 | Standard |  |  | 2017-08-16 |  | 0 | 2017-08-16 |  |  |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817051 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08302017 | 08162017 | 08162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 1 | Revenue | RV |  |  |  | 1.0 |
| 08182017 | 2017-08-18T15:21:55+00:00 |  | 000044384-01 | BETTY | SERGENT | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08162017 | 08292017 | Standard |  |  | 2017-08-16 | 16/RVB01=$3,350.20 | 0 | 2017-08-30 |  | 2017-08-30 | 2017-08-30 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818057 | R55 | Syncope and collapse | ICD10 | 08302017 | 08162017 | 08302017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08102017 | 2017-08-10T15:17:20+00:00 |  | 000080401-01 | Thomas | Vasbinder | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | WHISPERING HILLS FACILIT | 904761 | 1023024403 | WHISPERING HILLS FACILITY OPERATIONS | 1023024403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WHISPERING HILLS FACILITY OPERATIONS | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08092017 | 08162017 | Standard |  |  | 2017-08-09 | 14/RVA01=$2561.63 | 0 | 2017-08-17 |  | 2017-08-30 |  | 8 | 8 | 2561.63 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810071 | Z89439 | Acquired absence of unspecified foot | ICD10 | 08302017 | 08092017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08142017 | 2017-08-14T11:13:28+00:00 |  | 000049318-01 | JERRY | KOCHER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 902185 | 1205823770 | SCIOTO RETIREMENT COMMUNITY | 1205823770 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 08302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08112017 | 08222017 | Standard |  |  | 2017-08-11 | Contract/RUG: 17/RUC  (Per MDS) = $6,049.81 | 3 | 2017-08-23 |  | 2017-08-30 |  | 12 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814078 | J9601, M6281 | Muscle weakness (generalized) | ICD10 | 08302017 | 08112017 | 08232017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
