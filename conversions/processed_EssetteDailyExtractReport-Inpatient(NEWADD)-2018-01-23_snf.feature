Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-23_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-23_SNF
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
| 01062018 | 2018-01-06T09:10:50+00:00 |  | 000098112-01 | Marie | Mann | LARUFFA, CATHERINE | 939724 | CATHERINE | LARUFFA | 1972502789 | THE LAURELS OF BLANCHEST | 948218 | 1992032148 | LAURELS OF BLANCHESTER | 1992032148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF BLANCHESTER | 01232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 01182018 | Standard |  |  | 2018-01-05 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 4 | 2018-01-18 |  | 2018-01-22 |  | 13 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108056 | N186, N390, R6521 | Severe sepsis with septic shock | ICD10 | 01232018 | 01052018 | 01182018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 11292017 | 2017-11-29T15:39:38+00:00 |  | 000039985-01 | MARGARET | BRAHAM | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 01232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11272017 | 12282017 | Standard |  |  | 2017-11-27 | 17/RVC01= $6306.191 11 DAYS @ $250.00= $2750.00 TOTAL: $9056.19 | 29 | 2017-12-28 |  | 2018-01-23 | 2018-01-23 | 31 | 60 | 9056.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130076 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 01232018 | 11272017 | 12282017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 32 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 12112017 | 2017-12-11T11:32:38+00:00 |  | 000074354-01 | Jefferey | Sensabaugh | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 01232018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12092017 | 01092018 | Standard |  |  | 2017-12-09 | 31 DAYS @ $520.00 (VENT)= $16120.00 IV UNASYN PER INVOICE= $404.96 TOTAL: $16524.96 | 0 | 2018-01-09 |  | 2018-01-23 | 2018-01-23 | 31 | 31 | 16524.96 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211097 | T3110 | Burns of 10-19% of body surfc w 0% to 9% third degree burns | ICD10 | 01232018 | 12092017 | 01092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 32 | Revenue | RV |  |  |  | 3.0 |
| 12212017 | 2017-12-21T12:10:47+00:00 |  | 000029450-01 | ROBERT | KNEDLER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 01232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12192017 | 01152018 | Standard |  |  | 2017-12-19 | 17/RVC01= $6306.19 | 0 | 2018-01-15 | 2018-01-23 | 2018-01-23 | 2018-01-23 | 27 | 27 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221047 | K810 | Acute cholecystitis | ICD10 | 01232018 | 12192017 | 01152018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 28 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 12262017 | 2017-12-26T17:42:34+00:00 |  | 000112905-01 | Clara | Simons | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 01232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12242017 | 01192018 | Standard |  |  | 2017-12-24 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 6 SNF Days = $1,200.00 Total Payment: $6,611.86 | 0 | 2018-01-19 |  | 2018-01-23 | 2018-01-23 | 26 | 26 | 6611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227054 | S7292XD | Unsp fracture of left femur, subs for clos fx w routn heal | ICD10 | 01232018 | 12242017 | 01192018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6611 | 6611 | Approved | 27 | Revenue | RV |  |  |  | 6.0 |
| 01092018 | 2018-01-09T10:29:40+00:00 |  | 000010018-01 | IRVIN | SWAIN | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01072018 | 01202018 | Standard |  |  | 2018-01-07 | Per MDS: 17/RHB01 = $3699.42 | 0 | 2018-01-20 |  | 2018-01-19 | 2018-01-19 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109130 | I10, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01232018 | 01072018 | 01202018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01102018 | 2018-01-10T08:31:14+00:00 |  | 000033595-01 | VIRGINIA | BIXLER | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 01232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01092018 | 01232018 | Standard |  |  | 2018-01-09 | 16/RVC01= $3539.19 | 0 | 2018-01-23 |  | 2018-01-23 | 2018-01-23 | 14 | 14 | 3539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110056 | R4182 | Altered mental status, unspecified | ICD10 | 01232018 | 01092018 | 01232018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 10092017 | 2017-10-09T14:32:54+00:00 |  | 000112241-01 | Kathy | Jackson | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 01232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10052017 | 01192018 | Standard |  |  | 2017-10-05 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 31 days = $7750.00 Per Diem: $200.00/day x 49 days = $9800.00 TOTAL PAYMENT = $23,363.99 | 0 | 2018-01-19 |  | 2018-01-23 |  | 100 | 100 | 23363.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009106 | I6990, Z5189 | Encounter for other specified aftercare | ICD10 | 01232018 | 10052017 | 01192018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 107 | Revenue | RV |  |  |  | 7.0 |
| 11062017 | 2017-11-06T15:29:13+00:00 |  | 000080879-01 | Debra | Fisher | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 01232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11042017 | 01222018 | Standard |  |  | 2017-11-04 | Per Diem: $250.00/day x 40 days = $10,000.00 Per Diem: $200.00/day x 39 days = $7800.00 TOTAL PAYMENT = $17,800.00 | 21 | 2018-01-22 |  | 2018-01-23 |  | 79 | 100 | 17800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106130 | I639, R1310, R1319 | Other dysphagia | ICD10 | 01232018 | 11042017 | 01222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 80 | Revenue | RV |  |  |  | 5.0 |
| 12012017 | 2017-12-01T17:12:33+00:00 |  | 000054393-01 | MARGARET | PARKER | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 01232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 01102018 | Standard |  |  | 2017-12-01 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 13 days = $3250.00 Per Diem: $200.00/day x 7 days = $1400.00 TOTAL PAYMENT = $11,983.11 | 0 | 2018-01-10 |  | 2018-01-18 |  | 40 | 40 | 11983.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204021 | D500, I214, N179, R0902, R6520, R7989, R922 | Inconclusive mammogram | ICD10 | 01232018 | 12012017 | 01102018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 41 | Revenue | RV |  |  |  | 5.0 |
| 01092018 | 2018-01-09T12:52:53+00:00 |  | 000105713-01 | Thomas | Hall | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 01232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01052018 | 01202018 | Standard |  |  | 2018-01-05 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-01-20 |  | 2018-01-22 | 2018-01-23 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109147 | E119, I10, I639, N189 | Chronic kidney disease, unspecified | ICD10 | 01232018 | 01052018 | 01202018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 01182018 | 2018-01-18T17:44:13+00:00 |  | 000044382-01 | DOROTHY | STYERS | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LOGAN HEALTHCARE LEASING | 951357 | 1073053070 | LOGAN CARE & REHABILITATION | 1073053070 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LOGAN CARE & REHABILITATION | 01232018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 01172018 | 01202018 | Standard |  |  | 2018-01-17 | ADMISSION DENIAL Non-skilled per diem: $200.00/day x 3 days = $600.00 | 0 | 2018-01-20 |  |  |  | 0 | 0 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A180119034 | I629 | Nontraumatic intracranial hemorrhage, unspecified | ICD10 | 01232018 | 01172018 | 01202018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 01192018 | 2018-01-19T14:39:03+00:00 |  | 000083920-01 | Patsy | Winner | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 01232018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 01182018 | 01222018 | Standard |  |  | 2018-01-18 | ADMISSION DENIAL Non Skilled Per Diem: $200.00/day x 4 days = $800.00 TOTAL PAYMENT = $800.00 | 0 | 2018-01-22 |  |  |  | 0 | 0 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A180119075 | M1712, Z96652 | Presence of left artificial knee joint | ICD10 | 01232018 | 01182018 | 01222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
| 01222018 | 2018-01-22T14:41:24+00:00 |  | 000052350-01 | George | Cheatwood | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 01232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01192018 | 01212018 | Standard |  |  | 2018-01-19 | Per Diem: $200.00/day x 2 days = $400.00 | 27 | 2018-01-21 |  |  |  | 2 | 29 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122127 | I495, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 01232018 | 01192018 | 01212018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
