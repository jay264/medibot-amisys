Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-27_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-27_SNF
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
| 04262017 | 2017-04-26T14:42:06+00:00 |  | 000049489-01 | SANDRA | STOTTLEMIRE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 06272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06272017 | 07042017 | Standard |  |  | 2017-04-25 | 16/RUB01=$4,429.71 PER DIEM RATE OF $250.00/DAY X 18 DAYS=4,500.00 TOTAL PAYMENT TO FACILITY=$8,929.71 | 0 | 2017-06-06 |  | 2017-06-07 | 2017-06-07 | 38 | 38 | 8929.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427038 | R531 | Weakness | ICD10 | 06272017 | 04252017 | 06062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8929 | 8929 | Approved Skilled | 8 | Revenue | RV |  |  |  | 1.0 |
| 05122017 | 2017-05-12T11:00:19+00:00 |  | 000013478-01 | MARLENE | MILLER | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 06272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06272017 | 07042017 | Standard |  |  | 2017-05-10 | 17/RVB01=5,411.86 PER DIEM RATE OF $200.00/DAY X 6 DAYS=$1,200.00 TOTAL PAYMENT TO FACILITY=$6,611.86 | 0 | 2017-06-05 |  | 2017-05-26 | 2017-06-09 | 26 | 26 | 6611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512054 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 06272017 | 05102017 | 06052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6611 | 6611 | Approved Skilled | 8 | Revenue | RV |  |  |  | 7.0 |
| 05232017 | 2017-05-23T14:02:58+00:00 |  | 000045622-01 | BETTY | SKEENS | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 06272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05212017 | 06182017 | Standard |  |  | 2017-05-21 | Per MDS: 16/RUL01 = $5317.57 Per DIem: $250.00/day x 4 days = $1000.00 Per Diem: $200.00/day x 5 days = $800.00 TOTAL PAYMENT = $7117.57 | 0 | 2017-06-19 |  | 2017-06-13 | 2017-06-27 | 29 | 29 | 7117.57 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523076 | S6291XA, S72001A, Z9181 | History of falling | ICD10 | 06272017 | 05212017 | 06192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7117 | 7117 | Approved | 29 | Revenue | RV |  |  |  | 9.0 |
| 05262017 | 2017-05-26T10:47:19+00:00 |  | 000103955-01 | Rita | Farley | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 06272017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05242017 | 06152017 | Standard |  |  | 2017-05-24 | 17/RVC01=$6306.19 | 0 | 2017-06-16 |  | 2017-06-21 | 2017-06-21 | 19 | 19 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526038 | D099 | Carcinoma in situ, unspecified | ICD10 | 06272017 | 05242017 | 06162017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 05312017 | 2017-05-31T10:59:12+00:00 |  | 000059804-01 | MARY | LEACH | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | LINCOLN PARK MANOR | 902370 | 1346248804 | LINCOLN PARK MANOR | 1346248804 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LINCOLN PARK MANOR | 06272017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05312017 | 06162017 | Standard |  |  | 2017-05-31 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-06-17 |  | 2017-06-26 | 2017-06-26 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531066 | K922, R110 | Nausea | ICD10 | 06272017 | 05312017 | 06172017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 05312017 | 2017-05-31T13:09:45+00:00 |  | 000106054-01 | Linda | Thompson | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 06272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05302017 | 06112017 | Standard |  |  | 2017-04-30 | 16/RHC01=$3133.29 | 0 | 2017-06-12 |  | 2017-06-08 |  | 13 | 13 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531078 | E162, G9340 | Encephalopathy, unspecified | ICD10 | 06272017 | 05302017 | 06122017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06012017 | 2017-06-01T11:39:56+00:00 |  | 000084220-01 | Betty | George | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 06272017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05302017 | 06152017 | Standard |  |  | 2017-05-30 | 17/RUB01=$5813.99 | 14 | 2017-06-16 |  | 2017-06-16 | 2017-06-16 | 17 | 31 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601066 | N390 | Urinary tract infection, site not specified | ICD10 | 06272017 | 05302017 | 06162017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 06012017 | 2017-06-01T11:56:48+00:00 |  | 000111065-01 | Joseph | Sawyer | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 06272017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05302017 | 06182017 | Standard |  |  | 2017-05-30 | 16/rub01=$4429.71 | 0 | 2017-06-19 |  | 2017-06-22 | 2017-06-22 | 20 | 20 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601068 | J439, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06272017 | 05302017 | 06192017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06022017 | 2017-06-02T10:42:51+00:00 |  | 000081646-01 | Jodi | Cooperrider | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 06272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06012017 | 06152017 | Standard |  |  | 2017-06-01 | 16/RUC01=$7333.11 | 1 | 2017-06-16 |  | 2017-06-19 | 2017-06-19 | 15 | 16 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602056 | I959, Z89511 | Acquired absence of right leg below knee | ICD10 | 06272017 | 06012017 | 06162017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06052017 | 2017-06-05T10:14:26+00:00 |  | 000101930-01 | Claudia | Yates | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 06272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06012017 | 06042017 | Standard |  |  | 2017-06-01 | 4 DAYS @ $200.00= $800.00 | 0 | 2017-06-05 |  | 2017-06-19 | 2017-06-19 | 4 | 4 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605096 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 06272017 | 06012017 | 06052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 4 | Revenue | RV |  |  |  | 4.0 |
| 06052017 | 2017-06-05T17:37:05+00:00 |  | 000014161-01 | FRANK | GRIFFIN | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 06272017 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 06022017 | 06152017 | Standard |  |  | 2017-06-02 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-06-16 |  | 2017-06-25 | 2017-06-25 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606037 | J189, J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 06272017 | 06022017 | 06162017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 06052017 | 2017-06-05T18:27:38+00:00 |  | 000108616-01 | Janice | Schultheis | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | MARIETTA REHABILITATION AND NURSING | 931538 | 1184730913 | MARIETTA REHABILITATION AND NURSING | 1184730913 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MARIETTA REHABILITATION AND NURSING | 06272017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 06022017 | 06212017 | Standard |  |  | 2017-06-02 | 17/RVA01=$3586.28 | 0 | 2017-06-22 |  | 2017-06-23 |  | 20 | 20 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606043 | M4806 | Spinal stenosis, lumbar region | ICD10 | 06272017 | 06022017 | 06222017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06072017 | 2017-06-07T15:55:45+00:00 |  | 000078372-01 | Betty | Tilton | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 06272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 06062017 | 06132017 | Standard |  |  | 2017-06-06 | 17/RUB01=$5813.99 | 0 | 2017-06-14 |  | 2017-06-21 |  | 8 | 8 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607084 | R296, S329XXA | Fracture of unsp parts of lumbosacral spine and pelvis, init | ICD10 | 06272017 | 06062017 | 06142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06072017 | 2017-06-07T16:29:05+00:00 |  | 000115352-01 | Carol | Chaike | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 06272017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 06052017 | 06172017 | Standard |  |  | 2017-06-05 | Contract/RUG: 17/RUA (Per MDS) =$3,214.76 | 0 | 2017-06-18 |  | 2017-06-25 | 2017-06-25 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608011 | N390 | Urinary tract infection, site not specified | ICD10 | 06272017 | 06052017 | 06182017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06082017 | 2017-06-08T12:52:02+00:00 |  | 000069464-01 | LINDA | PARSLEY | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 06272017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06272017 | 07042017 | Standard |  |  | 2017-06-07 | RUB01=$5,813.99 | 11 | 2017-06-18 |  | 2017-06-20 | 2017-06-20 | 11 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608056 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06272017 | 06072017 | 06182017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06082017 | 2017-06-08T16:12:04+00:00 |  | 000080333-01 | Tonya | Tallent | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 06272017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06062017 | 06122017 | Standard |  |  | 2017-06-06 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-06-13 |  | 2017-06-25 | 2017-06-25 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609010 | I6200, O620 | Primary inadequate contractions | ICD10 | 06272017 | 06062017 | 06132017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 06082017 | 2017-06-08T16:26:07+00:00 |  | 000020493-01 | EDWARD | MARSH | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 06272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06272017 | 07042017 | Standard |  |  | 2017-06-07 | 17/RUB01=$5,813.99 | 0 | 2017-06-19 |  | 2017-06-20 | 2017-06-20 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609013 | R7881 | Bacteremia | ICD10 | 06272017 | 06072017 | 06192017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 06122017 | 2017-06-12T14:49:04+00:00 |  | 000074837-01 | Jerome | Smith | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 06272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 06092017 | 06152017 | Standard |  |  | 2017-06-09 | 17/RVA01=$3586.28 | 0 | 2017-06-16 |  | 2017-06-21 | 2017-06-21 | 7 | 7 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612128 | Z96641 | Presence of right artificial hip joint | ICD10 | 06272017 | 06092017 | 06162017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 06122017 | 2017-06-12T14:52:02+00:00 |  | 000043504-01 | JOAN | HALLA | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 06272017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06112017 | 06172017 | Standard |  |  | 2017-06-11 | 16/RUA01=$3214.76 | 0 | 2017-06-18 |  | 2017-06-21 | 2017-06-21 | 7 | 7 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612130 | G4700, Z9181, Z96652 | Presence of left artificial knee joint | ICD10 | 06272017 | 06112017 | 06182017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 06132017 | 2017-06-13T18:19:43+00:00 |  | 000098026-01 | Gary | Lustgarten | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 06272017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 06112017 | 06222017 | Standard |  |  | 2017-06-11 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 33 | 2017-06-23 |  | 2017-06-25 | 2017-06-25 | 12 | 45 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614018 | M62838 | Other muscle spasm | ICD10 | 06272017 | 06112017 | 06232017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 04142017 | 2017-04-14T11:00:46+00:00 |  | 000015307-01 | ROY | BELL | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | CENTERBURG RESPIRATORY A | 949066 | 1083157747 | CENTERBURG RESPIRATORY AND SPECIALTY | 1083157747 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG RESPIRATORY AND SPECIALTY | 06272017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170414067 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 06272017 | 04252017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
