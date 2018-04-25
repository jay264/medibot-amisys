Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-20_thru_2018-04-22_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-20_thru_2018-04-22_SNF
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
| 02132018 | 2018-02-13T12:03:46+00:00 |  | 000027018-01 | Tony | Meeks | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 04202018 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 02122018 | 04052018 | Standard |  |  | 2018-02-12 | 16/RUB01=$4,429.71 PER DIEM RATE OF $250.00/day x 32 days=$8,000.00 TOTAL PAYMENT=$12,429.71 | 0 | 2018-04-05 |  | 2018-04-13 |  | 52 | 52 | 12429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213086 | M6281 | Muscle weakness (generalized) | ICD10 | 04202018 | 02122018 | 04052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 53 | Revenue | RV |  |  |  | 1.0 |
| 03022018 | 2018-03-02T13:16:26+00:00 |  | 000048767-01 | DON | SMITH | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | FRIENDSHIP VILLAGE DUBLI | 900154 | 1891778536 | FRIENDSHIP VILLAGE DUBLIN | 1891778536 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE DUBLIN | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03012018 | 04152018 | Standard |  |  | 2018-03-01 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X 25 DAYS=$5,000.00 TOTAL PAYMENT=$10,411.86 | 0 | 2018-04-15 |  | 2018-04-18 | 2018-04-16 | 45 | 45 | 10411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302050 | J189 | Pneumonia, unspecified organism | ICD10 | 04202018 | 03012018 | 04152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 46 | Revenue | RV |  |  |  | 4.0 |
| 03292018 | 2018-03-29T08:37:40+00:00 |  | 000011935-01 | BETTY | GROVE | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03272018 | 04182018 | Standard |  |  | 2018-03-27 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-04-18 |  | 2018-04-10 | 2018-04-18 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329027 | I10, I4891, I509, J90, N189 | Chronic kidney disease, unspecified | ICD10 | 04202018 | 03272018 | 04182018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 04022018 | 2018-04-02T11:41:00+00:00 |  | 000092239-01 | James | Peer | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 04202018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03302018 | 04202018 | Standard |  |  | 2018-03-30 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 51 | 2018-04-20 |  | 2018-04-19 | 2018-04-19 | 21 | 72 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402060 | M6281, R269 | Unspecified abnormalities of gait and mobility | ICD10 | 04202018 | 03302018 | 04202018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 04022018 | 2018-04-02T15:13:35+00:00 |  | 000102957-01 | Arlene | Hilling | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 04202018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03292018 | 04092018 | Standard |  |  | 2018-03-29 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 24 | 2018-04-09 |  | 2018-04-19 | 2018-04-19 | 11 | 35 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402119 | M6281 | Muscle weakness (generalized) | ICD10 | 04202018 | 03292018 | 04092018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01292018 | 2018-01-29T11:35:04+00:00 |  | 000107304-01 | Johnny | Weiss | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 04202018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01262018 | 04122018 | Standard |  |  | 2018-01-26 | 72 DAYS @ $200.00= $14400.00 WOUND VAC & SUPPLIES(PER INVOICE)= $3993.50 VANCO (PER INVOICE)= $243.43 TOTAL: $18636.93 | 28 | 2018-04-12 |  | 2018-04-20 |  | 72 | 100 | 18636.93 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129094 | E11621, L03115, S98311D | Complete traumatic amputation of right midfoot, subs encntr | ICD10 | 04202018 | 01262018 | 04122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 77 | Revenue | RV |  |  |  | 7.0 |
| 02282018 | 2018-02-28T16:48:18+00:00 |  | 000075783-01 | Darmel | Steen | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02262018 | 04212018 | Standard |  |  | 2018-02-26 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 34 SNF Days = $6,800.00 Total Payment: $12,211.86 | 5 | 2018-04-21 | 2018-04-18 | 2018-04-20 | 2018-04-20 | 54 | 59 | 12211.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301005 | F0150, I6990, R269, Z9181 | History of falling | ICD10 | 04202018 | 02262018 | 04212018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 55 | Revenue | RV |  |  |  | 3.0 |
| 03272018 | 2018-03-27T15:42:19+00:00 |  | 000021260-01 | ROBERTA | CARLSON | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03232018 | 04182018 | Standard |  |  | 2018-03-23 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 6 days = $1500.00 OTAL PAYMENT = $7313.99 | 0 | 2018-04-18 |  | 2018-04-19 | 2018-04-19 | 26 | 26 | 7313.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328026 | S72141D | Displ intertroch fx r femur, subs for clos fx w routn heal | ICD10 | 04202018 | 03232018 | 04182018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7313 | 7313 | Approved | 27 | Revenue | RV |  |  |  | 6.0 |
| 03292018 | 2018-03-29T10:40:36+00:00 |  | 000096004-01 | DONALD | MCCORMICK | MIDWEST HOSPITALISTS INC | 929666 | GALINA | KRAYTERMAN | 1235253378 | OTTERBEIN BATAVIA LLC | 952745 | 1598131476 | OTTERBEIN UNION TOWNSHIP | 1598131476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN UNION TOWNSHIP | 04202018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03282018 | 04122018 | Standard |  |  | 2018-03-28 | 17/RUC01= $6049.81 | 0 | 2018-04-12 |  | 2018-04-19 | 2018-04-19 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329046 | R4182 | Altered mental status, unspecified | ICD10 | 04202018 | 03282018 | 04122018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 03292018 | 2018-03-29T12:02:08+00:00 |  | 000076428-01 | Geraldine | Burnworth | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03282018 | 04182018 | Standard |  |  | 2018-03-28 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-04-18 |  | 2018-04-18 | 2018-04-18 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329056 | J189, Z5189 | Encounter for other specified aftercare | ICD10 | 04202018 | 03282018 | 04182018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 04032018 | 2018-04-03T15:30:45+00:00 |  | 000092256-01 | Ruth | Peer | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 04202018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03312018 | 04202018 | Standard |  |  | 2018-03-31 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-04-20 |  | 2018-04-19 | 2018-04-19 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403091 | R269 | Unspecified abnormalities of gait and mobility | ICD10 | 04202018 | 03312018 | 04202018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04042018 | 2018-04-04T16:17:25+00:00 |  | 000051579-01 | DON | DAY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04022018 | 04192018 | Standard |  |  | 2018-04-02 | Per MDS: 17/RUB01 = $5813.99 | 1 | 2018-04-19 |  | 2018-04-20 | 2018-04-20 | 17 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404092 | S72142D | Displ intertroch fx l femur, subs for clos fx w routn heal | ICD10 | 04202018 | 04022018 | 04192018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 04062018 | 2018-04-06T09:19:44+00:00 |  | 000003661-01 | CHARLES | ORR | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04052018 | 04182018 | Standard |  |  | 2018-04-05 | Per MDS: 17/RUC01 - $6049.81 | 0 | 2018-04-18 |  | 2018-04-13 | 2018-04-19 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406008 | I4891, I5033, J189, R296 | Repeated falls | ICD10 | 04202018 | 04052018 | 04182018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 04062018 | 2018-04-06T14:27:14+00:00 |  | 000029427-01 | TRACY | STANTON | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04052018 | 04182018 | Standard |  |  | 2018-04-05 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-04-18 |  | 2018-04-19 | 2018-04-16 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406047 | E119, I10, I214, I2510, Q600, R1110, R7989, Z7409 | Other reduced mobility | ICD10 | 04202018 | 04052018 | 04182018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 04092018 | 2018-04-09T12:52:40+00:00 |  | 000011709-01 | MICHAEL | LOSACCO | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04072018 | 04192018 | Standard |  |  | 2018-04-07 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-04-19 |  | 2018-04-16 | 2018-04-19 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409071 | C799, I2510, I639, R569 | Unspecified convulsions | ICD10 | 04202018 | 04072018 | 04192018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 04092018 | 2018-04-09T13:48:33+00:00 |  | 000079766-01 | Donie | Estep | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04072018 | 04192018 | Standard |  |  | 2018-04-07 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-04-19 |  | 2018-04-20 | 2018-04-20 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409084 | G8918, S2220XD, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 04202018 | 04072018 | 04192018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 02272018 | 2018-02-27T16:33:04+00:00 |  | 000101749-01 | Cynthia | Laihr | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02232018 | 04032018 | Standard |  |  | 2018-02-23 | 17/RUC01= $6049.81 18 DAYS @ $200.00= $3600.00 TOTAL: $9649.81 | 0 | 2018-04-03 |  | 2018-04-18 | 2018-04-18 | 38 | 38 | 9649.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228003 | I480 | Paroxysmal atrial fibrillation | ICD10 | 04202018 | 02232018 | 04032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9649 | 9649 | Approved | 40 | Revenue | RV |  |  |  | 4.0 |
| 03262018 | 2018-03-26T14:13:49+00:00 |  | 000000971-01 | LELAND | HESS | COLS INPATIENT CARE INC | 906074 | THOMAS F | BRADY | 1316980741 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03232018 | 04202018 | Standard |  |  | 2018-03-23 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 6 SNF Days = $1,200.00 Total Payment:$7,249.81 | 0 | 2018-04-20 |  | 2018-04-20 | 2018-04-20 | 26 | 26 | 7249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327007 | R5381 | Other malaise | ICD10 | 04202018 | 03232018 | 04202018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7249 | 7249 | Approved | 29 | Revenue | RV |  |  |  | 6.0 |
| 04032018 | 2018-04-03T15:11:43+00:00 |  | 000086359-01 | George | Walker | WELLER HEALTH TRANSITION | 917780 | CHRISTINE B | WELLER | 1811953318 | SPRINGFIELD MASONIC COMM | 939421 | 1962510305 | SPRINGFIELD MASONIC COMMUNITY | 1962510305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SPRINGFIELD MASONIC COMMUNITY | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04032018 | 04142018 | Standard |  |  | 2018-04-03 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-04-14 |  | 2018-04-19 | 2018-04-19 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403085 | M5440, S32000D | Wedge comprsn fx unsp lum vertebra, subs for fx w routn heal | ICD10 | 04202018 | 04032018 | 04142018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 04042018 | 2018-04-04T15:26:34+00:00 |  | 000087677-01 | Margaret | Preston | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 04202018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04032018 | 04182018 | Standard |  |  | 2018-04-03 | Contract/RUG: 17/RHA (Per MDS) = $2,812.08 | 10 | 2018-04-18 |  | 2018-04-20 | 2018-04-20 | 15 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404086 | J42 | Unspecified chronic bronchitis | ICD10 | 04202018 | 04032018 | 04182018 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 04102018 | 2018-04-10T10:43:49+00:00 |  | 000051188-01 | EVELYN | FEDER | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04082018 | 04152018 | Standard |  |  | 2018-04-08 | 7 DAYS @ $200.00= $1400.00 | 0 | 2018-04-15 | 2018-04-12 | 2018-04-20 | 2018-04-20 | 7 | 7 | 1400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410116 | L89324 | Pressure ulcer of left buttock, stage 4 | ICD10 | 04202018 | 04082018 | 04152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved | 8 | Revenue | RV |  |  |  | 7.0 |
| 04132018 | 2018-04-13T08:49:47+00:00 |  | 000113186-01 | Donald | Lane | TEAGUE, PHILLIP C | 944173 | PHILLIP C | TEAGUE | 1770571069 | COSHOCTON SPRINGS HEALTH & REHABILIT | 939939 | 1144610940 | COSHOCTON SPRINGS HEALTH & REHABILIT | 1144610940 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COSHOCTON SPRINGS HEALTH & REHABILIT | 04202018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 04112018 | 04192018 | Standard |  |  | 2018-04-11 | 8 NONSKILLED DAYS @ $250.00= $2000.00 | 12 | 2018-04-19 |  | 2018-04-18 |  | 8 | 20 | 2000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413034 | M6281, S300XXD, Z9181 | History of falling | ICD10 | 04202018 | 04112018 | 04192018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2000 | 2000 | Approved | 9 | Revenue | RV |  |  |  | 8.0 |
| 04132018 | 2018-04-13T11:58:41+00:00 |  | 000046356-01 | ANNA | CALHOUN | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04112018 | 04192018 | Standard |  |  | 2018-04-11 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-04-19 |  | 2018-04-20 | 2018-04-20 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413062 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 04202018 | 04112018 | 04192018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 04132018 | 2018-04-13T12:06:24+00:00 |  | 000070929-01 | A | Fulford | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04122018 | 04192018 | Standard |  |  | 2018-04-12 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-04-19 |  | 2018-04-20 | 2018-04-20 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413063 | K219, M064, M1611, Z96641 | Presence of right artificial hip joint | ICD10 | 04202018 | 04122018 | 04192018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 04162018 | 2018-04-16T14:20:17+00:00 |  | 000074361-01 | Betty | Mahr | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 04202018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 04122018 | 04202018 | Standard |  |  | 2018-04-12 | ADMISSION DENIAL: Per Diem: $200.00/day x 8 days = $1600.00 TOTAL PAYMENT = $1600.00 | 0 | 2018-04-20 | 2018-04-17 |  | 2018-04-17 | 8 | 8 | 1600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416111 | A419, G309, J189 | Pneumonia, unspecified organism | ICD10 | 04202018 | 04122018 | 04202018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved | 9 | Revenue | RV |  |  |  | 2.0 |
| 04172018 | 2018-04-17T09:42:15+00:00 |  | 000076579-01 | Dianne | Carnahan | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 04202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04122018 | 04192018 | Standard |  |  | 2018-04-12 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-04-19 |  | 2018-04-19 | 2018-04-19 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417075 | Z853, Z96651 | Presence of right artificial knee joint | ICD10 | 04202018 | 04122018 | 04192018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
