Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-29_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-29_SNF
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
| 12042017 | 2017-12-04T12:08:20+00:00 |  | 000012284-01 | BARBARA | BAUR | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 12292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12152017 | Standard |  |  | 2017-11-30 | 16/RVC01=$3,539.19 | 0 | 2017-12-15 | 2017-12-28 | 2017-12-28 | 2017-12-12 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204144 | M545 | Low back pain | ICD10 | 12292017 | 11302017 | 12152017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 11172017 | 2017-11-17T10:02:47+00:00 |  | 000077182-01 | Herbert | Satterfield | GENESIS MEDICAL GRP LLC | 923234 | PAUL D | MUMMA | 1619958121 | CEDAR HILL CARE CENTER | 924191 | 1326035130 | CEDAR HILL CARE CENTER | 1326035130 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CEDAR HILL CARE CENTER | 12292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 11152017 | 11292017 | Standard |  |  | 2017-11-15 | 17/RVC01= $3586.28 | 0 | 2017-11-29 |  | 2017-12-28 | 2017-12-28 | 14 | 14 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117053 | Z96651 | Presence of right artificial knee joint | ICD10 | 12292017 | 11152017 | 11292017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11062017 | 2017-11-06T11:19:32+00:00 |  | 000060383-01 | DORIS | KAZEE | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 12292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11042017 | 12282017 | Standard |  |  | 2017-11-04 | 16/RUC01= $7333.11 34 DAYS @ $200.00= $6800.00 TOTAL: $14133.11 | 22 | 2017-12-28 |  | 2017-12-28 | 2017-12-28 | 54 | 76 | 14133.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106099 | A498 | Other bacterial infections of unspecified site | ICD10 | 12292017 | 11042017 | 12282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 55 | Revenue | RV |  |  |  | 7.0 |
| 12062017 | 2017-12-06T16:15:46+00:00 |  | 000099249-01 | Alice | Bertram | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | MARIETTA REHABILITATION AND NURSING | 931538 | 1184730913 | MARIETTA REHABILITATION AND NURSING | 1184730913 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MARIETTA REHABILITATION AND NURSING | 12292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12042017 | 12242017 | Standard |  |  | 2017-12-04 | 17/RVC01= $6306.19 | 0 | 2017-12-24 |  | 2017-12-28 | 2017-12-28 | 20 | 20 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207003 | N390 | Urinary tract infection, site not specified | ICD10 | 12292017 | 12042017 | 12242017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12152017 | 2017-12-15T13:45:11+00:00 |  | 000106054-01 | Linda | Thompson | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 12292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12142017 | 12222017 | Standard |  |  | 2017-12-14 | 16/RHC01= $3133.29 | 0 | 2017-12-22 |  | 2017-12-29 | 2017-12-21 | 8 | 8 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215082 | E440, E860, G9340 | Encephalopathy, unspecified | ICD10 | 12292017 | 12142017 | 12222017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 11012017 | 2017-11-01T10:41:10+00:00 |  | 000103174-01 | Mary | Fiorilli | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 12292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10202017 | 12062017 | Standard |  |  | 2017-10-20 | 17/RMB01= $2790.37 28 DAYS @ $200.00= $5600.00 TOTAL: $8390.37 | 0 | 2017-12-06 |  | 2017-12-11 | 2017-12-11 | 48 | 48 | 8390.37 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101038 | Z96642 | Presence of left artificial hip joint | ICD10 | 12292017 | 10202017 | 12062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8390 | 8390 | Approved | 48 | Revenue | RV |  |  |  | 4.0 |
| 11242017 | 2017-11-24T12:18:44+00:00 |  | 000087701-01 | Sara | Weller | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 12292017 | Approved | MediGold Essential Care | Mail | SNF | Inpatient | 11212017 | 12012017 | Standard |  |  | 2017-11-21 | 17/RVC01= $6306.19 | 0 | 2017-12-01 |  | 2017-12-11 | 2017-12-11 | 10 | 10 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127068 | M75122 | Complete rotatr-cuff tear/ruptr of left shoulder, not trauma | ICD10 | 12292017 | 11212017 | 12012017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 12052017 | 2017-12-05T08:42:07+00:00 |  | 000109086-01 | Ruth | Ermlich | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 12292017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12012017 | 12042017 | Standard |  |  | 2017-12-01 | 3 DAYS @ $200.00= $600.00 | 0 | 2017-12-04 |  |  |  | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205068 | Z471 | Aftercare following joint replacement surgery | ICD10 | 12292017 | 12012017 | 12042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 12012017 | 2017-12-01T15:26:18+00:00 |  | 000040667-01 | DANIEL | LAYCOCK | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 12292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12112017 | Standard |  |  | 2017-11-30 | 16/RVB01=$3,350.20 | 0 | 2017-12-11 |  | 2017-12-28 |  | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201069 | J811 | Chronic pulmonary edema | ICD10 | 12292017 | 11302017 | 12112017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 11172017 | 2017-11-17T11:29:26+00:00 |  | 000032114-01 | MARIO | CAMBONI | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 12292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11162017 | 12222017 | Standard |  |  | 2017-11-16 | 17/RVC01=%6,306.19 PER DIEM RATE OF $200.00/DAY X 16=$3,200.00 TOTAL PAYMENT=$9,506.19 | 0 | 2017-12-22 |  | 2017-12-29 | 2017-12-29 | 36 | 36 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117054 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 12292017 | 11162017 | 12222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9506 | 9506 | Approved Skilled | 37 | Revenue | RV |  |  |  | 2.0 |
| 11162017 | 2017-11-16T16:36:17+00:00 |  | 000100445-01 | June | Faust | WETHERINGTON, ANTHONY P | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | THE LAURELS OF HILLSBORO | 952248 | 1255387221 | THE LAURELS OF HILLSBORO | 1255387221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE LAURELS OF HILLSBORO | 12292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11162017 | 12062017 | Standard |  |  | 2017-11-16 | 17/RVA01=$3,586.28 | 0 | 2017-12-06 |  | 2017-12-28 | 2017-12-28 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117033 | G8929, I509 | Heart failure, unspecified | ICD10 | 12292017 | 11162017 | 12062017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12122017 | 2017-12-12T15:31:55+00:00 |  | 000002309-01 | JANET | HAMILTON | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 12292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12112017 | 12242017 | Standard |  |  | 2017-12-11 | 16/RUB01=$5,813.99 | 0 | 2017-12-24 |  | 2017-12-28 | 2017-12-28 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212089 | S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 12292017 | 12112017 | 12242017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 12012017 | 2017-12-01T15:34:17+00:00 |  | 000046249-01 | NORMA | HUMMELL | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 12292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12292017 | Standard |  |  | 2017-11-30 | 17/RVB01=$5,411.86 PER DIEM RATE OF $250.00/DAY X 9 DAYS=$2,200.00 TOTAL PAYMENT=$7,661.86 | 34 | 2017-12-29 |  | 2017-12-29 | 2017-12-29 | 29 | 63 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201067 | T84020D, Z4732 | Aftercare following explantation of hip joint prosthesis | ICD10 | 12292017 | 11302017 | 12292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7661 | 7661 | Approved | 30 | Revenue | RV |  |  |  | 9.0 |
| 10242017 | 2017-10-24T17:07:33+00:00 |  | 000098031-01 | Donald | Wells | LICKING MEM HLTH PROF | 926222 | CHARLES L | GEIGER | 1235115270 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 12292017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10222017 | 12112017 | Standard |  |  | 2017-10-22 | 17/RUC01= $6049.81 10 days @ $250.00= $2500.00 20 days @ $200.00= $4000.00 total: $12549.81 | 21 | 2017-12-11 |  | 2017-12-26 | 2017-12-26 | 50 | 71 | 12549.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025008 | G20, I10, I4430, L03818, R001 | Bradycardia, unspecified | ICD10 | 12292017 | 10222017 | 12112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 51 | Revenue | RV |  |  |  | 7.0 |
