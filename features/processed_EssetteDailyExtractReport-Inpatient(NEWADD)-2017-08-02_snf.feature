Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-02_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-02_SNF
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
	And the test pauses for "3" seconds
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
| 07242017 | 2017-07-24T12:44:18+00:00 |  | 000042942-01 | Lisa | Lorenz | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 08022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08022017 | 08092017 | Standard |  |  | 2017-07-21 | 16/LC101=$3,048.55 | 0 | 2017-07-25 |  | 2017-07-31 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724086 | R531 | Weakness | ICD10 | 08022017 | 07212017 | 07252017 | LC101 | SPECIAL CARE LOW , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 07132017 | 2017-07-13T12:42:36+00:00 |  | 000022634-01 | Carole | Patmiou | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 08022017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07102017 | 07212017 | Standard |  |  | 2017-07-10 | 17/RUC01=$6,049.81 | 0 | 2017-07-21 |  | 2017-08-25 | 2017-08-25 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713053 | E871, G9341, M4800, N390 | Urinary tract infection, site not specified | ICD10 | 08022017 | 07102017 | 07212017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06192017 | 2017-06-19T10:42:23+00:00 |  | 000044837-01 | RICHARD | MILLS | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 08022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06172017 | 07132017 | Standard |  |  | 2017-06-17 | PER DIEM OF $200.00/DAY X 21 DAYS=$4,200.00 CARVE OUT FOR WOUND VAC PER INVOICE=$1,451.22 TOTAL PAYMENT=$5,651.22 | 0 | 2017-07-13 |  | 2017-07-25 | 2017-07-25 | 21 | 21 | 5651.22 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619081 | I739, Z89619 | Acquired absence of unspecified leg above knee | ICD10 | 08022017 | 06172017 | 07132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5651 | 5651 | Approved Skilled | 27 | Revenue | RV |  |  |  | 21.0 |
| 07212017 | 2017-07-21T15:12:39+00:00 |  | 000013848-01 | MARGARET | KRAUSS | COPC CENTRAL OHIO PRIMAR | 901490 | ANURADHA | KESARI | 1740389352 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 08022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07202017 | 07272017 | Standard |  |  | 2017-07-20 | 17/RVB01=$5,411.86 | 0 | 2017-07-27 |  | 2017-07-31 | 2017-07-31 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721067 | K2210 | Ulcer of esophagus without bleeding | ICD10 | 08022017 | 07202017 | 07272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 07252017 | 2017-07-25T09:58:11+00:00 |  | 000079231-01 | Ricky | Reed | INPATIENT CNSLT OF OH IN | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF MIAMISBURG OH LLC | 905914 | 1184666406 | HEARTLAND OF MIAMISBURG OH LLC | 1184666406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MIAMISBURG OH LLC | 08022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07212017 | 07272017 | Standard |  |  | 2017-07-21 | Contract/RUG: 17/RVA (Per MDS ) = $3,586.28 | 0 | 2017-07-28 |  | 2017-08-01 | 2017-08-01 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725034 | M549 | Dorsalgia, unspecified | ICD10 | 08022017 | 07212017 | 07282017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 07242017 | 2017-07-24T11:20:13+00:00 |  | 000075521-01 | Dolores | Klontz | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 08022017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 07202017 | 07312017 | Standard |  |  | 2017-07-20 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-08-01 |  | 2017-08-01 | 2017-08-01 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724064 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 08022017 | 07202017 | 08012017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 07202017 | 2017-07-20T08:43:01+00:00 |  | 000082467-01 | John | Rowley | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 08022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07192017 | 07242017 | Standard |  |  | 2017-07-19 | 17/ES101=$4,881.45 | 1 | 2017-07-24 |  | 2017-08-02 | 2017-08-02 | 5 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724012 | R296 | Repeated falls | ICD10 | 08022017 | 07192017 | 07242017 | ES101 | EXTENSIVE SERVICES , ADL INDEX 2-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved Skilled | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 07132017 | 2017-07-13T18:07:56+00:00 |  | 000041142-01 | BEVERLY | YOUNKIN | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 08022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07112017 | 07182017 | Standard |  |  | 2017-07-11 | 17/RVA01=$3,586.28 | 0 | 2017-07-18 |  | 2017-07-31 | 2017-07-31 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714004 | R569 | Unspecified convulsions | ICD10 | 08022017 | 07112017 | 07182017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 06302017 | 2017-06-30T12:59:49+00:00 |  | 000081460-01 | William | Goodpaster | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 08022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06282017 | 07082017 | Standard |  |  | 2017-06-28 | NON SKILLED RATE OF $200.00/DAY X 10 DAYS=$2,000.00 | 0 | 2017-07-08 |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630048 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08022017 | 06282017 | 07082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2000 | 2000 | Approved Skilled | 11 | Revenue | RV |  |  |  | 10.0 |
| 07142017 | 2017-07-14T15:37:04+00:00 |  | 000037685-01 | BERYL | SPANGLER | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 08022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07132017 | 07212017 | Standard |  |  | 2017-07-13 | 16/RUC01=$7,333.11 | 0 | 2017-07-21 |  | 2017-07-31 | 2017-07-31 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714074 | Z471, Z96651 | Presence of right artificial knee joint | ICD10 | 08022017 | 07132017 | 07212017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07132017 | 2017-07-13T16:51:19+00:00 |  | 000074555-01 | Irma | Stewart | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 08022017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07112017 | 07272017 | Standard |  |  | 2017-07-11 | 16/RVB01=$3350.20 | 0 | 2017-07-28 |  | 2017-08-02 | 2017-08-02 | 17 | 17 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714003 | N390, R531 | Weakness | ICD10 | 08022017 | 07112017 | 07282017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 07202017 | 2017-07-20T08:12:54+00:00 |  | 000096772-01 | John | Shivers | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 08022017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07182017 | 07302017 | Standard |  |  | 2017-07-18 | 17/RVB01=$5411.86 | 0 | 2017-07-31 |  | 2017-08-01 | 2017-08-01 | 13 | 13 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720034 | I82413 | Acute embolism and thrombosis of femoral vein, bilateral | ICD10 | 08022017 | 07182017 | 07312017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06262017 | 2017-06-26T15:28:18+00:00 |  | 000043637-01 | WENDLE | SMITH | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 08022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08022017 | 08092017 | Standard |  |  | 2017-06-22 | PER DIEM RATE OF $200.00/DAY X 1 DAY | 0 | 2017-06-23 |  |  |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626130 | J189 | Pneumonia, unspecified organism | ICD10 | 08022017 | 06222017 | 06232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 8 | Revenue | RV |  |  |  | 1.0 |
