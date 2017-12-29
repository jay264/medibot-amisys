Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-26_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-26_SNF
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
| 12012017 | 2017-12-01T13:58:44+00:00 |  | 000115263-01 | Barbara | Johnston | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 12262017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11292017 | 12142017 | Standard |  |  | 2017-11-29 | 16/RUB01=$4,429.71 | 0 | 2017-12-14 |  | 2017-12-22 | 2017-12-11 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201068 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 12262017 | 11292017 | 12142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 11152017 | 2017-11-15T15:32:54+00:00 |  | 000015920-01 | ELZIE | FISH | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11132017 | 12032017 | Standard |  |  | 2017-11-13 | 17/RVC01=$6306.19 | 0 | 2017-12-03 |  | 2017-12-21 | 2017-12-21 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115086 | G9341 | Metabolic encephalopathy | ICD10 | 12262017 | 11132017 | 12032017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12072017 | 2017-12-07T14:24:12+00:00 |  | 000010999-01 | MILLARD | MEDLEY | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | SUMMITS TRACE HLTHCARE C | 908932 | 1588803985 | SUMMITS TRACE HEALTHCARE CENTER | 1588803985 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SUMMITS TRACE HEALTHCARE CENTER | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12052017 | 12192017 | Standard |  |  | 2017-12-05 | 16/RUB01=$4,429.71 | 63 | 2017-12-19 |  | 2017-12-22 |  | 14 | 77 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207060 | N390 | Urinary tract infection, site not specified | ICD10 | 12262017 | 12052017 | 12192017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12052017 | 2017-12-05T15:06:43+00:00 |  | 000014328-01 | HULDA | WILLIAMS | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12022017 | 12162017 | Standard |  |  | 2017-12-02 | 16/RUB01=$4,429.71 | 0 | 2017-12-16 |  | 2017-12-22 | 2017-12-13 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205096 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 12262017 | 12022017 | 12162017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 10172017 | 2017-10-17T13:19:43+00:00 |  | 000109615-01 | Karyn | Davis | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10122017 | 12152017 | Standard |  |  | 2017-10-12 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.00/DAY X 44 DAYS=$8,800.00 TOTAL PAYMENT=$15,106.19 | 0 | 2017-12-15 |  | 2017-12-21 |  | 64 | 64 | 15106.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018009 | N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 12262017 | 10122017 | 12152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 65 | Revenue | RV |  |  |  | 7.0 |
| 12182017 | 2017-12-18T14:54:00+00:00 |  | 000032021-01 | LOUIE | HONAKER | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12142017 | 12202017 | Standard |  |  | 2017-12-14 | 16/PC101=$2,465.35 | 0 | 2017-12-20 |  | 2017-12-22 | 2017-12-19 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218156 | G6289 | Other specified polyneuropathies | ICD10 | 12262017 | 12142017 | 12202017 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved Skilled | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 11162017 | 2017-11-16T12:50:42+00:00 |  | 000090945-01 | Karen | Worrell | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 12262017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11142017 | 12162017 | Standard |  |  | 2017-11-14 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X 12=$2,400.00 TOTAL PAYMENT=$7,800.86 | 0 | 2017-12-16 |  | 2017-12-21 |  | 32 | 32 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116080 | C787 | Secondary malig neoplasm of liver and intrahepatic bile duct | ICD10 | 12262017 | 11142017 | 12162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 33 | Revenue | RV |  |  |  | 5.0 |
| 12062017 | 2017-12-06T13:27:07+00:00 |  | 000116417-01 | Floyd | Parr | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 12262017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12012017 | 12212017 | Standard |  |  | 2017-12-01 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 28 | 2017-12-21 |  | 2017-12-22 | 2017-12-22 | 20 | 48 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206071 | I639 | Cerebral infarction, unspecified | ICD10 | 12262017 | 12012017 | 12212017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11162017 | 2017-11-16T15:32:21+00:00 |  | 000117233-01 | Philip | Foust | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 12262017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11142017 | 12212017 | Standard |  |  | 2017-11-14 | Contract/RUG: 17/RUC  (Per MDS) =$6,049.81 Per Diem: $250.00/day x 17 SNF Days = $4,250.00 Total Payment: $10,299.81 | 0 | 2017-12-21 |  | 2017-12-22 | 2017-12-22 | 37 | 37 | 10299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117022 | M6282 | Rhabdomyolysis | ICD10 | 12262017 | 11142017 | 12212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 38 | Revenue | RV |  |  |  | 7.0 |
| 12122017 | 2017-12-12T13:03:03+00:00 |  | 000074999-01 | Asbell | Bean | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | ARBORS AT SPRINGFIELD | 943322 | 1467850305 | ARBORS AT SPRINGFIELD | 1467850305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT SPRINGFIELD | 12262017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 12092017 | 12192017 | Standard |  |  | 2017-12-09 | Per Diem: $520.00/day x 10 SNF Days = $5,200.00 | 0 | 2017-12-19 |  |  |  | 10 | 10 | 5200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212064 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 12262017 | 12092017 | 12192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5200 | 5200 | Approved | 11 | Revenue | RV |  |  |  | 10.0 |
| 12062017 | 2017-12-06T14:59:18+00:00 |  | 000033486-01 | GEORGE | SYKES | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12052017 | 12222017 | Standard |  |  | 2017-12-05 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 43 | 2017-12-22 |  | 2017-12-22 | 2017-12-22 | 17 | 60 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206081 | S76119D | Strain of unsp quadriceps muscle, fascia and tendon, subs | ICD10 | 12262017 | 12052017 | 12222017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 12122017 | 2017-12-12T14:26:06+00:00 |  | 000007524-01 | NANCY | WENIG | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12112017 | 12222017 | Standard |  |  | 2017-12-11 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-12-22 |  | 2017-12-22 | 2017-12-22 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212079 | D649, E43, F17290, J439, J449, K219, K50913, M6281, S72002D, W19XXXD | Unspecified fall, subsequent encounter | ICD10 | 12262017 | 12112017 | 12222017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 12112017 | 2017-12-11T12:46:01+00:00 |  | 000043355-01 | DOW | CISCO JR | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12102017 | 12182017 | Standard |  |  | 2017-12-10 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-12-18 |  | 2017-12-19 | 2017-12-19 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211110 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 12262017 | 12102017 | 12182017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 11172017 | 2017-11-17T09:46:51+00:00 |  | 000060061-01 | FRANKIE | EDGERTON | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11142017 | 12062017 | Standard |  |  | 2017-11-14 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X 2=$400.00 TOTAL PAYMENT=$5,811.86 | 0 | 2017-12-06 |  | 2017-12-21 | 2017-12-21 | 22 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117049 | E876 | Hypokalemia | ICD10 | 12262017 | 11142017 | 12062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5811 | 5811 | Approved Skilled | 23 | Revenue | RV |  |  |  | 2.0 |
| 11302017 | 2017-11-30T13:17:18+00:00 |  | 000037348-01 | DAVID | HEISERMAN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11272017 | 12112017 | Standard |  |  | 2017-11-27 | 17/RVB01=$5,411.86 | 0 | 2017-12-11 |  | 2017-12-21 | 2017-12-21 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130106 | I4891 | Unspecified atrial fibrillation | ICD10 | 12262017 | 11272017 | 12112017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12072017 | 2017-12-07T10:03:42+00:00 |  | 000109684-01 | Evelyn | Jesse | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ZANESVILLE HEALTH AND REHABILITATION | 12262017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12052017 | 12232017 | Standard |  |  | 2017-12-05 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-12-23 |  | 2017-12-26 | 2017-12-26 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207033 | S52502D | Unsp fx the low end left rad, subs for clos fx w routn heal | ICD10 | 12262017 | 12052017 | 12232017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 12052017 | 2017-12-05T12:37:15+00:00 |  | 000066535-01 | BETTY | CASTO | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 12242017 | Standard |  |  | 2017-12-01 | 17/RUB01=$5,813.99 | 0 | 2017-12-24 |  | 2017-12-26 | 2017-12-26 | 20 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205079 | S32810A | Multiple fx of pelvis w stable disrupt of pelvic ring, init | ICD10 | 12262017 | 12012017 | 12242017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 12142017 | 2017-12-14T11:59:12+00:00 |  | 000002409-01 | PATRICIA | ALBERT | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 12262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12122017 | 12202017 | Standard |  |  | 2017-12-12 | 17/RUC01=$6,049.81 | 0 | 2017-12-20 |  | 2017-12-26 | 2017-12-26 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214059 | D638, E669, F0391, M1711, M25551, M6281, R262, R488, Z9181 | History of falling | ICD10 | 12262017 | 12122017 | 12202017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
