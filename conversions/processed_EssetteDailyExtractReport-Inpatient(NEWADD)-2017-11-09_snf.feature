Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-09_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-09_SNF
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
| 10092017 | 2017-10-09T13:37:13+00:00 |  | 000070087-01 | Dorothy | Skeens | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 11092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10062017 | 10272017 | Standard |  |  | 2017-10-06 | 16/RUC01=$7,333.11 | 27 | 2017-10-27 |  | 2017-11-08 | 2017-10-27 | 15 | 42 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009097 | N390 | Urinary tract infection, site not specified | ICD10 | 11092017 | 10062017 | 10272017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 22 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10252017 | 2017-10-25T16:19:40+00:00 |  | 000094697-01 | Rebecca | Corder | SOUND KENWOOD HSPISTS OF | 926206 | CHANTAL G | WALSH | 1740274760 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 11092017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 10242017 | 11062017 | Standard |  |  | 2017-10-24 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-11-06 |  | 2017-11-08 | 2017-11-08 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026057 | Z96611 | Presence of right artificial shoulder joint | ICD10 | 11092017 | 10242017 | 11062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10232017 | 2017-10-23T13:56:18+00:00 |  | 000001616-01 | PATRICIA | LEDFORD | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 11092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10122017 | 10262017 | Standard |  |  | 2017-10-12 | 16/RUB01=$4,429.71 | 0 | 2017-10-26 |  | 2017-11-08 | 2017-10-24 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024039 | G9341 | Metabolic encephalopathy | ICD10 | 11092017 | 10122017 | 10262017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 10172017 | 2017-10-17T15:02:19+00:00 |  | 000030896-01 | GENEVA | BEE | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 11092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10152017 | 10282017 | Standard |  |  | 2017-10-15 | 16/RUB01=$4,42971 | 69 | 2017-10-28 |  | 2017-11-08 | 2017-10-23 | 13 | 82 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018025 | A0472 | A0472 | ICD10 | 11092017 | 10152017 | 10282017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10232017 | 2017-10-23T09:51:32+00:00 |  | 000005393-01 | RONALD | ROBICHAUD | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 11092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10202017 | 11012017 | Standard |  |  | 2017-10-20 | 16/RUC01=$7,333.11 | 0 | 2017-11-01 |  | 2017-11-08 | 2017-10-30 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023078 | S12100D | Unsp disp fx of 2nd cervcal vert, subs for fx w routn heal | ICD10 | 11092017 | 10202017 | 11012017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 10242017 | 2017-10-24T14:02:13+00:00 |  | 000031516-01 | PATRICIA | AGLER | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 11092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10212017 | 10312017 | Standard |  |  | 2017-10-21 | 16/RVB01=$3,350.20 | 0 | 2017-10-31 |  | 2017-11-08 | 2017-10-27 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024072 | S42291D | Oth disp fx of upper end r humer, subs for fx w routn heal | ICD10 | 11092017 | 10212017 | 10312017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 10242017 | 2017-10-24T15:53:23+00:00 |  | 000060510-01 | JOANN | MARCZIKA | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 11092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10212017 | 11032017 | Standard |  |  | 2017-10-21 | 17/RVB01= $5411.86 | 0 | 2017-11-03 |  | 2017-11-08 | 2017-11-08 | 13 | 13 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024089 | I480 | Paroxysmal atrial fibrillation | ICD10 | 11092017 | 10212017 | 11032017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10232017 | 2017-10-23T13:36:59+00:00 |  | 000028216-01 | RALPH | FRANKLIN | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 11092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10192017 | 11082017 | Standard |  |  | 2017-10-19 | 17/RUC01= $6049.81 | 0 | 2017-11-08 |  | 2017-11-08 | 2017-11-08 | 20 | 20 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023133 | J189, N390 | Urinary tract infection, site not specified | ICD10 | 11092017 | 10192017 | 11082017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09012017 | 2017-09-01T12:37:13+00:00 |  | 000087358-01 | John | Zweering | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 11092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08312017 | 10212017 | Standard |  |  | 2017-08-31 | 17/RVX01= $6171.24 31 DAYS @ $200.00= $6200.00 TOTAL: $12371.24 | 0 | 2017-10-21 | 2017-11-09 | 2017-11-09 | 2017-11-09 | 51 | 51 | 12371.24 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901048 | I469 | Cardiac arrest, cause unspecified | ICD10 | 11092017 | 08312017 | 10212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 52 | Revenue | RV |  |  |  | 3.0 |
| 10042017 | 2017-10-04T16:42:01+00:00 |  | 000116218-01 | Doris | Fausnight | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 11092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10022017 | 10092017 | Standard |  |  | 2017-10-02 | 17/RVC01= $6306.19 | 0 | 2017-10-09 |  | 2017-11-02 |  | 7 | 7 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005017 | M545, R627 | Adult failure to thrive | ICD10 | 11092017 | 10022017 | 10092017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10112017 | 2017-10-11T16:51:04+00:00 |  | 000039549-01 | BERTHA | SELBY | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 11092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10102017 | 11022017 | Standard |  |  | 2017-10-10 | 17/RVC01= $6306.19 | 21 | 2017-11-02 |  | 2017-11-09 | 2017-11-09 | 23 | 44 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012020 | I639 | Cerebral infarction, unspecified | ICD10 | 11092017 | 10102017 | 11022017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 10132017 | 2017-10-13T10:52:30+00:00 |  | 000089624-01 | Joyce | Swihart | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 11092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10122017 | 11012017 | Standard |  |  | 2017-10-12 | 17/RVC01= $6306.19 | 0 | 2017-11-01 |  | 2017-11-09 |  | 20 | 20 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013039 | T8484XA, Z96652 | Presence of left artificial knee joint | ICD10 | 11092017 | 10122017 | 11012017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11062017 | 2017-11-06T13:23:08+00:00 |  | 000110423-01 | Trudy | Ware | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 11092017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 10272017 | 10302017 | Standard |  |  | 2017-10-27 | Per Diem: $200.00/day x 3 SNF Days = $600.00 | 0 | 2017-11-30 |  |  | 2017-11-08 | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106112 | T8579XD | Infect/inflm reaction due to oth int prosth dev/grft, subs | ICD10 | 11092017 | 10272017 | 10302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 11032017 | 2017-11-03T13:38:28+00:00 |  | 000098026-01 | Gary | Lustgarten | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 11092017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 10312017 | 11022017 | Standard |  |  | 2017-10-31 | Per Diem: $200.00/day x 2 SNF Days = $400.00 | 69 | 2017-11-02 |  |  |  | 2 | 71 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106052 | J189 | Pneumonia, unspecified organism | ICD10 | 11092017 | 10312017 | 11022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 10192017 | 2017-10-19T14:26:05+00:00 |  | 000105063-01 | Laverne | Schoch | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 11092017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 10182017 | 11082017 | Standard |  |  | 2017-10-18 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x1 SNF Day = $200.00 Total Payment: $ 6,249.81 | 0 | 2017-11-08 |  | 2017-11-09 | 2017-11-09 | 21 | 21 | 6249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019084 | S4292XA, S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 11092017 | 10182017 | 11082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6249 | 6249 | Approved | 22 | Revenue | RV |  |  |  | 1.0 |
| 10162017 | 2017-10-16T16:21:03+00:00 |  | 000100708-01 | Carolyn | Reynolds | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 11092017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 10142017 | 10182017 | Standard |  |  | 2017-10-14 | Contract/RUG: 17/PC1 (Per MDS) = $2,465.35 | 0 | 2017-10-18 |  | 2017-11-07 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017065 | M5116 | Intervertebral disc disorders w radiculopathy, lumbar region | ICD10 | 11092017 | 10142017 | 10182017 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 10272017 | 2017-10-27T15:24:50+00:00 |  | 000028662-01 | DONALD | BELL | GENESIS MEDICAL GRP LLC | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 11092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10262017 | 11082017 | Standard |  |  | 2017-10-26 | 17/RUA01= $3214.76 | 1 | 2017-11-08 |  | 2017-11-09 | 2017-11-09 | 13 | 14 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030008 | K5660, K5700, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 11092017 | 10262017 | 11082017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10312017 | 2017-10-31T13:10:27+00:00 |  | 000003068-01 | RUTH | JANISCH | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 11092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10282017 | 11032017 | Standard |  |  | 2017-10-28 | 17/RVA01=$3,586.28 | 0 | 2017-11-03 |  | 2017-11-09 | 2017-11-09 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031065 | I639, I69951 | Hemiplga fol unsp cerebvasc disease aff right dominant side | ICD10 | 11092017 | 10282017 | 11032017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 09152017 | 2017-09-15T10:33:20+00:00 |  | 000098836-01 | George | Claypool | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 11092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09122017 | 10052017 | Standard |  |  | 2017-09-12 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.00/DAY X 3 DAYS=$600.00 CARVE OUT VANCO PER INVOICE (ONCE MBR WAS PER DIEM)=$37.67 TOTAL PAYMENT=$6,943.86 | 0 | 2017-10-05 |  | 2017-11-09 | 2017-11-09 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915035 | R7881 | Bacteremia | ICD10 | 11092017 | 09122017 | 10052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 6943 |  | 24 | Revenue | RV |  |  |  | 3.0 |
