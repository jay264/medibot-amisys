Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-05_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-05_SNF
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
| 03062018 | 2018-03-06T14:56:26+00:00 |  | 000047919-01 | ELEANOR | STEWART | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03052018 | 03242018 | Standard |  |  | 2018-03-05 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-03-24 | 2018-03-26 | 2018-03-26 | 2018-03-26 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306092 | R2681, R2689, R296 | Repeated falls | ICD10 | 04052018 | 03052018 | 03242018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 03192018 | 2018-03-19T13:58:41+00:00 |  | 000062837-01 | MICHAEL | CASTO | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03172018 | 03242018 | Standard |  |  | 2018-03-17 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-03-24 |  | 2018-03-26 | 2018-03-26 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320040 | M4806, M5136, M5416, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 04052018 | 03172018 | 03242018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 01292018 | 2018-01-29T15:01:44+00:00 |  | 000059430-01 | RICHARD | DAILEY | RUKSENAS, AUDRIUS | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND AT CARECORE | 952605 | 1417470527 | WESTMORELAND AT CARECORE LLC | 1417470527 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND AT CARECORE LLC | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 03262018 | Standard |  |  | 2018-01-26 | Contract/RUG: 16/RVC (Per MDS) = $3,539.19 Per Diem: $200.00/day x 39 SNF Days = $7,800.00 Total Payment: $11,339.19 | 0 | 2018-03-26 |  | 2018-04-02 | 2018-04-02 | 59 | 59 | 11339.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130015 | S42252D | Disp fx of greater tuberosity of l humer, 7thD | ICD10 | 04052018 | 01262018 | 03262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 60 | Revenue | RV |  |  |  | 4.0 |
| 02212018 | 2018-02-21T14:25:25+00:00 |  | 000080890-01 | Clyde | Berkshire | AHMED, IMTIAZ | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 04052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02162018 | 03222018 | Standard |  |  | 2018-02-16 | Contract/RUG: 16/RUC (Per MDS) = $7,333.11 Per Diem: $200.00/day x 14 SNF Days = $2,800.00 Total Payment: $10,133.11 | 0 | 2018-03-22 |  | 2018-03-26 | 2018-03-28 | 34 | 34 | 10133.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221092 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 04052018 | 02162018 | 03222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 35 | Revenue | RV |  |  |  | 7.0 |
| 02262018 | 2018-02-26T09:53:21+00:00 |  | 000091065-01 | Richard | Cheatham | DAN F BAUTISTA MD LLC | 901878 | DAN F | BAUTISTA | 1629006903 | WRIGHT NURSING & REHABILITATION CTR | 916108 | 1205966371 | WRIGHT NURSING & REHABILITATION CTR | 1205966371 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WRIGHT NURSING & REHABILITATION CTR | 04052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02252018 | 03182018 | Standard |  |  | 2018-02-25 | Contract/RUG: 16/RHC (Per MDS) = $3,133.29 | 0 | 2018-03-18 | 2018-03-15 | 2018-04-04 | 2018-03-16 | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226087 | I213, M6281 | Muscle weakness (generalized) | ICD10 | 04052018 | 02252018 | 03182018 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03062018 | 2018-03-06T08:57:04+00:00 |  | 000052205-01 | Stella | Harris | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 04052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03032018 | 03232018 | Standard |  |  | 2018-03-03 | Contract/RUG: 17/RVA (per MDS) = $3,586.28 | 0 | 2018-03-23 |  | 2018-03-26 | 2018-03-26 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306042 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 04052018 | 03032018 | 03232018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 03072018 | 2018-03-07T12:45:22+00:00 |  | 000000202-01 | WILLIAM | RUSHIA | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03062018 | 03292018 | Standard |  |  | 2018-03-06 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 3 SNF Days = $600.00 Total Payment: $6,011.86 | 0 | 2018-03-29 |  | 2018-04-05 |  | 23 | 23 | 6011.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307050 | E785, I10, R52, R6521 | Severe sepsis with septic shock | ICD10 | 04052018 | 03062018 | 03292018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6011 | 6011 | Approved | 24 | Revenue | RV |  |  |  | 3.0 |
| 03122018 | 2018-03-12T09:35:08+00:00 |  | 000014947-01 | HAROLD | WILLIAMS | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03082018 | 03282018 | Standard |  |  | 2018-03-08 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-03-28 | 2018-03-28 | 2018-03-28 | 2018-03-28 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312012 | S32810D | Mult fx of pelv w stable disrupt of pelv ring, 7thD | ICD10 | 04052018 | 03082018 | 03282018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03132018 | 2018-03-13T08:25:31+00:00 |  | 000003875-01 | JEANETTE | BEARD | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03102018 | 03242018 | Standard |  |  | 2018-03-10 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-03-24 | 2018-03-26 | 2018-03-26 | 2018-03-26 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313003 | J181, R627 | Adult failure to thrive | ICD10 | 04052018 | 03102018 | 03242018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03152018 | 2018-03-15T09:05:15+00:00 |  | 000002922-01 | DORIS | GRIFFIN | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03132018 | 04052018 | Standard |  |  | 2018-03-13 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-04-05 | 2018-04-02 | 2018-03-22 | 2018-04-02 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315013 | F0280, I10, J189, K219, M1990, R296 | Repeated falls | ICD10 | 04052018 | 03132018 | 04052018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 03152018 | 2018-03-15T16:59:18+00:00 |  | 000087023-01 | William | Daubenmire | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03142018 | 04032018 | Standard |  |  | 2018-03-14 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2018-04-03 |  | 2018-04-05 | 2018-04-04 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316003 | I10, I350, I442, I5030, I97191, R52, R531, Z950 | Presence of cardiac pacemaker | ICD10 | 04052018 | 03142018 | 04032018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 03162018 | 2018-03-16T13:35:19+00:00 |  | 000042091-01 | DAVID | WHITE | RUKSENAS, AUDRIUS | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND AT CARECORE | 952605 | 1417470527 | WESTMORELAND AT CARECORE LLC | 1417470527 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND AT CARECORE LLC | 04052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03142018 | 03282018 | Standard |  |  | 2018-03-14 | Contract/RUG: 16/RUA (Per MDS) = $3,214.76 | 0 | 2018-03-28 |  | 2018-04-02 | 2018-04-02 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316052 | M25462 | Effusion, left knee | ICD10 | 04052018 | 03142018 | 03282018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03162018 | 2018-03-16T16:15:58+00:00 |  | 000114525-01 | Joyce | Thompson | AHMED, IMTIAZ | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 04052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03142018 | 03292018 | Standard |  |  | 2018-03-14 | Per Diem: $200.00/day x 15 SNF Days = $3,000.00 | 9 | 2018-03-29 |  | 2018-03-28 | 2018-03-28 | 15 | 24 | 3000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316075 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04052018 | 03142018 | 03292018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3000 | 3000 | Approved | 16 | Revenue | RV |  |  |  | 15.0 |
| 03202018 | 2018-03-20T14:01:58+00:00 |  | 000087677-01 | Margaret | Preston | AHMED, IMTIAZ | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 04052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03162018 | 03262018 | Standard |  |  | 2018-03-16 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2018-03-26 |  | 2018-03-28 | 2018-03-28 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321003 | J189 | Pneumonia, unspecified organism | ICD10 | 04052018 | 03162018 | 03262018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 03202018 | 2018-03-20T14:19:54+00:00 |  | 000107210-01 | Milton | Hinkle | COLS INPATIENT CARE INC | 906074 | THOMAS F | BRADY | 1316980741 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03192018 | 03302018 | Standard |  |  | 2018-03-19 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-03-30 |  | 2018-04-03 | 2018-04-03 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321005 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 04052018 | 03192018 | 03302018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 03012018 | 2018-03-01T11:57:23+00:00 |  | 000080860-01 | Charles | Rutland | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | MT AIRY GARDENS REHABIL | 949963 | 1063967131 | MT AIRY GARDENS REHABILITATION & NUR | 1063967131 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT AIRY GARDENS REHABILITATION & NUR | 04052018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 02272018 | 03232018 | Standard |  |  | 2018-02-27 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-03-23 | 2018-03-20 | 2018-04-04 | 2018-04-04 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301037 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 04052018 | 02272018 | 03232018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 03122018 | 2018-03-12T10:57:03+00:00 |  | 000112377-01 | Kathleen | Palm | HEARTLAND OF BEAVERCREEK | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03092018 | 03232018 | Standard |  |  | 2018-03-09 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 42 | 2018-03-23 | 2018-04-04 | 2018-04-02 | 2018-04-02 | 14 | 56 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312043 | E872 | Acidosis | ICD10 | 04052018 | 03092018 | 03232018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03162018 | 2018-03-16T09:48:17+00:00 |  | 000080909-01 | Richard | Swigert | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING COMMUNITIES | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 04052018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03142018 | 03312018 | Standard |  |  | 2018-03-14 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-03-31 |  | 2018-04-04 | 2018-04-04 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316013 | Z4789 | Encounter for other orthopedic aftercare | ICD10 | 04052018 | 03142018 | 03312018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03202018 | 2018-03-20T14:38:21+00:00 |  | 000111630-01 | JEROME | SMITH | LARUFFA, CATHERINE | 939724 | CATHERINE | LARUFFA | 1972502789 | THE LAURELS OF BLANCHEST | 948218 | 1992032148 | LAURELS OF BLANCHESTER | 1992032148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF BLANCHESTER | 04052018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03192018 | 04042018 | Standard |  |  | 2018-03-19 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-04-04 |  | 2018-04-04 |  | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321008 | M1612, Z96642 | Presence of left artificial hip joint | ICD10 | 04052018 | 03192018 | 04042018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 03222018 | 2018-03-22T13:20:55+00:00 |  | 000039877-01 | WILMA | SIMCOX | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 04052018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 03212018 | 04042018 | Standard |  |  | 2018-03-21 | 16/RVC01= $3539.19 | 0 | 2018-04-04 |  | 2018-04-05 | 2018-04-05 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322040 | N179, A0472 | A0472 | ICD10 | 04052018 | 03212018 | 04042018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 03232018 | 2018-03-23T13:40:35+00:00 |  | 000064064-01 | LOUISE | GOMPF | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03222018 | 03302018 | Standard |  |  | 2018-03-22 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 1 | 2018-03-30 |  | 2018-04-03 | 2018-04-03 | 8 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323054 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 04052018 | 03222018 | 03302018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 03232018 | 2018-03-23T14:25:53+00:00 |  | 000095167-01 | Jacqueline | Crist | ARTHUR H WIN MD LLC | 905083 | ARTHUR H | WIN | 1780667444 | ARBORS AT SPRINGFIELD | 943322 | 1467850305 | ARBORS AT SPRINGFIELD | 1467850305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT SPRINGFIELD | 04052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03212018 | 03262018 | Standard |  |  | 2018-03-21 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-03-26 |  | 2018-04-03 | 2018-04-03 | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323064 | M150, Z96641 | Presence of right artificial hip joint | ICD10 | 04052018 | 03212018 | 03262018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 03262018 | 2018-03-26T10:31:05+00:00 |  | 000053058-01 | SHIRLEY | PARSLEY | MEDICAL & SURG ASSOC INC | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03252018 | 03282018 | Standard |  |  | 2018-03-25 | 16/HD101= $3681.73 | 2 | 2018-03-28 |  | 2018-04-04 |  | 3 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326070 | J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 04052018 | 03252018 | 03282018 | HD101 | SPECIAL CARE HIGH , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 4 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 03272018 | 2018-03-27T14:04:31+00:00 |  | 000038464-01 | JEAN | COMBS | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 04052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03262018 | 04022018 | Standard |  |  | 2018-03-26 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-04-02 |  | 2018-04-03 | 2018-04-03 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328009 | I480, R2681 | Unsteadiness on feet | ICD10 | 04052018 | 03262018 | 04022018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
