Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-11_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-11_SNF
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
| 12132017 | 2017-12-13T16:19:55+00:00 |  | 000057441-01 | TERRY | PETERS | OSU SURGERY LLC | 937397 | RALPH R | ROMAKER | 1952380727 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12122017 | 01082018 | Standard |  |  | 2017-12-12 | Per MDS: 16/RUC01 = $7333.11 Per DIem: $200.00/day x 6 days = $1200.00 TOTAL PAYMENT = $8533.11 | 20 | 2018-01-08 |  | 2018-01-09 | 2018-01-09 | 26 | 46 | 8533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214020 | E119, I10, I330, I509, M5416, N186, N189, R52, Z992 | Dependence on renal dialysis | ICD10 | 01112018 | 12122017 | 01082018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 28 | Revenue | RV |  |  |  | 11.0 |
| 12042017 | 2017-12-04T08:40:29+00:00 |  | 000055327-01 | WALTER | DIXON | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12202017 | Standard |  |  | 2017-11-30 | PER DIEM RATE OF $250.00/DAY X 6 DAYS=$1,500.00 PER DIEM RATE OF $200.00/DAY X 14 DAYS=$2,800.00 CARVE OUT FOR WOUND VAC PER INVOICE=$583.58 TOTAL PAYMENT TO FACILITY=$4,883.58 | 0 | 2017-12-20 |  | 2017-12-28 | 2017-12-28 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204098 | K659, R6521 | Severe sepsis with septic shock | ICD10 | 01112018 | 11302017 | 12202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4883 | 4883 | Approved Skilled | 21 | Revenue | RV |  |  |  | 6.0 |
| 12202017 | 2017-12-20T10:12:37+00:00 |  | 000089705-01 | Jack | Reynard Jr | DUDNEY, JERALD | 935969 | JERALD | DUDNEY | 1770669871 | GOOD SHEPHERD VILLAGE | 920229 | 1396862314 | GOOD SHEPHERD VILLAGE | 1396862314 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GOOD SHEPHERD VILLAGE | 01112018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12182017 | 12232017 | Standard |  |  | 2017-12-18 | Contract/RUG: 16/CC1 (Per MDS) = $3,231.84 | 0 | 2017-12-23 |  | 2018-01-10 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220060 | I213, M6281 | Muscle weakness (generalized) | ICD10 | 01112018 | 12182017 | 12232017 | CC101 | CLINICALLY COMPLEX , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 01042018 | 2018-01-04T14:59:28+00:00 |  | 000091287-01 | Edward | Ausborn | CENTRAL OH HSPISTS INC | 937256 | LYLE T | OLSON | 1053373217 | COUNTRY CLUB RETIREMENT CENTER V LLC | 930468 | 1881021830 | COUNTRY CLUB RETIREMENT CENTER V LLC | 1881021830 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY CLUB RETIREMENT CENTER V LLC | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01032018 | 01052018 | Standard |  |  | 2018-01-03 | 2 NONSKILLED DAYS @ $200.00 | 0 | 2018-01-05 |  |  |  | 2 | 2 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104104 | R55 | Syncope and collapse | ICD10 | 01112018 | 01032018 | 01052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 12292017 | 2017-12-29T15:23:31+00:00 |  | 000118368-01 | Paul | Myers Jr | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12282017 | 01052018 | Standard |  |  | 2017-12-28 | Contract/RUG: 16/RUB (Per MDS) = 4,429.71 | 0 | 2018-01-05 |  | 2018-01-10 | 2018-01-10 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229082 | M170, Z471, Z96653 | Presence of artificial knee joint, bilateral | ICD10 | 01112018 | 12282017 | 01052018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 11032017 | 2017-11-03T12:38:27+00:00 |  | 000005588-01 | PAUL | STOVER | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11012017 | 12162017 | Standard |  |  | 2017-11-01 | 16/RUB01= $4429.71 25 DAYS @ $250.00= $6250.00 TOTAL: $10679.71 | 45 | 2017-12-16 |  | 2018-01-10 | 2018-01-10 | 45 | 90 | 10679.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106019 | K7460, R188 | Other ascites | ICD10 | 01112018 | 11012017 | 12162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 4.0 |
| 01082018 | 2018-01-08T11:23:55+00:00 |  | 000115574-01 | Carol | Mazzaferri | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 01112018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 01032018 | 01042018 | Standard |  |  | 2018-01-03 | Per Diem: $200.00/day x 1 SNF Day = $200.00 | 0 | 2018-01-04 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108105 | S82841D | Displ bimalleol fx r low leg, subs for clos fx w routn heal | ICD10 | 01112018 | 01032018 | 01042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 11132017 | 2017-11-13T15:48:16+00:00 |  | 000080711-01 | Lana | Mizer | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11102017 | 12092017 | Standard |  |  | 2017-11-10 | 16/RUA01= $3214.76 4 DAYS @ $250.00= $1000.00 5 DAYS @ $200.00= $1000.00 TOTAL: $5214.76 | 0 | 2017-12-09 |  | 2017-12-06 | 2017-12-07 | 29 | 29 | 5214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114011 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 01112018 | 11102017 | 12292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5214 | 5214 | Approved | 30 | Revenue | RV |  |  |  | 2.0 |
| 11132017 | 2017-11-13T08:02:21+00:00 |  | 000016470-01 | MARY | EMMELHAINZ | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11102017 | 12282017 | Standard |  |  | 2017-11-10 | PER DIEM RATE OF $200.00/DAY=$8,200.00 | 47 | 2017-12-28 |  | 2018-01-10 | 2018-01-10 | 41 | 88 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113034 | G939, N390 | Urinary tract infection, site not specified | ICD10 | 01112018 | 11102017 | 12282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8200 | 8200 | Approved Skilled | 49 | Revenue | RV |  |  |  | 4.0 |
| 11202017 | 2017-11-20T15:00:42+00:00 |  | 000048878-01 | MARJORIE | MALDONADO | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11152017 | 12022017 | Standard |  |  | 2017-11-15 | 16/RVA01= $2689.71 | 0 | 2017-12-02 |  | 2018-01-11 | 2017-12-04 | 17 | 17 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120127 | Z96651 | Presence of right artificial knee joint | ICD10 | 01112018 | 11152017 | 12022017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 12052017 | 2017-12-05T11:56:09+00:00 |  | 000043095-01 | YVONNE | GOOD | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 01112018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 11292017 | 12112017 | Standard |  |  | 2017-11-29 | 16/RUA01= $3214.76 | 0 | 2017-12-11 |  | 2018-01-11 | 2018-01-11 | 12 | 12 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205075 | I4891, S32010D | Wedge comprsn fx first lum vert, subs for fx w routn heal | ICD10 | 01112018 | 11292017 | 12112017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01082018 | 2018-01-08T12:02:16+00:00 |  | 000109913-01 | Jacquelyn R | Redick | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 01112018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 01052018 | 01102018 | Standard |  |  | 2018-01-05 | ADMISSION DENIAL: Non skilled Per Diem: $200.00/day x 5 days = $1000.00 TOTAL PAYMENT = $1000.00 | 0 | 2018-01-10 |  |  |  | 5 | 0 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A180108114 | Z4733 | Aftercare following explantation of knee joint prosthesis | ICD10 | 01112018 | 01052018 | 01102018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 6 | Revenue | RV |  |  |  | 5.0 |
| 12012017 | 2017-12-01T09:59:43+00:00 |  | 000037144-01 | MARILYN | BOWEN | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11292017 | 01042018 | Standard |  |  | 2017-11-29 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $200.00/day x 16 days = $3200.00 TOTAL PAYMENT = $9249.81 | 0 | 2018-01-04 |  | 2017-12-06 |  | 36 | 36 | 9249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201027 | E119, I10, I629, I82409, T82212A | Displacement of coronary artery bypass graft, init encntr | ICD10 | 01112018 | 11292017 | 01042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9249 | 9249 | Approved | 37 | Revenue | RV |  |  |  | 6.0 |
| 12052017 | 2017-12-05T11:59:53+00:00 |  | 000048863-01 | MARGIE | MCINTOSH | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12172017 | Standard |  |  | 2017-11-30 | 16/RVC01= $3539.19 | 0 | 2017-12-17 |  | 2018-01-11 |  | 17 | 17 | 3539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205077 | R4182, Z9181 | History of falling | ICD10 | 01112018 | 11302017 | 12172017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 12292017 | 2017-12-29T09:08:07+00:00 |  | 000045566-01 | LIONEL | KING | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12272017 | 01102018 | Standard |  |  | 2017-12-27 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2018-01-10 |  | 2018-01-04 | 2018-01-10 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229019 | I4891, M6282, R296, S2249XD | Multiple fx of ribs, unsp side, subs for fx w routn heal | ICD10 | 01112018 | 12272017 | 01102018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12212017 | 2017-12-21T09:33:41+00:00 |  | 000081323-01 | Ruth | Cashdollar | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | GREYSTONE HEALTH & REHABILITATION CE | 942955 | 1326438128 | GREYSTONE HEALTH & REHABILITATION CE | 1326438128 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREYSTONE HEALTH & REHABILITATION CE | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12202017 | 01102018 | Standard |  |  | 2017-12-20 | 16/RHB01= $2690.49 | 42 | 2018-01-10 |  | 2018-01-11 | 2018-01-11 | 21 | 63 | 2690.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221045 | J449, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 01112018 | 12202017 | 01102018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 12212017 | 2017-12-21T12:52:49+00:00 |  | 000076808-01 | Elmer | Blankenship | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 01112018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12182017 | 12302017 | Standard |  |  | 2017-12-18 | 16/RHB01= $2690.49 | 0 | 2017-12-30 |  | 2018-01-11 | 2018-01-11 | 12 | 12 | 2690.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221065 | G92, M6250, N179 | Acute kidney failure, unspecified | ICD10 | 01112018 | 12182017 | 12302017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 12262017 | 2017-12-26T14:31:43+00:00 |  | 000087043-01 | Douglas | Jackson | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 01112018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12222017 | 01032018 | Standard |  |  | 2017-12-22 | Contract/RUG: 16/RUB Per MDS = $4,429.71 | 9 | 2018-01-03 |  | 2018-01-10 | 2018-01-10 | 11 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226168 | T84020D | Dislocation of internal right hip prosthesis, subs encntr | ICD10 | 01112018 | 12222017 | 01032018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 12042017 | 2017-12-04T15:05:16+00:00 |  | 000093268-01 | Sylvia | Christy | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 01112018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12112017 | Standard |  |  | 2017-11-30 | Per Diem: $200.00/day x 11 days = $2200.00 IV Vancomycin (per invoice): $543.15 TOTAL PAYMENT: $2743.15 | 0 | 2017-12-11 |  | 2018-01-11 | 2018-01-11 | 11 | 11 | 2743.15 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204160 | A419, E119, I82621, I890, L03113 | Cellulitis of right upper limb | ICD10 | 01112018 | 11302017 | 12112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2743 | 2743 | Approved | 12 | Revenue | RV |  |  |  | 11.0 |
