Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-23_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-23_SNF
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
| 04032018 | 2018-04-03T14:04:52+00:00 |  | 000085128-01 | Ellen | De Walt | HEARTLAND OF UPTOWN WEST | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 04232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04022018 | 04142018 | Standard |  |  | 2018-04-02 | 16/RUB01=$4,429.71 | 0 | 2018-04-14 |  | 2018-04-18 | 2018-04-18 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403075 | M6281, R110 | Nausea | ICD10 | 04232018 | 04022018 | 04142018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 02052018 | 2018-02-05T09:42:50+00:00 |  | 000043017-01 | NANCY | BUCKINGHAM | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 04232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02012018 | 04062018 | Standard |  |  | 2018-02-01 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.00/DAY X 44 DAYS=$8,800.00 TOTAL PAYMENT=$15,106.19 | 0 | 2018-04-06 |  | 2018-04-20 | 2018-04-20 | 64 | 64 | 15106.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205011 | M84453D | Pathological fracture, unsp femur, subs for fx w routn heal | ICD10 | 04232018 | 02012018 | 04062018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 65 | Revenue | RV |  |  |  | 2.0 |
| 03272018 | 2018-03-27T15:52:37+00:00 |  | 000047606-01 | MERLE | KNOLL | HEARTLAND OF UPTOWN WEST | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 04232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03262018 | 04162018 | Standard |  |  | 2018-03-26 | 17/RUB01=$5,813.99 PER DIEM RATE OF $200.00/DAY X 1 DAY=$200.00 TOTAL PAYMENT=$6,013.99 | 0 | 2018-04-16 |  | 2018-04-18 | 2018-04-18 | 21 | 21 | 6013.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328027 | S32000S | Wedge compression fracture of unsp lumbar vertebra, sequela | ICD10 | 04232018 | 03262018 | 04162018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6013 | 6013 | Approved Skilled | 22 | Revenue | RV |  |  |  | 1.0 |
| 04032018 | 2018-04-03T15:13:47+00:00 |  | 000071981-01 | Sandra | Schobelock | HOSPITALIST MEDICINE PHY | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03312018 | 04192018 | Standard |  |  | 2018-03-31 | 17/RUC0=$6,049.81 | 0 | 2018-04-19 |  | 2018-04-20 | 2018-04-20 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403089 | J1008 | Influenza due to oth ident influenza virus w oth pneumonia | ICD10 | 04232018 | 03312018 | 04192018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 04062018 | 2018-04-06T12:07:43+00:00 |  | 000009076-01 | RONALD | SMALLRIDGE | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04042018 | 04062018 | Standard |  |  | 2018-04-04 | 17/RMC01=$3,027.33 | 0 | 2018-04-06 |  | 2018-04-19 |  | 2 | 2 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406027 | E119, G894, I5042, I639, M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 04232018 | 04042018 | 04062018 | RMC01 | MEDIUM REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 3 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 04112018 | 2018-04-11T12:06:58+00:00 |  | 000111465-01 | Beverly | Price | CENTRAL OHIO NP SERVICES | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN NEW ALBANY LLC | 944058 | 1407262165 | OTTERBEIN NEW ALBANY LLC | 1407262165 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN NEW ALBANY LLC | 04232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04092018 | 04212018 | Standard |  |  | 2018-04-09 | 17/RUA01= $3214.76 | 0 | 2018-04-21 |  | 2018-04-23 | 2018-04-23 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411093 | I4891 | Unspecified atrial fibrillation | ICD10 | 04232018 | 04092018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 03272018 | 2018-03-27T16:47:11+00:00 |  | 000010951-01 | ORA | PAYNE | HEARTLAND OF CTRBURG OH | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 04232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03232018 | 04162018 | Standard |  |  | 2018-03-23 | 17/RVC01= $6306.19 | 0 | 2018-04-16 | 2018-04-12 | 2018-04-23 | 2018-04-23 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328032 | S22081A | Stable burst fracture of T11-T12 vertebra, init for clos fx | ICD10 | 04232018 | 03232018 | 04162018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 04042018 | 2018-04-04T16:15:43+00:00 |  | 000083496-01 | George | Neiswender | BOBCAT EMERGENCY PHYS | 909256 | ROBERT L | HUNTER | 1114920485 | CARRIAGE INN OF DAYTON | 931622 | 1255328662 | CARRIAGE INN OF DAYTON | 1255328662 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CARRIAGE INN OF DAYTON | 04232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04032018 | 04192018 | Standard |  |  | 2018-04-03 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-04-19 |  | 2018-04-20 | 2018-04-20 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404091 | R4182 | Altered mental status, unspecified | ICD10 | 04232018 | 04032018 | 04192018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 04062018 | 2018-04-06T16:19:51+00:00 |  | 000060807-01 | GEORGE | WALRAVEN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CONTINUING HEALTHCARE OF | 952581 | 1356871610 | CONTINUING HEALTHCARE OF GAHANNA LLC | 1356871610 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CONTINUING HEALTHCARE OF GAHANNA LLC | 04232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04042018 | 04192018 | Standard |  |  | 2018-04-04 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2018-04-19 |  | 2018-04-20 | 2018-04-20 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406055 | I5030 | Unspecified diastolic (congestive) heart failure | ICD10 | 04232018 | 04042018 | 04192018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 04092018 | 2018-04-09T14:55:17+00:00 |  | 000077814-01 | Robert | Newman | AHMED, AIJAZ | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 04232018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04042018 | 04142018 | Standard |  |  | 2018-04-04 | Contract/RUG: 17/RHB (Per MDS) = $3,699.42 | 0 | 2018-04-14 |  | 2018-04-23 |  | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409097 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04232018 | 04042018 | 04142018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 04162018 | 2018-04-16T14:02:13+00:00 |  | 000110504-01 | Deborah | Cumbow | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 04232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04142018 | 04212018 | Standard |  |  | 2018-04-14 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-04-21 |  | 2018-04-23 | 2018-04-23 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416103 | E1140, F329, M109, M12812 | Oth specific arthropathies, NEC, left shoulder | ICD10 | 04232018 | 04142018 | 04212018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 04162018 | 2018-04-16T16:31:52+00:00 |  | 000101618-01 | Clara | Heitfeld | HEARTLAND WOODRIDGE OF F | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 04232018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04142018 | 04152018 | Standard |  |  | 2018-04-14 | Per Diem: $200.00/day x 1 SNF Day = $200.00 | 0 | 2018-04-15 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417058 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 04232018 | 04142018 | 04152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
