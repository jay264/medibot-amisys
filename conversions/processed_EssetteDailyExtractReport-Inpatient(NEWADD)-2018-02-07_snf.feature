Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-07_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-07_SNF
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
| 01122018 | 2018-01-12T16:26:00+00:00 |  | 000070827-01 | Carolyn | Farnsworth | CENTRAL OHIO NP SERVICES | 924337 | RAJNISH K | GUPTA | 1063466795 | EDGEWOOD MANOR OF WESTER | 952373 | 1518485820 | BUCKEYE TERRACE REHABILITATION & NUR | 1518485820 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BUCKEYE TERRACE REHABILITATION & NUR | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01202018 | Standard |  |  | 2018-01-11 | 17/RVB01=$5,411.86 | 0 | 2018-01-20 |  | 2018-02-06 | 2018-01-17 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115036 | M79605 | Pain in left leg | ICD10 | 02072018 | 01112018 | 01202018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01082018 | 2018-01-08T15:33:56+00:00 |  | 000100960-01 | Elizabeth | David | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 02072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01062018 | 02042018 | Standard |  |  | 2018-01-06 | 17/RVB01=$5,411.86 PER DIEM RATE OF $250.00/DAY=$2,250.00 TOTAL PAYMENT TO FACILITY=$7,661.86 | 0 | 2018-02-04 |  | 2018-02-06 | 2018-02-06 | 29 | 29 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109037 | N270, R1310, K52832 | LYMPHOCYTIC COLITIS | ICD10 | 02072018 | 01062018 | 02042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7661 | 7661 | Approved Skilled | 30 | Revenue | RV |  |  |  | 2.0 |
| 01122018 | 2018-01-12T11:33:40+00:00 |  | 000068766-01 | CAROL | NELSON | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 02012018 | Standard |  |  | 2018-01-11 | 16/RVC01=$3,539.19 PER DIEM RATE OF $200.00/DAY X 1 DAY=$200.00 TOTAL PAYMENT TO FACILITY=$3,739.19 | 0 | 2018-02-01 |  | 2018-02-05 |  | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112060 | S82842A | Displaced bimalleolar fracture of left lower leg, init | ICD10 | 02072018 | 01112018 | 02012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3739 | 3739 | Approved Skilled | 22 | Revenue | RV |  |  |  | 1.0 |
| 01152018 | 2018-01-15T12:44:45+00:00 |  | 000107439-01 | Richard | King | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01122018 | 01262018 | Standard |  |  | 2018-01-12 | 17/RVB01=$5,411.86 | 0 | 2018-01-26 |  | 2018-02-05 | 2018-02-05 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115134 | I159, R2689 | Other abnormalities of gait and mobility | ICD10 | 02072018 | 01122018 | 01262018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01162018 | 2018-01-16T11:06:12+00:00 |  | 000071603-01 | Sondra | Miller | RUKSENAS, AUDRIUS | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND AT CARECORE | 952605 | 1417470527 | WESTMORELAND AT CARECORE LLC | 1417470527 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND AT CARECORE LLC | 02072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01112018 | 01312018 | Standard |  |  | 2018-01-11 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 | 0 | 2018-01-31 |  | 2018-02-06 | 2018-02-06 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116052 | Z96652 | Presence of left artificial knee joint | ICD10 | 02072018 | 01112018 | 01312018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01172018 | 2018-01-17T10:40:24+00:00 |  | 000082902-01 | Betty | Crabtree | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01142018 | 02012018 | Standard |  |  | 2018-01-14 | 17/RUC01=$6,049.81 | 0 | 2018-02-01 |  | 2018-02-05 | 2018-02-05 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117039 | E119, N390, S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 02072018 | 01142018 | 02012018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 01222018 | 2018-01-22T15:57:07+00:00 |  | 000070087-01 | Dorothy | Skeens | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01182018 | 01292018 | Standard |  |  | 2018-01-18 | 16/RVX01=$5,485.55 | 0 | 2018-01-29 |  | 2018-02-06 |  | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122152 | J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 02072018 | 01182018 | 01292018 | RVX01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 11-16/STAND-ALONE OBRA SCSA O | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01242018 | 2018-01-24T17:53:59+00:00 |  | 000106733-01 | Della | Alltop | FAYETTE COUNTY MEM HSP 1 | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01222018 | 02052018 | Standard |  |  | 2018-01-22 | Swing Bed Daily Rate for 14 SNF Days | 0 | 2018-02-05 |  |  | 2018-02-06 | 14 | 14 | Swing Bed Daily Rate for 14 SNF Days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125044 | Z5189 | Encounter for other specified aftercare | ICD10 | 02072018 | 01222018 | 02052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 15 | Revenue | RV |  |  |  | 3.0 |
| 11082017 | 2017-11-08T15:08:56+00:00 |  | 000066152-01 | WILLIAM | IRWIN | OSU SURGERY LLC | 937397 | RALPH R | ROMAKER | 1952380727 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 02072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11072017 | 02022018 | Standard |  |  | 2017-11-07 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 67 days = $13,400.00 TOTAL PAYMENT = $20,733.11 | 0 | 2018-02-02 | 2018-01-30 | 2018-02-06 | 2018-02-06 | 87 | 87 | 20733.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109041 | I2510, R296 | Repeated falls | ICD10 | 02072018 | 11072017 | 02022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 88 | Revenue | RV |  |  |  | 4.0 |
| 12062017 | 2017-12-06T17:31:00+00:00 |  | 000020634-01 | MABEL | ANDERSON | OSU SURGERY LLC | 937397 | RALPH R | ROMAKER | 1952380727 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12052017 | 02022018 | Standard |  |  | 2017-12-05 | Per MDS: 16/RUB01 = $4429.71 Per Diem: $200.00/day x 39 days = $7800.00 TOTAL PAYMENT = $12,229.71 | 0 | 2018-02-02 | 2018-01-30 | 2018-02-06 | 2018-02-06 | 59 | 59 | 12229.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207023 | I4891, J90, M4856XD, M545, R296, R52 | Pain, unspecified | ICD10 | 02072018 | 12052017 | 02022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 60 | Revenue | RV |  |  |  | 4.0 |
| 01122018 | 2018-01-12T14:18:56+00:00 |  | 000031103-01 | RUTH | FISHER | AEBI GINTY ROMAKER SPROU | 936838 | MARK E | AEBI | 1760461693 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 02022018 | Standard |  |  | 2018-01-11 | Per MDS: 16/RUX01 = $7339.86 Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $7739.86 | 4 | 2018-02-02 |  | 2018-02-06 |  | 22 | 26 | 7739.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112083 | I639, J918, K632, K9423, N1330, R55, Z931, T814XXS | Infection following a procedure, sequela | ICD10 | 02072018 | 01112018 | 02022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7739 | 7739 | Approved | 23 | Revenue | RV |  |  |  | 2.0 |
| 01162018 | 2018-01-16T10:27:19+00:00 |  | 000038168-01 | MONA | BOGGS | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01132018 | 01302018 | Standard |  |  | 2018-01-13 | Per MDS: 17/RUC01 = $6049.81 | 8 | 2018-01-30 |  | 2018-02-07 |  | 17 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116047 | I6200, M6281 | Muscle weakness (generalized) | ICD10 | 02072018 | 01132018 | 01302018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 01162018 | 2018-01-16T16:36:56+00:00 |  | 000049432-01 | ARLENE | SMITH | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01122018 | 01242018 | Standard |  |  | 2018-01-12 | 17/RVB01=$5,411.86 | 0 | 2018-01-24 |  | 2018-02-05 | 2018-02-05 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117021 | Z471, Z9660 | Presence of unspecified orthopedic joint implant | ICD10 | 02072018 | 01122018 | 01242018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01172018 | 2018-01-17T16:22:56+00:00 |  | 000107662-01 | Bertha | Fortney | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01152018 | 02052018 | Standard |  |  | 2018-01-15 | 17/RVB01= $5411.86 | 0 | 2018-02-05 | 2018-02-06 | 2018-02-07 | 2018-02-06 | 21 | 21 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118044 | I4891 | Unspecified atrial fibrillation | ICD10 | 02072018 | 01152018 | 02052018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 01182018 | 2018-01-18T14:47:19+00:00 |  | 000113609-01 | Michael | Smallwood | CIRCLEVILLE CENTER | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 02072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01162018 | 01202018 | Standard |  |  | 2018-01-16 | Per MDS: 17/LC101 = $3048.45 | 0 | 2018-01-20 |  | 2018-02-07 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118076 | R4182 | Altered mental status, unspecified | ICD10 | 02072018 | 01162018 | 01202018 | LC101 | SPECIAL CARE LOW , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 01182018 | 2018-01-18T17:42:01+00:00 |  | 000077181-01 | Vivian | Schroeder | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01172018 | 02062018 | Standard |  |  | 2018-01-17 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2018-02-06 |  | 2018-02-06 | 2018-02-06 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119050 | R52, S52572D, S52572S, S52611D, S52611S | Displaced fracture of right ulna styloid process, sequela | ICD10 | 02072018 | 01172018 | 02062018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01192018 | 2018-01-19T14:36:17+00:00 |  | 000008659-01 | VIOLA | GIFFORD | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01162018 | 01272018 | Standard |  |  | 2018-01-16 | 17/RUL01=$5,317.57 | 0 | 2018-01-27 |  | 2018-02-05 | 2018-02-05 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119073 | I10, I4891, J09X2 | Flu due to ident novel influenza A virus w oth resp manifest | ICD10 | 02072018 | 01162018 | 01272018 | RUL01 | ULTRA HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA O | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01192018 | 2018-01-19T16:11:51+00:00 |  | 000071356-01 | Charles | Padrutt | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01182018 | 01242018 | Standard |  |  | 2018-01-18 | 17/RHC01=$4,132.02 | 0 | 2018-01-24 |  | 2018-02-05 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119087 | R55 | Syncope and collapse | ICD10 | 02072018 | 01182018 | 01242018 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 01222018 | 2018-01-22T14:44:43+00:00 |  | 000100208-01 | John | Mueller III | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 02032018 | Standard |  |  | 2018-01-19 | 16/RUA01= $3214.76 | 0 | 2018-02-03 |  | 2018-02-06 | 2018-02-06 | 15 | 15 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122130 | Z96651 | Presence of right artificial knee joint | ICD10 | 02072018 | 01192018 | 02032018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 01242018 | 2018-01-24T11:46:21+00:00 |  | 000003809-01 | MARGARET | SMALLEY | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 01302018 | Standard |  |  | 2018-01-19 | 17/RVC01=$6,306.19 | 0 | 2018-01-30 |  | 2018-02-05 | 2018-02-05 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124055 | E119, I10, I259, I509, N189 | Chronic kidney disease, unspecified | ICD10 | 02072018 | 01192018 | 01302018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01262018 | 2018-01-26T14:23:04+00:00 |  | 000111992-01 | James | Richmond | COLS INPATIENT CARE INC | 919184 | ASHITA | SINHA | 1821110693 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01252018 | 01262018 | Standard |  |  | 2018-01-25 | PER DIEM RATE OF $200.00/DAY X1 DAY=$200.00 | 0 | 2018-01-26 |  |  |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129037 | R269, S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 02072018 | 01252018 | 01262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 2 | Revenue | RV |  |  |  | 1.0 |
| 12292017 | 2017-12-29T12:57:08+00:00 |  | 000040563-01 | MARTHA | PATTERSON | PICKAWAY HEALTH SERVICES | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072018 | 02142018 | Standard |  |  | 2017-12-28 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 9 days = $2250.00 Per Diem: $200.00/day x 5 days = $1000.00 TOTAL PAYMENT = $9556.19 | 0 | 2018-01-31 |  | 2018-02-05 | 2018-02-05 | 34 | 34 | 9556.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229066 | J209 | Acute bronchitis, unspecified | ICD10 | 02072018 | 12282017 | 01312018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9556 | 9556 | Approved | 8 | Revenue | RV |  |  |  | 7.0 |
| 01122018 | 2018-01-12T12:16:44+00:00 |  | 000042968-01 | BARBARA | HALL | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01182018 | Standard |  |  | 2018-01-11 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-01-18 |  | 2018-01-31 | 2018-02-07 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112067 | Z4733, Z96651 | Presence of right artificial knee joint | ICD10 | 02072018 | 01112018 | 01182018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 01152018 | 2018-01-15T15:07:04+00:00 |  | 000033983-01 | CATHRYN | HENSON | CANYON MEDICAL CENTER | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN NEW ALBANY LLC | 944058 | 1407262165 | OTTERBEIN NEW ALBANY LLC | 1407262165 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN NEW ALBANY LLC | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01252018 | Standard |  |  | 2018-01-11 | 17/RUA01= $3214.76 | 0 | 2018-01-25 |  | 2018-01-24 | 2018-02-07 | 14 | 14 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115155 | K5669 | Other intestinal obstruction | ICD10 | 02072018 | 01112018 | 01252018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01162018 | 2018-01-16T15:44:30+00:00 |  | 000050645-01 | ANNA MAE | ELLIOTT | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01152018 | 01252018 | Standard |  |  | 2018-01-15 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-01-25 |  | 2018-02-01 | 2018-02-07 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116089 | I481, I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 02072018 | 01152018 | 01252018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01262018 | 2018-01-26T11:16:45+00:00 |  | 000103594-01 | Gary | Wharton | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01252018 | 02022018 | Standard |  |  | 2018-01-25 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-02-02 |  | 2018-02-06 | 2018-02-07 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126050 | Z96642, Z4732 | Aftercare following explantation of hip joint prosthesis | ICD10 | 02072018 | 01252018 | 02022018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 01262018 | 2018-01-26T13:07:03+00:00 |  | 000049140-01 | JOHN | FISHER | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01252018 | 02012018 | Standard |  |  | 2018-01-25 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-02-01 |  | 2018-02-06 | 2018-02-07 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126064 | Z4733, Z96651 | Presence of right artificial knee joint | ICD10 | 02072018 | 01252018 | 02012018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
