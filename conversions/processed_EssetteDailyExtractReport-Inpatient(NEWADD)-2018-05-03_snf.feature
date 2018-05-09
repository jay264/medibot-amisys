Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-03_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-03_SNF
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
| 01232018 | 2018-01-23T14:34:27+00:00 |  | 000084371-01 | Willie | Davis | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01182018 | 04282018 | Standard |  |  | 2018-01-18 | 17/RHC01=$4,132.02 PER DIEM RATE OF $200.00/DAY X 80 DAYS=$16,000.00 TOTAL PAYMENT=$20,132.02 | 0 | 2018-04-28 |  | 2018-05-02 | 2018-05-02 | 100 | 100 | 20132.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123087 | S82251D | Displ commnt fx shaft of r tibia, 7thD | ICD10 | 05032018 | 01182018 | 04282018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 101 | Revenue | RV |  |  |  | 9.0 |
| 03132018 | 2018-03-13T16:00:23+00:00 |  | 000060188-01 | GARY | LUCAS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03102018 | 04272018 | Standard |  |  | 2018-03-10 | 17/RVC01= $6306.19 26 DAYS @ $200.00= $5200.00 TOTAL: $11506.19 | 0 | 2018-04-27 | 2018-05-24 | 2018-05-03 | 2018-05-03 | 46 | 46 | 11506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313094 | S82401D | Unsp fx shaft of r fibula, subs for clos fx w routn heal | ICD10 | 05032018 | 03102018 | 04272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 49 | Revenue | RV |  |  |  | 5.0 |
| 03292018 | 2018-03-29T16:47:06+00:00 |  | 000091696-01 | Vicki | Vigiris | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 05032018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03282018 | 04292018 | Standard |  |  | 2018-03-28 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $250.00/day x 12 SNF Days = $3,000.00 Total Payment: $8,813.99 | 0 | 2018-04-29 | 2018-04-26 | 2018-05-02 | 2018-05-02 | 32 | 32 | 8813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330031 | Z471, Z96641 | Presence of right artificial hip joint | ICD10 | 05032018 | 03282018 | 04292018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8813 | 8813 | Approved | 33 | Revenue | RV |  |  |  | 5.0 |
| 04042018 | 2018-04-04T12:52:45+00:00 |  | 000109912-01 | William | Redick | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04032018 | 04182018 | Standard |  |  | 2018-04-03 | 17/RVC01=$6,306.19 | 0 | 2018-04-18 |  | 2018-04-20 | 2018-05-01 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404073 | S72141D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 05032018 | 04032018 | 04182018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 04052018 | 2018-04-05T14:01:10+00:00 |  | 000100775-01 | Ruby | Morgan | ALLIANCE PHYSICIANS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04032018 | 04262018 | Standard |  |  | 2018-04-03 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-04-26 |  | 2018-05-02 | 2018-04-23 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405052 | M25552, S161XXS, Z7409, W19XXXS | Unspecified fall, sequela | ICD10 | 05032018 | 04032018 | 04262018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 04112018 | 2018-04-11T14:50:00+00:00 |  | 000012389-01 | REVA | HENINGER | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04102018 | 04202018 | Standard |  |  | 2018-04-10 | 16/RUA01=$3,214.76 | 0 | 2018-04-20 |  | 2018-04-30 | 2018-04-30 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411100 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 05032018 | 04102018 | 04202018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 04132018 | 2018-04-13T11:32:35+00:00 |  | 000018798-01 | RUSSELL | TAYLOR | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04122018 | 05022018 | Standard |  |  | 2018-04-12 | Contract/RUB: 17/RVC (Per MDS) $6,306.19 | 0 | 2018-05-02 |  | 2018-05-03 | 2018-05-03 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413058 | J189 | Pneumonia, unspecified organism | ICD10 | 05032018 | 04122018 | 05022018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04132018 | 2018-04-13T16:40:09+00:00 |  | 000009843-01 | SUZANNE | HEROLD | CEN OHIO GERIATRICS LLC | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04112018 | 04282018 | Standard |  |  | 2018-04-11 | 17/RUB01=$5,813.99 | 0 | 2018-04-28 |  | 2018-05-01 | 2018-05-01 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416019 | S8291XA | Unsp fracture of right lower leg, init for clos fx | ICD10 | 05032018 | 04112018 | 05282018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 03232018 | 2018-03-23T14:20:25+00:00 |  | 000084483-01 | Jonathan | Kirk | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 05032018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 03212018 | 04262018 | Standard |  |  | 2018-03-21 | 17/RVB01= $5411.86 16 DAYS @ $200.00= $3200.00 TOTAL: $8611.86 | 0 | 2018-04-26 |  | 2018-05-03 | 2018-05-03 | 36 | 36 | 8611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323063 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 05032018 | 03212018 | 04262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8611 | 8611 | Approved | 37 | Revenue | RV |  |  |  | 2.0 |
| 04032018 | 2018-04-03T09:15:46+00:00 |  | 000028862-01 | VIOLA | MESSINA | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03302018 | 04302018 | Standard |  |  | 2018-03-30 | 16/RUC01= $7333.11 11 DAYS @ $250.00= $2750.00 TOTAL: $10083.11 | 4 | 2018-04-30 |  | 2018-05-03 | 2018-05-03 | 31 | 35 | 10083.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403035 | J189, M6281 | Muscle weakness (generalized) | ICD10 | 05032018 | 03302018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04052018 | 2018-04-05T15:47:26+00:00 |  | 000104562-01 | Carol | Estes | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03222018 | 04152018 | Standard |  |  | 2018-03-22 | APPROVED FOR 20 DAY CASE RATE ONLY 17/RUA01=$3,214.76 | 0 | 2018-04-15 |  | 2018-05-02 | 2018-05-02 | 20 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405068 | S12100A | Unsp disp fx of second cervical vertebra, init for clos fx | ICD10 | 05032018 | 03222018 | 04152018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 04112018 | 2018-04-11T15:41:42+00:00 |  | 000031381-01 | LARNEY | COLE | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 05032018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 04092018 | 04252018 | Standard |  |  | 2018-04-09 | 17/RUC01= $6049.81 | 0 | 2018-04-25 |  | 2018-05-03 | 2018-05-03 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411104 | S0990XD | Unspecified injury of head, subsequent encounter | ICD10 | 05032018 | 04092018 | 04252018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 04162018 | 2018-04-16T10:34:55+00:00 |  | 000058380-01 | KAY | THOMPSON | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04122018 | 05012018 | Standard |  |  | 2018-04-12 | 16/RUC01=$7,333.11 | 0 | 2018-05-01 |  | 2018-05-03 | 2018-05-03 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416039 | Z471, Z96651 | Presence of right artificial knee joint | ICD10 | 05032018 | 04122018 | 05012018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 04162018 | 2018-04-16T11:33:42+00:00 |  | 000038056-01 | EMIL | HILES | MEDICAL & SURG ASSOC INC | 913868 | RAJU | FATEHCHAND | 1346201407 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04152018 | 04202018 | Standard |  |  | 2018-04-15 | PER DIEM RATE OF $520.00/DAY FOR VENT X 5 DAYS=$2,600.00 | 3 | 2018-04-20 |  | 2018-05-01 |  | 5 | 8 | 2600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416057 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 05032018 | 04152018 | 04202018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2600 | 2600 | Approved Skilled | 6 | Revenue | RV |  |  |  | 5.0 |
| 04162018 | 2018-04-16T12:56:42+00:00 |  | 000025047-01 | ETHEL | JOHNSON | CEN OHIO GERIATRICS LLC | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04122018 | 04202018 | Standard |  |  | 2018-04-12 | NON-SKILLED RATE OF $200.00/DAY X 8 DAYS=$1,600.00 | 0 | 2018-04-20 | 2018-05-01 |  | 2018-05-01 | 8 | 8 | 1600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416087 | M25461 | Effusion, right knee | ICD10 | 05032018 | 04122018 | 04202018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved Skilled | 9 | Revenue | RV |  |  |  | 1.0 |
| 04172018 | 2018-04-17T12:18:53+00:00 |  | 000013216-01 | PHYLLIS | GREENE | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 05032018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04132018 | 04272018 | Standard |  |  | 2018-04-13 | 16/RUB01= $4429.71 | 0 | 2018-04-27 |  | 2018-05-03 | 2018-05-03 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417089 | S72141D | Displ intertroch fx r femur, subs for clos fx w routn heal | ICD10 | 05032018 | 04132018 | 04272018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04192018 | 2018-04-19T14:40:29+00:00 |  | 000032093-01 | CHARLOTTE | FLOWERS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04182018 | 04272018 | Standard |  |  | 2018-04-18 | 17/RUC01= $6049.81 | 0 | 2018-04-27 |  | 2018-05-03 | 2018-05-03 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419072 | C50919, C7951, D61811, I272, N179, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 05032018 | 04182018 | 04272018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 04202018 | 2018-04-20T14:20:55+00:00 |  | 000092990-01 | Linda | Borland | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04192018 | 05032018 | Standard |  |  | 2018-04-19 | Contract/RUG: 17/RVC (Per MDS) =$6,306.19 | 0 | 2018-05-03 |  | 2018-05-03 | 2018-05-03 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420072 | Z96653 | Presence of artificial knee joint, bilateral | ICD10 | 05032018 | 04192018 | 05032018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04242018 | 2018-04-24T13:51:40+00:00 |  | 000075118-01 | Clarence | Sink Jr | HEARTLAND OF SPRINGFIELD | 917780 | CHRISTINE B | WELLER | 1811953318 | VANCREST OF NEW CARLISLE | 925244 | 1871839167 | DAYVIEW CARE CENTER | 1871839167 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DAYVIEW CARE CENTER | 05032018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04222018 | 04242018 | Standard |  |  | 2018-04-22 | Per Diem: $200.00/day x 2 SNF Days = $400.00 | 0 | 2018-04-24 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424075 | B953, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05032018 | 04222018 | 04242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 04252018 | 2018-04-25T15:54:03+00:00 |  | 000086359-01 | George | Walker | CLYO INTERNAL MEDICINE | 911103 | KRISTY E | ANDERSON | 1437340304 | OTTERBEIN CLEAR CREEK | 952521 | 1992977516 | OTTERBEIN CLEAR CREEK | 1992977516 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN CLEAR CREEK | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04232018 | 05012018 | Standard |  |  | 2018-04-23 | 17/RVA01= $3586.28 | 11 | 2018-05-01 |  | 2018-05-03 | 2018-05-03 | 8 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425085 | A419, J188 | Other pneumonia, unspecified organism | ICD10 | 05032018 | 04232018 | 05012018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 05032018 | 2018-05-03T14:53:20+00:00 |  | 000024964-01 | JOSEPH | PANICO | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 05032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05012018 | 05022018 | Standard |  |  | 2018-05-01 | 1 DAY @ $200.00 | 0 | 2018-05-02 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503054 | N179 | Acute kidney failure, unspecified | ICD10 | 05032018 | 05012018 | 05022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
