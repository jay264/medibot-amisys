Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-21_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-21_SNF
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
| 10312017 | 2017-10-31T10:33:46+00:00 |  | 000110954-01 | Ruth | Mault | L M GUIRNALDA MD LLC | 939630 | LEONARDO M | GUIRNALDA | 1659452498 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 11212017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10282017 | 11172017 | Standard |  |  | 2017-10-28 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-11-17 |  | 2017-11-20 | 2017-11-20 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031054 | M6281, N179 | Acute kidney failure, unspecified | ICD10 | 11212017 | 10282017 | 11172017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10232017 | 2017-10-23T12:57:42+00:00 |  | 000087792-01 | Candace | Raisor | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 11212017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10222017 | 11082017 | Standard |  |  | 2017-10-22 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-11-08 |  | 2017-11-17 | 2017-11-17 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023130 | E871, J90, N179, R0602 | Shortness of breath | ICD10 | 11212017 | 10222017 | 11082017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 09262017 | 2017-09-26T16:33:15+00:00 |  | 000106278-01 | Donald | Brewer | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 11212017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 09272017 | 11172017 | Standard |  |  | 2017-09-27 | 17/RVC01= $6306.19 27 DAYS @ $250.00= $6750.00 4 DAYS @ $200.00= $800.00 TOTAL: $13856.19 | 0 | 2017-11-17 |  | 2017-11-20 | 2017-11-20 | 51 | 51 | 13856.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927003 | I639 | Cerebral infarction, unspecified | ICD10 | 11212017 | 09272017 | 11172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 52 | Revenue | RV |  |  |  | 9.0 |
| 11082017 | 2017-11-08T13:20:14+00:00 |  | 000014316-01 | EDWIN | HARPER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 11212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11062017 | 11132017 | Standard |  |  | 2017-11-06 | 17/RUB01= $5813.99 | 0 | 2017-11-13 |  | 2017-11-20 | 2017-11-20 | 7 | 7 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108047 | J189 | Pneumonia, unspecified organism | ICD10 | 11212017 | 11062017 | 11132017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10242017 | 2017-10-24T15:38:34+00:00 |  | 000069773-01 | RALPH | MCALLISTER JR | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 11212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10202017 | 11142017 | Standard |  |  | 2017-10-20 | 17/RVC01= $6306.19 5 DAYS @ $200.00= $1000.00 TOTAL: $7306.19 | 9 | 2017-11-14 |  | 2017-11-20 | 2017-11-20 | 25 | 34 | 7306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024087 | N390 | Urinary tract infection, site not specified | ICD10 | 11212017 | 10202017 | 11142017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 11032017 | 2017-11-03T10:29:46+00:00 |  | 000070896-01 | Sandra | Shough | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 11212017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11012017 | 11182017 | Standard |  |  | 2017-11-01 | 17/RVC01= $6306.19 | 0 | 2017-11-18 |  | 2017-11-20 | 2017-11-20 | 17 | 17 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103050 | N390 | Urinary tract infection, site not specified | ICD10 | 11212017 | 11012017 | 11182017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 11062017 | 2017-11-06T13:11:50+00:00 |  | 000088143-01 | Reta | Friend | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 11212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11022017 | 11172017 | Standard |  |  | 2017-11-02 | 17/RVB01= $5411.86 | 0 | 2017-11-17 |  | 2017-11-20 | 2017-11-20 | 15 | 15 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106109 | I639 | Cerebral infarction, unspecified | ICD10 | 11212017 | 11022017 | 11172017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 11022017 | 2017-11-02T12:48:26+00:00 |  | 000078724-01 | Joan | Rech | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 11212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 10202017 | 11152017 | Standard |  |  | 2017-10-20 | 17/RVC01= $6306.19 | 0 | 2017-11-15 |  | 2017-11-17 | 2017-11-17 | 23 | 23 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102045 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11212017 | 10202017 | 11152017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 27 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 10312017 | 2017-10-31T08:40:55+00:00 |  | 000005637-01 | FLO ANN | CLARK | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 11212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10282017 | 11172017 | Standard |  |  | 2017-10-28 | Per MDS: 17/RVB01 = $5144.86 | 0 | 2017-11-17 |  | 2017-11-20 | 2017-11-20 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031038 | J9383, S2232XD, S270XXD | Traumatic pneumothorax, subsequent encounter | ICD10 | 11212017 | 10282017 | 11172017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10262017 | 2017-10-26T15:51:32+00:00 |  | 000020776-01 | JAYNE | DYE | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 11212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10252017 | 11182017 | Standard |  |  | 2017-10-25 | PER MDS: 16/RUB01 = $4429.71 | 18 | 2017-11-18 | 2017-11-16 | 2017-11-20 | 2017-11-20 | 24 | 42 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027007 | E039, E119, I10, J449, M4807, M4808, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 11212017 | 10252017 | 11182017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 10052017 | 2017-10-05T10:28:21+00:00 |  | 000094277-01 | Patricia | Mckinney | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 11212017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10032017 | 11192017 | Standard |  |  | 2017-10-03 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 27 days = $5400.00 TOTAL PAYMENT = $11,706.19 | 0 | 2017-11-19 | 2017-11-21 | 2017-11-21 | 2017-11-21 | 47 | 47 | 11706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005040 | I5031, N390, Z1621 | Resistance to vancomycin | ICD10 | 11212017 | 10032017 | 11192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 48 | Revenue | RV |  |  |  | 5.0 |
| 11062017 | 2017-11-06T14:10:56+00:00 |  | 000027274-01 | ROY | STONE JR | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 11212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11032017 | 11172017 | Standard |  |  | 2017-11-03 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-11-17 |  | 2017-11-21 | 2017-11-21 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106126 | Z96651 | Presence of right artificial knee joint | ICD10 | 11212017 | 11032017 | 11172017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11132017 | 2017-11-13T14:59:59+00:00 |  | 000077003-01 | Diane | Saxton | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 11212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11092017 | 11132017 | Standard |  |  | 2017-11-09 | Per MDS: 17/CA101 = $2698.63 | 0 | 2017-11-13 |  | 2017-11-15 | 2017-11-13 | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113106 | A419, C9000 | Multiple myeloma not having achieved remission | ICD10 | 11212017 | 11092017 | 11132017 | CA101 | CLINICALLY COMPLEX , ADL INDEX 0-1/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 11062017 | 2017-11-06T10:53:31+00:00 |  | 000034905-01 | BARBARA | FREEMAN | TIMOTHY J BRIGHT DO INC | 935342 | TIMOTHY J | BRIGHT | 1760405393 | CENTERBURG POINTE | 915833 | 1033410295 | CENTERBURG POINTE | 1033410295 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG POINTE | 11212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11032017 | 11072017 | Standard |  |  | 2017-11-03 | 17/HD101= $3681.73 | 0 | 2017-11-07 |  | 2017-11-20 | 2017-11-20 | 4 | 4 | 3681.73 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106096 | I469 | Cardiac arrest, cause unspecified | ICD10 | 11212017 | 11032017 | 11072017 | HD101 | SPECIAL CARE HIGH , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 10302017 | 2017-10-30T14:50:45+00:00 |  | 000112646-01 | LINDA | NEWMAN | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 11212017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10222017 | 10302017 | Standard |  |  | 2017-10-22 | Contract/RUG: 16/RHA (Per MDS) = $2,045.15 | 0 | 2017-10-30 |  | 2017-11-21 | 2017-11-20 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031014 | Z96652 | Presence of left artificial knee joint | ICD10 | 11212017 | 10222017 | 10302017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 10312017 | 2017-10-31T09:56:23+00:00 |  | 000025048-01 | FRANCES | HAMILTON | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | GUARDIAN ELDER CARE OF COLS | 923938 | 1386994671 | GUARDIAN ELDER CARE OF COLS | 1386994671 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GUARDIAN ELDER CARE OF COLS | 11212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10282017 | 11182017 | Standard |  |  | 2017-10-28 | 17/RUA01=$3,214.76 | 0 | 2017-11-18 |  | 2017-11-21 | 2017-11-21 | 20 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031039 | R600 | Localized edema | ICD10 | 11212017 | 10282017 | 11182017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
