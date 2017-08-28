Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-23_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-23_SNF
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
| 02212017 | 2017-02-21T16:02:46+00:00 |  | 000071517-01 | Carol | Schiff | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 08232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02172017 | 03102017 | Standard |  |  | 2017-02-17 | Contract/RUG: 17/RUB (Per MDS) $5,813.99 Per Diem: $200.00/day x 2 SNF Days = $400.00 Total Payment: $6,213.99 | 0 | 2017-03-11 |  | 2017-04-05 | 2017-04-05 | 22 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170222061 | L89899, N2889, R4182 | Altered mental status, unspecified | ICD10 | 08232017 | 02172017 | 03112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6213 | 6213 | Approved | 22 | Revenue | RV |  |  |  | 22.0 |
| 07142017 | 2017-07-14T11:51:31+00:00 |  | 000048223-01 | ROBERT | MILLER | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 08232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07122017 | 08092017 | Standard |  |  | 2017-07-12 | 17/RUB01=$6,049.81 PER DIEM OF $250.00 X 9 DAYS =$2,250.00 TOTAL PAYMENT=$8,299.81 | 13 | 2017-08-10 |  | 2017-08-18 |  | 29 | 42 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714038 | R7881, S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 08232017 | 07122017 | 08102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8299 | 8299 | Approved Skilled | 29 | Revenue | RV |  |  |  | 9.0 |
| 06012017 | 2017-06-01T15:03:20+00:00 |  | 000010766-01 | ROSELIE | SMITH | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 08232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05312017 | 07072017 | Standard |  |  | 2017-05-31 | PER DIEM RATE OF $250.00 X 19 DAYS=$4,750.00 PER DIEM RATE OF $200.00 X 19 DAYS=$3,800.00 CARVE OUT FOR IV CEFAZOLIN PER INVOICE=$2,287.96 TOTAL PAYMENT=$10,837.96 | 0 | 2017-07-08 |  | 2017-07-13 |  | 38 | 38 | 10837.96 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602011 | T8453XD, T84033D | Mech loosening of internal left knee prosthetic joint, subs | ICD10 | 08232017 | 05312017 | 07082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 38 | Revenue | RV |  |  |  | 4.0 |
| 07252017 | 2017-07-25T11:47:23+00:00 |  | 000044848-01 | VIRGINIA | BANTON | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 08232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 08032017 | Standard |  |  | 2017-07-24 | 16/RUB01=$4,429.71 | 0 | 2017-08-04 |  | 2017-08-22 | 2017-08-22 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725089 | S32009A | Unsp fracture of unsp lumbar vertebra, init for clos fx | ICD10 | 08232017 | 07242017 | 08042017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 07172017 | 2017-07-17T12:54:24+00:00 |  | 000077499-01 | Zelda | Waites | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 08232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07142017 | 08212017 | Standard |  |  | 2017-07-14 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 19 days = $3800.00 TOTAL PAYMENT = $10,106.19 | 0 | 2017-08-22 | 2017-08-21 | 2017-08-21 | 2017-08-21 | 39 | 39 | 10106.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717060 | S8265XD | Nondisp fx of lateral malleolus of l fibula, 7thD | ICD10 | 08232017 | 07142017 | 08222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 39 | Revenue | RV |  |  |  | 11.0 |
| 05162017 | 2017-05-16T15:55:04+00:00 |  | 000007374-01 | JEANETTE | COLEMAN | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 08232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 08212017 | Standard |  |  | 2017-05-15 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 19 days = $4750.00 Per Diem: $200.00/day x 60 days = $12,000.00 TOTAL PAYMENT= $24,083.81 | 0 | 2017-08-22 |  | 2017-08-22 | 2017-08-22 | 99 | 99 | 24083.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517055 | D649, I10, I2510, M25552, R569, S72402D, S72402S, Z9181, W19XXXS | Unspecified fall, sequela | ICD10 | 08232017 | 05152017 | 08222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 99 | Revenue | RV |  |  |  | 4.0 |
| 07192017 | 2017-07-19T13:00:51+00:00 |  | 000022011-01 | RAYMOND | DETTY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 08232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07172017 | 08102017 | Standard |  |  | 2017-07-17 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00 x 5 days = $1000.00 TOTAL PAYMENT = $8333.11 | 0 | 2017-08-11 |  | 2017-08-22 | 2017-08-22 | 25 | 25 | 8333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719087 | A419, I2510, J181, R0602, R296, R5382, R918, Z9981 | Dependence on supplemental oxygen | ICD10 | 08232017 | 07172017 | 08112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8333 | 8333 | Approved | 25 | Revenue | RV |  |  |  | 7.0 |
| 08012017 | 2017-08-01T16:23:50+00:00 |  | 000022214-01 | Janet | Schultz | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | CENTERBURG RESPIRATORY A | 949066 | 1083157747 | CENTERBURG RESPIRATORY AND SPECIALTY | 1083157747 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG RESPIRATORY AND SPECIALTY | 08232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08032017 | 08152017 | Standard |  |  | 2017-08-03 | Per SCA/MDS: RHC = $4132.02 | 53 | 2017-08-16 |  | 2017-08-22 |  | 13 | 66 | 4132.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801127 | J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 08232017 | 08032017 | 08162017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 07282017 | 2017-07-28T14:35:58+00:00 |  | 000105509-01 | Mary | Pool | PAUL MD LLC | 921506 | PAWEL | SZCZYKUTOWICZ | 1831142439 | COTTINGHAM RETIREMENT CO | 949774 | 1245223007 | COTTINGHAM RETIREMENT COMMUNITY | 1245223007 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COTTINGHAM RETIREMENT COMMUNITY | 08232017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 07282017 | 08212017 | Standard |  |  | 2017-07-28 | Per SCA/MDS: RVB = $5411.86 Per Diem: $250.00/day x 5 days = $1250.00 TOTAL PAYMENT = $6661.86 | 0 | 2017-08-22 |  | 2017-08-10 | 2017-08-16 | 25 | 25 | 6661.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728050 | L0390 | Cellulitis, unspecified | ICD10 | 08232017 | 07282017 | 08222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6661 | 6661 | Approved | 25 | Revenue | RV |  |  |  | 5.0 |
| 08082017 | 2017-08-08T09:00:08+00:00 |  | 000071044-01 | Sharon | Ross | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 08232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08052017 | 08152017 | Standard |  |  | 2017-08-05 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-08-16 |  | 2017-08-22 | 2017-08-22 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808093 | M4806 | Spinal stenosis, lumbar region | ICD10 | 08232017 | 08052017 | 08162017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 07172017 | 2017-07-17T16:37:59+00:00 |  | 000078650-01 | Louis | Posner | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 08232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07142017 | 08162017 | Standard |  |  | 2017-07-14 | Per MDS: 17/RUA01 = $3214.76 Per Diem: $250.00/day x 14 days = $3500.00 TOTAL PAYMENT = $6714.76 | 0 | 2017-08-17 | 2017-08-23 | 2017-08-23 | 2017-08-23 | 34 | 34 | 6714.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718089 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 08232017 | 07142017 | 08172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6714 | 6714 | Approved | 34 | Revenue | RV |  |  |  | 7.0 |
| 07172017 | 2017-07-17T16:39:27+00:00 |  | 000078761-01 | Patricia | Posner | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 08232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07142017 | 08162017 | Standard |  |  | 2017-07-14 | Per MDS: 17/RVA01 = $3586.28 Per Diem: $250.00/day x 14 days = $3500.00 TOTAL PAYMENT = $7086.28 | 0 | 2017-08-17 | 2017-08-11 | 2017-08-23 | 2017-08-23 | 34 | 34 | 7086.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718091 | F0390, R531 | Weakness | ICD10 | 08232017 | 07142017 | 08172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7086 | 7086 | Approved | 34 | Revenue | RV |  |  |  | 7.0 |
