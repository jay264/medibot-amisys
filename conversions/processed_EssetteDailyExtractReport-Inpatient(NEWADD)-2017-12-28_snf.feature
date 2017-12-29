Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-28_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-28_SNF
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
| 11282017 | 2017-11-28T15:13:45+00:00 |  | 000087845-01 | Larry | Taylor | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 12282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11262017 | 12132017 | Standard |  |  | 2017-11-26 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-12-13 |  | 2017-12-27 |  | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129074 | I509 | Heart failure, unspecified | ICD10 | 12282017 | 11262017 | 12132017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 11132017 | 2017-11-13T12:04:15+00:00 |  | 000076887-01 | Willanna | Swinehart | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | THE OAKS AT NORTHPOINTE | 931632 | 1609181700 | THE OAKS AT NORTHPOINTE | 1609181700 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE OAKS AT NORTHPOINTE | 12282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 11102017 | 12122017 | Standard |  |  | 2017-11-10 | 16/RUC01= $7333.11 | 0 | 2017-12-12 |  | 2017-12-28 | 2017-12-28 | 30 | 30 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113067 | I639, I671 | Cerebral aneurysm, nonruptured | ICD10 | 12282017 | 11102017 | 12122017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 33 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 12262017 | 2017-12-26T09:26:26+00:00 |  | 000109615-01 | Karyn | Davis | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12222017 | 12232017 | Standard |  |  | 2017-12-22 | 1 DAYS 2 $200.00 | 64 | 2017-12-23 |  |  |  | 1 | 65 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226075 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 12282017 | 12222017 | 12232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 12222017 | 2017-12-22T15:21:49+00:00 |  | 000089648-01 | Rosemary | Selby | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12212017 | 12262017 | Standard |  |  | 2017-12-21 | 5 days nonskilled @ $200.00= $1000.00 | 0 | 2017-12-26 |  |  |  | 0 | 0 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222077 | R112, R42 | Dizziness and giddiness | ICD10 | 12282017 | 12212017 | 12262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 6 | Revenue | RV |  |  |  | 6.0 |
| 11282017 | 2017-11-28T09:38:18+00:00 |  | 000077825-01 | Catherine | Barhite | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | WHISPERING HILLS CARE CE | 952526 | 1245758333 | WHISPERING HILLS REHABILITATION & NU | 1245758333 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WHISPERING HILLS REHABILITATION & NU | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11272017 | 12202017 | Standard |  |  | 2017-11-27 | Contract/RUG: 17/HB1 (Per MDS) = $3,448.45 Per Diem: $200.00/day x 3 SNF Days = $600.00 Total Payment: $4,048.45 | 77 | 2017-12-20 |  | 2017-12-27 | 2017-12-27 | 23 | 100 | 4048.45 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128074 | R262, R296 | Repeated falls | ICD10 | 12282017 | 11272017 | 12202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4048 | 4048 | Approved | 24 | Revenue | RV |  |  |  | 3.0 |
| 11012017 | 2017-11-01T11:48:42+00:00 |  | 000099739-01 | Deroy | Taylor | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10312017 | 11222017 | Standard |  |  | 2017-10-31 | 22 days @ $520.00/vent= $11440.00 Imipenem per invoice= $338.27 total: $11778.27 | 0 | 2017-11-22 |  | 2017-12-11 |  | 22 | 22 | 11778.27 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101044 | J9600, R6521 | Severe sepsis with septic shock | ICD10 | 12282017 | 10312017 | 11222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 23 | Revenue | RV |  |  |  | 1.0 |
| 12012017 | 2017-12-01T12:52:47+00:00 |  | 000107304-01 | Johnny | Weiss | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 12282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11302017 | 12142017 | Standard |  |  | 2017-11-30 | 16/RVB01= $3350.20 | 0 | 2017-12-14 |  | 2017-12-21 | 2017-12-21 | 14 | 14 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201056 | A419, M86171, Z89411 | Acquired absence of right great toe | ICD10 | 12282017 | 11302017 | 12142017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12122017 | 2017-12-12T12:12:28+00:00 |  | 000087007-01 | Janice | Knisley | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12092017 | 12122017 | Standard |  |  | 2017-12-09 | Per Diem: $200.00/day x 3 SNF Days = $600.00 | 0 | 2017-12-12 |  | 2017-12-27 |  | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212061 | M6281, R269, Z471, Z4889 | Encounter for other specified surgical aftercare | ICD10 | 12282017 | 12092017 | 12122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 12042017 | 2017-12-04T15:07:18+00:00 |  | 000013240-01 | DOROTHEA | BREWER | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12032017 | 12132017 | Standard |  |  | 2017-12-03 | 16/RVC01= $3539.19 | 0 | 2017-12-13 |  | 2017-12-21 | 2017-12-21 | 10 | 10 | 3539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204162 | M545, N390, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 12282017 | 12032017 | 12132017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 10312017 | 2017-10-31T13:40:18+00:00 |  | 000088156-01 | Helen | Haskins | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10302017 | 12212017 | Standard |  |  | 2017-10-30 | Contract/RUG: 16/RHB (Per MDS) = $2,690.49 Per Diem: $200.00/day x 29 SNF Days = $5,800.00 Total Payment: $8,490.49 | 0 | 2017-12-21 | 2017-12-27 | 2017-12-27 | 2017-12-27 | 49 | 49 | 8490.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031068 | M6281, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 12282017 | 10302017 | 12212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8490 | 8490 | Approved | 53 | Revenue | RV |  |  |  | 5.0 |
| 11032017 | 2017-11-03T15:11:36+00:00 |  | 000083865-01 | Mary | Kinser | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 12282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11062017 | 12012017 | Standard |  |  | 2017-12-06 | 17/rvb01= $5411.86 1 day @ $200.00= $200.00 total: $5611.86 | 0 | 2017-12-01 |  | 2017-12-28 | 2017-12-28 | 21 | 21 | 5611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106059 | K5660 | Unspecified intestinal obstruction | ICD10 | 12282017 | 11062017 | 12012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5611 | 5611 | Approved | 26 | Revenue | RV |  |  |  | 1.0 |
| 12082017 | 2017-12-08T13:13:01+00:00 |  | 000057879-01 | HOWARD | LEWINTER | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12062017 | 12232017 | Standard |  |  | 2017-12-06 | Per MDS: 17/RVB = $5411.86 | 9 | 2017-12-23 | 2017-12-28 | 2017-12-28 | 2017-12-28 | 17 | 26 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208065 | I25810 | Atherosclerosis of CABG w/o angina pectoris | ICD10 | 12282017 | 12062017 | 12232017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 12192017 | 2017-12-19T12:44:23+00:00 |  | 000020194-01 | WILLARD | CLARK | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12182017 | 12252017 | Standard |  |  | 2017-12-18 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-12-25 |  | 2017-12-27 | 2017-12-27 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219114 | I10, R42, R739 | Hyperglycemia, unspecified | ICD10 | 12282017 | 12182017 | 12252017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10312017 | 2017-10-31T14:59:05+00:00 |  | 000036636-01 | ANNETTE | HARRIS | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10272017 | 12212017 | Standard |  |  | 2017-10-27 | Per MDS: 17/RUA01 = $3214.76 Per Diem: $250.00/day x 35 days = $8750.00 TOTAL PAYMENT = $11,964.76 | 0 | 2017-12-21 | 2017-12-19 | 2017-12-28 | 2017-12-19 | 55 | 55 | 11964.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031092 | S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 12282017 | 10272017 | 12212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 56 | Revenue | RV |  |  |  | 2.0 |
| 10042017 | 2017-10-04T14:12:14+00:00 |  | 000062128-01 | VICKI | HOLLAND | LONDON HEALTH & REHAB CENTER | 943587 |  | LONDON HEALTH & REHAB CENTER | 1912387879 | LONDON HEALTH & REHAB CENTER | 943587 | 1912387879 | LONDON HEALTH & REHAB CENTER | 1912387879 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LONDON HEALTH & REHAB CENTER | 12282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10032017 | 11122017 | Standard |  |  | 2017-10-03 | Per Diem: $200.00/day x 40 days = $8,000.00 Carve Out: IV Cefazolin 76 doses = $1,000.90 (per invoices) Total Payment: $ 9,000.90 | 0 | 2017-11-12 | 2017-11-10 | 2017-11-10 | 2017-11-10 | 40 | 40 | 9000.9 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004076 | S21209D | Unsp opn wnd unsp bk wl of thorax w/o penet thor cav, subs | ICD10 | 12282017 | 10032017 | 11122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9000 | 9000 | Approved | 41 | Revenue | RV |  |  |  | 3.0 |
| 12012017 | 2017-12-01T11:48:57+00:00 |  | 000110954-01 | Ruth | Mault | L M GUIRNALDA MD LLC | 939630 | LEONARDO M | GUIRNALDA | 1659452498 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 12282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11202017 | 12252017 | Standard |  |  | 2017-11-20 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 15 SNF Days = $3,000.00 Total Payment: $8,411.86 | 20 | 2017-12-25 |  | 2017-12-28 | 2017-12-22 | 35 | 55 | 8411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201053 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 12282017 | 11202017 | 12252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8411 | 8411 | Approved | 36 | Revenue | RV |  |  |  | 4.0 |
| 12052017 | 2017-12-05T08:34:31+00:00 |  | 000076723-01 | Kenneth | Stoner | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | WHISPERING HILLS CARE CE | 952526 | 1245758333 | WHISPERING HILLS REHABILITATION & NU | 1245758333 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WHISPERING HILLS REHABILITATION & NU | 12282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12012017 | 12232017 | Standard |  |  | 2017-12-01 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 22 | 2017-12-23 |  | 2017-12-27 | 2017-12-28 | 20 | 44 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205066 | F0391, M6250, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 12282017 | 12012017 | 12232017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 11302017 | 2017-11-30T14:59:15+00:00 |  | 000093179-01 | Charles | Bailey Jr. | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11282017 | 12232017 | Standard |  |  | 2017-11-28 | Per MDS: 17/RHA01 = $2812.08 Per Diem: $200.00/day x 5 days = $1000.00 TOTAL PAYMENT = 3812.08 | 75 | 2017-12-23 |  | 2017-12-28 |  | 25 | 100 | 3812.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130115 | B9689, I330, Z5189 | Encounter for other specified aftercare | ICD10 | 12282017 | 11282017 | 12232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3812 | 3812 | Approved | 26 | Revenue | RV |  |  |  | 5.0 |
| 12052017 | 2017-12-05T14:36:00+00:00 |  | 000071745-01 | Lila | Miller | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 12252017 | Standard |  |  | 2017-12-01 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-12-25 | 2017-12-22 | 2017-12-28 | 2017-12-28 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205094 | I6789, Z5189 | Encounter for other specified aftercare | ICD10 | 12282017 | 12012017 | 12252017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 12122017 | 2017-12-12T14:20:58+00:00 |  | 000032560-01 | BEATRICE | WYNETT | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12082017 | 12182017 | Standard |  |  | 2017-12-08 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-12-18 |  | 2017-12-28 |  | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212076 | M6281, Z5189 | Encounter for other specified aftercare | ICD10 | 12282017 | 12082017 | 12182017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 12272017 | 2017-12-27T11:01:26+00:00 |  | 000080748-01 | Troy | Wilson | UNION PHYSICIAN SRVS LLC | 931784 | DAVID JEFFREY | BURRIER | 1699769422 | RIVERSIDE MANOR NURSING & REHABILITA | 925378 | 1578664272 | RIVERSIDE MANOR NURSING & REHABILITA | 1578664272 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | RIVERSIDE MANOR NURSING & REHABILITA | 12282017 | Denied | MediGold Southeast OH Essential Care | Fax | Services Available In-Network | Inpatient | 12282017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171227076 | M6281, R4182, S066X0A | Traum subrac hem w/o loss of consciousness, init | ICD10 | 12282017 | 12272017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12282017 | 2017-12-28T14:12:18+00:00 |  | 000059879-01 | LOIS | GROOMS | CEN OHIO GERIATRICS LLC | 936950 | PETER D | HUCEK | 1548274871 | SARAH MOORE HEALTH CARE CENTER | 946271 | 1063476802 | SARAH MOORE HEALTH CARE CENTER | 1063476802 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SARAH MOORE HEALTH CARE CENTER | 12282017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Inpatient | 12282017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171228068 | G459, I2699, I5030, K5700, M6281, R0602 | Shortness of breath | ICD10 | 12282017 | 12272017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
