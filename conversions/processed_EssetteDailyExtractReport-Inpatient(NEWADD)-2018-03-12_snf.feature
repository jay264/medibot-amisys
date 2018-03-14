Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-12_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-12_SNF
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
| 02222018 | 2018-02-22T13:29:07+00:00 |  | 000009900-01 | ROSELLA | RIDENOUR | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 03122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02212018 | 02282018 | Standard |  |  | 2018-02-21 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 7 | 2018-02-28 |  | 2018-03-09 |  | 7 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222076 | M545, N390 | Urinary tract infection, site not specified | ICD10 | 03122018 | 02212018 | 02282018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 01312018 | 2018-01-31T06:50:24+00:00 |  | 000031913-01 | CAROLYN | WILSON | AMERICAN HLTH NETWORK OF | 904794 | JAMES G | FITKIN | 1295846673 | GUARDIAN ELDER CARE OF COLS | 923938 | 1386994671 | GUARDIAN ELDER CARE OF COLS | 1386994671 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GUARDIAN ELDER CARE OF COLS | 03122018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 01292018 | 03062018 | Standard |  |  | 2018-01-29 | 17/RVC01=$6,306.19 PER DIEM RATE OF $250.00/DAY X 17 DAYS=$4,200.00 TOTAL PAYMENT=$10,556.19 | 0 | 2018-03-07 |  | 2018-03-11 | 2018-03-07 | 37 | 37 | 10556.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131074 | S72351A, Z4781 | Encounter for orthopedic aftercare following surgical amp | ICD10 | 03122018 | 01292018 | 03062018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 37 | Revenue | RV |  |  |  | 7.0 |
| 02262018 | 2018-02-26T16:38:31+00:00 |  | 000108853-01 | Mary | Cronin | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1770669871 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 03122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 02232018 | 03092018 | Standard |  |  | 2018-02-23 | Per MDS: 17/RVB01 = $5411.86 | 25 | 2018-03-09 |  | 2018-03-12 | 2018-03-12 | 14 | 39 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227007 | M545, S32000S, Z5189, Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 03122018 | 02232018 | 03092018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08292017 | 2017-08-29T12:31:15+00:00 |  | 000009860-01 | LESTER | YODER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 03122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 08282017 | 10302017 | Standard |  |  | 2017-08-28 | PER DIEM RATE OF $250.00/DAY X 59 DAYS=$14,750.00 | 35 | 2017-10-30 |  | 2017-10-31 | 2017-10-31 | 59 | 94 | 14750.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829068 | I469 | Cardiac arrest, cause unspecified | ICD10 | 03122018 | 08282017 | 10302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 64 | Revenue | RV |  |  |  | 11.0 |
| 09112017 | 2017-09-11T12:57:08+00:00 |  | 000001952-01 | NORA | VONAU | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 03122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 09072017 | 10052017 | Standard |  |  | 2017-09-07 | PER DIEM RATE OF $200.00/DAY X 17 DAYS=$3,400.00 CARVE OUT FOR IV TEFLARO PER INVOICE=$5,812.25 TOTAL AUTHORIZED PAYMENT=$9,212.25 | 38 | 2017-10-05 |  | 2017-10-11 | 2017-10-13 | 17 | 66 | 9212.25 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911094 | S91302A | Unspecified open wound, left foot, initial encounter | ICD10 | 03122018 | 09072017 | 10052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9212 | 9212 | Approved Skilled | 29 | Revenue | RV |  |  |  | 11.0 |
| 10162017 | 2017-10-16T09:27:03+00:00 |  | 000023471-01 | FRANK | KYNKOR | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 03122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 10132017 | 11022017 | Standard |  |  | 2017-10-13 | PER DIEM RATE OF $250.00/DAY X 20 DAYS =$5,000.00 CARVE OUT (PER INVOICE) OF IV CEFTRIAXONE=$365.03 TOTAL PAYMENT=$5,365.03 | 10 | 2017-11-02 |  | 2017-11-06 | 2017-11-06 | 20 | 30 | 5365.03 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016044 | A4189 | Other specified sepsis | ICD10 | 03122018 | 10132017 | 11022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5365 | 5365 | Approved Skilled | 21 | Revenue | RV |  |  |  | 20.0 |
| 11172017 | 2017-11-17T11:29:26+00:00 |  | 000032114-01 | MARIO | CAMBONI | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 03122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 11162017 | 12222017 | Standard |  |  | 2017-11-16 | 17/RVC01=%6,306.19 PER DIEM RATE OF $200.00/DAY X 16=$3,200.00 TOTAL PAYMENT=$9,506.19 | 0 | 2017-12-22 |  | 2017-12-29 | 2017-12-29 | 36 | 36 | 9506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117054 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 03122018 | 11162017 | 12222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9506 | 9506 | Approved Skilled | 37 | Revenue | RV |  |  |  | 2.0 |
| 02122018 | 2018-02-12T12:58:43+00:00 |  | 000116771-01 | FLORENCE | BETTINAZZI | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 03122018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02112018 | 03092018 | Standard |  |  | 2018-02-11 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-03-09 | 2018-03-12 | 2018-03-12 | 2018-03-12 | 26 | 26 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212106 | R262, S72115D | Nondisp fx of greater trochanter of l femr, 7thD | ICD10 | 03122018 | 02112018 | 03092018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 27 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 02152018 | 2018-02-15T11:36:10+00:00 |  | 000008659-01 | VIOLA | GIFFORD | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 03122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02122018 | 03102018 | Standard |  |  | 2018-02-12 | 17/RVB01=$5,411.86 | 11 | 2018-03-10 |  | 2018-03-12 | 2018-03-12 | 20 | 37 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215054 | I4891, J449, S8390XA | Sprain of unspecified site of unspecified knee, init encntr | ICD10 | 03122018 | 02122018 | 03102018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 27 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 02192018 | 2018-02-19T15:08:40+00:00 |  | 000083465-01 | Judy | Tarrence | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 03122018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02172018 | 03052018 | Standard |  |  | 2018-02-17 | Contract/RUG: 17/RUC (Per MDS) = 6,049.81 | 0 | 2018-03-05 |  | 2018-03-12 |  | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220011 | G939 | Disorder of brain, unspecified | ICD10 | 03122018 | 02172018 | 03052018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
