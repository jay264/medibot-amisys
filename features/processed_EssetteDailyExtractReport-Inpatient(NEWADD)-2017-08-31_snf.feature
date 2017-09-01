Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-31_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-31_SNF
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
| 08072017 | 2017-08-07T12:04:39+00:00 |  | 000007336-01 | ANNA | CLAYTOR | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 08312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08052017 | 08132017 | Standard |  |  | 2017-08-05 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-08-14 |  | 2017-08-28 |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807095 | Z96652 | Presence of left artificial knee joint | ICD10 | 08312017 | 08052017 | 08142017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 08112017 | 2017-08-11T15:18:02+00:00 |  | 000034189-01 | CHERYL | WHIRRETT | COPC CENTRAL OHIO PRIMAR | 901490 | ANURADHA | KESARI | 1740389352 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 08312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08092017 | 08092017 | Standard |  |  | 2017-08-09 | PER DIEM AMT OF $200.00 PER DAY X 1 DAY= $200.00 | 9 | 2017-08-10 |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811073 | N3000 | Acute cystitis without hematuria | ICD10 | 08312017 | 08092017 | 08102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 1 | Revenue | RV |  |  |  | 1.0 |
| 08082017 | 2017-08-08T09:11:46+00:00 |  | 000114054-01 | Laura | Darnell | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 08312017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 08042017 | 08172017 | Standard |  |  | 2017-08-04 | 17/RUC01=$6,049.81 | 32 | 2017-08-18 |  | 2017-08-29 | 2017-08-29 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808100 | G809, S728X2A | Oth fracture of left femur, init encntr for closed fracture | ICD10 | 08312017 | 08042017 | 08182017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08112017 | 2017-08-11T14:22:10+00:00 |  | 000067138-01 | Sue | Hyatt | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 08312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08082017 | 08142017 | Standard |  |  | 2017-08-08 | 17/RUA01=$3,214.76 | 0 | 2017-08-15 |  | 2017-08-30 | 2017-08-30 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811068 | C189, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 08312017 | 08082017 | 08152017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 08182017 | 2017-08-18T16:40:11+00:00 |  | 000004312-01 | ALMA | ROBINSON | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 08312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08142017 | 09212017 | Standard |  |  | 2017-08-14 | 17/RUB01=$5,813.99 | 0 | 2017-08-22 |  | 2017-08-30 | 2017-08-30 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821104 | C187, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 08312017 | 08142017 | 08222017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 39 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 08142017 | 2017-08-14T09:55:14+00:00 |  | 000093046-01 | Thomas | Gardner | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 08312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08102017 | 08222017 | Standard |  |  | 2017-08-10 | 17/RVB01=$5,411.86 | 0 | 2017-08-23 |  | 2017-08-30 | 2017-08-30 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814040 | I639, R55 | Syncope and collapse | ICD10 | 08312017 | 08102017 | 08232017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 08182017 | 2017-08-18T13:28:31+00:00 |  | 000020110-01 | CHARLIE | COLEMAN JR | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 08312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08162017 | 08232017 | Standard |  |  | 2017-08-16 | 17/RUB01=$5,813.99 | 0 | 2017-08-24 |  | 2017-08-29 | 2017-08-29 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821064 | I259, M25561, Q554, W19XXXA | Unspecified fall, initial encounter | ICD10 | 08312017 | 08162017 | 08242017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07182017 | 2017-07-18T11:47:07+00:00 |  | 000009860-01 | LESTER | YODER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 08312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07172017 | 08202017 | Standard |  |  | 2017-07-17 | PER DIEM RATE FOR VENT, $520.00/DAY X 35=$18,200.00 | 0 | 2017-08-21 |  | 2017-08-30 | 2017-08-30 | 0 | 0 | 18200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718119 | I63011 | Cerebral infarction due to thrombosis of r verteb art | ICD10 | 08312017 | 07172017 | 08212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 1 |  | 35 | Revenue | RV |  |  |  | 7.0 |
| 08082017 | 2017-08-08T09:14:56+00:00 |  | 000106016-01 | Michelle | Damon | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 08312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08042017 | 08192017 | Standard |  |  | 2017-08-04 | 17/RVB01=$5,411.86 | 11 | 2017-08-20 |  | 2017-08-29 | 2017-08-29 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808106 | G629, I10, I259 | Chronic ischemic heart disease, unspecified | ICD10 | 08312017 | 08042017 | 08202017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 08172017 | 2017-08-17T15:53:48+00:00 |  | 000026790-01 | JOANN | HITE | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 08312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08162017 | 08292017 | Standard |  |  | 2017-08-16 | Per MDS: 16/RUA01 = $3214.76 | 0 | 2017-08-30 |  | 2017-08-31 | 2017-08-31 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818044 | E119, I10, I639 | Cerebral infarction, unspecified | ICD10 | 08312017 | 08162017 | 08302017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08162017 | 2017-08-16T16:58:49+00:00 |  | 000076886-01 | Margaret | McNicol | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 08312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08142017 | 08172017 | Standard |  |  | 2017-08-14 | Per Diem: $250.00/day x 4 days = $1000.00 Daptomycin: (per Invoice) $264.42/dose x 4 doses = $1057.68 TOTAL PAYMENT = $2057.68 | 0 | 2017-08-18 |  | 2017-08-28 |  | 0 | 0 | 2057.68 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817019 | J189, J9600, L03115, T814XXD, Z7409 | Other reduced mobility | ICD10 | 08312017 | 08142017 | 08182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2057 | 2057 | Approved | 4 | Revenue | RV |  |  |  | 4.0 |
| 08222017 | 2017-08-22T10:21:40+00:00 |  | 000055707-01 | RONALD | MCKNIGHT | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 902185 | 1205823770 | SCIOTO RETIREMENT COMMUNITY | 1205823770 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 08312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08182017 | 08282017 | Standard |  |  | 2017-08-18 | Contract/RUG: 17/RUB  (Per MDS) = $5,813.99 | 0 | 2017-08-29 |  | 2017-08-31 | 2017-08-31 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822084 | I4891, I9751, M6281, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 08312017 | 08182017 | 08292017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 08252017 | 2017-08-25T08:45:03+00:00 |  | 000068593-01 | RITA | LUKASZEWSKI | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 08312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08232017 | 08292017 | Standard |  |  | 2017-08-23 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-08-30 |  | 2017-08-30 | 2017-08-30 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825030 | E6601, F4323, I10, M1990, Z96651 | Presence of right artificial knee joint | ICD10 | 08312017 | 08232017 | 08302017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 08022017 | 2017-08-02T11:21:59+00:00 |  | 000096169-01 | Paul | Brown | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 08312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07312017 | 08242017 | Standard |  |  | 2017-07-31 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $200.00/day x 5 days = $1000.00 TOTAL PAYMENT = $7049.81 | 0 | 2017-08-25 |  | 2017-08-31 | 2017-08-31 | 0 | 0 | 7049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802049 | N179 | Acute kidney failure, unspecified | ICD10 | 08312017 | 07312017 | 08252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7049 | 7049 | Approved | 25 | Revenue | RV |  |  |  | 5.0 |
| 08072017 | 2017-08-07T09:54:36+00:00 |  | 000088546-01 | Kathryn | Elliott | DUDNEY, JERALD | 935969 | JERALD | DUDNEY | 1770669871 | GOOD SHEPHERD VILLAGE | 920229 | 1396862314 | GOOD SHEPHERD VILLAGE | 1396862314 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GOOD SHEPHERD VILLAGE | 08312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08032017 | 08272017 | Standard |  |  | 2017-08-03 | Contract/RUG: 16/RUA  (Per MDS) = $3,214.76 | 0 | 2017-08-28 |  | 2017-08-16 | 2017-08-25 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807079 | M6281 | Muscle weakness (generalized) | ICD10 | 08312017 | 08032017 | 08282017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 08112017 | 2017-08-11T15:47:58+00:00 |  | 000086252-01 | Rodger | Martin | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 08312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08092017 | 08202017 | Standard |  |  | 2017-08-09 | Contract/RUG: 17/ RVA (Per MDS) = $3,586.28 | 0 | 2017-08-21 |  | 2017-08-31 | 2017-08-31 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811074 | A419 | Sepsis, unspecified organism | ICD10 | 08312017 | 08092017 | 08212017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 08152017 | 2017-08-15T11:28:30+00:00 |  | 000073519-01 | Jackie | Brewer | LANFAIR CTR FOR REHAB & | 939399 |  | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 08312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08122017 | 08252017 | Standard |  |  | 2017-08-12 | PEr MDS: 17/RUB01 = $5813.99 | 0 | 2017-08-26 |  | 2017-08-28 | 2017-08-31 | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815039 | G8194, I6930, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08312017 | 08122017 | 08262017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
