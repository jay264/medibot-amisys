Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-20_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-20_SNF
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
| 12012017 | 2017-12-01T17:40:53+00:00 |  | 000043575-01 | MARILYN | BASTIAN | CEN OHIO GERIATRICS LLC | 936950 | PETER D | HUCEK | 1548274871 | SARAH MOORE HEALTH CARE CENTER | 946271 | 1063476802 | SARAH MOORE HEALTH CARE CENTER | 1063476802 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SARAH MOORE HEALTH CARE CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 12182017 | Standard |  |  | 2017-12-01 | 17/RUC01= $6049.81 | 0 | 2017-12-18 |  | 2017-12-19 | 2017-12-19 | 13 | 13 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204026 | I639, J45909 | Unspecified asthma, uncomplicated | ICD10 | 12202017 | 12012017 | 12182017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 11222017 | 2017-11-22T12:31:32+00:00 |  | 000099620-01 | Emma | Werneske | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 12202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11202017 | 12132017 | Standard |  |  | 2017-11-20 | Contract/RUG: 16/RHA (Per MDS) = $2,045.15 Per Diem: $200.00/day x 3 SNF Days = $600.00 Total Payment: $2,645.15 | 0 | 2017-12-13 |  | 2017-12-19 | 2017-12-14 | 23 | 23 | 2645.15 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122067 | S2242XD | Multiple fx of ribs, left side, subs for fx w routn heal | ICD10 | 12202017 | 11202017 | 12132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2645 | 2645 | Approved | 24 | Revenue | RV |  |  |  | 3.0 |
| 11092017 | 2017-11-09T14:59:43+00:00 |  | 000089520-01 | Paul | Carter | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 12202017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11082017 | 12162017 | Standard |  |  | 2017-11-08 | 17/RUB17= $5813.99 10 DAYS @ $250.00= $2500.00 8 DAYS @ $200.00= $1600.00 TOTAL: $9913.99 | 0 | 2017-12-16 |  | 2017-12-20 | 2017-12-20 | 38 | 38 | 9913.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109081 | S72091D | Oth fx head/neck of r femur, subs for clos fx w routn heal | ICD10 | 12202017 | 11082017 | 12162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 39 | Revenue | RV |  |  |  | 4.0 |
| 11132017 | 2017-11-13T12:36:50+00:00 |  | 000005570-01 | DELORES | SMITH | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 12202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11102017 | 12092017 | Standard |  |  | 2017-11-10 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X 9=$1,800.00 TOTAL PAYMENT=$7,211.86 | 0 | 2017-12-09 |  | 2017-12-19 | 2017-12-19 | 29 | 29 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113072 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 12202017 | 11102017 | 12092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7211 | 7211 | Approved Skilled | 30 | Revenue | RV |  |  |  | 9.0 |
| 12152017 | 2017-12-15T16:10:45+00:00 |  | 000013831-01 | RUTH | PARRISH | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 12202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12132017 | 12162017 | Standard |  |  | 2017-12-13 | Per Diem: $200.00/day x 3 SNF Days = $600.00 | 0 | 2017-12-16 |  |  |  | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218016 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 12202017 | 12132017 | 12162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 12052017 | 2017-12-05T16:27:58+00:00 |  | 000055880-01 | Delores | Grossman | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 12202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 12132017 | Standard |  |  | 2017-12-01 | 17/RUB01=$5,813.99 | 0 | 2017-12-13 |  | 2017-12-19 | 2017-12-19 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206008 | E6601, I5023, I890, L03119, R6520 | Severe sepsis without septic shock | ICD10 | 12202017 | 12012017 | 12132017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 11062017 | 2017-11-06T08:04:22+00:00 |  | 000067285-01 | LINDA | NEFF | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 12202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11022017 | 11212017 | Standard |  |  | 2017-11-02 | 17/RVA01=$3,586.28 | 0 | 2017-11-21 |  | 2017-12-19 | 2017-12-19 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106084 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 12202017 | 11022017 | 11212017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 11162017 | 2017-11-16T13:08:31+00:00 |  | 000089529-01 | Lynne-Reed | Carter | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 12202017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11142017 | 12152017 | Standard |  |  | 2017-11-14 | 17*RUB01= $5813.99 11 DAYS @ $250.00= $2750.00 TOTAL: $8563.99 | 0 | 2017-12-15 | 2017-12-20 | 2017-12-20 | 2017-12-20 | 31 | 31 | 8563.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116093 | I4891, R001 | Bradycardia, unspecified | ICD10 | 12202017 | 11142017 | 12152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8563 | 8563 | Approved | 32 | Revenue | RV |  |  |  | 4.0 |
| 12122017 | 2017-12-12T14:48:29+00:00 |  | 000001577-01 | CHARLES | DAVIS | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 12202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12112017 | 12182017 | Standard |  |  | 2017-12-11 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-12-18 |  | 2017-12-19 | 2017-12-20 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212085 | S72001D, Z4789, Z9181 | History of falling | ICD10 | 12202017 | 12112017 | 12182017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 12122017 | 2017-12-12T15:19:48+00:00 |  | 000087043-01 | Douglas | Jackson | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 12202017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12092017 | 12182017 | Standard |  |  | 2017-12-09 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2017-12-18 |  | 2017-12-19 | 2017-12-20 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212088 | Z471 | Aftercare following joint replacement surgery | ICD10 | 12202017 | 12092017 | 12182017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 11212017 | 2017-11-21T18:43:27+00:00 |  | 000044411-01 | ROSEMARY | ACKERSON | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 12202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11202017 | 12042017 | Standard |  |  | 2017-11-20 | 17/RUB01=$5,813.99 | 0 | 2017-12-04 |  | 2017-12-19 | 2017-12-19 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122041 | S82041D | Displ commnt fx right patella, subs for clos fx w routn heal | ICD10 | 12202017 | 11202017 | 12042017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11132017 | 2017-11-13T08:03:54+00:00 |  | 000064610-01 | JANIS | VALLEN | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 12202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11092017 | 11182017 | Standard |  |  | 2017-11-09 | 17/RVC01=$6306.19 | 0 | 2017-11-18 |  | 2017-12-19 |  | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113038 | N390 | Urinary tract infection, site not specified | ICD10 | 12202017 | 11092017 | 11182017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 11292017 | 2017-11-29T15:29:49+00:00 |  | 000031390-01 | DAVID | CHILDERS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 12202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11282017 | 12082017 | Standard |  |  | 2017-11-28 | 17/RUA01=$3,214.76 | 0 | 2017-12-08 |  | 2017-12-19 | 2017-12-19 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130075 | J90, N179 | Acute kidney failure, unspecified | ICD10 | 12202017 | 11282017 | 12082017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 11292017 | 2017-11-29T13:49:38+00:00 |  | 000097909-01 | Maude | Johnson | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 12202017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 11272017 | 12152017 | Standard |  |  | 2017-11-27 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-12-15 |  | 2017-12-20 | 2017-12-20 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130044 | Z4789 | Encounter for other orthopedic aftercare | ICD10 | 12202017 | 11272017 | 12152017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 12132017 | 2017-12-13T15:04:46+00:00 |  | 000093159-01 | Cheryl | Stooksberry | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 12202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12112017 | 12182017 | Standard |  |  | 2017-12-11 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2017-12-18 |  | 2017-12-20 | 2017-12-20 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213105 | S82851D | Displ trimalleol fx r low leg, subs for clos fx w routn heal | ICD10 | 12202017 | 12112017 | 12182017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 12012017 | 2017-12-01T13:41:39+00:00 |  | 000096949-01 | Carl | Miller | TEAGUE, PHILLIP C | 944173 | PHILLIP C | TEAGUE | 1770571069 | COSHOCTON SPRINGS HEALTH & REHABILIT | 939939 | 1144610940 | COSHOCTON SPRINGS HEALTH & REHABILIT | 1144610940 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COSHOCTON SPRINGS HEALTH & REHABILIT | 12202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12152017 | Standard |  |  | 2017-11-30 | 17/RUA01= $3214.76 | 0 | 2017-12-15 |  | 2017-12-20 | 2017-12-20 | 15 | 15 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201064 | K860 | Alcohol-induced chronic pancreatitis | ICD10 | 12202017 | 11302017 | 12152017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
