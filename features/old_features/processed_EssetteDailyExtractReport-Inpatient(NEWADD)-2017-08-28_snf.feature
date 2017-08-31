Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-28_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-28_SNF
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
| 07182017 | 2017-07-18T08:32:59+00:00 |  | 000076977-01 | Mary | Hill | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 08282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08162017 | 08232017 | Standard |  |  | 2017-07-16 | 16/RUC01=$7333.11 2 DAYS @ $250.00=$500.00 17 DAYS @ $200.00=$3400.00 TOTAL: $11233.11 | 0 | 2017-08-24 |  | 2017-08-24 | 2017-08-24 | 39 | 39 | 11233.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718108 | L03311, M6282, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 08282017 | 07162017 | 08242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 8 | Revenue | RV |  |  |  | 5.0 |
| 08082017 | 2017-08-08T11:41:24+00:00 |  | 000111118-01 | Jerry | Reich | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 08282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08062017 | 08232017 | Standard |  |  | 2017-08-06 | 17*/RVB01=$5411.86 | 0 | 2017-08-24 |  | 2017-08-26 | 2017-08-26 | 18 | 18 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809024 | J189 | Pneumonia, unspecified organism | ICD10 | 08282017 | 08062017 | 08242017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 07212017 | 2017-07-21T14:06:49+00:00 |  | 000079285-01 | Maureen | Roop | MED HOME PRIMARY CARE CT | 911942 | SHELLY L | DUNMYER | 1053392555 | THE OAKS AT NORTHPOINTE | 931632 | 1609181700 | THE OAKS AT NORTHPOINTE | 1609181700 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE OAKS AT NORTHPOINTE | 08282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07202017 | 08062017 | Standard |  |  | 2017-07-20 | 16/RHB01=$2690.49 | 0 | 2017-08-07 |  | 2017-08-28 | 2017-08-16 | 18 | 18 | 2690.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721062 | C519 | Malignant neoplasm of vulva, unspecified | ICD10 | 08282017 | 07202017 | 08072017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 08142017 | 2017-08-14T11:40:01+00:00 |  | 000107452-01 | Richard | Milhoan | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | CAMBRIDGE HEALTHCARE AND | 930700 | 1053662429 | ASTORIA PLACE OF CAMBRIDGE | 1053662429 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF CAMBRIDGE | 08282017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 08112017 | 08132017 | Standard |  |  | 2017-08-11 | 16/HC101=$3481.78 | 0 | 2017-08-14 |  | 2017-08-26 |  | 3 | 3 | 3481.78 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814083 | I259 | Chronic ischemic heart disease, unspecified | ICD10 | 08282017 | 08112017 | 08142017 | HC101 | SPECIAL CARE HIGH , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 3 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 07142017 | 2017-07-14T15:28:09+00:00 |  | 000097637-01 | Charles | Parker | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 08282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07132017 | 08162017 | Standard |  |  | 2017-07-13 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 11 days = $2750.00 TOTAL PAYMENT = $9056.19 | 19 | 2017-08-17 |  | 2017-08-25 |  | 31 | 50 | 9056.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714073 | T84298D | Mech compl of internal fixation device of oth bones, subs | ICD10 | 08282017 | 07132017 | 08172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9056 | 9056 | Approved | 35 | Revenue | RV |  |  |  | 3.0 |
| 07122017 | 2017-07-12T16:15:16+00:00 |  | 000007880-01 | DELLA | ADAMS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 902185 | 1205823770 | SCIOTO RETIREMENT COMMUNITY | 1205823770 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 08282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07212017 | 08092017 | Standard |  |  | 2017-07-21 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-08-10 |  | 2017-08-25 | 2017-08-25 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713007 | Z9181, V1588 | HISTORY OF FALL | ICD10 | 08282017 | 07212017 | 08102017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 08012017 | 2017-08-01T15:20:23+00:00 |  | 000104081-01 | Thelma | Nutter | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 08282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07312017 | 08242017 | Standard |  |  | 2017-07-31 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-08-25 | 2017-08-22 | 2017-08-25 | 2017-08-25 | 25 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802008 | D0220 | Carcinoma in situ of unspecified bronchus and lung | ICD10 | 08282017 | 07312017 | 08252017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 08082017 | 2017-08-08T15:54:53+00:00 |  | 000035085-01 | ALDEN | FARNER | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 08282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08042017 | 08242017 | Standard |  |  | 2017-08-04 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-08-25 |  | 2017-08-28 | 2017-08-28 | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809044 | K819, Z5189 | Encounter for other specified aftercare | ICD10 | 08282017 | 08042017 | 08252017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 08092017 | 2017-08-09T16:44:49+00:00 |  | 000086408-01 | Velma | Pelfrey | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 08282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08082017 | 08152017 | Standard |  |  | 2017-08-08 | Contract/RUG: 17/RVB  (Per MDS) = $5,411.86 | 0 | 2017-08-16 |  | 2017-08-25 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810013 | R0602 | Shortness of breath | ICD10 | 08282017 | 08082017 | 08162017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07242017 | 2017-07-24T11:25:13+00:00 |  | 000076767-01 | William | Schwegman | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 08282017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 07212017 | 08172017 | Standard |  |  | 2017-07-21 | Contract/RUG: 17/ RUC (Per MDS) = $6,049.81 | 0 | 2017-08-18 |  | 2017-08-25 | 2017-08-25 | 20 | 28 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724067 | L03116 | Cellulitis of left lower limb | ICD10 | 08282017 | 07212017 | 08182017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 28 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 08022017 | 2017-08-02T14:52:08+00:00 |  | 000091288-01 | M Jane | Ludman | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | CEDAR HILL CARE CENTER | 924191 | 1326035130 | CEDAR HILL CARE CENTER | 1326035130 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CEDAR HILL CARE CENTER | 08282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07312017 | 08212017 | Standard |  |  | 2017-07-31 | 17/RUB01=$5813.99 | 1 | 2017-08-22 |  | 2017-08-28 | 2017-08-28 | 22 | 23 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802082 | I5021, M549, N179, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 08282017 | 07312017 | 08222017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 08012017 | 2017-08-01T15:52:53+00:00 |  | 000098540-01 | Marie | Abmayr | PROVIDENCE MOUNT ST VINC | 951666 |  | PROVIDENCE MOUNT ST VINCENT | 1952386369 | PROVIDENCE MOUNT ST VINC | 951666 | 1952386369 | PROVIDENCE MOUNT ST VINCENT | 1952386369 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PROVIDENCE MOUNT ST VINCENT | 08282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08012017 | 08232017 | Standard |  |  | 2017-08-01 | OON/RUC01=$6049.81 | 0 | 2017-08-24 |  | 2017-08-28 | 2017-08-28 | 23 | 23 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802024 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 08282017 | 08012017 | 08242017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 08092017 | 2017-08-09T15:37:15+00:00 |  | 000038184-01 | KAREN | DEARTH | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 08282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08072017 | 08172017 | Standard |  |  | 2017-08-07 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-08-18 |  | 2017-08-28 | 2017-08-28 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810009 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 08282017 | 08072017 | 08182017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
