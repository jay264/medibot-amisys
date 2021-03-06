Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-26_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-26_SNF
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
| 02162017 | 2017-02-16T15:16:01+00:00 |  | 000027425-01 | E LEROY | BUNDY | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 06262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02132017 | 03132017 | Standard |  |  | 2017-02-13 | 17/RUB01=$5813.99 | 0 | 2017-03-14 |  | 2017-06-21 | 2017-06-21 | 29 | 29 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170217062 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 06262017 | 02132017 | 03142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 29 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 03032017 | 2017-03-03T16:42:56+00:00 |  | 000110767-01 | LORRAINE | CHAFFIN | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 06262017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02282017 | 04052017 | Standard |  |  | 2017-02-28 | 17/RUB01=$5813.99 9 DAYS @ $250.00=$2250.00 8 DAYS @ $200.00=$1600.00 TOTAL: $9663.99 | 0 | 2017-04-06 |  | 2017-06-21 | 2017-06-21 | 37 | 37 | 9663.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170306005 | R296 | Repeated falls | ICD10 | 06262017 | 02282017 | 04062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9663 | 9663 | Approved | 37 | Revenue | RV |  |  |  | 3.0 |
| 03292017 | 2017-03-29T16:48:43+00:00 |  | 000032467-01 | WILLIAM | CONWAY | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 06262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03282017 | 06152017 | Standard |  |  | 2017-03-28 | 17/RVC01=$6306.19 60 DAYS @ $200.00=$12000.00 TOTAL: $18306.19 | 16 | 2017-06-16 |  | 2017-06-23 | 2017-06-23 | 80 | 96 | 18306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170330034 | T814XXD | Infection following a procedure, subsequent encounter | ICD10 | 06262017 | 03282017 | 06162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 80 | Revenue | RV |  |  |  | 18.0 |
| 04142017 | 2017-04-14T14:27:10+00:00 |  | 000016730-01 | JEANNE | ACKERT | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 06262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06262017 | 07032017 | Standard |  |  | 2017-04-12 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.00/DAY X 16 DAYS=$3,200.00 TOTAL PAID=$9,506.19 | 0 | 2017-05-18 |  | 2017-06-07 | 2017-06-07 | 36 | 36 | 9506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417002 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 06262017 | 04122017 | 05182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9506 | 9506 | Approved Skilled | 8 | Revenue | RV |  |  |  | 2.0 |
| 04252017 | 2017-04-25T13:59:41+00:00 |  | 000075556-01 | Jack | Mcwilliams | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | CAMBRIDGE HLTH & REHABILITATION CTR | 931795 | 1114344868 | CAMBRIDGE HLTH & REHABILITATION CTR | 1114344868 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CAMBRIDGE HLTH & REHABILITATION CTR | 06262017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 04242017 | 06152017 | Standard |  |  | 2017-04-24 | 17/RVB01=$5411.86 26 DAYS@ $200.00=$5200.00 4 DAYS@ $250.00=$1000.00 TOTAL: $11611.86 | 0 | 2017-06-16 |  | 2017-06-22 | 2017-06-22 | 50 | 50 | 11611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425128 | I25709, N390 | Urinary tract infection, site not specified | ICD10 | 06262017 | 04242017 | 06162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 53 | Revenue | RV |  |  |  | 6.0 |
| 05012017 | 2017-05-01T21:59:36+00:00 |  | 000084483-01 | Jonathan | Kirk | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 06262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 04292017 | 06082017 | Standard |  |  | 2017-04-29 | 17/RVC01=$6306.19 18 DAYS @ $200.00= $3600.00 TOTAL: $9906.19 | 0 | 2017-06-09 |  | 2017-06-20 | 2017-06-20 | 38 | 38 | 9906.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502096 | L03116 | Cellulitis of left lower limb | ICD10 | 06262017 | 04292017 | 06092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9906 | 9906 | Approved | 41 | Revenue | RV |  |  |  | 8.0 |
| 05022017 | 2017-05-02T10:54:43+00:00 |  | 000109709-01 | Bonna | Dennis | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 06262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04292017 | 06172017 | Standard |  |  | 2017-04-29 | 16/RUC01=$7333.11 9 DAYS @ $250.00= $2250.00 20 DAYS @ $200.00 + $4000.00 TOTAL: $13584.11 | 43 | 2017-06-18 |  | 2017-06-23 | 2017-06-23 | 49 | 92 | 13584.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503029 | E860, N179, R262, R4182 | Altered mental status, unspecified | ICD10 | 06262017 | 04292017 | 06182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 50 | Revenue | RV |  |  |  | 8.0 |
| 05052017 | 2017-05-05T13:05:25+00:00 |  | 000023771-01 | Wilburt | Sills | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 06262017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 05032017 | 06232017 | Standard |  |  | 2017-05-03 | 17/RVA01=$3586.28 | 10 | 2017-05-24 |  | 2017-06-01 | 2017-05-25 | 22 | 32 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505070 | I4891, I7389, L03115 | Cellulitis of right lower limb | ICD10 | 06262017 | 05032017 | 05242017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 52 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 05052017 | 2017-05-05T13:25:20+00:00 |  | 000001539-01 | GRACE | GILL | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 06262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06262017 | 07032017 | Standard |  |  | 2017-05-03 | 17/RVC01=$6306.19 PER DIEM RATE OF $200.00/DAY X 11 DAYS=$2200.00 TOTAL PAYMENT TO FACILITY=$8506.19 | 0 | 2017-06-03 |  | 2017-06-07 | 2017-06-07 | 31 | 31 | 8506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508009 | S2242XD | Multiple fx of ribs, left side, subs for fx w routn heal | ICD10 | 06262017 | 05032017 | 06032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8506 | 8506 | Approved Skilled | 8 | Revenue | RV |  |  |  | 3.0 |
| 05112017 | 2017-05-11T16:51:21+00:00 |  | 000010387-01 | LEONARD | DELONG | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 06262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05092017 | 06082017 | Standard |  |  | 2017-05-09 | 17/RUC01= $6049.81 11 DAYS @ $250.00= $2750.00 TOTAL: $8799.81 | 0 | 2017-06-09 |  | 2017-06-19 | 2017-06-19 | 31 | 31 | 8799.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512013 | M6281 | Muscle weakness (generalized) | ICD10 | 06262017 | 05092017 | 06092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8799 | 8799 | Approved | 31 | Revenue | RV |  |  |  | 3.0 |
| 05152017 | 2017-05-15T13:51:13+00:00 |  | 000098144-01 | Paul | Lambert | MARIETTA HLTH CARE PHYS | 922033 | STEVEN W | HOWE | 1053388066 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 06262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 05122017 | 05212017 | Standard |  |  | 2017-05-12 | 17/RVC01=$6306.19 | 0 | 2017-05-22 |  | 2017-06-20 |  | 10 | 10 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515124 | Z89511 | Acquired absence of right leg below knee | ICD10 | 06262017 | 05122017 | 05222017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 05152017 | 2017-05-15T14:55:18+00:00 |  | 000077680-01 | Robert | Smith | KAHLON, GURJEET S | 914096 | GURJEET S | KAHLON | 1649209644 | LAURELS OF HUBER HEIGHTS | 934199 | 1871938555 | LAURELS OF HUBER HEIGHTS | 1871938555 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HUBER HEIGHTS | 06262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05132017 | 05252017 | Standard |  |  | 2017-05-13 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-05-26 |  | 2017-06-23 |  | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515136 | M1611, M6281, Z471 | Aftercare following joint replacement surgery | ICD10 | 06262017 | 05132017 | 05262017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 05222017 | 2017-05-22T12:28:24+00:00 |  | 000091362-01 | Gene | Gill | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 06262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 05192017 | 06162017 | Standard |  |  | 2017-05-19 | 17/RUC01= $6049.81 9 days @ $250.00= $2250.00 total: $8299.81 | 0 | 2017-06-17 |  | 2017-06-21 | 2017-06-21 | 29 | 29 | 8299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522084 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 06262017 | 05192017 | 06172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8299 | 8299 | Approved | 29 | Revenue | RV |  |  |  | 1.0 |
| 05262017 | 2017-05-26T15:12:20+00:00 |  | 000032468-01 | DONNA | CONWAY | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 06262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06152017 | Standard |  |  | 2017-05-25 | 17/RVB01= $5411.86 | 0 | 2017-06-16 |  | 2017-06-22 | 2017-06-22 | 22 | 22 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526080 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 06262017 | 05252017 | 06162017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 05302017 | 2017-05-30T12:48:18+00:00 |  | 000110767-01 | LORRAINE | CHAFFIN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 06262017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05252017 | 06152017 | Standard |  |  | 2017-05-25 | 17/RVC01=$6306.19 | 60 | 2017-06-16 |  | 2017-06-22 | 2017-06-22 | 22 | 82 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530188 | M6281 | Muscle weakness (generalized) | ICD10 | 06262017 | 05252017 | 06162017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 05302017 | 2017-05-30T17:52:38+00:00 |  | 000098729-01 | Lola | Whitt | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 06262017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05252017 | 06042017 | Standard |  |  | 2017-05-25 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-06-05 |  | 2017-06-25 | 2017-06-25 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531059 | R531 | Weakness | ICD10 | 06262017 | 05252017 | 06052017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05312017 | 2017-05-31T16:12:47+00:00 |  | 000084231-01 | Donna | Meyer | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 06262017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 05272017 | 06062017 | Standard |  |  | 2017-05-27 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-06-07 |  | 2017-06-25 | 2017-06-25 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601016 | I739 | Peripheral vascular disease, unspecified | ICD10 | 06262017 | 05272017 | 06072017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06012017 | 2017-06-01T12:22:17+00:00 |  | 000080748-01 | Troy | Wilson | CNP OPERATING CO LLC | 913181 | JEROLD A | MEYER | 1821093881 | COSHOCTON SPRINGS HEALTH & REHABILIT | 939939 | 1144610940 | COSHOCTON SPRINGS HEALTH & REHABILIT | 1144610940 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COSHOCTON SPRINGS HEALTH & REHABILIT | 06262017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 05302017 | 06062017 | Standard |  |  | 2017-05-30 | 17/RUC01=$6049.81 | 0 | 2017-06-07 |  | 2017-06-19 |  | 8 | 8 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601071 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 06262017 | 05302017 | 06072017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
