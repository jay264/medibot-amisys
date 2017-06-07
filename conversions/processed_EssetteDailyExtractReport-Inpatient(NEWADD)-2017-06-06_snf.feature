Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-06_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-06_SNF
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
| 04032017 | 2017-04-03T23:12:53+00:00 |  | 000030835-01 | THOMAS | HEDGES | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03312017 | 06012017 | Standard |  |  | 2017-03-31 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 43 days = $10,750.00 TOTAL PAYMENT = $16,161.86 | 0 | 2017-06-02 |  | 2017-06-05 | 2017-06-05 | 63 | 63 | 16161.86 | 170406093865.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170404099 | S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 06062017 | 03312017 | 06022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 63 | Revenue | RV |  |  |  | 4.0 |
| 04112017 | 2017-04-11T14:52:07+00:00 |  | 000014344-01 | JOHN | ROWLAND | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04102017 | 06042017 | Standard |  |  | 2017-04-10 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 33 days = $8250.00 Per Diem: $200.00/day x 3 days = $600.00 TOTAL PAYMENT = $16,183.11 | 0 | 2017-06-05 | 2017-06-02 | 2017-06-06 | 2017-06-06 | 56 | 56 | 16183.11 | 170413095643.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170412010 | I214, I4891, I639, J189, R52, R531 | Weakness | ICD10 | 06062017 | 04102017 | 06052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 56 | Revenue | RV |  |  |  | 7.0 |
| 04182017 | 2017-04-18T08:26:02+00:00 |  | 000113202-01 | Martha | Moore | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04132017 | 05132017 | Standard |  |  | 2017-04-13 | 17/RUC01=$6049.81 PER DIEM RATE OF $200.00/DAY X 10 DAYS =$2,500.00 TOTAL PAYMENT=$8,549.81 | 1 | 2017-05-13 |  | 2017-05-22 | 2017-05-22 | 30 | 31 | 8549.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418020 | R296, R4701, S0292XD, S066X0D | Traum subrac hem w/o loss of consciousness, subs | ICD10 | 06062017 | 04132017 | 05132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8549 | 8549 | Approved Skilled | 31 | Revenue | RV |  |  |  | 30.0 |
| 05022017 | 2017-05-02T10:55:09+00:00 |  | 000038116-01 | EDGAR | ROHRER | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05012017 | 05292017 | Standard |  |  | 2017-05-01 | 16RVC01=$3539.19 9 DAYS @ $200.00 =$1800.00 TOTAL: $5339.19 | 0 | 2017-05-30 |  | 2017-06-06 | 2017-06-06 | 29 | 29 | 5339.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503030 | I5023, J9601 | Acute respiratory failure with hypoxia | ICD10 | 06062017 | 05012017 | 05302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 9999 | Approved | 29 | Revenue | RV |  |  |  | 1.0 |
| 05092017 | 2017-05-09T14:58:53+00:00 |  | 000102073-01 | Regina | Miller | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05052017 | 05222017 | Standard |  |  | 2017-05-05 | 17/RVB01=$5813.99 | 0 | 2017-05-23 |  | 2017-06-05 | 2017-06-05 | 18 | 18 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510059 | C4011 | Malignant neoplasm of short bones of right upper limb | ICD10 | 06062017 | 05052017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 05122017 | 2017-05-12T16:05:36+00:00 |  | 000033073-01 | MARGARET | FATHBRUCKNER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05102017 | 05222017 | Standard |  |  | 2017-05-10 | 17/RUB01=$5813.99 | 0 | 2017-05-23 | 2017-06-05 | 2017-06-05 |  | 13 | 13 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515022 | N189 | Chronic kidney disease, unspecified | ICD10 | 06062017 | 05102017 | 05232017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 05122017 | 2017-05-12T18:16:07+00:00 |  | 000049041-01 | CARL | WALTON | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05102017 | 05292017 | Standard |  |  | 2017-05-10 | 16/RUA01=$3214.76 | 20 | 2017-05-30 |  | 2017-06-05 | 2017-06-05 | 20 | 40 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515057 | I480, I509, J189, R000, R5381 | Other malaise | ICD10 | 06062017 | 05102017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05152017 | 2017-05-15T11:22:02+00:00 |  | 000105184-01 | Betty | Heaton | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 06062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05132017 | 06012017 | Standard |  |  | 2017-05-13 | 17/RUC01=$6049.81 | 0 | 2017-06-02 |  | 2017-06-06 | 2017-06-06 | 19 | 19 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515061 | Z96642 | Presence of left artificial hip joint | ICD10 | 06062017 | 05132017 | 06022017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 05122017 | 2017-05-12T15:44:28+00:00 |  | 000020087-01 | ROBERT | HESS | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05112017 | 06042017 | Standard |  |  | 2017-05-11 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-06-05 |  | 2017-06-05 | 2017-06-05 | 25 | 25 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515077 | I10, I2510, I482, N179, N401, R238, R52 | Pain, unspecified | ICD10 | 06062017 | 05112017 | 06052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 05162017 | 2017-05-16T14:41:11+00:00 |  | 000114689-01 | Stephen | Gihl | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05122017 | 06042017 | Standard |  |  | 2017-05-12 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 50 | 2017-06-05 |  | 2017-06-05 | 2017-06-05 | 24 | 74 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516094 | F4489, I10, I2510, I509, J449, R339, R509, R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 06062017 | 05122017 | 06052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 05172017 | 2017-05-17T16:59:49+00:00 |  | 000041649-01 | Milene | Arbaugh | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05212017 | Standard |  |  | 2017-05-15 | 17/RVB01=$5411.86 | 0 | 2017-05-22 |  | 2017-06-05 | 2017-06-05 | 7 | 7 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518025 | K5669 | Other intestinal obstruction | ICD10 | 06062017 | 05152017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05182017 | 2017-05-18T13:40:09+00:00 |  | 000031469-01 | JOHN | MOORE | WESTLAND FAMILY CARE LLC | 912885 | FAOZAN A | NARVEL | 1215901020 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05162017 | 05202017 | Standard |  |  | 2017-05-16 | 16/LC101=$3048.55 | 0 | 2017-05-21 |  | 2017-06-06 |  | 5 | 5 | 3048.55 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518054 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06062017 | 05162017 | 05212017 | LC101 | SPECIAL CARE LOW , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 05192017 | 2017-05-19T15:38:39+00:00 |  | 000091304-01 | James | Taylor Jr | PRIMARYONE HEALTH | 936683 | GARY L | GILLEN | 1851397236 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05172017 | 05182017 | Standard |  |  | 2017-05-17 | Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $400.00 | 0 | 2017-05-19 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519081 | I509, J918, N189 | Chronic kidney disease, unspecified | ICD10 | 06062017 | 05172017 | 05192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
| 05222017 | 2017-05-22T15:17:01+00:00 |  | 000061410-01 | JACKSON | CANNON | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05192017 | 06022017 | Standard |  |  | 2017-05-19 | 16/RUA01=$3214.76 | 14 | 2017-06-03 |  | 2017-06-05 | 2017-06-05 | 15 | 29 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522120 | N183, N390, R4182, R531 | Weakness | ICD10 | 06062017 | 05192017 | 06032017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05252017 | 2017-05-25T12:14:46+00:00 |  | 000087133-01 | Billie | Tucker | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1013165174 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05242017 | 05252017 | Standard |  |  | 2017-05-24 | 16/RHB01=$2690.49 | 30 | 2017-05-26 |  | 2017-06-06 |  | 2 | 32 | 2690.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525059 | S12000D, S7291XD | Unsp fracture of right femur, subs for clos fx w routn heal | ICD10 | 06062017 | 05242017 | 05262017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 2 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 05302017 | 2017-05-30T08:44:11+00:00 |  | 000084090-01 | Burdetta | Ross | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 06062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06042017 | Standard |  |  | 2017-05-25 | 17/RVA01=$3586.28 | 0 | 2017-06-05 |  | 2017-06-06 | 2017-06-06 | 11 | 11 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530120 | Z4889 | Encounter for other specified surgical aftercare | ICD10 | 06062017 | 05252017 | 06052017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
