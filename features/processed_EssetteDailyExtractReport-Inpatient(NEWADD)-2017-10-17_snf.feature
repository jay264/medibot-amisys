Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-17_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-17_SNF
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
| 10032017 | 2017-10-03T09:40:17+00:00 |  | 000003153-01 | MARGARET | ERVIN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09292017 | 10022017 | Standard |  |  | 2017-09-29 | 17/CC101=$3,231.84 | 0 | 2017-10-02 |  | 2017-10-16 | 2017-10-16 | 3 | 3 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003025 | J189 | Pneumonia, unspecified organism | ICD10 | 10172017 | 09292017 | 10022017 | CC101 | CLINICALLY COMPLEX , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved Skilled | 4 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 10062017 | 2017-10-06T14:48:26+00:00 |  | 000052649-01 | Ernest | Danco | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 10172017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10052017 | 10132017 | Standard |  |  | 2017-10-05 | 17/RVA01=$3,586.28 | 0 | 2017-10-13 |  | 2017-10-16 | 2017-10-16 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006068 | G9340, M6281, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 10172017 | 10052017 | 10132017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 09152017 | 2017-09-15T10:34:41+00:00 |  | 000112918-01 | Meita | Tambi | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 10172017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09132017 | 09292017 | Standard |  |  | 2017-09-13 | 17/RVA01=$3,586.28 | 0 | 2017-09-29 |  | 2017-10-16 | 2017-10-16 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915069 | E669, G8918, I129, M1990, Z96641 | Presence of right artificial hip joint | ICD10 | 10172017 | 09132017 | 09292017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 09202017 | 2017-09-20T11:46:02+00:00 |  | 000007000-01 | LUCILE | MIDDLETON | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09192017 | 09292017 | Standard |  |  | 2017-09-19 | 17/RVC01=$6,306.19 | 0 | 2017-09-29 |  | 2017-10-16 | 2017-10-16 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920101 | E039, F0390, G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 10172017 | 09192017 | 09292017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 10102017 | 2017-10-10T15:16:45+00:00 |  | 000042530-01 | RONALD | SINES | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10062017 | 10152017 | Standard |  |  | 2017-10-06 | 17/RVC01=$6,306.19 | 22 | 2017-10-15 |  | 2017-10-16 |  | 9 | 31 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010089 | Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 10172017 | 10062017 | 10152017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 10052017 | 2017-10-05T12:48:39+00:00 |  | 000007880-01 | DELLA | ADAMS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10042017 | 10132017 | Standard |  |  | 2017-10-04 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 20 | 2017-10-13 |  | 2017-10-16 | 2017-10-16 | 9 | 29 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005044 | A8100 | Creutzfeldt-Jakob disease, unspecified | ICD10 | 10172017 | 10042017 | 10132017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 09252017 | 2017-09-25T10:00:40+00:00 |  | 000005601-01 | DOLORES | SWAYER | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09222017 | 10122017 | Standard |  |  | 2017-09-22 | 17/RVC01=$6,306.19 | 0 | 2017-10-12 |  | 2017-10-17 | 2017-10-17 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925059 | E871, G9340, I10, M129 | Arthropathy, unspecified | ICD10 | 10172017 | 09222017 | 10122017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09282017 | 2017-09-28T15:22:15+00:00 |  | 000007695-01 | JANET | HOERLE | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09272017 | 10072017 | Standard |  |  | 2017-09-27 | 16/RUB01=$4,429.71 | 0 | 2017-10-07 |  | 2017-10-17 | 2017-10-17 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928083 | J189 | Pneumonia, unspecified organism | ICD10 | 10172017 | 09272017 | 10072017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 09182017 | 2017-09-18T12:10:24+00:00 |  | 000107271-01 | Barbara | Parker | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 10172017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09152017 | 09222017 | Standard |  |  | 2017-09-15 | 17/HB101=$3,448.45 | 0 | 2017-09-22 |  | 2017-10-16 | 2017-10-16 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918080 | E119, E782, I10, N390 | Urinary tract infection, site not specified | ICD10 | 10172017 | 09152017 | 09222017 | HB101 | SPECIAL CARE HIGH , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 09292017 | 2017-09-29T13:55:53+00:00 |  | 000100399-01 | Donald | Blizzard | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09272017 | 10102017 | Standard |  |  | 2017-09-27 | 16/RUC01=$7,333.11 | 0 | 2017-10-10 |  | 2017-10-17 | 2017-10-17 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929044 | R4182, S42001D | Fx unsp part of r clavicle, subs for fx w routn heal | ICD10 | 10172017 | 09272017 | 10102017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10162017 | 2017-10-16T14:04:03+00:00 |  | 000107274-01 | Evelyn | Stevens | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 10172017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 10122017 | 10132017 | Standard |  |  | 2017-10-12 | 1 day @ $200.00 | 0 | 2017-10-13 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017055 | K55019 | ACUTE ISCHEMIA OF SMALL INTESTINE, EXTENT UNSPECIFIED | ICD10 | 10172017 | 10122017 | 10132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 10022017 | 2017-10-02T15:58:31+00:00 |  | 000013730-01 | WAVELENE | STUMP | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09282017 | 10132017 | Standard |  |  | 2017-09-28 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-10-13 |  | 2017-10-17 | 2017-10-16 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002156 | M6281, Z5189 | Encounter for other specified aftercare | ICD10 | 10172017 | 09282017 | 10132017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 09142017 | 2017-09-14T16:18:43+00:00 |  | 000103838-01 | Ronald | Burford | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 10172017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09122017 | 10102017 | Standard |  |  | 2017-09-12 | Per MDS: 17/RVA01 = $3586.28 Per Diem: $250.00/day x 8 days = $2000.00 TOTAL PAYMENT = $5586.28 | 10 | 2017-10-10 |  | 2017-10-16 |  | 28 | 38 | 5586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915038 | L02415 | Cutaneous abscess of right lower limb | ICD10 | 10172017 | 09122017 | 10102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5586 | 5586 | Approved | 29 | Revenue | RV |  |  |  | 8.0 |
| 09272017 | 2017-09-27T15:51:53+00:00 |  | 000004141-01 | DAISY | KIRK | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09252017 | 10152017 | Standard |  |  | 2017-09-25 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-10-15 |  | 2017-10-16 | 2017-10-16 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927080 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 10172017 | 09252017 | 10152017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09272017 | 2017-09-27T15:54:22+00:00 |  | 000025843-01 | BILL | KIRK | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09252017 | 10152017 | Standard |  |  | 2017-09-25 | PEr MDS: 17/RVB01 = $5411.86 | 0 | 2017-10-15 |  | 2017-10-16 | 2017-10-16 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927082 | I639, R531 | Weakness | ICD10 | 10172017 | 09252017 | 10152017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10032017 | 2017-10-03T15:52:01+00:00 |  | 000069773-01 | RALPH | MCALLISTER JR | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09292017 | 10082017 | Standard |  |  | 2017-09-29 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-10-08 |  | 2017-10-16 |  | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003087 | D619, N181 | Chronic kidney disease, stage 1 | ICD10 | 10172017 | 09292017 | 10082017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 09252017 | 2017-09-25T10:07:48+00:00 |  | 000041543-01 | ARTHUR | CONKEL | PIKE COMMUNITY HOSPITAL | 906609 | DAVID E | RODDY | 1952355679 | PLEASANT HILL LEASING LL | 948748 | 1558729806 | PLEASANT HILL MANOR | 1558729806 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PLEASANT HILL MANOR | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09232017 | 10132017 | Standard |  |  | 2017-09-23 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-10-13 |  | 2017-10-17 | 2017-10-17 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925065 | J189, N390 | Urinary tract infection, site not specified | ICD10 | 10172017 | 09232017 | 10132017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09272017 | 2017-09-27T14:43:48+00:00 |  | 000025001-01 | RUSSELL | EVANS | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09252017 | 10152017 | Standard |  |  | 2017-09-25 | 17/RVC01= $6306.19 | 0 | 2017-10-15 |  | 2017-10-17 | 2017-10-17 | 20 | 20 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927072 | I96, Z89421 | Acquired absence of other right toe(s) | ICD10 | 10172017 | 09252017 | 10152017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10062017 | 2017-10-06T16:03:39+00:00 |  | 000086882-01 | Arnold | Strausbaugh | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 10172017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 10052017 | 10152017 | Standard |  |  | 2017-10-05 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 | 71 | 2017-10-15 |  | 2017-10-16 | 2017-10-12 | 10 | 81 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006075 | I480, M6281 | Muscle weakness (generalized) | ICD10 | 10172017 | 10052017 | 10152017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 02142017 | 2017-02-14T16:01:04+00:00 |  | 000086155-01 | Polly | Bartholomew | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 10172017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10172017 | 10242017 | Standard |  |  | 2017-01-31 | 16/RVC01=$3539.19 13 DAYS@$200/DAY=$2600.00 TOTAL:$6139.19 | 0 | 2017-03-05 |  | 2017-03-22 | 2017-03-22 | 33 | 33 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215028 | S72142D | Displ intertroch fx l femur, subs for clos fx w routn heal | ICD10 | 10172017 | 01312017 | 03052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6139 | 6139 | Approved | 8 | Revenue | RV |  |  |  | 32.0 |
| 09222017 | 2017-09-22T13:40:34+00:00 |  | 000089518-01 | Elizabeth | Doherty | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 10172017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09202017 | 10072017 | Standard |  |  | 2017-09-20 | 17/RVC01= $6306.19 | 0 | 2017-10-07 |  | 2017-10-17 | 2017-10-17 | 17 | 17 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922054 | M5440 | Lumbago with sciatica, unspecified side | ICD10 | 10172017 | 09202017 | 10072017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 09192017 | 2017-09-19T10:19:47+00:00 |  | 000043915-01 | JAMES | SPIRES | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09152017 | 10072017 | Standard |  |  | 2017-09-15 | 17/RVC01= $6306.19 2 DAYS @ $200.00= $400.00 TOTAL: $ 6706.19 | 0 | 2017-10-07 |  | 2017-10-17 |  | 22 | 22 | 6706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919060 | S22080G | Wedge comprsn fx T11-T12 vertebra, subs for fx w delay heal | ICD10 | 10172017 | 09152017 | 10072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6706 | 6706 | Approved | 23 | Revenue | RV |  |  |  | 2.0 |
| 09222017 | 2017-09-22T12:44:38+00:00 |  | 000043174-01 | WILLIAM | WINNIESTAFFER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09202017 | 10082017 | Standard |  |  | 2017-09-20 | 17/LD101= $3448.45 | 19 | 2017-10-08 |  | 2017-10-17 |  | 18 | 37 | 3448.45 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922046 | J189 | Pneumonia, unspecified organism | ICD10 | 10172017 | 09202017 | 10082017 | LD101 | SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 09012017 | 2017-09-01T16:30:05+00:00 |  | 000083289-01 | Gloria | Hurl | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08312017 | 10152017 | Standard |  |  | 2017-08-31 | 17/RVC01= $6306.19 25 DAYS @ $250.00= $6250.00 TOTAL: $12556.19 | 0 | 2017-10-15 |  | 2017-10-17 | 2017-10-17 | 45 | 45 | 12556.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905016 | M4802 | Spinal stenosis, cervical region | ICD10 | 10172017 | 08312017 | 10152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 4.0 |
| 09262017 | 2017-09-26T11:22:38+00:00 |  | 000008455-01 | MARY | BARRY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 10172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09232017 | 10162017 | Standard |  |  | 2017-09-23 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-10-16 |  | 2017-10-17 | 2017-10-17 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926074 | R531 | Weakness | ICD10 | 10172017 | 09232017 | 10162017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
