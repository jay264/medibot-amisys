Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-12_thru_2018-01-14_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-12_thru_2018-01-14_SNF
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
| 12202017 | 2017-12-20T12:59:22+00:00 |  | 000022193-01 | GENEVA | CHADWICK | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12182017 | 01062018 | Standard |  |  | 2017-12-18 | 17/RUB01=$5,812.99 | 0 | 2018-01-06 |  | 2018-01-11 | 2018-01-11 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220072 | I5022, M6281, R609 | Edema, unspecified | ICD10 | 01122018 | 12182017 | 01062018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 12292017 | 2017-12-29T13:52:25+00:00 |  | 000020356-01 | LOIS | PRESTON | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 939458 | 1518141902 | ECHO MANOR EXTENDED CC | 1437252194 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ECHO MANOR EXTENDED CC | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12282017 | 01102018 | Standard |  |  | 2017-12-28 | 16/RUB01=$4,429.71 | 0 | 2018-01-10 |  | 2018-01-11 | 2018-01-11 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229073 | S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 01122018 | 12282017 | 01102018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 12042017 | 2017-12-04T15:21:30+00:00 |  | 000084990-01 | Elizabeth | Agresta | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 01122018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12022017 | 01092018 | Standard |  |  | 2017-12-02 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.0/DAY X 18 DAYS=$3,600.00 TOTAL PAYMENT=$9,906.19 | 0 | 2018-01-09 |  | 2018-01-10 | 2018-01-10 | 38 | 38 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205030 | N390 | Urinary tract infection, site not specified | ICD10 | 01122018 | 12022017 | 01092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9906 | 9906 | Approved Skilled | 39 | Revenue | RV |  |  |  | 4.0 |
| 12042017 | 2017-12-04T11:15:35+00:00 |  | 000015871-01 | Carroll | Little | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 01112018 | Standard |  |  | 2017-10-30 | 17/RVA01= $3586.28 21 DAYS @ $250.00= $5250.00 1 DAY @ $200.00= $200.00 TOTAL: $9036.28 | 0 | 2018-01-11 |  | 2018-01-11 | 2018-01-11 | 42 | 42 | 9036.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204116 | M6281 | Muscle weakness (generalized) | ICD10 | 01122018 | 11302017 | 01112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9036 | 9036 | Approved | 43 | Revenue | RV |  |  |  | 5.0 |
| 12062017 | 2017-12-06T08:42:26+00:00 |  | 000030076-01 | PHYLLIS | GOBLE | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12042017 | 12182017 | Standard |  |  | 2017-12-04 | 17/RVB01=$5,411.86 | 0 | 2017-12-18 |  | 2018-01-10 | 2018-01-10 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206050 | S2241XD | Multiple fx of ribs, right side, subs for fx w routn heal | ICD10 | 01122018 | 12042017 | 01182018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12202017 | 2017-12-20T13:14:24+00:00 |  | 000023700-01 | CLARENCE | MCLAUGHLIN | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12192017 | 01102018 | Standard |  |  | 2017-12-19 | 16/RUC01= $7333.11 | 0 | 2018-01-10 |  | 2018-01-11 | 2018-01-11 | 22 | 22 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220075 | Z96641 | Presence of right artificial hip joint | ICD10 | 01122018 | 12192017 | 01102018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 01022018 | 2018-01-02T11:10:34+00:00 |  | 000057590-01 | GEORGE | GRIFFITH | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12292017 | 01092018 | Standard |  |  | 2017-12-29 | 16/RVB01= $3350.20 | 0 | 2018-01-09 |  | 2018-01-11 | 2018-01-11 | 11 | 11 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102070 | N179 | Acute kidney failure, unspecified | ICD10 | 01122018 | 12292017 | 01092018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 12152017 | 2017-12-15T12:13:27+00:00 |  | 000106203-01 | Mary | Grace | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 01122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12132017 | 01012018 | Standard |  |  | 2017-12-13 | 16/RUC01= $7333.11 | 0 | 2018-01-01 |  | 2018-01-10 |  | 19 | 19 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215083 | S42202D | Unsp fx upper end of l humerus, subs for fx w routn heal | ICD10 | 01122018 | 12132017 | 01012018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 12132017 | 2017-12-13T08:30:24+00:00 |  | 000008313-01 | LOUELLA | CONLEY | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12112017 | 12252017 | Standard |  |  | 2017-12-11 | 17/RVC01=$6,306.19 | 0 | 2017-12-25 |  | 2018-01-10 | 2018-01-10 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213064 | M6281 | Muscle weakness (generalized) | ICD10 | 01122018 | 12112017 | 12252017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11222017 | 2017-11-22T08:52:37+00:00 |  | 000092105-01 | Linda | Griffith | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 01122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 11202017 | 01042018 | Standard |  |  | 2017-11-20 | 17/RVC01= $6306.19 12 DAYS@ $250.00= $3000.00 8 DAYS @ $200.00= $1600.00 TOTAL: $10906.19 | 0 | 2018-01-04 |  | 2018-01-11 |  | 40 | 40 | 10906.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122044 | N390 | Urinary tract infection, site not specified | ICD10 | 01122018 | 11202017 | 01042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 10.0 |
| 12222017 | 2017-12-22T16:55:56+00:00 |  | 000098112-01 | Marie | Mann | THE LAURELS OF HILLSBORO | 952248 |  | THE LAURELS OF HILLSBORO | 1255387221 | THE LAURELS OF HILLSBORO | 952248 | 1255387221 | THE LAURELS OF HILLSBORO | 1255387221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE LAURELS OF HILLSBORO | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12222017 | 12252017 | Standard |  |  | 2017-12-22 | PER DIEM RATE OF $200.00/DAY X 3 DAYS=$600.00 | 0 | 2017-12-25 |  | 2018-01-12 |  | 3 | 3 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226006 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01122018 | 12222017 | 01252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved Skilled | 4 | Revenue | RV |  |  |  | 3.0 |
| 12152017 | 2017-12-15T09:28:50+00:00 |  | 000030039-01 | BRENDAN | KAVANAGH | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 01122018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 12122017 | 01062018 | Standard |  |  | 2017-12-12 | Per MDS: 17/RVA01 = $3586.28 | 16 | 2018-01-06 | 2018-01-11 | 2018-01-11 | 2018-01-11 | 25 | 41 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215072 | J189, J9601 | Acute respiratory failure with hypoxia | ICD10 | 01122018 | 12122017 | 01062018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 12262017 | 2017-12-26T16:10:52+00:00 |  | 000070396-01 | Priscilla | McDonald | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12212017 | 01052018 | Standard |  |  | 2017-12-21 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-01-05 | 2018-01-11 | 2018-01-11 | 2018-01-11 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227039 | I110 | Hypertensive heart disease with heart failure | ICD10 | 01122018 | 12212017 | 01052018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12212017 | 2017-12-21T08:13:10+00:00 |  | 000093479-01 | Ann | Haymaker | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12192017 | 01042018 | Standard |  |  | 2017-12-19 | 17/RVB01=$5,411.86 | 0 | 2018-01-04 |  | 2018-01-10 | 2018-01-10 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221043 | S329XXD | Fx unsp parts of lumbosacr spin & pelv, 7thD | ICD10 | 01122018 | 12192017 | 01042018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 12192017 | 2017-12-19T15:25:19+00:00 |  | 000045339-01 | Alice | Jansons | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12172017 | 01112018 | Standard |  |  | 2017-12-17 | Per MDS: 17/RUA01 = $3214.76 | 12 | 2018-01-11 | 2018-01-12 | 2018-01-12 | 2018-01-12 | 25 | 37 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220022 | Z5189, Z9181 | History of falling | ICD10 | 01122018 | 12172017 | 01112018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 12222017 | 2017-12-22T10:53:38+00:00 |  | 000080235-01 | Judith | Greuey | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | HIGHLAND OAKS HEALTH CENTER | 934015 | 1083929186 | HIGHLAND OAKS HEALTH CENTER | 1083929186 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HIGHLAND OAKS HEALTH CENTER | 01122018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12212017 | 01092018 | Standard |  |  | 2017-12-21 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-01-09 |  | 2018-01-12 |  | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222045 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 01122018 | 12212017 | 01092018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 12062017 | 2017-12-06T12:13:35+00:00 |  | 000049954-01 | LOUIS | WILLIAMS | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11282017 | 12132017 | Standard |  |  | 2017-11-28 | 16/RUC01= $7333.11 | 0 | 2017-12-13 |  | 2018-01-12 |  | 15 | 15 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206064 | I9589 | Other hypotension | ICD10 | 01122018 | 11282017 | 12132017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12112017 | 2017-12-11T13:27:21+00:00 |  | 000046174-01 | PAUL | BUSSEY | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12072017 | 01072018 | Standard |  |  | 2017-12-07 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $200.00/day x 11 SNF Days = $2,200.00  | 8 | 2018-01-07 |  | 2017-12-27 | 2018-01-12 | 31 | 39 | 8013.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211130 | G9340 | Encephalopathy, unspecified | ICD10 | 01122018 | 12072017 | 01072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8013 | 8013 | Approved | 32 | Revenue | RV |  |  |  | 4.0 |
| 12262017 | 2017-12-26T15:56:36+00:00 |  | 000026545-01 | HELMUT | HANDWERK | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12252017 | 01122018 | Standard |  |  | 2017-12-25 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-01-12 |  | 2018-01-05 | 2018-01-12 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227014 | S32009D | Unsp fracture of unsp lum vertebra, subs for fx w routn heal | ICD10 | 01122018 | 12252017 | 01122018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 12262017 | 2017-12-26T12:10:47+00:00 |  | 000033252-01 | ALICE | ARATA | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 01122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12232017 | 01122018 | Standard |  |  | 2017-12-23 | 16/RHB01= $2690.49 | 0 | 2018-01-12 |  | 2018-01-12 | 2018-01-12 | 20 | 20 | 2690.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226130 | M47892, M4802 | Spinal stenosis, cervical region | ICD10 | 01122018 | 12232017 | 01122018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12272017 | 2017-12-27T16:29:13+00:00 |  | 000060158-01 | DORIS | BOYER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 01122018 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 12252017 | 01102018 | Standard |  |  | 2017-12-25 | 17/RVB01=$5,411.86 | 0 | 2018-01-10 |  | 2018-01-12 | 2018-01-12 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228009 | I10, M5136, M545, M6281 | Muscle weakness (generalized) | ICD10 | 01122018 | 12252017 | 01102018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
