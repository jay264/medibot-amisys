Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-04_thru_20171-10-05_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-04_thru_20171-10-05_SNF
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
| 07032017 | 2017-07-03T14:15:58+00:00 |  | 000088586-01 | Clarence | Cottrill | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06292017 | 09072017 | Standard |  |  | 2017-06-29 | Per Diem: $200.00/day x 69 days = $13,800.00 Levaquin (per invoice) = $273.64 Invanz (per invoice) = $7592.80 Vancomycin (per invoice) = $3834.87 Wound VAC (per invoice) = $2264.02 TOTAL PAYMENT =  $27,765.33 | 31 | 2017-09-07 |  | 2017-10-05 |  | 69 | 100 | 27765.33 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703113 | M1990, M6281, T8453XA | Infect/inflm reaction due to internal r knee prosth, init | ICD10 | 10052017 | 06292017 | 09072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 71 | Revenue | RV |  |  |  | 6.0 |
| 07262017 | 2017-07-26T15:55:27+00:00 |  | 000000720-01 | DARLENE | DICK | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD GARDENS REHABI | 949221 | 1235684309 | COUNTRY LANE GARDENS REHABILITATION | 1235684309 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY LANE GARDENS REHABILITATION | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07252017 | 09042017 | Standard |  |  | 2017-07-25 | Per Diem: $200.00/day x 41 days = $8200.00 Vancomycin (per invoice) = $864.38 TOTAL PAYMENT = $9064.38 | 0 | 2017-09-04 |  | 2017-09-08 | 2017-09-06 | 41 | 41 | 9064.38 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726077 | Z7401 | Bed confinement status | ICD10 | 10052017 | 07252017 | 09042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9064 | 9064 | Approved | 42 | Revenue | RV |  |  |  | 7.0 |
| 08092017 | 2017-08-09T12:46:07+00:00 |  | 000064068-01 | Ruby | Clark | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10052017 | 10122017 | Standard |  |  | 2017-08-07 | 16/RUC01=$7,333.11 | 0 | 2017-08-23 |  | 2017-08-28 | 2017-08-22 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809064 | I739 | Peripheral vascular disease, unspecified | ICD10 | 10052017 | 08072017 | 08232017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 08252017 | 2017-08-25T10:34:09+00:00 |  | 000032681-01 | FLORENCE | STACY | WELLER HEALTH TRANSITION | 917780 | CHRISTINE B | WELLER | 1811953318 | VANCREST OF NEW CARLISLE LLC | 925244 | 1871839167 | VANCREST OF NEW CARLISLE LLC | 1871839167 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VANCREST OF NEW CARLISLE LLC | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08282017 | 10012017 | Standard |  |  | 2017-08-28 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 10 SNF Days = $2,000.00 Total Payment: $8,306.19 | 0 | 2017-10-01 |  | 2017-10-04 | 2017-10-04 | 30 | 30 | 8306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825040 | I4891, K5669, R55 | Syncope and collapse | ICD10 | 10052017 | 08282017 | 10012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8306 | 8306 | Approved | 35 | Revenue | RV |  |  |  | 5.0 |
| 08282017 | 2017-08-28T13:38:08+00:00 |  | 000064761-01 | JUANITA | TAGGART | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 10042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08252017 | 09232017 | Standard |  |  | 2017-08-25 | 16/RVC01= $3539.19 9 DAYS @ $200.00= $1800.00 TOTAL: $5339.19 | 15 | 2017-09-23 |  | 2017-09-05 | 2017-09-21 | 29 | 44 | 5339.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828102 | A047, I5031, N179 | Acute kidney failure, unspecified | ICD10 | 10042017 | 08252017 | 09232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5339 | 5339 | Approved | 30 | Revenue | RV |  |  |  | 2.0 |
| 08312017 | 2017-08-31T17:35:13+00:00 |  | 000041297-01 | NORMA | PUCKETT | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 10042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08302017 | 10012017 | Standard |  |  | 2017-08-30 | 17/RUB01=$3,350.20 PER DIEM RATE OF $200.00/DAY X 12 DAYS=$2,400.00 TOTAL PAYMENT TO FACILITY=$5,750.20 | 16 | 2017-10-01 | 2017-10-02 | 2017-10-02 | 2017-10-02 | 32 | 48 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901008 | T84090D | Mech compl of internal right hip prosthesis, subs encntr | ICD10 | 10042017 | 08302017 | 10012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5750 | 5750 | Approved Skilled | 33 | Revenue | RV |  |  |  | 12.0 |
| 09062017 | 2017-09-06T15:16:37+00:00 |  | 000015619-01 | ALONZO | DRYER JR | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09032017 | 09302017 | Standard |  |  | 2017-09-03 | 17/RVC01=$6,306.19 | 0 | 2017-09-30 |  | 2017-10-05 |  | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907069 | R55 | Syncope and collapse | ICD10 | 10052017 | 09032017 | 09302017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 28 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 09072017 | 2017-09-07T10:35:08+00:00 |  | 000089905-01 | Ethel | Ely | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09062017 | 09302017 | Standard |  |  | 2017-09-06 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-09-30 |  | 2017-10-04 | 2017-10-04 | 20 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907101 | I4891, N390, R531, R5381 | Other malaise | ICD10 | 10052017 | 09062017 | 09302017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 09112017 | 2017-09-11T08:56:07+00:00 |  | 000003883-01 | ROBERT | KENNEDY JR | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 10042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09082017 | 09192017 | Standard |  |  | 2017-09-08 | 16/RUB01=$4,429.71 | 0 | 2017-09-19 |  | 2017-10-04 | 2017-10-04 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911025 | I249, R55 | Syncope and collapse | ICD10 | 10042017 | 09082017 | 09192017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 09122017 | 2017-09-12T09:30:29+00:00 |  | 000105713-01 | Thomas | Hall | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 10052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09082017 | 09282017 | Standard |  |  | 2017-09-08 | 17/RUC01=$6,049.81 | 0 | 2017-09-28 |  | 2017-10-05 | 2017-10-05 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912067 | G4730, K2971, M79601 | Pain in right arm | ICD10 | 10052017 | 09082017 | 09282017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09132017 | 2017-09-13T09:00:59+00:00 |  | 000019728-01 | HERMAN | HIGGINBOTHAM | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09112017 | 10032017 | Standard |  |  | 2017-09-11 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 2 SNF Days = $400.00 Total: $6,449.81 | 0 | 2017-10-03 |  | 2017-10-05 | 2017-10-05 | 22 | 22 | 6449.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913045 | I160 | HYPERTENSIVE URGENCY | ICD10 | 10052017 | 09112017 | 10032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6449 | 6449 | Approved | 23 | Revenue | RV |  |  |  | 2.0 |
| 09142017 | 2017-09-14T17:05:32+00:00 |  | 000057766-01 | MARY | RAY | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 10052017 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 09122017 | 10022017 | Standard |  |  | 2017-09-12 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-10-02 |  | 2017-10-04 | 2017-10-04 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915047 | E8352, R4182 | Altered mental status, unspecified | ICD10 | 10052017 | 09122017 | 10022017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09152017 | 2017-09-15T11:32:55+00:00 |  | 000096172-01 | Helen | Charles | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | VILLA GEORGETOWN | 931679 | 1184612707 | VILLA GEORGETOWN | 1184612707 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA GEORGETOWN | 10052017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 09202017 | 09292017 | Standard |  |  | 2017-09-20 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-09-29 |  | 2017-10-04 | 2017-10-04 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915079 | K859 | Acute pancreatitis, unspecified | ICD10 | 10052017 | 09202017 | 09292017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 09182017 | 2017-09-18T12:45:38+00:00 |  | 000021897-01 | MARILYN | MOORE | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 10042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09162017 | 09302017 | Standard |  |  | 2017-09-16 | 16/RUB01=$4,429.71 | 0 | 2017-09-30 |  | 2017-10-03 | 2017-10-03 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918092 | R2689, R531, S82002A | Unsp fracture of left patella, init for clos fx | ICD10 | 10042017 | 09162017 | 09302017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 09182017 | 2017-09-18T15:27:18+00:00 |  | 000116943-01 | Sharon | Rockwell | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 10052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09162017 | 09202017 | Standard |  |  | 2017-09-16 | PER DIEM RATE OF $200.00/DAY X 4 DAYS=$800.00 CARVE OUT (PER INVOICE) FOR WOUND VAC=$784.89 TOTAL PAYMENT=$1,584.89 | 20 | 2017-09-20 |  | 2017-10-05 |  | 4 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919014 | L03116, R6521 | Severe sepsis with septic shock | ICD10 | 10052017 | 09162017 | 09202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1584 | 1584 | Approved Skilled | 5 | Revenue | RV |  |  |  | 4.0 |
| 09202017 | 2017-09-20T17:04:36+00:00 |  | 000118773-01 | Sherry | Reid | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09192017 | 09292017 | Standard |  |  | 2017-09-19 | 16/RUA01= $3214.76 | 0 | 2017-09-29 |  | 2017-10-05 | 2017-10-05 | 10 | 10 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921061 | Z96651 | Presence of right artificial knee joint | ICD10 | 10052017 | 09192017 | 09292017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 09222017 | 2017-09-22T13:54:35+00:00 |  | 000101297-01 | Marjorie | Cornett | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 10042017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 09202017 | 10012017 | Standard |  |  | 2017-09-20 | Contract/RUG: 17/RVB  (Per MDS) = $5,411.86 | 0 | 2017-10-01 |  | 2017-10-03 | 2017-10-03 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922056 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 10042017 | 09202017 | 10012017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 09222017 | 2017-09-22T15:12:36+00:00 |  | 000108233-01 | Mary | Barbour | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | SUMMITS TRACE HLTHCARE C | 908932 | 1588803985 | SUMMITS TRACE HEALTHCARE CENTER | 1588803985 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SUMMITS TRACE HEALTHCARE CENTER | 10052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09212017 | 10052017 | Standard |  |  | 2017-09-21 | 16/RUC01=$7,333.11 | 0 | 2017-10-05 |  | 2017-10-05 | 2017-10-05 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922068 | I10 | Essential (primary) hypertension | ICD10 | 10052017 | 09212017 | 10052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 09252017 | 2017-09-25T14:33:00+00:00 |  | 000075032-01 | Jerome | Knight | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09232017 | 10012017 | Standard |  |  | 2017-09-23 | Per MDS: 17/RUB01 = $5813.99 | 8 | 2017-10-01 |  | 2017-10-03 | 2017-10-03 | 8 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925107 | R52, R531, Z9181 | History of falling | ICD10 | 10052017 | 09232017 | 10012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 09142017 | 2017-09-14T13:27:00+00:00 |  | 000102117-01 | WILMA | ARNOLD | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09122017 | 10222017 | Standard |  |  | 2017-09-12 | 17/RUC01=$6,049.81 | 15 | 2017-09-22 |  | 2017-10-05 |  | 10 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915004 | J449, M25552, W19XXXA | Unspecified fall, initial encounter | ICD10 | 10052017 | 09122017 | 09222017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 41 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 09222017 | 2017-09-22T14:15:08+00:00 |  | 000034457-01 | LEOTA | BANFIELD GEYER | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09212017 | 09302017 | Standard |  |  | 2017-09-21 | Per MDS: 17/RVA01 = $3586.28 | 19 | 2017-09-30 |  | 2017-10-04 | 2017-09-28 | 9 | 28 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922057 | S73005D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 10052017 | 09212017 | 09302017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 08032017 | 2017-08-03T12:03:44+00:00 |  | 000001557-01 | RUBY | MILLER | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08012017 | 09292017 | Standard |  |  | 2017-08-01 | Per MDS: 17/RVB01 = $5411.86 Per DIem: $200.00/day x 39 days = $7800.00 IV ATB (per invoice): cefipime x 10 doses = $454.52 TOTAL PAYMENT = $13,666.38 | 31 | 2017-09-29 |  | 2017-10-02 | 2017-10-05 | 59 | 90 | 13666.38 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803056 | S91302A | Unspecified open wound, left foot, initial encounter | ICD10 | 10052017 | 08012017 | 09292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 60 | Revenue | RV |  |  |  | 3.0 |
| 08292017 | 2017-08-29T09:50:59+00:00 |  | 000081905-01 | Mary | Maynard | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 10052017 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 08252017 | 09232017 | Standard |  |  | 2017-08-25 | 17/RVB01= $5411.86 | 0 | 2017-09-23 |  | 2017-10-04 | 2017-10-04 | 29 | 29 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829052 | I639 | Cerebral infarction, unspecified | ICD10 | 10052017 | 08252017 | 09232017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 30 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 09012017 | 2017-09-01T17:26:34+00:00 |  | 000106096-01 | Dolores | Baker | KAHLON, GURJEET S | 914096 | GURJEET S | KAHLON | 1649209644 | LAURELS OF HUBER HEIGHTS | 934199 | 1871938555 | LAURELS OF HUBER HEIGHTS | 1871938555 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HUBER HEIGHTS | 10052017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 08242017 | 09252017 | Standard |  |  | 2017-08-24 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-09-25 |  | 2017-10-05 | 2017-10-05 | 20 | 32 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905069 | D649, I509, Z741 | Need for assistance with personal care | ICD10 | 10052017 | 08242017 | 09252017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 33 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 09112017 | 2017-09-11T11:05:33+00:00 |  | 000040207-01 | JAMES | MORRIS JR | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09082017 | 09142017 | Standard |  |  | 2017-09-08 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 18 | 2017-09-14 |  | 2017-10-04 |  | 6 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911072 | D649, K922, R4182 | Altered mental status, unspecified | ICD10 | 10052017 | 09082017 | 09142017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 09142017 | 2017-09-14T17:16:52+00:00 |  | 000002297-01 | JEAN | SCOTT | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09122017 | 09222017 | Standard |  |  | 2017-09-12 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-09-22 |  | 2017-10-04 | 2017-10-04 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915048 | E860, N179, R001 | Bradycardia, unspecified | ICD10 | 10052017 | 09122017 | 09222017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 09182017 | 2017-09-18T10:45:41+00:00 |  | 000000934-01 | NORMA | REED | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | THORNVILLE HEALTH & REHABILITATION C | 939903 | 1689064487 | THORNVILLE HEALTH & REHABILITATION C | 1689064487 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THORNVILLE HEALTH & REHABILITATION C | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09152017 | 09302017 | Standard |  |  | 2017-09-15 | Per MDS: 17/RVA01 = $3586.28 | 3 | 2017-09-30 |  | 2017-10-03 | 2017-10-03 | 15 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918065 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 10052017 | 09152017 | 09302017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 08172017 | 2017-08-17T10:20:15+00:00 |  | 000081386-01 | Gloria | Brown | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 10052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08152017 | 10022017 | Standard |  |  | 2017-08-15 | Per MDS; 17/RVB01 = $5411.86 Per Diem: $200.00/day x 23 days = $4600.00 TOTAL PAYMENT = $10,011.86 | 0 | 2017-10-02 |  | 2017-10-04 | 2017-10-04 | 43 | 43 | 10011.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817036 | Z5189, Z4889 | Encounter for other specified surgical aftercare | ICD10 | 10052017 | 08152017 | 10022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 49 | Revenue | RV |  |  |  | 7.0 |
| 09082017 | 2017-09-08T08:11:34+00:00 |  | 000028543-01 | DONALD | FRANCIS | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09062017 | 09262017 | Standard |  |  | 2017-09-06 | 17/RVC01=$6,306.19 | 0 | 2017-09-26 |  | 2017-10-05 | 2017-10-05 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908050 | Z96611 | Presence of right artificial shoulder joint | ICD10 | 10052017 | 09062017 | 09262017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09152017 | 2017-09-15T14:33:04+00:00 |  | 000081866-01 | Patricia | Burgess | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09152017 | 09222017 | Standard |  |  | 2017-09-15 | 17/RVA01=$3,586.28 | 0 | 2017-09-22 |  | 2017-10-05 | 2017-10-05 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915102 | R1900 | Intra-abd and pelvic swelling, mass and lump, unsp site | ICD10 | 10052017 | 09152017 | 09222017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 09202017 | 2017-09-20T09:52:12+00:00 |  | 000093576-01 | William | Molen | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 10042017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09182017 | 10032017 | Standard |  |  | 2017-09-18 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-10-03 |  | 2017-10-03 | 2017-10-03 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920083 | M14672 | Charcot's joint, left ankle and foot | ICD10 | 10042017 | 09182017 | 10032017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 09222017 | 2017-09-22T14:51:43+00:00 |  | 000013911-01 | TERRIA | LOWE | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 10052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09212017 | 10032017 | Standard |  |  | 2017-09-21 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-10-03 | 2017-10-04 |  | 2017-10-04 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922064 | Z4789 | Encounter for other orthopedic aftercare | ICD10 | 10052017 | 09212017 | 10032017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 09272017 | 2017-09-27T15:00:26+00:00 |  | 000109503-01 | Elvira H | Brunn | RCHP WILMINGTON LLC | 933583 | CHRISTINE E | HENRY | 1659364842 | OHIO LIVING CAPE MAY | 946695 | 1285801233 | OHIO LIVING CAPE MAY | 1285801233 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING CAPE MAY | 10052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09252017 | 10032017 | Standard |  |  | 2017-09-25 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-10-03 |  | 2017-10-04 | 2017-10-04 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927073 | Z471 | Aftercare following joint replacement surgery | ICD10 | 10052017 | 09252017 | 10032017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
