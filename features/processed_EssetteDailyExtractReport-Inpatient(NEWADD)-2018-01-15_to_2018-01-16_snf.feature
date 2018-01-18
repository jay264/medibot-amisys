Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-15_to_2018-01-16_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-15_to_2018-01-16_SNF
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
| 12292017 | 2017-12-29T09:50:52+00:00 |  | 000037992-01 | SONDRA | HINDEL | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 01152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12272017 | 01062018 | Standard |  |  | 2017-12-27 | 17/RVA01=$3,586.28 | 0 | 2018-01-06 |  | 2018-01-12 | 2018-01-12 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229026 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 01152018 | 12272017 | 01062018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01022018 | 2018-01-02T09:07:06+00:00 |  | 000107304-01 | Johnny | Weiss | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 01152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12302017 | 01132018 | Standard |  |  | 2017-12-30 | 16/RHC01= $3133.29 | 14 | 2018-01-13 |  | 2018-01-12 | 2018-01-10 | 14 | 28 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102065 | M86171, S98311D | Complete traumatic amputation of right midfoot, subs encntr | ICD10 | 01152018 | 12302017 | 01132018 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11292017 | 2017-11-29T12:41:52+00:00 |  | 000033627-01 | DUANE | BARNES | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 01152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11262017 | 01112018 | Standard |  |  | 2017-11-26 | 16/rub01= $5813.99 26 days @ $250.00= $6500.00 total: $12313.99 | 25 | 2018-01-11 |  | 2018-01-15 | 2018-01-10 | 46 | 71 | 12313.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129115 | Z89512 | Acquired absence of left leg below knee | ICD10 | 01152018 | 11262017 | 01112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 47 | Revenue | RV |  |  |  | 6.0 |
| 12112017 | 2017-12-11T14:06:01+00:00 |  | 000039253-01 | KENNETH | HARRIS | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 01152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12092017 | 01062018 | Standard |  |  | 2017-12-09 | 17/RVB01=$5,411.86 PER DIEM RATE OF $250.00/DAY X 8 DAYS= $2,000.00 TOTAL PAYMENT=$7,411.86 | 0 | 2018-01-06 |  | 2018-01-12 | 2018-01-12 | 28 | 28 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211140 | R531 | Weakness | ICD10 | 01152018 | 12092017 | 01062018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7411 | 7411 | Approved Skilled | 29 | Revenue | RV |  |  |  | 1.0 |
| 01052018 | 2018-01-05T13:22:00+00:00 |  | 000121345-01 | Linda | Prange | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 01152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01142018 | Standard |  |  | 2018-01-04 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-14 |  | 2018-01-15 | 2018-01-15 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105069 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01152018 | 01042018 | 01142018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 12062017 | 2017-12-06T16:23:15+00:00 |  | 000029485-01 | PHYLLIS | COLLIER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 01152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12052017 | 01052018 | Standard |  |  | 2017-12-05 | 17/RVB01= $5411.86 7 DAYS @ $200.00= $1400.00 TOTAL: $6811.86 | 0 | 2018-01-05 |  | 2018-01-15 | 2018-01-15 | 27 | 27 | 6811.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207004 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01152018 | 12052017 | 01052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6811 | 6811 | Approved | 32 | Revenue | RV |  |  |  | 7.0 |
| 12222017 | 2017-12-22T14:23:31+00:00 |  | 000040565-01 | Julia | Mcdonald | NANCY LYNN ALKIRE LLC | 901854 | NANCY | ALKIRE | 1710924659 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 01152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12212017 | 01042018 | Standard |  |  | 2017-12-21 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-01-04 |  | 2018-01-15 | 2018-01-15 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222070 | Z471 | Aftercare following joint replacement surgery | ICD10 | 01152018 | 12212017 | 01042018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12292017 | 2017-12-29T08:56:17+00:00 |  | 000057239-01 | LEE | TODD | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 01152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12272017 | 01122018 | Standard |  |  | 2017-12-27 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-01-12 | 2018-01-15 | 2018-01-15 | 2018-01-15 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229016 | G20, Z9181 | History of falling | ICD10 | 01152018 | 12272017 | 01122018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 12182017 | 2017-12-18T12:55:34+00:00 |  | 000052270-01 | THOMAS | KESSLER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 01152018 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 12152017 | 01112018 | Standard |  |  | 2017-12-15 | 17/RVB01= $5411.86 7 DAYS @ $200.00= $1400.00 TOTAL: $6811.86 | 0 | 2018-01-12 |  | 2018-01-15 | 2018-01-15 | 27 | 27 | 6811.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218151 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01152018 | 12152017 | 01112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6811 | 6811 | Approved | 28 | Revenue | RV |  |  |  | 7.0 |
| 01022018 | 2018-01-02T05:30:55+00:00 |  | 000085935-01 | Shirley | Filson | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 01152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12292017 | 01082018 | Standard |  |  | 2017-12-29 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-01-08 |  | 2018-01-15 | 2018-01-15 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102058 | M1710 | Unilateral primary osteoarthritis, unspecified knee | ICD10 | 01152018 | 12292017 | 01082018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 10302017 | 2017-10-30T12:32:38+00:00 |  | 000034164-01 | ROBERTA | ELLINGER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 01152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10282017 | 12082017 | Standard |  |  | 2017-10-28 | 17/RVC01= $6306.19 22 DAYS @ $250.00= $5500.00 TOTAL: $11806.19 | 0 | 2017-12-08 | 2018-01-15 | 2018-01-15 | 2018-01-15 | 42 | 42 | 11806.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030104 | S12100D | Unsp disp fx of 2nd cervcal vert, subs for fx w routn heal | ICD10 | 01152018 | 10282017 | 12082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 42 | Revenue | RV |  |  |  | 5.0 |
| 12222017 | 2017-12-22T10:09:04+00:00 |  | 000085038-01 | Dick | McCoy | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 01152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12202017 | 01122018 | Standard |  |  | 2017-12-20 | 16/RVB01= $3350.20 3 DAYS @ $200.00= $600.00 TOTAL= $3950.20 | 0 | 2018-01-12 |  | 2017-12-29 |  | 23 | 23 | 3950.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222042 | G459, S82401D, S8254XD | Nondisp fx of med malleolus of r tibia, 7thD | ICD10 | 01152018 | 12202017 | 01122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3950 | 3950 | Approved | 24 | Revenue | RV |  |  |  | 3.0 |
| 01032018 | 2018-01-03T13:32:14+00:00 |  | 000044239-01 | ANNA | HARRIS | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 01152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01022018 | 01122018 | Standard |  |  | 2018-01-02 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-01-12 |  | 2018-01-15 | 2018-01-15 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103120 | I480, M6281, R2681 | Unsteadiness on feet | ICD10 | 01152018 | 01022018 | 01122018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01082018 | 2018-01-08T15:47:28+00:00 |  | 000017944-01 | DARLENE | CARMICHAEL | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 01152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 01132018 | Standard |  |  | 2018-01-05 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-01-13 |  | 2018-01-15 | 2018-01-15 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109066 | J111, J9601, M6281, R531, R54 | Age-related physical debility | ICD10 | 01152018 | 01052018 | 01132018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 01032018 | 2018-01-03T13:47:46+00:00 |  | 000006806-01 | MARILYN | EXLINE | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 01162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01022018 | 01122018 | Standard |  |  | 2018-01-02 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-01-12 |  | 2018-01-15 | 2018-01-15 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103121 | R2681, S8261XD | Disp fx of lateral malleolus of r fibula, 7thD | ICD10 | 01162018 | 01022018 | 01122018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 12022017 | 2017-12-02T17:22:00+00:00 |  | 000076198-01 | Robert | Eckstein | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | CAMBRIDGE CARE & REHAB | 951200 | 1578003570 | CAMBRIDGE CARE & REHAB | 1578003570 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CAMBRIDGE CARE & REHAB | 01162018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 11302017 | 12092017 | Standard |  |  | 2017-11-30 | 17/RVB01= $5411.86 | 0 | 2017-12-09 |  | 2018-01-15 | 2017-12-12 | 9 | 9 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204052 | M1611, M25519, Z471, Z96641 | Presence of right artificial hip joint | ICD10 | 01162018 | 11302017 | 12092017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 12262017 | 2017-12-26T12:46:29+00:00 |  | 000097675-01 | Susan | Garrison | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 01162018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12212017 | 01052018 | Standard |  |  | 2017-12-21 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-01-05 | 2018-01-15 | 2018-01-15 | 2018-01-15 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226140 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01162018 | 12212017 | 01052018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 11282017 | 2017-11-28T14:29:02+00:00 |  | 000044424-01 | RAETTA | BATES | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 01162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11262017 | 01042018 | Standard |  |  | 2017-11-26 | 17/RUB01= $5813.99 8 DAYS @ $200.00= $1600.00 11 DAYS @ $250.00= $2750.00 TOTAL: $10163.99 | 0 | 2018-01-04 |  | 2018-01-16 | 2018-01-16 | 39 | 39 | 10163.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129028 | A09, D649, G8929, K51212, R1030 | Lower abdominal pain, unspecified | ICD10 | 01162018 | 11262017 | 01042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 40 | Revenue | RV |  |  |  | 5.0 |
| 12282017 | 2017-12-28T17:32:14+00:00 |  | 000079717-01 | Mary | Miller | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 01162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12262017 | 01122018 | Standard |  |  | 2017-12-26 | 17/RUC01=$6,049.81 | 0 | 2018-01-12 |  | 2018-01-15 | 2018-01-15 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229006 | J189 | Pneumonia, unspecified organism | ICD10 | 01162018 | 12262017 | 01122018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 12152017 | 2017-12-15T16:22:27+00:00 |  | 000024520-01 | RONALD | NEMISH | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 01162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12142017 | 01052018 | Standard |  |  | 2017-12-14 | 17/RUB01=$5,813.99 PER DIEM RATE OF $200.00/DAY X 2 DAYS=$400.00 TOTAL PAYMENT=$6,213.99 | 0 | 2018-01-05 |  | 2018-01-15 | 2018-01-15 | 22 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218019 | R6521 | Severe sepsis with septic shock | ICD10 | 01162018 | 12142017 | 01052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6213 | 6213 | Approved Skilled | 23 | Revenue | RV |  |  |  | 2.0 |
| 12042017 | 2017-12-04T12:44:21+00:00 |  | 000057688-01 | ALICE | LINVILLE | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 01162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 01162018 | Standard |  |  | 2017-11-30 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 27 days = $6750.00 TOTAL PAYMENT = $12,563.99 | 0 | 2018-01-16 |  | 2018-01-16 |  | 47 | 47 | 12563.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204149 | S72012D | Unsp intracap fx left femur, subs for clos fx w routn heal | ICD10 | 01162018 | 11302017 | 01162018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 48 | Revenue | RV |  |  |  | 4.0 |
| 12262017 | 2017-12-26T16:01:59+00:00 |  | 000114061-01 | Deanna | Orthman | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 01162018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12232017 | 12312017 | Standard |  |  | 2017-12-23 | Per MDS: 17/RHA01 = $2812.08 | 0 | 2017-12-31 |  | 2018-01-05 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227029 | S82301A | Unsp fracture of lower end of right tibia, init for clos fx | ICD10 | 01162018 | 12232017 | 12312017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 01092018 | 2018-01-09T14:20:18+00:00 |  | 000075822-01 | Terry | Anderson | HAGGENJOS, JEFFREY J | 916460 | JEFFREY J | HAGGENJOS | 1417940172 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 01162018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 01082018 | 01092018 | Standard |  |  | 2018-01-08 | Per Diem: $200.00/day x 1 day = $200.00 | 8 | 2018-01-09 |  |  |  | 1 | 9 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110002 | G061, M4646 | Discitis, unspecified, lumbar region | ICD10 | 01162018 | 01082018 | 01092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 01082018 | 2018-01-08T16:48:58+00:00 |  | 000033786-01 | SHIRLEY | WHITE | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 01162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 01122018 | Standard |  |  | 2018-01-05 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-12 |  | 2018-01-16 | 2018-01-16 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109089 | J189 | Pneumonia, unspecified organism | ICD10 | 01162018 | 01052018 | 01122018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 01022018 | 2018-01-02T14:42:01+00:00 |  | 000088777-01 | Patsy | Osborne | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 01162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12282017 | 01112018 | Standard |  |  | 2017-12-28 | Per Diem: $200.00/day x 14 days = $2800.00 Invanz (per invoice) = $754.89 TOTAL PAYMENT = $3554.89 | 0 | 2018-01-11 |  | 2018-01-16 | 2018-01-16 | 14 | 14 | 3554.89 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103038 | A419, I5033, J181, M6281, Z1612 | Extended spectrum beta lactamase (ESBL) resistance | ICD10 | 01162018 | 12282017 | 01112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3554 | 3554 | Approved | 15 | Revenue | RV |  |  |  | 14.0 |
| 12262017 | 2017-12-26T12:57:40+00:00 |  | 000078757-01 | Rose | Donaldson | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 01162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12242017 | 01162018 | Standard |  |  | 2017-12-24 | 16/RVC01= $3539.19 3 DAYS @ $200.00= $600.00 TOTAL: $4139.19 | 0 | 2018-01-16 |  | 2018-01-12 | 2018-01-08 | 23 | 23 | 4139.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226143 | A419, I482, N390 | Urinary tract infection, site not specified | ICD10 | 01162018 | 12242017 | 01162018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4139 | 4139 | Approved | 24 | Revenue | RV |  |  |  | 3.0 |
| 12272017 | 2017-12-27T13:42:53+00:00 |  | 000038168-01 | MONA | BOGGS | PICKAWAY HEALTH SERVICES | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 01162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12262017 | 01032018 | Standard |  |  | 2017-12-26 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-01-03 |  | 2018-01-16 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227083 | S065X0D | Traum subdr hem w/o loss of consciousness, subs | ICD10 | 01162018 | 12262017 | 01032018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
