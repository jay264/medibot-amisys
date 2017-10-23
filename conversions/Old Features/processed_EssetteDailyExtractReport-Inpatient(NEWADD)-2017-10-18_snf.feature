Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-18_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-18_SNF
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
| 10162017 | 2017-10-16T14:02:54+00:00 |  | 000087802-01 | Karen | Martin | ASSOC SPEC OF INTL MED | 901295 | LOUIS P | HECKMAN | 1073552782 | LINCOLN PARK MANOR | 902370 | 1346248804 | LINCOLN PARK MANOR | 1346248804 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LINCOLN PARK MANOR | 10182017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171017052 | G9520 | Unspecified cord compression | ICD10 | 10182017 | 10172017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10092017 | 2017-10-09T12:02:34+00:00 |  | 000018994-01 | ANDREA | LONGWELL | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 10182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10062017 | 10152017 | Standard |  |  | 2017-10-06 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 13 | 2017-10-15 |  | 2017-10-17 | 2017-10-17 | 9 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009075 | I5041 | Acute combined systolic and diastolic (congestive) hrt fail | ICD10 | 10182017 | 10062017 | 10152017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 10032017 | 2017-10-03T10:36:26+00:00 |  | 000037616-01 | MARY | BENSON | TIMOTHY J BRIGHT DO INC | 935342 | TIMOTHY J | BRIGHT | 1760405393 | CENTERBURG POINTE | 915833 | 1033410295 | CENTERBURG POINTE | 1033410295 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG POINTE | 10182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09262017 | 10112017 | Standard |  |  | 2017-09-26 | 17/RVB01= $5411.86 | 0 | 2017-10-11 |  | 2017-10-18 | 2017-10-18 | 15 | 15 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003051 | M179, Z96652 | Presence of left artificial knee joint | ICD10 | 10182017 | 09262017 | 10112017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 09262017 | 2017-09-26T08:13:52+00:00 |  | 000044371-01 | ROBERT | SIDERS | TIMOTHY J BRIGHT DO INC | 935342 | TIMOTHY J | BRIGHT | 1760405393 | CENTERBURG POINTE | 915833 | 1033410295 | CENTERBURG POINTE | 1033410295 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG POINTE | 10182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09222017 | 10112017 | Standard |  |  | 2017-09-22 | 17/RVC01= $6306.19 | 16 | 2017-10-11 |  | 2017-10-18 | 2017-10-18 | 19 | 35 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926049 | R531 | Weakness | ICD10 | 10182017 | 09222017 | 10112017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 09282017 | 2017-09-28T10:19:13+00:00 |  | 000112074-01 | Marilyn | Holden | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | MARIETTA REHABILITATION AND NURSING | 931538 | 1184730913 | MARIETTA REHABILITATION AND NURSING | 1184730913 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MARIETTA REHABILITATION AND NURSING | 10182017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 09262017 | 10052017 | Standard |  |  | 2017-09-26 | 17/RHC01= $4132.02 | 0 | 2017-10-05 |  | 2017-10-17 |  | 9 | 9 | 4132.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928042 | K922, R54 | Age-related physical debility | ICD10 | 10182017 | 09262017 | 10052017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 10162017 | 2017-10-16T10:54:45+00:00 |  | 000116219-01 | WILLIAM | SHEARD JR | VANCREST OF EATON | 940571 |  | VANCREST HEALTH CARE OF EATON | 1275623092 | VANCREST OF EATON | 940571 | 1275623092 | VANCREST HEALTH CARE OF EATON | 1275623092 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VANCREST HEALTH CARE OF EATON | 10182017 | Denied | MediGold Southwest OH Essential Care | Fax | Not Medically Necessary | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171016069 | K311, K562 | Volvulus | ICD10 | 10182017 | 10162017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10162017 | 2017-10-16T15:56:40+00:00 |  | 000114933-01 | Stephen | Cornes | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | PRISTINE SENIOR LIVING O | 952374 | 1740665710 | PRISTINE SENIOR LIVING OF CINCINNATI | 1740665710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRISTINE SENIOR LIVING OF CINCINNATI | 10182017 | Denied | MediGold Southwest OH Essential Care | Fax | Services Available In-Network | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171017062 | R52 | Pain, unspecified | ICD10 | 10182017 | 10172017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10032017 | 2017-10-03T16:31:10+00:00 |  | 000060913-01 | JAMES | LONGNECKER | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 10182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10022017 | 10132017 | Standard |  |  | 2017-10-02 | Per MDS: 16/RUB01 = $4429.71 | 0 | 2017-10-13 |  | 2017-10-17 | 2017-10-17 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004002 | I2510, R4701, R52, S72143B, Z7901 | Long term (current) use of anticoagulants | ICD10 | 10182017 | 10022017 | 10132017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 10032017 | 2017-10-03T11:17:07+00:00 |  | 000042738-01 | JOAN | CLIFTON | PICKAWAY HEALTH SERVICES | 913727 | KEVIN M | SELLERS | 1306085220 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 10182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09302017 | 10132017 | Standard |  |  | 2017-09-30 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-10-13 |  | 2017-10-17 | 2017-10-17 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003060 | M6281 | Muscle weakness (generalized) | ICD10 | 10182017 | 09302017 | 10132017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 07282017 | 2017-07-28T09:30:54+00:00 |  | 000029759-01 | JAMES | DILCHER | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 10182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07252017 | 10162017 | Standard |  |  | 2017-07-25 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 6 days = $1200.00 Per Diem: $250.00/day x 57 days = $14,250.00 TOTAL PAYMENT = $21,756.19 | 0 | 2017-10-16 | 2017-10-13 | 2017-10-17 | 2017-10-17 | 83 | 83 | 21756.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728016 | G20, S2241XD | Multiple fx of ribs, right side, subs for fx w routn heal | ICD10 | 10182017 | 07252017 | 10162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 84 | Revenue | RV |  |  |  | 3.0 |
| 09292017 | 2017-09-29T15:02:07+00:00 |  | 000105835-01 | Nancy | Pugh | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 10182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09282017 | 10142017 | Standard |  |  | 2017-09-28 | 16/RUC01=7,333.11 | 0 | 2017-10-14 |  | 2017-10-18 | 2017-10-11 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929060 | S73002D | Unspecified subluxation of left hip, subsequent encounter | ICD10 | 10182017 | 09282017 | 10142017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 09142017 | 2017-09-14T15:39:01+00:00 |  | 000071036-01 | Dwight | Johnson | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 10182017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09132017 | 10142017 | Standard |  |  | 2017-09-13 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 10 days = $2500.00 TOTAL PAYMENT = $9833.11 | 0 | 2017-10-14 | 2017-10-11 | 2017-10-17 | 2017-10-17 | 30 | 30 | 9833.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915030 | E440, I10, I348, I63422, I69951 | Hemiplga fol unsp cerebvasc disease aff right dominant side | ICD10 | 10182017 | 09132017 | 10142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9833 | 9833 | Approved | 32 | Revenue | RV |  |  |  | 10.0 |
| 09172017 | 2017-09-17T22:47:25+00:00 |  | 000100046-01 | SANDRA | MCCLELLAN | SOUND KENWOOD HSPISTS OF | 926206 | CHANTAL G | WALSH | 1740274760 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 10182017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 09142017 | 10022017 | Standard |  |  | 2017-09-14 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-10-02 |  | 2017-10-12 | 2017-10-16 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918064 | M1711, Z96651 | Presence of right artificial knee joint | ICD10 | 10182017 | 09142017 | 10022017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 10022017 | 2017-10-02T11:09:44+00:00 |  | 000085530-01 | John | Park | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HCF OF WASHINGTON INC | 906766 | 1760653638 | HCF OF WASHINGTON INC | 1760653638 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HCF OF WASHINGTON INC | 10182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10032017 | 10052017 | Standard |  |  | 2017-10-03 | PER DIEM RATE OF $200.00/DAY X 2 DAYS=$400.00 CARVE OUT PER PHARMACY INVOICE FOR IV ZOSYN X 6 DOSES=$242.22 TOTAL PAYMENT TO FACILITY=$642.22 | 0 | 2017-10-05 |  | 2017-10-18 |  | 2 | 2 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002101 | A310 | Pulmonary mycobacterial infection | ICD10 | 10182017 | 10032017 | 10052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 642 | 642 | Approved Skilled | 3 | Revenue | RV |  |  |  | 2.0 |
