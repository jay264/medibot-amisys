Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-25_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-25_SNF
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
| 08282017 | 2017-08-28T10:57:44+00:00 |  | 000078210-01 | Katrina | Whitesed | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 10252017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 08242017 | 10122017 | Standard |  |  | 2017-10-24 | PER DIEM RATE OF $200.00/DAY X 49 DAYS=$9,800.00 CARVE OUT FOR CEFTRIAXONE, PER INVOICE=$61.48 TOTAL PAYMENT TO FACILITY=$9,861.48 | 14 | 2017-10-12 |  | 2017-10-24 | 2017-10-24 | 49 | 63 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828075 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 10252017 | 08242017 | 10122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9861 | 9861 | Approved Skilled | 50 | Revenue | RV |  |  |  | 9.0 |
| 10062017 | 2017-10-06T16:22:22+00:00 |  | 000069764-01 | RUBY | MCFADDEN | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 10252017 | Denied Skilled - Pay Unskilled | TRINITY HEALTH | Fax |  | Inpatient | 10052017 | 10112017 | Standard |  |  | 2017-10-05 | PER DIEM RATE FOR UNSKILLED STAY $200.00/DAY APPROVED 5 DAYS ONLY=$1,000.00 | 0 | 2017-10-11 |  |  |  | 5 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A171006076 | R2681, W19XXXA | Unspecified fall, initial encounter | ICD10 | 10252017 | 10052017 | 10112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved Unskilled | 7 | Revenue | RV |  |  |  | 5.0 |
| 09272017 | 2017-09-27T11:53:47+00:00 |  | 000076723-01 | Kenneth | Stoner | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | WHISPERING HILLS FACILIT | 904761 | 1023024403 | WHISPERING HILLS FACILITY OPERATIONS | 1023024403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WHISPERING HILLS FACILITY OPERATIONS | 10252017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09252017 | 10172017 | Standard |  |  | 2017-09-25 | 14/RVA01= $2561.63 | 0 | 2017-10-17 |  | 2017-10-23 | 2017-10-23 | 22 | 22 | @2561.63 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927052 | M6281, R262, R278 | Other lack of coordination | ICD10 | 10252017 | 09252017 | 10172017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 09292017 | 2017-09-29T14:19:04+00:00 |  | 000077825-01 | Catherine | Barhite | MOUNT VERNON FAM PRCT IN | 904050 | AMY D | MURNEN | 1750376687 | WHISPERING HILLS FACILIT | 904761 | 1023024403 | WHISPERING HILLS FACILITY OPERATIONS | 1023024403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WHISPERING HILLS FACILITY OPERATIONS | 10252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09262017 | 10202017 | Standard |  |  | 2017-09-26 | 14/HB101= $3284.24 | 53 | 2017-10-20 |  | 2017-10-23 | 2017-10-23 | 24 | 77 | 3284.24 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929051 | I10, M6281, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 10252017 | 09262017 | 10202017 | HB101 | SPECIAL CARE HIGH , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 10022017 | 2017-10-02T13:58:56+00:00 |  | 000012281-01 | Mary | Maynard | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 10252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10012017 | 10032017 | Standard |  |  | 2017-10-01 | 16/RVB01= $3350.20 | 0 | 2017-10-03 |  | 2017-10-24 |  | 2 | 2 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002137 | E875, K5792, R100 | Acute abdomen | ICD10 | 10252017 | 10012017 | 10032017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 3 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 10062017 | 2017-10-06T13:23:41+00:00 |  | 000082664-01 | Janice | Careins | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 10252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 10052017 | 10142017 | Standard |  |  | 2017-10-05 | 16/RHB01= $2690.49 | 0 | 2017-10-14 |  | 2017-10-24 | 2017-10-24 | 9 | 9 | 2690.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006055 | I69951, M6281 | Muscle weakness (generalized) | ICD10 | 10252017 | 10052017 | 10142017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 10202017 | 2017-10-20T09:07:16+00:00 |  | 000106640-01 | Charles | Clouser | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 10252017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10182017 | 10242017 | Standard |  |  | 2017-10-18 | Swing Bed daily rate x 6 days | 0 | 2017-10-24 |  |  | 2017-10-23 | 6 | 6 | Swing bed daily rate x 6 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020034 | R5381 | Other malaise | ICD10 | 10252017 | 10182017 | 10242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 7 | Revenue | RV |  |  |  | 6.0 |
| 10092017 | 2017-10-09T15:40:48+00:00 |  | 000067111-01 | LESTER | HULSE | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 10252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10062017 | 10222017 | Standard |  |  | 2017-10-06 | 16/RVA01= $2689.71 | 27 | 2017-10-22 |  | 2017-10-25 |  | 16 | 43 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010002 | J189, J90 | Pleural effusion, not elsewhere classified | ICD10 | 10252017 | 10062017 | 10222017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 09052017 | 2017-09-05T10:11:37+00:00 |  | 000106016-01 | Michelle | Damon | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 10252017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09012017 | 09292017 | Standard |  |  | 2017-09-01 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X 28 DAYS=$5,600.00 TOTAL PAYMENT=$11,011.86 | 27 | 2017-09-29 |  | 2017-10-24 |  | 28 | 55 | 11011.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905095 | J989 | Respiratory disorder, unspecified | ICD10 | 10252017 | 09012017 | 09292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 29 | Revenue | RV |  |  |  | 8.0 |
| 10242017 | 2017-10-24T16:05:45+00:00 |  | 000042130-01 | ROSALIND | LEIGHTY | MARIA JOSEPH NURSING & R | 929513 |  | MARIA JOSEPH NURSING & REHAB | 1285885798 | MARIA JOSEPH NURSING & R | 929513 | 1285885798 | MARIA JOSEPH NURSING & REHAB | 1285885798 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MARIA JOSEPH NURSING & REHAB | 10252017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Inpatient | 10252017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171024090 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 10252017 | 10202017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10042017 | 2017-10-04T15:24:48+00:00 |  | 000089646-01 | Zaida | Morgan | AIJAZ AHMED MD | 920617 |  | AIJAZ AHMED MD | 1174698740 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 10252017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 10022017 | 10132017 | Standard |  |  | 2017-10-02 | Contract/RUG: 16/RHA (Per MDS) = $2,045.15 | 0 | 2017-10-13 |  | 2017-10-25 | 2017-10-12 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004083 | G629 | Polyneuropathy, unspecified | ICD10 | 10252017 | 10022017 | 10132017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 07072017 | 2017-07-07T17:59:24+00:00 |  | 000091904-01 | Norma Jeann | Dluzen | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 10252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07062017 | 10202017 | Standard |  |  | 2017-07-06 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 80 days = $16,000.00 TOTAL PAYMENT = $23,333.11 | 0 | 2017-10-20 |  | 2017-10-25 |  | 100 | 100 | 23333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710024 | F0390, M84350D, M84350S, R2689, R52, W1830XS | Fall on same level, unspecified, sequela | ICD10 | 10252017 | 07062017 | 10202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 107 | Revenue | RV |  |  |  | 7.0 |
| 09272017 | 2017-09-27T13:21:20+00:00 |  | 000027153-01 | PATRICIA | JOHNSTON | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 10252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09262017 | 10212017 | Standard |  |  | 2017-09-26 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-10-21 | 2017-10-18 | 2017-10-25 | 2017-10-25 | 25 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927061 | E119, I10, I2510, R52, S72142S, W19XXXS | Unspecified fall, sequela | ICD10 | 10252017 | 09262017 | 10212017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 5.0 |
