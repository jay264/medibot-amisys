Feature: Test RUG Scores
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: Test RUG Scores
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
	And in the "authorized_services" page I enter "<final_reimb_amt>" into the "amount_authorized" image and convert the dollar amount
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
| 04132017 | 2017-04-13T08:19:03+00:00 |  | 000044934-01 | JOHN | ECOS | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 06152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04102017 | 04192017 | Standard |  |  | 2017-04-10 | PER DIEM RATE OF $250.00/DAY X 10 DAYS=2,500.00 IV CEFEPIME, PER INVOICE+$761.22 TOTAL PAYMENT =$3,261.22 | 0 | 2017-04-20 |  | 2017-05-19 | 2017-05-19 | 10 | 10 | 3261.2 | 170417096048.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413037 | I4891, I5033, J189, N179 | Acute kidney failure, unspecified | ICD10 | 06152017 | 04102017 | 04202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3261 | 3261 | Approved Skilled | 10 | Revenue | RV |  |  |  | 10.0 |
| 04242017 | 2017-04-24T16:49:09+00:00 |  | 000082586-01 | Joy | Hill | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 06152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06152017 | 06222017 | Standard |  |  | 2017-04-20 | PER DIEM RATE OF $250.00/DAY X 19 DAYS=4,750.00 CARVE OUT FOR IV INVANCE PER PHARMACY INVOICE=$2,060.81 TOTAL PAYMENT TO FACILITY=$6,810.81 | 0 | 2017-05-09 |  | 2017-05-18 |  | 19 | 19 | 6810.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425075 | Z1612 | Extended spectrum beta lactamase (ESBL) resistance | ICD10 | 06152017 | 04202017 | 05092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6810 | 6810 | Approved Skilled | 8 | Revenue | RV |  |  |  | 19.0 |
#| 05152017 | 2017-05-15T16:35:20+00:00 |  | 000025732-01 | VALDO | BEEDY | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 06152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05122017 | 06072017 | Standard |  |  | 2017-05-12 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $200.00/day x 7 days = $1400.00 TOTAL PAYMENT = $7449.81 | 20 | 2017-06-08 |  | 2017-06-08 |  | 27 | 47 | 7449.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516026 | I481, I5022, R0789 | Other chest pain | ICD10 | 06152017 | 05122017 | 06082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7449 | 7449 | Approved | 27 | Revenue | RV |  |  |  | 7.0 |
#| 05172017 | 2017-05-17T12:06:18+00:00 |  | 000000766-01 | NORMA JEAN | FETTY | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 06152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06152017 | 06222017 | Standard |  |  | 2017-05-14 | 17/RVC01=$6306.19 | 0 | 2017-06-02 |  | 2017-06-12 | 2017-06-12 | 19 | 19 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517050 | L0390 | Cellulitis, unspecified | ICD10 | 06152017 | 05142017 | 06022017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 19.0 |
#| 05222017 | 2017-05-22T17:57:39+00:00 |  | 000008757-01 | ALLAN | BAUSCH | WEST JEFFERSON FAM PRCT | 936655 | MARK W | GARWOOD | 1275595274 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 06152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05182017 | 06112017 | Standard |  |  | 2017-05-18 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 17 | 2017-06-12 | 2017-06-09 | 2017-06-15 | 2017-06-15 | 25 | 42 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523032 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06152017 | 05182017 | 06122017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 5.0 |
#| 05242017 | 2017-05-24T16:50:09+00:00 |  | 000007498-01 | EDWARD | NOVOTNEY | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 06152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06152017 | 06222017 | Standard |  |  | 2017-05-22 | 17/RUB01=$5,813.99 | 0 | 2017-06-01 |  | 2017-06-13 | 2017-06-13 | 10 | 10 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525030 | Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 06152017 | 05222017 | 06012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
#| 05242017 | 2017-05-24T17:40:13+00:00 |  | 000077467-01 | James | Wyrick | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 06152017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 05222017 | 06072017 | Standard |  |  | 2017-05-22 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 15 | 2017-06-08 |  | 2017-06-15 |  | 17 | 32 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525034 | I4891, I509, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06152017 | 05222017 | 06082017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 1.0 |
#| 05252017 | 2017-05-25T16:34:55+00:00 |  | 000113308-01 | Larry | Diamond | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 06152017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 05242017 | 06122017 | Standard |  |  | 2017-05-24 | 17/RUC01=$6049.81 | 0 | 2017-06-13 |  | 2017-06-14 | 2017-06-14 | 20 | 20 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526014 | R1313 | Dysphagia, pharyngeal phase | ICD10 | 06152017 | 05242017 | 06132017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
#| 05292017 | 2017-05-29T07:44:10+00:00 |  | 000000413-01 | Patricia | Hockenberry | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 06152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05252017 | 06112017 | Standard |  |  | 2017-05-25 | 16/RUC01=$7333.11 | 0 | 2017-06-12 |  | 2017-06-15 | 2017-06-15 | 18 | 18 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530107 | I10, R262, R55, S72101D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 06152017 | 05252017 | 06122017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
#| 05312017 | 2017-05-31T13:09:45+00:00 |  | 000106054-01 | Linda | Thompson | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 06152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05302017 | 06112017 | Standard |  |  | 2017-04-30 | 16/RHC01=$3133.29 | 0 | 2017-06-12 |  | 2017-06-08 |  | 13 | 13 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531078 | E162, G9340 | Encephalopathy, unspecified | ICD10 | 06152017 | 05302017 | 06122017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
#| 06062017 | 2017-06-06T13:43:27+00:00 |  | 000000143-01 | LELAND | GORDON JR | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 06152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06042017 | 06132017 | Standard |  |  | 2017-06-04 | 10 DAYS @ $200.00=$2000.00 | 17 | 2017-06-13 |  | 2017-06-15 | 2017-06-15 | 10 | 27 | 2000.0 |  |  |  |  |  |  #|  |  |  | Concurrent Review | Approved | A170607003 | N390, N400 | Enlarged prostate without lower urinary tract symptoms | ICD10 | 06152017 | 06042017 | 06142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2000 | 2000 | Approved | 10 | Revenue | RV |  |  |  | 10.0 |
