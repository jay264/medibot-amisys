Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-16_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-16_SNF
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

	#And in the "hospital_services" page I enter the total SNF days into the "auth_days" image
	And in the "hospital_services" page I enter "365" into the "auth_days" image

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
	And in the "authorized_services" page I enter the first SNF date into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_requested" image
	And the test pauses for "2" seconds
  And in the "authorized_services" page I enter the first SNF date into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_authorized" image
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
	And in the "authorized_services" page I enter the first SNF date into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_requested" image
	And the test pauses for "2" seconds
  And in the "authorized_services" page I enter the first SNF date into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_authorized" image
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
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And I press "Tab"
	And the test pauses for "3" seconds
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

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
| 02272017 | 2017-02-27T11:47:10+00:00 |  | 000084227-01 | Franklin | Dale | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 05162017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02212017 | 03202017 | Standard |  |  | 2017-02-21 | Per Diem: $200.00/day x 28 days = $5600.00 Daptomycin IV - (per Invoice) = 9301.99 TOTAL PAYMENT = $14,901.99 | 28 | 2017-03-21 |  | 2017-04-17 | 2017-05-15 | 28 | 28 | 14901.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170227104 | B9562, N186 | End stage renal disease | ICD10 | 05162017 | 02212017 | 03212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 28 | Revenue | RV |  |  |  | 29.0 |
| 03272017 | 2017-03-27T16:46:46+00:00 |  | 000009980-01 | MARIE | SULLIVAN | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 05162017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 03242017 | 05082017 | Standard |  |  | 2017-03-24 | 17/CD101=$3315.15 8 DAYS @ $200.00=$1600.00 TOTAL: $4915.15 | 0 | 2017-05-09 |  | 2017-05-15 | 2017-05-15 | 46 | 46 | 4915.15 | 170330092834.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170328076 | G20 | Parkinson's disease | ICD10 | 05162017 | 03242017 | 05092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4915 | 4915 | Approved | 46 | Revenue | RV |  |  |  | 18.0 |
| 04122017 | 2017-04-12T16:22:00+00:00 |  | 000117157-01 | MINNIE | SLONE | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 05162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05162017 | 05232017 | Standard |  |  | 2017-04-11 | 16/RVC01=$3,539.19 Per diem rate of $200.00/day x 9 days=$1,800.00 Total Payment=$5,339.19 | 0 | 2017-05-10 |  | 2017-05-15 | 2017-05-15 | 29 | 29 | 5339.19 | 170417096042.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413033 | S82842D | Displ bimalleol fx l low leg, subs for clos fx w routn heal | ICD10 | 05162017 | 04112017 | 05102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5339 | 5339 | Approved Skilled | 8 | Revenue | RV |  |  |  | 29.0 |
| 04172017 | 2017-04-17T16:16:30+00:00 |  | 000035494-01 | ELLEN | PIGMAN | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 05162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05162017 | 05232017 | Standard |  |  | 2017-04-15 | 16/RUB01=4,429.71 | 0 | 2017-05-06 |  | 2017-05-15 | 2017-05-15 | 21 | 21 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418005 | M6282 | Rhabdomyolysis | ICD10 | 05162017 | 04152017 | 05062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 04202017 | 2017-04-20T10:44:03+00:00 |  | 000088174-01 | William | Kidder | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 05162017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04192017 | 05012017 | Standard |  |  | 2017-04-19 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-05-02 |  | 2017-05-16 |  | 13 | 13 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420049 | E876 | Hypokalemia | ICD10 | 05162017 | 04192017 | 05022017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 04202017 | 2017-04-20T16:51:56+00:00 |  | 000018562-01 | A | HALSELL | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 05162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05162017 | 05232017 | Standard |  |  | 2017-04-19 | 17/RUC01=$6,306.19 Per diem rate of $200.00/day x 1 day=$200.00 Total payment= $6,506.19 | 0 | 2017-05-09 |  | 2017-05-02 | 2017-05-15 | 21 | 21 | 6506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421026 | I480 | Paroxysmal atrial fibrillation | ICD10 | 05162017 | 04192017 | 05092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6506 | 6506 | Approved Skilled | 8 | Revenue | RV |  |  |  | 1.0 |
| 04242017 | 2017-04-24T15:40:22+00:00 |  | 000058165-01 | PATRICIA | ABDALLA | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 05162017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 04222017 | 04282017 | Standard |  |  | 2017-04-22 | 17/RVA01=$3586.28 | 0 | 2017-05-29 |  | 2017-05-15 | 2017-05-15 | 7 | 7 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425063 | Z471 | Aftercare following joint replacement surgery | ICD10 | 05162017 | 04222017 | 04292017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 04252017 | 2017-04-25T10:40:37+00:00 |  | 000093925-01 | Patricia | Hixson | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 05162017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04232017 | 05052017 | Standard |  |  | 2017-04-23 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-05-06 |  | 2017-05-16 | 2017-05-16 | 13 | 13 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425092 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05162017 | 04232017 | 05062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 04252017 | 2017-04-25T16:14:35+00:00 |  | 000000455-01 | JAMES | KURTZ | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04242017 | 05132017 | Standard |  |  | 2017-04-24 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-05-14 |  | 2017-05-15 | 2017-05-15 | 20 | 20 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426027 | A419, J9602, N390, R092, R310, Z952, W19XXXS | Unspecified fall, sequela | ICD10 | 05162017 | 04242017 | 05142017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04252017 | 2017-04-25T14:01:43+00:00 |  | 000099940-01 | KATHLEEN | DURHAM | FAMILY PRACTICE ASSOC | 902127 | SALLY A | ABBOTT | 1891788626 | SPRINGFIELD NURSING & INDEPENDENT LI | 911709 | 1598905838 | SPRINGFIELD NURSING & INDEPENDENT LI | 1598905838 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SPRINGFIELD NURSING & INDEPENDENT LI | 05162017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04272017 | 05042017 | Standard |  |  | 2017-04-27 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-05-05 |  | 2017-05-08 |  | 8 | 8 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427015 | S7292XS | Unspecified fracture of left femur, sequela | ICD10 | 05162017 | 04272017 | 05052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 04272017 | 2017-04-27T08:50:39+00:00 |  | 000057319-01 | DOLORES | MCALEE | QUALITY OF LIFE MED LLC | 919602 | MARK A | TAYLOR | 1912170721 | THE GRAND OF DUBLIN | 946137 | 1346632247 | THE GRAND OF DUBLIN | 1346632247 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE GRAND OF DUBLIN | 05162017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 04262017 | 05122017 | Standard |  |  | 2017-04-26 | 17/RUB01=$5813.99 | 0 | 2017-05-13 |  | 2017-05-16 | 2017-05-16 | 17 | 17 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427063 | D649, I4891, L0390 | Cellulitis, unspecified | ICD10 | 05162017 | 04262017 | 05132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 17 | Revenue | RV |  |  |  | 17.0 |
| 04282017 | 2017-04-28T12:05:56+00:00 |  | 000095889-01 | Jerry | Michaels | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 05162017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04282017 | 05102017 | Standard |  |  | 2017-04-28 | Contract/RUG: 17/RVB (per MDS) = $5,411.86 | 0 | 2017-05-11 |  | 2017-05-16 | 2017-05-16 | 13 | 13 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501059 | D649, D72829, K922, M546 | Pain in thoracic spine | ICD10 | 05162017 | 04282017 | 05112017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
