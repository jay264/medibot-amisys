Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-15_thru_2017-12-17_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-15_thru_2017-12-17_SNF
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
| 11202017 | 2017-11-20T16:22:40+00:00 |  | 000088546-01 | Kathryn | Elliott | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 12152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11172017 | 12142017 | Standard |  |  | 2017-11-17 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-12-14 | 2017-12-08 | 2017-12-14 | 2017-12-14 | 20 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121029 | M6281, R262, Z5289 | Donor of other specified organs or tissues | ICD10 | 12152017 | 11172017 | 12142017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 28 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 12052017 | 2017-12-05T15:11:39+00:00 |  | 000004774-01 | MARTHA | ORTLIEB | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 12152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 12132017 | Standard |  |  | 2017-12-01 | 16/RUC01=$7,333.11 | 0 | 2017-12-13 |  | 2017-12-13 | 2017-12-06 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205097 | L03115 | Cellulitis of right lower limb | ICD10 | 12152017 | 12012017 | 12132017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 11132017 | 2017-11-13T11:28:32+00:00 |  | 000042612-01 | SHEILA | MURPHY | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 12152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11102017 | 11222017 | Standard |  |  | 2017-11-10 | 17/RUA01=$3,214.76 | 0 | 2017-11-22 |  | 2017-11-27 | 2017-12-13 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113061 | Z96642 | Presence of left artificial hip joint | ICD10 | 12152017 | 11102017 | 11222017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 12042017 | 2017-12-04T17:30:36+00:00 |  | 000006586-01 | CAROL | STEPP | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 12152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 12122017 | Standard |  |  | 2017-12-01 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 2 | 2017-12-12 |  | 2017-12-14 | 2017-12-12 | 11 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205063 | L03116 | Cellulitis of left lower limb | ICD10 | 12152017 | 12012017 | 12122017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 10052017 | 2017-10-05T16:20:58+00:00 |  | 000093290-01 | Gary | Allen | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 12152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10032017 | 10132017 | Standard |  |  | 2017-10-03 | PER DIEM RATE OF $200.00/DAY X 10=$2,000.00 CARVE OUT PER INVOICE FOR WOUND VAC=$500.00 TOTAL PAYMENT=$2,500.00 | 0 | 2017-10-13 |  | 2017-10-24 | 2017-10-24 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006005 | A1802, Z5189 | Encounter for other specified aftercare | ICD10 | 12152017 | 10032017 | 10132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 2500 |  | 11 | Revenue | RV |  |  |  | 10.0 |
| 11292017 | 2017-11-29T13:52:31+00:00 |  | 000071675-01 | Christina | Lawrence | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 12152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11282017 | 12132017 | Standard |  |  | 2017-11-28 | 17/RUA01=$3,214.76 | 0 | 2017-12-13 |  | 2017-12-13 | 2017-12-13 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130047 | S42201A | Unsp fracture of upper end of right humerus, init | ICD10 | 12152017 | 11282017 | 12132017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 11092017 | 2017-11-09T14:40:33+00:00 |  | 000110423-01 | Trudy | Ware | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 12152017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 11082017 | 12032017 | Standard |  |  | 2017-11-08 | Per Diem: $200.00/day x 25 SNF Days = $5,000.00 | 3 | 2017-12-03 |  |  |  | 25 | 28 | 5000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109078 | T8131XA | Disruption of external operation (surgical) wound, NEC, init | ICD10 | 12152017 | 11082017 | 12032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5000 | 5000 | Approved | 26 | Revenue | RV |  |  |  | 2.0 |
| 11132017 | 2017-11-13T14:04:00+00:00 |  | 000054987-01 | SHARON | BAKER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 12152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11092017 | 11292017 | Standard |  |  | 2017-11-09 | Contract/RUG: 17/RHB  (Per MDS) = $3,699.42 | 0 | 2017-11-29 |  | 2017-12-14 | 2017-12-12 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113097 | F339, I10 | Essential (primary) hypertension | ICD10 | 12152017 | 11092017 | 11292017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11102017 | 2017-11-10T13:09:17+00:00 |  | 000088104-01 | Robert | Newton | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 12152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11082017 | 12112017 | Standard |  |  | 2017-11-08 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 13 days = $3250.00 TOTAL PAYMENT = $9556.19 | 9 | 2017-12-11 |  | 2017-12-14 | 2017-12-14 | 33 | 42 | 9556.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110062 | J189 | Pneumonia, unspecified organism | ICD10 | 12152017 | 11082017 | 12112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9556 | 9556 | Approved | 34 | Revenue | RV |  |  |  | 3.0 |
| 12042017 | 2017-12-04T15:08:55+00:00 |  | 000045339-01 | Alice | Jansons | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 12152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12122017 | Standard |  |  | 2017-11-30 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-12-12 |  | 2017-12-14 | 2017-12-14 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204164 | C069, Z5189 | Encounter for other specified aftercare | ICD10 | 12152017 | 11302017 | 12122017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 11302017 | 2017-11-30T17:48:24+00:00 |  | 000031027-01 | CAROL | KENDRICK | PAUL E HARRIS JR DO INC | 905253 | PAUL E | HARRIS III | 1467679365 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 12152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11292017 | 12142017 | Standard |  |  | 2017-11-29 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-12-14 | 2017-12-15 | 2017-12-15 | 2017-12-15 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201003 | R296 | Repeated falls | ICD10 | 12152017 | 11292017 | 12142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12012017 | 2017-12-01T11:55:24+00:00 |  | 000076354-01 | Bonnie | Hunter | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | WILLOW HAVEN CARE CENTER | 924194 | 1306834148 | WILLOW HAVEN CARE CENTER | 1306834148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WILLOW HAVEN CARE CENTER | 12152017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 11302017 | 12142017 | Standard |  |  | 2017-11-30 | 17/RUA01= $3214.76 | 0 | 2017-12-14 |  | 2017-12-15 | 2017-12-15 | 14 | 14 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201046 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 12152017 | 11302017 | 12142017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12012017 | 2017-12-01T15:09:52+00:00 |  | 000042738-01 | JOAN | CLIFTON | BROWN MEMORIAL HOME INC | 939459 |  | BROWN MEMORIAL HOME INC | 1780617043 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 12152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12142017 | Standard |  |  | 2017-11-30 | Per MDS: 17/RUB01 = $5813.99 | 13 | 2017-12-14 |  | 2017-12-15 | 2017-12-15 | 14 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201065 | N130 | HYDRONEPHROSIS WITH URETEROPELVIC JUNCTION OBSTRUCTION | ICD10 | 12152017 | 11302017 | 12142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
