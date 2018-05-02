Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-27_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-27_SNF
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
| 02072018 | 2018-02-07T14:05:46+00:00 |  | 000040994-01 | Jane | Gischler | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 04272018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 02062018 | 03302018 | Standard |  |  | 2018-02-06 | 16/RUC01= $7,333.11 PER DIEM RATE OF $200.00/DAY X 26 DAYS=$5,200.00 TOTAL PAYMENT TO FACILITY=$12,533.11 | 0 | 2018-03-30 |  | 2018-04-02 | 2018-04-02 | 46 | 46 | 12533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207075 | W19XXXS | Unspecified fall, sequela | ICD10 | 04272018 | 02062018 | 03302018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 53 | Revenue | RV |  |  |  | 5.0 |
| 02092018 | 2018-02-09T12:40:38+00:00 |  | 000029450-01 | ROBERT | KNEDLER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 04272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01252018 | 04152018 | Standard |  |  | 2018-01-25 | 17/RVC01=$6,306.19 PER DIEM RATE OF $250.00/DAY X 28 DAYS=$7,000.00 PER DIEM RATE OF $200.00/DAY X 32 DAYS=$6,400.00 TOTAL PAYMENT TO FACILITY=$19,706.19 | 0 | 2018-04-15 |  | 2018-04-24 | 2018-04-24 | 80 | 80 | 19706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209064 | S42201D, S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 04272018 | 01252018 | 04152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 81 | Revenue | RV |  |  |  | 4.0 |
| 03232018 | 2018-03-23T11:42:12+00:00 |  | 000038056-01 | EMIL | HILES | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 04272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03212018 | 03232018 | Standard |  |  | 2018-03-21 | 2 DAYS @ $200.00= $400.00 | 1 | 2018-03-23 |  | 2018-04-27 |  | 2 | 3 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323035 | J189 | Pneumonia, unspecified organism | ICD10 | 04272018 | 03212018 | 03232018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 04022018 | 2018-04-02T11:03:17+00:00 |  | 000070879-01 | Charles | Walters | CENTRAL OHIO NP SERVICES | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN GAHANNA LLC | 943640 | 1437548575 | OTTERBEIN GAHANNA LLC | 1437548575 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN GAHANNA LLC | 04272018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03292018 | 04232018 | Standard |  |  | 2018-03-29 | 17/RUA01= $3214.76 | 0 | 2018-04-23 |  | 2018-04-19 | 2018-04-20 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402057 | N179 | Acute kidney failure, unspecified | ICD10 | 04272018 | 03292018 | 04232018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 04022018 | 2018-04-02T14:02:27+00:00 |  | 000082463-01 | Janice | Spires | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 04272018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04012018 | 04202018 | Standard |  |  | 2018-04-01 | 16/RVC01= $3539.19 | 0 | 2018-04-19 |  | 2018-04-27 | 2018-04-27 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402111 | S72141D | Displ intertroch fx r femur, subs for clos fx w routn heal | ICD10 | 04272018 | 04012018 | 04202018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 04092018 | 2018-04-09T10:37:21+00:00 |  | 000085423-01 | Leland | Moorehead | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 04272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04062018 | 04272018 | Standard |  |  | 2018-04-06 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-04-27 |  | 2018-04-27 | 2018-04-27 | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409045 | Z96652 | Presence of left artificial knee joint | ICD10 | 04272018 | 04062018 | 04272018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 04162018 | 2018-04-16T12:02:43+00:00 |  | 000023713-01 | CAROLYN | EMMERT | MORNING VIEW DELAWARE, I | 936546 |  | MORNING VIEW DELAWARE INC | 1720080997 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 04272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04102018 | 04212018 | Standard |  |  | 2018-04-10 | 16/RUB01=$4,429.71 | 0 | 2018-04-21 |  | 2018-04-27 | 2018-04-16 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416073 | R6889 | Other general symptoms and signs | ICD10 | 04272018 | 04102018 | 04212018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 04162018 | 2018-04-16T14:09:46+00:00 |  | 000064596-01 | MARY | CAYTON | HOSPITAL MEDICINE SERVIC | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 04272018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04142018 | 04202018 | Standard |  |  | 2018-04-14 | 16/RVC01= $3539.19 | 0 | 2018-04-20 |  | 2018-04-25 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416109 | I5040, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 04272018 | 04142018 | 04202018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 04172018 | 2018-04-17T14:01:07+00:00 |  | 000098482-01 | Manifred | Smoot | COLS INPATIENT CARE INC | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 04272018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04162018 | 04242018 | Standard |  |  | 2018-04-16 | 17/RUB01=$5,813.99 | 0 | 2018-04-24 |  | 2018-04-26 | 2018-04-26 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417109 | I472 | Ventricular tachycardia | ICD10 | 04272018 | 04162018 | 04242018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03082018 | 2018-03-08T12:12:30+00:00 |  | 000071671-01 | Donna | Hilderbran | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 04272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03062018 | 04132018 | Standard |  |  | 2018-03-06 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 18 SNF Days = $3,600.00 Total Payment: $9,011.86 | 41 | 2018-04-13 |  | 2018-04-27 | 2018-04-10 | 38 | 79 | 9011.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308010 | I509, I639, J90, J948, N186, R0600 | Dyspnea, unspecified | ICD10 | 04272018 | 03062018 | 04132018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9011 | 9011 | Approved | 39 | Revenue | RV |  |  |  | 4.0 |
| 04092018 | 2018-04-09T15:33:28+00:00 |  | 000078758-01 | Eloise | Beers | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 04272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04082018 | 04212018 | Standard |  |  | 2018-04-08 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2018-04-21 |  | 2018-04-27 | 2018-04-27 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409099 | I509, N390 | Urinary tract infection, site not specified | ICD10 | 04272018 | 04082018 | 04212018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 04122018 | 2018-04-12T13:20:41+00:00 |  | 000072064-01 | John | Brown | HEARTLAND OF CHILLICOTHE | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 04272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04112018 | 04202018 | Standard |  |  | 2018-04-11 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-04-20 |  | 2018-04-25 | 2018-04-20 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412058 | I739, M6281, R2681, Z95820 | Peripheral vascular angioplasty status w implants and grafts | ICD10 | 04272018 | 04112018 | 04202018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
