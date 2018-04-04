Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-30_thru_2018-04-01_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-30_thru_2018-04-01_SNF
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
| 03202018 | 2018-03-20T14:13:07+00:00 |  | 000044046-01 | RICHARD | REYNOLDS | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 03302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03192018 | 03282018 | Standard |  |  | 2018-03-19 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-03-28 |  | 2018-03-29 | 2018-03-26 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321004 | I481, R531 | Weakness | ICD10 | 03302018 | 03192018 | 03282018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01262018 | 2018-01-26T13:51:55+00:00 |  | 000105059-01 | Robert | Huffman | FCMH MED & SURG ASSOC | 906134 | DAVID J | GUNDERMAN | 1508861246 | THE LAURELS OF HILLSBORO | 952248 | 1255387221 | THE LAURELS OF HILLSBORO | 1255387221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE LAURELS OF HILLSBORO | 03302018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 01252018 | 03242018 | Standard |  |  | 2018-01-25 | 17/RHX01=$4,826.57 PER DIEM RATE OF $200.00/DAY X 38 DAYS=$7,600.00 TOTAL PAYMENT TO FACILITY=$12,426.57 | 20 | 2018-03-24 |  | 2018-03-21 | 2018-03-21 | 58 | 78 | 12426.57 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126073 | I5041 | Acute combined systolic and diastolic (congestive) hrt fail | ICD10 | 03302018 | 01252018 | 03242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 59 | Revenue | RV |  |  |  | 3.0 |
| 02012018 | 2018-02-01T12:47:15+00:00 |  | 000009747-01 | SANDRA | ROSSIO | CEN OHIO GERIATRICS LLC | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 03302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01302018 | 03172018 | Standard |  |  | 2018-01-30 | 17/RUB01=$5,813.99 PER DIEM RATE OF $250.00/DAY X 10 DAYS=$2,500.00 PER DIEM RATE OF $200.00/DAY X 10 DAYS=$2,000.00 TOTAL PAYMENT TO FACILITY=$10,313.99 | 0 | 2018-03-17 |  | 2018-03-23 | 2018-03-23 | 40 | 40 | 10313.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201065 | I959, A0472 | A0472 | ICD10 | 03302018 | 01302018 | 03172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 47 | Revenue | RV |  |  |  | 6.0 |
| 03092018 | 2018-03-09T08:21:41+00:00 |  | 000099273-01 | Stella | Buhrts | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 03302018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03072018 | 03142018 | Standard |  |  | 2018-03-07 | RVB01=$5,411.86 | 0 | 2018-03-14 |  | 2018-03-29 | 2018-03-29 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309015 | M6282 | Rhabdomyolysis | ICD10 | 03302018 | 03072018 | 03142018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 03142018 | 2018-03-14T14:14:53+00:00 |  | 000117731-01 | Mark | Chaffin | BERGER HEALTH PARTNERS | 913727 | KEVIN M | SELLERS | 1306085220 | LOGAN ELM HLTH CARE CTR | 904042 | 1326022898 | LOGAN ELM HEALTH CARE CENTER | 1326022898 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LOGAN ELM HEALTH CARE CENTER | 03302018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03132018 | 03242018 | Standard |  |  | 2018-03-13 | Per MDS: 16/RVA01 = $2689.71 | 0 | 2018-03-24 |  | 2018-03-29 |  | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314052 | E871, J13, R269 | Unspecified abnormalities of gait and mobility | ICD10 | 03302018 | 03132018 | 03242018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 03262018 | 2018-03-26T10:38:20+00:00 |  | 000118366-01 | Robert | Thompson | BERGER HEALTH PARTNERS | 913727 | KEVIN M | SELLERS | 1306085220 | LOGAN ELM HLTH CARE CTR | 904042 | 1326022898 | LOGAN ELM HEALTH CARE CENTER | 1326022898 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LOGAN ELM HEALTH CARE CENTER | 03302018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03212018 | 03232018 | Standard |  |  | 2018-03-21 | Per Diem: $200.00/day x2 days = $400.00 | 0 | 2018-03-23 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326085 | E11621 | Type 2 diabetes mellitus with foot ulcer | ICD10 | 03302018 | 03212018 | 03232018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 02132018 | 2018-02-13T15:07:30+00:00 |  | 000079125-01 | Gary | Jackson | AEBI GINTY ROMAKER SPROU | 934863 | ROBERT J | SPROUSE | 1699754945 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 03292018 | Standard |  |  | 2018-02-09 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $200.00/day x 28 days = $5600.00 TOTAL PAYMENT = $11,413.99 | 0 | 2018-03-29 |  | 2018-03-30 | 2018-03-30 | 48 | 48 | 11413.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213116 | I509, Z5189 | Encounter for other specified aftercare | ICD10 | 03302018 | 02092018 | 03292018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 49 | Revenue | RV |  |  |  | 6.0 |
| 03072018 | 2018-03-07T12:21:14+00:00 |  | 000009802-01 | PHYLLIS | CLAY | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 03302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03042018 | 03242018 | Standard |  |  | 2018-03-04 | 16/RUC01=$7,333.11 | 0 | 2018-03-24 | 2018-03-30 | 2018-03-26 | 2018-03-20 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307042 | S32502D | Unsp fracture of left pubis, subs for fx w routn heal | ICD10 | 03302018 | 03042018 | 03242018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 03092018 | 2018-03-09T15:11:06+00:00 |  | 000053604-01 | SHIRLEY | TULLOS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 03302018 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 03072018 | 03092018 | Standard |  |  | 2018-03-07 | 2 days @  $250.00= $500.00 | 0 | 2018-03-09 |  |  |  | 2 | 2 | 500.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309074 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03302018 | 03072018 | 03092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 500 | 500 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 03132018 | 2018-03-13T09:26:03+00:00 |  | 000118778-01 | Jackie | Whitt | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 03302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03092018 | 03172018 | Standard |  |  | 2018-03-09 | UNSKILLED RATE OF $200.00/DAY X 8 DAYS=$1,600.00 | 14 | 2018-03-17 |  | 2018-03-30 | 2018-03-14 | 8 | 22 | 1600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313035 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 03302018 | 03092018 | 03172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved Skilled | 9 | Revenue | RV |  |  |  | 2.0 |
| 03132018 | 2018-03-13T14:57:25+00:00 |  | 000026239-01 | M | BEAN | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03102018 | 03252018 | Standard |  |  | 2018-03-10 | Per MDS: 17/RVC01 = $6306.19 | 14 | 2018-03-25 |  | 2018-03-29 |  | 15 | 29 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313078 | G9340, Z5189 | Encounter for other specified aftercare | ICD10 | 03302018 | 03102018 | 03252018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 03132018 | 2018-03-13T18:49:51+00:00 |  | 000044460-01 | RUTH | DOLAN | CLINICAL CARE CONSULTANT | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 03302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03102018 | 03152018 | Standard |  |  | 2018-03-10 | 17/PD101=$2,581.99 | 0 | 2018-03-15 |  | 2018-03-30 | 2018-03-19 | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314002 | S52501D | Unsp fx the lower end r rad, subs for clos fx w routn heal | ICD10 | 03302018 | 03102018 | 03152018 | PD101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCP | RUGS,HHRG | 2581 | 2581 | Approved Skilled | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 03152018 | 2018-03-15T12:45:47+00:00 |  | 000108867-01 | RICHARD | TUTTLE | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 03302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03142018 | 03272018 | Standard |  |  | 2018-03-14 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-03-27 |  | 2018-03-30 | 2018-03-30 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315040 | I482 | Chronic atrial fibrillation | ICD10 | 03302018 | 03142018 | 03272018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 02192018 | 2018-02-19T16:05:25+00:00 |  | 000044773-01 | SELCIE | SLONE | AMERICAN HLTH NETWORK OF | 924337 | RAJNISH K | GUPTA | 1063466795 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 03302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02152018 | 03222018 | Standard |  |  | 2018-02-15 | 17/RUA01=$3,214.76 PER DIEM RATE OF $250.00/DAY X 15 DAYS=$3,750.00 TOTAL PAYMENT TO FACILITY=$6,964.76 | 0 | 2018-03-22 |  | 2018-03-23 | 2018-03-20 | 35 | 35 | 6964.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220031 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 03302018 | 02152018 | 03222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6964 | 6964 | Approved Skilled | 36 | Revenue | RV |  |  |  | 1.0 |
| 03192018 | 2018-03-19T12:19:40+00:00 |  | 000004594-01 | DONNA | ROE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CONTINUING HEALTHCARE OF | 952581 | 1356871610 | CONTINUING HEALTHCARE OF GAHANNA LLC | 1356871610 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CONTINUING HEALTHCARE OF GAHANNA LLC | 03302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03092018 | 03272018 | Standard |  |  | 2018-03-09 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-03-27 |  | 2018-03-30 | 2018-03-30 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319046 | Z471 | Aftercare following joint replacement surgery | ICD10 | 03302018 | 03092018 | 03272018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 03202018 | 2018-03-20T11:19:18+00:00 |  | 000068534-01 | DARREL | COEY | AMERICAN HLTH NETWORK OF | 924337 | RAJNISH K | GUPTA | 1063466795 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 03302018 | Approved | MediGold Classic Preferred | Mail | SNF | Inpatient | 03162018 | 03242018 | Standard |  |  | 2018-03-16 | NON-SKILLED RATE OF $200.00/DAY X 8 DAYS=$1,600.00 | 0 | 2018-03-24 |  | 2018-03-26 | 2018-03-21 | 8 | 8 | 1600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320087 | J189, N183, R4182, Z9181 | History of falling | ICD10 | 03302018 | 03162018 | 03242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved Skilled | 9 | Revenue | RV |  |  |  | 2.0 |
| 03262018 | 2018-03-26T10:42:33+00:00 |  | 000071309-01 | Dixie | Harding | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 03302018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 03232018 | 03242018 | Standard |  |  | 2018-03-23 | PER DIEM RATE FOR VENT @ $520.00/DAY X 1 DAY=$520.00 | 0 | 2018-03-24 |  |  |  | 1 | 1 | 520.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326080 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 03302018 | 03232018 | 03242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 520 | 520 | Approved Skilled | 2 | Revenue | RV |  |  |  | 1.0 |
