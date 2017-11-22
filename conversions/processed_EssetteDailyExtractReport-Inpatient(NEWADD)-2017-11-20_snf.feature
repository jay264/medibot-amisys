Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-20_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-20_SNF
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
| 11042017 | 2017-11-04T11:47:25+00:00 |  | 000077144-01 | Dennis | Thomas | JAMES NAGLE MD INC | 904477 | JAMES B | NAGLE | 1912960329 | FOREST VIEW CARE & REHAB CENTER | 906510 | 1366558157 | FOREST VIEW CARE & REHAB CENTER | 1366558157 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FOREST VIEW CARE & REHAB CENTER | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11032017 | 11172017 | Standard |  |  | 2017-11-03 | Contract/RUG: 17/RHA (Per MDS) = $2,812.08 | 0 | 2017-11-17 |  | 2017-11-17 | 2017-11-17 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106082 | S32020A | Wedge compression fracture of second lumbar vertebra, init | ICD10 | 11202017 | 11032017 | 11172017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11012017 | 2017-11-01T06:29:10+00:00 |  | 000108441-01 | Patricia | Francis | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 11202017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10302017 | 11142017 | Standard |  |  | 2017-10-30 | Contract/RUG: 17/RHA (Per MDS) = $2,812.08 | 0 | 2017-11-14 | 2017-11-17 | 2017-11-17 | 2017-11-17 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101025 | S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 11202017 | 10302017 | 11142017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 10272017 | 2017-10-27T14:47:38+00:00 |  | 000077332-01 | Jerome | Keller | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 11202017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 10252017 | 11042017 | Standard |  |  | 2017-10-25 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 11 | 2017-11-04 |  | 2017-11-17 | 2017-11-17 | 10 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027065 | R1030 | Lower abdominal pain, unspecified | ICD10 | 11202017 | 10252017 | 11042017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 07102017 | 2017-07-10T11:33:47+00:00 |  | 000026239-01 | M | BEAN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 08132017 | Standard |  |  | 2017-07-07 | 16/RUB01=$4,429.71 PER DIEM OF $250.00/DAY X 12 DAYS=$3,000.00 TOTAL PAYMENT=$7,429.71 | 10 | 2017-08-11 |  | 2017-08-21 | 2017-08-21 | 32 | 42 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710104 | E1310 | Oth diabetes mellitus with ketoacidosis without coma | ICD10 | 11202017 | 07072017 | 08132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8179 | 8179 | Approved Skilled | 38 | Revenue | RV |  |  |  | 8.0 |
| 09272017 | 2017-09-27T14:28:38+00:00 |  | 000003846-01 | LORETTA | BALLENGER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09252017 | 11152017 | Standard |  |  | 2017-09-25 | 17/RUB01= $5813.99 31 DAYS @ $200.00= $6200.00 TOTAL: $12013.99 | 7 | 2017-11-15 |  | 2017-11-20 | 2017-11-20 | 51 | 58 | 12013.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927071 | M80072S | Age-rel osteopor w current path fx, left ank/ft, sequela | ICD10 | 11202017 | 09252017 | 11152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 52 | Revenue | RV |  |  |  | 14.0 |
| 09282017 | 2017-09-28T12:57:45+00:00 |  | 000037882-01 | BETTY | RECOB | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09262017 | 11102017 | Standard |  |  | 2017-09-26 | 17/RUB01= $5813.99 25 DAYS @ $200.00= $5000.00 TOTAL: $10813.99 | 0 | 2017-11-10 |  | 2017-11-20 | 2017-11-20 | 45 | 45 | 10813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928058 | S42309D | Unsp fx shaft of humerus, unsp arm, subs for fx w routn heal | ICD10 | 11202017 | 09262017 | 11102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 4.0 |
| 09272017 | 2017-09-27T15:37:11+00:00 |  | 000022223-01 | TSING | HO | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09252017 | 11092017 | Standard |  |  | 2017-09-25 | 17/RVC01= $6306.19 25 DAYS @ $200.00= $5000.00 TOTAL: $11306.19 | 0 | 2017-11-09 |  | 2017-11-17 | 2017-11-17 | 45 | 45 | 11306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927078 | I639 | Cerebral infarction, unspecified | ICD10 | 11202017 | 09252017 | 11192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 1.0 |
| 09292017 | 2017-09-29T15:27:55+00:00 |  | 000046255-01 | DONALD | JUSTICE | CANYON MEDICAL CENTER | 936799 | MARK | HACKMAN | 1740230739 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09222017 | 11162017 | Standard |  |  | 2017-09-22 | 16/RUC01=$7,333.11 PER DIEM RATE OF $200.00/DAY X 35 DAYS=$7,000.00 TOTAL PAYMENT TO FACILITY=$14,333.11 | 0 | 2017-11-16 |  | 2017-11-16 | 2017-11-16 | 55 | 55 | 14333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929062 | J810 | Acute pulmonary edema | ICD10 | 11202017 | 09222017 | 11162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 56 | Revenue | RV |  |  |  | 6.0 |
| 10302017 | 2017-10-30T12:38:24+00:00 |  | 000046380-01 | JOHN | FOX | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10272017 | 11092017 | Standard |  |  | 2017-10-27 | 17/RVB01= $5411.86 | 17 | 2017-11-09 |  | 2017-11-17 | 2017-11-17 | 13 | 30 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030105 | S82002D | Unsp fracture of left patella, subs for clos fx w routn heal | ICD10 | 11202017 | 10272017 | 11092017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 11032017 | 2017-11-03T15:30:09+00:00 |  | 000030896-01 | GENEVA | BEE | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11022017 | 11162017 | Standard |  |  | 2017-11-02 | PER DIEM RATE OF $200.00/DAY X 14 DAYS=$2,800.00 | 82 | 2017-11-16 |  | 2017-11-16 | 2017-11-16 | 14 | 96 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106066 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11202017 | 11022017 | 11162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2800 | 2800 | Approved Skilled | 15 | Revenue | RV |  |  |  | 14.0 |
| 11062017 | 2017-11-06T15:13:07+00:00 |  | 000049692-01 | EVAN | FANNIN | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11042017 | 11112017 | Standard |  |  | 2017-11-04 | 17/RVA01= $3586.28 | 0 | 2017-11-11 |  | 2017-11-17 | 2017-11-17 | 7 | 7 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106129 | I5031 | Acute diastolic (congestive) heart failure | ICD10 | 11202017 | 11042017 | 11112017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10202017 | 2017-10-20T17:46:31+00:00 |  | 000080436-01 | Joseph | Snyder | HEALTHWORKS INC | 936950 | PETER D | HUCEK | 1548274871 | SARAH MOORE HEALTH CARE CENTER | 946271 | 1063476802 | SARAH MOORE HEALTH CARE CENTER | 1063476802 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SARAH MOORE HEALTH CARE CENTER | 11202017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10202017 | 11132017 | Standard |  |  | 2017-10-20 | 17/RVB01= $5411.86 | 0 | 2017-11-13 |  | 2017-11-20 | 2017-11-20 | 22 | 22 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023040 | I10, I509, Z950 | Presence of cardiac pacemaker | ICD10 | 11202017 | 10202017 | 11132017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 08172017 | 2017-08-17T09:39:00+00:00 |  | 000048223-01 | ROBERT | MILLER | WEST JEFFERSON FAM PRCT | 936655 | MARK W | GARWOOD | 1275595274 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08152017 | 11132017 | Standard |  |  | 2017-08-15 | PER DIEM RATE OF $200.00/DAY X 58 DAYS=$11,600.00 WOUND VAC PER INVOICE=$3,923.37 TOTAL PAYMENT=$15,523.37 | 42 | 2017-11-13 |  | 2017-11-14 | 2017-11-14 | 58 | 100 | 15523.37 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817032 | T8743 | Infection of amputation stump, right lower extremity | ICD10 | 11202017 | 08152017 | 11132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 91 | Revenue | RV |  |  |  | 11.0 |
| 10202017 | 2017-10-20T16:26:05+00:00 |  | 000080003-01 | Winifred | Tatten | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 11202017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 10192017 | 11082017 | Standard |  |  | 2017-10-19 | 16/RUB01= $4429.71 | 20 | 2017-11-08 |  | 2017-11-20 | 2017-11-20 | 20 | 40 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023007 | I639, J9601, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 11202017 | 10192017 | 11082017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11092017 | 2017-11-09T15:13:06+00:00 |  | 000112631-01 | Theodritte | Dickerson | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 11202017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11072017 | 11192017 | Standard |  |  | 2017-11-07 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-11-19 |  | 2017-11-20 | 2017-11-20 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109083 | M4322 | Fusion of spine, cervical region | ICD10 | 11202017 | 11072017 | 11192017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 11092017 | 2017-11-09T11:22:52+00:00 |  | 000099098-01 | Nancy | Johnson | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 11202017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11082017 | 11162017 | Standard |  |  | 2017-11-08 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-11-16 |  | 2017-11-17 | 2017-11-17 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109053 | E049, I10, M1612, M797, M8580 | Oth disrd of bone density and structure, unspecified site | ICD10 | 11202017 | 11082017 | 11162017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 09122017 | 2017-09-12T12:53:37+00:00 |  | 000035085-01 | ALDEN | FARNER | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09082017 | 11172017 | Standard |  |  | 2017-09-08 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 13 days = $3250.00 Per Diem: $200.00/day x 37 days = $7400.00 TOTAL PAYMENT = $16,463.99 | 21 | 2017-11-17 |  | 2017-11-17 | 2017-11-17 | 70 | 91 | 16463.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913022 | S72402D, Z5189 | Encounter for other specified aftercare | ICD10 | 11202017 | 09082017 | 11172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 71 | Revenue | RV |  |  |  | 8.0 |
| 11012017 | 2017-11-01T11:28:31+00:00 |  | 000003491-01 | GERTRUDE | BOISSEAU | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10312017 | 11172017 | Standard |  |  | 2017-10-31 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-11-17 |  | 2017-11-08 | 2017-11-17 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101042 | E119, E785, I10, I4891, S42302A, Z950 | Presence of cardiac pacemaker | ICD10 | 11202017 | 10312017 | 11172017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 11072017 | 2017-11-07T16:00:21+00:00 |  | 000003189-01 | ANNALOUISEC | WOHRLE | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11062017 | 11182017 | Standard |  |  | 2017-11-06 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-11-18 |  | 2017-11-15 | 2017-11-20 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107117 | I10, N390, R296, R4182, S62172A | Disp fx of trapezium, left wrist, init for clos fx | ICD10 | 11202017 | 11062017 | 11182017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 10242017 | 2017-10-24T12:27:40+00:00 |  | 000037549-01 | HOMER | WIGET | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10202017 | 11172017 | Standard |  |  | 2017-10-20 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 8 days = $2000.00 TOTAL PAYMENT = $8049.81 | 18 | 2017-11-17 |  | 2017-11-20 | 2017-11-16 | 28 | 46 | 8049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024070 | , M545, M6281, R2681 | Unsteadiness on feet | ICD10 | 11202017 | 10202017 | 11172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8049 | 8049 | Approved | 29 | Revenue | RV |  |  |  | 1.0 |
| 09152017 | 2017-09-15T16:39:23+00:00 |  | 000045585-01 | SYLVIA | MEYERS | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09132017 | 11182017 | Standard |  |  | 2017-09-13 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 46 days = $11,500.00 TOTAL PAYMENT = $16,911.86 | 0 | 2017-11-18 |  | 2017-11-20 | 2017-11-20 | 66 | 66 | 16911.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918054 | N390 | Urinary tract infection, site not specified | ICD10 | 11202017 | 09132017 | 11182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 67 | Revenue | RV |  |  |  | 4.0 |
| 10202017 | 2017-10-20T16:31:07+00:00 |  | 000080776-01 | John | Aldenderfer | NANCY LYNN ALKIRE LLC | 901854 | NANCY | ALKIRE | 1710924659 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 11202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10192017 | 11172017 | Standard |  |  | 2017-10-19 | Per MDS: 17/RHA01 = $2812.08 Per Diem: $200.00/day x 9 days = $1800.00 TOTAL PAYMENT = $4612.08 | 18 | 2017-11-17 | 2017-11-16 | 2017-11-20 | 2017-11-20 | 29 | 47 | 4612.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023011 | J449, J9621, J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 11202017 | 10192017 | 11172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4612 | 4612 | Approved | 30 | Revenue | RV |  |  |  | 2.0 |
