Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-24_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-24_SNF
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
| 10102017 | 2017-10-10T16:57:14+00:00 |  | 000071662-01 | WARNIE | JACKSON | WEST JEFFERSON FAM PRCT | 936655 | MARK W | GARWOOD | 1275595274 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 10242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10062017 | 10212017 | Standard |  |  | 2017-10-06 | Contract/RUG: 17/RVC  (Per MDS) = $6,306.19 | 0 | 2017-10-21 |  | 2017-10-23 | 2017-10-23 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011005 | E119, F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 10242017 | 10062017 | 10212017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 10122017 | 2017-10-12T10:14:40+00:00 |  | 000106462-01 | Louise E | Cooper | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 10242017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10102017 | 10142017 | Standard |  |  | 2017-10-10 | Contract/RUG: 17/PC1  (Per MDS) = $2,465.35 | 0 | 2017-10-14 |  | 2017-10-23 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012036 | K56609 | K56609 | ICD10 | 10242017 | 10102017 | 10142017 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 10162017 | 2017-10-16T16:45:27+00:00 |  | 000114525-01 | Joyce | Thompson | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 10242017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10112017 | 10182017 | Standard |  |  | 2017-10-11 | Contract/RUG: 16/RUB  (Per MDS) = $4,429.71 | 0 | 2017-10-18 |  | 2017-10-23 | 2017-10-23 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017066 | I10, J9601 | Acute respiratory failure with hypoxia | ICD10 | 10242017 | 10112017 | 10182017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10092017 | 2017-10-09T11:47:09+00:00 |  | 000092416-01 | Edith | Zakel | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 10242017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10052017 | 10132017 | Standard |  |  | 2017-10-05 | Contract/RUG: 17/RUA  (Per MDS ) = $3,214.76 | 0 | 2017-10-13 |  | 2017-10-23 | 2017-10-23 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009063 | I4891 | Unspecified atrial fibrillation | ICD10 | 10242017 | 10052017 | 10132017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 09132017 | 2017-09-13T16:30:12+00:00 |  | 000065104-01 | Carl | Salyer | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 10242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09122017 | 10092017 | Standard |  |  | 2017-09-12 | 16/RUA01= $3214.76 7 DAYS @ $200.00= $1400.00 TOTAL: $4614.76 | 15 | 2017-10-09 |  | 2017-10-19 |  | 27 | 42 | 4614.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914098 | M6281, R4182 | Altered mental status, unspecified | ICD10 | 10242017 | 09122017 | 10092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4614 | 4614 | Approved | 28 | Revenue | RV |  |  |  | 1.0 |
| 10092017 | 2017-10-09T14:18:34+00:00 |  | 000043223-01 | SHARON | EVANS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 10242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10052017 | 10192017 | Standard |  |  | 2017-10-05 | 17/RVC01= $6306.19 | 0 | 2017-10-19 |  | 2017-10-19 | 2017-10-19 | 14 | 14 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009101 | L03319 | Cellulitis of trunk, unspecified | ICD10 | 10242017 | 10052017 | 10192017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 10042017 | 2017-10-04T14:18:29+00:00 |  | 000046380-01 | JOHN | FOX | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 10242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10022017 | 10192017 | Standard |  |  | 2017-10-02 | 17/RVC01= $6306.19 | 0 | 2017-10-19 |  | 2017-10-20 | 2017-10-20 | 17 | 17 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004078 | S82002D | Unsp fracture of left patella, subs for clos fx w routn heal | ICD10 | 10242017 | 10022017 | 10192017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 09192017 | 2017-09-19T15:11:50+00:00 |  | 000045262-01 | JACQUELINE | EDWARDS | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 10242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09152017 | 10072017 | Standard |  |  | 2017-09-15 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-10-07 |  | 2017-10-12 | 2017-10-24 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920068 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 10242017 | 09152017 | 10072017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 10232017 | 2017-10-23T15:06:49+00:00 |  | 000065562-01 | KATHERINE | MILES | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 10242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10212017 | 10212017 | Standard |  |  | 2017-10-21 | 1 DAY @ $200.00 | 15 | 2017-10-21 |  |  |  | 1 | 16 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023146 | I10, I2510, I4891 | Unspecified atrial fibrillation | ICD10 | 10242017 | 10212017 | 10212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
| 09132017 | 2017-09-13T15:43:44+00:00 |  | 000076959-01 | Jack | Townsley | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 10242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 09122017 | 10192017 | Standard |  |  | 2017-09-12 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $250.00/Day x 11 SNF Days = $2,750.00 Total Payment: $6,100.20 | 0 | 2017-10-19 |  | 2017-10-24 | 2017-10-18 | 31 | 31 | 6100.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914086 | J189, N179 | Acute kidney failure, unspecified | ICD10 | 10242017 | 09122017 | 10192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6100 | 6100 | Approved | 38 | Revenue | RV |  |  |  | 1.0 |
| 10062017 | 2017-10-06T08:54:20+00:00 |  | 000017210-01 | CHARLOTTE | KING | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 10242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10042017 | 10182017 | Standard |  |  | 2017-10-04 | 16/RUB01=$4,429.71 | 0 | 2017-10-18 |  | 2017-10-24 | 2017-10-24 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006024 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 10242017 | 10042017 | 10182017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08072017 | 2017-08-07T16:33:02+00:00 |  | 000022846-01 | ELOISE | DENNY | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 10242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08032017 | 10142017 | Standard |  |  | 2017-08-03 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.00/DAYS X 50 DAYS=$10,000.00 TOTAL PAYMENT=$16,306.19 | 14 | 2017-10-14 | 2017-10-24 | 2017-10-24 | 2017-10-24 | 70 | 84 | 16306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808073 | A4102 | Sepsis due to Methicillin resistant Staphylococcus aureus | ICD10 | 10242017 | 08032017 | 10142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 73 | Revenue | RV |  |  |  | 1.0 |
| 10092017 | 2017-10-09T15:21:12+00:00 |  | 000010559-01 | ALTA | ZEECK | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 10242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10062017 | 10192017 | Standard |  |  | 2017-10-06 | 17/RVB01= $5411.86 | 0 | 2017-10-19 |  | 2017-10-20 | 2017-10-20 | 13 | 13 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009116 | N390 | Urinary tract infection, site not specified | ICD10 | 10242017 | 10062017 | 10192017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 08282017 | 2017-08-28T16:26:16+00:00 |  | 000059586-01 | JAMES | HESS | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 10242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08252017 | 10202017 | Standard |  |  | 2017-08-25 | 17/RUB01= $5813.99 36 DAYS @ $200.00= $7200.00 TOTAL: $13013.99 | 37 | 2017-10-20 |  | 2017-10-23 | 2017-10-23 | 56 | 93 | 13013.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829016 | R001, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 10242017 | 08252017 | 10202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 57 | Revenue | RV |  |  |  | 3.0 |
| 09282017 | 2017-09-28T15:12:37+00:00 |  | 000026940-01 | ILENE | OFFENBURGER | TIMOTHY J BRIGHT DO INC | 935342 | TIMOTHY J | BRIGHT | 1760405393 | CENTERBURG POINTE | 915833 | 1033410295 | CENTERBURG POINTE | 1033410295 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG POINTE | 10242017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09262017 | 10202017 | Standard |  |  | 2017-09-26 | 17/RHC01= $4132.02 | 0 | 2017-10-20 |  | 2017-10-24 | 2017-10-24 | 24 | 24 | 4132.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928082 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 10242017 | 09262017 | 10202017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 09282017 | 2017-09-28T16:00:11+00:00 |  | 000071454-01 | Mary | Woosley | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 10242017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09262017 | 10062017 | Standard |  |  | 2017-09-26 | 16/RVB01= $3350.20 | 0 | 2017-10-06 |  | 2017-10-19 | 2017-10-19 | 10 | 10 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928084 | Z96651 | Presence of right artificial knee joint | ICD10 | 10242017 | 09262017 | 10062017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
