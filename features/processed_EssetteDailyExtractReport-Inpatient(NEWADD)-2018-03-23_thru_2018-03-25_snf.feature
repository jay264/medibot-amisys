Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-23_thru_2018-03-25_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-23_thru_2018-03-25_SNF
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
| 03022018 | 2018-03-02T12:11:39+00:00 |  | 000102957-01 | Arlene | Hilling | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 03232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02282018 | 03242018 | Standard |  |  | 2018-02-28 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-03-24 | 2018-03-21 | 2018-03-21 | 2018-03-21 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302038 | I6350, M6281, R278 | Other lack of coordination | ICD10 | 03232018 | 02282018 | 03242018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 02082018 | 2018-02-08T13:56:47+00:00 |  | 000085515-01 | Melvin | Salyer | ARTHUR H WIN MD LLC | 905083 | ARTHUR H | WIN | 1780667444 | GOOD SHEPHERD VILLAGE | 920229 | 1396862314 | GOOD SHEPHERD VILLAGE | 1396862314 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GOOD SHEPHERD VILLAGE | 03232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02062018 | 03232018 | Standard |  |  | 2018-02-06 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $200.00/day x 25 SNF Days = $5,000.00 Total Payment: $8,350.20 | 0 | 2018-03-23 | 2018-03-20 | 2018-02-28 | 2018-03-21 | 45 | 45 | 8350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208066 | M6281, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 03232018 | 02062018 | 03232018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8350 | 8350 | Approved | 46 | Revenue | RV |  |  |  | 3.0 |
| 02162018 | 2018-02-16T09:06:41+00:00 |  | 000073293-01 | Sue | Flack | MARIETTA HLTH CARE PHYS | 914714 | DAVID M | MONTGOMERY | 1992773501 | HIGHLAND OAKS HEALTH CENTER | 934015 | 1083929186 | HIGHLAND OAKS HEALTH CENTER | 1083929186 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HIGHLAND OAKS HEALTH CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02142018 | 03162018 | Standard |  |  | 2018-02-14 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 10 days = $2500.00 TOTAL PAYMENT = $8806.19 | 0 | 2018-03-16 | 2018-03-13 | 2018-03-23 | 2018-03-23 | 30 | 30 | 8806.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216016 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 03232018 | 02142018 | 03162018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8806 | 8806 | Approved | 31 | Revenue | RV |  |  |  | 3.0 |
| 03022018 | 2018-03-02T11:08:59+00:00 |  | 000108930-01 | JANICE | ATKIN | HICKORY CREEK ATHENS | 919770 |  | HICKORY CREEK ATHENS | 1831114446 | HICKORY CREEK ATHENS | 919770 | 1831114446 | HICKORY CREEK ATHENS | 1831114446 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HICKORY CREEK ATHENS | 03232018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03012018 | 03102018 | Standard |  |  | 2018-03-01 | UNSKILLED RATE OF $200.00/DAY X 9 DAYS=$1800.00 | 0 | 2018-03-10 |  |  | 2018-03-07 | 9 | 9 | 1800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302027 | R410 | Disorientation, unspecified | ICD10 | 03232018 | 03012018 | 03292018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1800 | 1800 | Approved Unskilled | 10 | Revenue | RV |  |  |  | 2.0 |
| 03052018 | 2018-03-05T16:06:56+00:00 |  | 000010026-01 | COLLEEN | MCDOWELL | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 03232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03012018 | 03162018 | Standard |  |  | 2018-03-01 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-03-16 | 2018-03-23 | 2018-03-23 | 2018-03-23 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306025 | S32008D | Oth fracture of unsp lum vertebra, subs for fx w routn heal | ICD10 | 03232018 | 03012018 | 03162018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 03062018 | 2018-03-06T09:03:22+00:00 |  | 000029278-01 | BONNIE | EVERMAN | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 03232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03022018 | 03172018 | Standard |  |  | 2018-03-02 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-03-17 | 2018-03-23 | 2018-03-23 | 2018-03-23 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306043 | F0280, N189 | Chronic kidney disease, unspecified | ICD10 | 03232018 | 03022018 | 03172018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 01232018 | 2018-01-23T15:43:16+00:00 |  | 000090099-01 | Elizabeth | Kusnierz | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 03232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01262018 | 03152018 | Standard |  |  | 2018-01-26 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $250.00/day x 19 SNF Days = $4,750.00 Per Diem: $200.00/day x 9 SNF Days = $1,800.00 Total Payment: $11,961.86 | 0 | 2018-03-15 | 2018-03-13 | 2018-03-23 | 2018-03-23 | 48 | 48 | 11961.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123091 | M6281, R296 | Repeated falls | ICD10 | 03232018 | 01262018 | 03152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 49 | Revenue | RV |  |  |  | 7.0 |
| 02022018 | 2018-02-02T11:51:10+00:00 |  | 000086113-01 | Lawrence | Holley Jr. | ALLIANCE PHYSICIANS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 03232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01312018 | 03172018 | Standard |  |  | 2018-01-31 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 Per Diem: $250.00/day x 25 SNF Days = $6,250.00 Total Payment: $9,464.76 | 0 | 2018-03-17 | 2018-03-14 | 2018-03-23 | 2018-03-14 | 45 | 45 | 9464.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202042 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 03232018 | 01312018 | 03172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9464 | 9464 | Approved | 46 | Revenue | RV |  |  |  | 4.0 |
| 02282018 | 2018-02-28T15:40:50+00:00 |  | 000065610-01 | ELIZABETH | WEAVER | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02272018 | 03222018 | Standard |  |  | 2018-02-27 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 3 days = $750.00 TOTAL PAYMENT = $6563.99 | 0 | 2018-03-22 |  | 2018-03-07 | 2018-03-22 | 23 | 23 | 6563.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228086 | I2510, J189, N183, R52 | Pain, unspecified | ICD10 | 03232018 | 02272018 | 03222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6563 | 6563 | Approved | 24 | Revenue | RV |  |  |  | 3.0 |
| 03082018 | 2018-03-08T12:58:03+00:00 |  | 000043801-01 | JOEY | ASHBROOK | COLS INPATIENT CARE INC | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 03232018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 03072018 | 03232018 | Standard |  |  | 2018-03-07 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 13 | 2018-03-23 |  | 2018-03-23 | 2018-03-23 | 16 | 29 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308018 | J189 | Pneumonia, unspecified organism | ICD10 | 03232018 | 03072018 | 03232018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 03122018 | 2018-03-12T11:54:50+00:00 |  | 000087247-01 | Keith | Sheridan | ALLIANCE PHYSICIANS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 03232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03072018 | 03202018 | Standard |  |  | 2018-03-07 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-03-20 |  | 2018-03-23 |  | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312051 | A419 | Sepsis, unspecified organism | ICD10 | 03232018 | 03072018 | 03202018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 02282018 | 2018-02-28T12:34:45+00:00 |  | 000083558-01 | Verla | Pitts | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02262018 | 03122018 | Standard |  |  | 2018-02-26 | Per Diem: $200.00/day x 14 days = $2800.00 Wound Vac (per invoices) = $565.00 TOTAL PAYMENT = $3365.00 | 0 | 2018-03-12 |  | 2018-03-06 | 2018-03-12 | 14 | 14 | 3365.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228055 | C189, I2510, I4891 | Unspecified atrial fibrillation | ICD10 | 03232018 | 02262018 | 03122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3365 | 3365 | Approved | 15 | Revenue | RV |  |  |  | 14.0 |
