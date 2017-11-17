Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-15_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-15_SNF
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
| 10122017 | 2017-10-12T13:30:38+00:00 |  | 000006601-01 | TINY | FIELDS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10112017 | 10262017 | Standard |  |  | 2017-10-11 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-10-26 |  | 2017-11-08 | 2017-11-14 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012039 | S42302D | Unsp fx shaft of humerus, left arm, subs for fx w routn heal | ICD10 | 11152017 | 10112017 | 10262017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 10252017 | 2017-10-25T13:47:25+00:00 |  | 000035388-01 | JOSEPH | MILLER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10242017 | 11062017 | Standard |  |  | 2017-10-24 | 16/RUC01=$7,333.11 | 0 | 2017-11-06 |  | 2017-11-14 | 2017-11-14 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025059 | M6281 | Muscle weakness (generalized) | ICD10 | 11152017 | 10242017 | 11062017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10302017 | 2017-10-30T13:28:37+00:00 |  | 000011858-01 | MARY | HAMMOND | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10292017 | 11082017 | Standard |  |  | 2017-10-29 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-11-08 |  | 2017-11-10 | 2017-11-13 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030117 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 11152017 | 10292017 | 11082017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 10192017 | 2017-10-19T09:54:26+00:00 |  | 000051158-01 | PALESTINE | MOORE | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10172017 | 11102017 | Standard |  |  | 2017-10-17 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 4 SNF Days = $800.00 Total Payment: $6,849.81 | 0 | 2017-11-10 | 2017-11-13 | 2017-11-13 | 2017-11-13 | 24 | 24 | 6849.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019048 | E039, J45909, S72002D, Z96642 | Presence of left artificial hip joint | ICD10 | 11152017 | 10172017 | 11102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6849 | 6849 | Approved | 25 | Revenue | RV |  |  |  | 4.0 |
| 11092017 | 2017-11-09T11:57:43+00:00 |  | 000097212-01 | Myra | Crossley | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11062017 | 11102017 | Standard |  |  | 2017-11-06 | Per Diem: $200.00/day x 4 SNF Days = $800.00 | 0 | 2017-11-10 |  |  |  | 4 | 4 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109070 | K922, M6281 | Muscle weakness (generalized) | ICD10 | 11152017 | 11062017 | 11102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
| 11012017 | 2017-11-01T21:20:33+00:00 |  | 000053211-01 | FRANCES | ADAMS | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | GARDEN REHAB AND HEALTH | 949780 | 1245785310 | CAPITAL CITY GARDENS REHABILITATION | 1245785310 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CAPITAL CITY GARDENS REHABILITATION | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10302017 | 11102017 | Standard |  |  | 2017-10-30 | 17/RVB01= $5411.86 | 0 | 2017-11-10 |  | 2017-11-15 | 2017-11-15 | 11 | 11 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102035 | I10, I255, M1990, M25461 | Effusion, right knee | ICD10 | 11152017 | 10302017 | 11102017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 11012017 | 2017-11-01T13:11:58+00:00 |  | 000034352-01 | SALLY | LOVETT | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 11152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10312017 | 11072017 | Standard |  |  | 2017-10-31 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-11-07 |  | 2017-11-09 | 2017-11-09 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101047 | M2681, R2681, Z9181 | History of falling | ICD10 | 11152017 | 10312017 | 11072017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10272017 | 2017-10-27T15:28:19+00:00 |  | 000099248-01 | Germaine | Knierim | SMITH, KIRK E | 940202 | KIRK E | SMITH | 1730199985 | KINGSTON OF MIAMISBURG | 927958 | 1972590115 | KINGSTON OF MIAMISBURG | 1972590115 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINGSTON OF MIAMISBURG | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10252017 | 11092017 | Standard |  |  | 2017-10-25 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-11-09 |  | 2017-11-10 | 2017-11-10 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030053 | Z96651 | Presence of right artificial knee joint | ICD10 | 11152017 | 10252017 | 11092017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 10302017 | 2017-10-30T10:33:40+00:00 |  | 000109642-01 | Clarence | Steele Jr. | INPATIENT CNSLT OF OH IN | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF MIAMISBURG OH LLC | 905914 | 1184666406 | HEARTLAND OF MIAMISBURG OH LLC | 1184666406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MIAMISBURG OH LLC | 11152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10262017 | 11102017 | Standard |  |  | 2017-10-26 | Contract/RUG: 17/RMC (Per MDS) = $3,027.33 | 0 | 2017-11-10 |  | 2017-11-10 | 2017-11-10 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030075 | R404 | Transient alteration of awareness | ICD10 | 11152017 | 10262017 | 11102017 | RMC01 | MEDIUM REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 09122017 | 2017-09-12T16:40:42+00:00 |  | 000041808-01 | MARY | HUPP | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09112017 | 10022017 | Standard |  |  | 2017-09-11 | 16/RUA01= $3214.76 | 0 | 2017-10-02 | 2017-11-15 | 2017-11-15 | 2017-11-15 | 21 | 21 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913035 | K7469, N390, R109 | Unspecified abdominal pain | ICD10 | 11152017 | 09112017 | 10022017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 11032017 | 2017-11-03T13:52:38+00:00 |  | 000107614-01 | Charles | Teeters | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11022017 | 11102017 | Standard |  |  | 2017-11-02 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-11-10 |  | 2017-11-14 | 2017-11-14 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106053 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11152017 | 11022017 | 11102017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 10192017 | 2017-10-19T11:00:19+00:00 |  | 000083845-01 | Norman | Brooks | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 11152017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 10172017 | 11112017 | Standard |  |  | 2017-10-17 | 17/RVC01= $6306.19 3 DAYS @ $200.00= $600.00 TOTAL: $6906.19 (25 DAYS- 2 HOSPITAL DAYS=  23 DAYS PAID) | 0 | 2017-11-11 |  | 2017-11-15 | 2017-11-15 | 23 | 23 | 6906.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019051 | I739, N186, S88111D | Complete traum amp at lev betw kn and ankl, r low leg, subs | ICD10 | 11152017 | 10172017 | 11112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6906 | 6906 | Approved | 26 | Revenue | RV |  |  |  | 3.0 |
| 11062017 | 2017-11-06T14:52:20+00:00 |  | 000063538-01 | Sandra | Callahan | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11032017 | 11102017 | Standard |  |  | 2017-11-03 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-11-10 |  | 2017-11-14 | 2017-11-14 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106127 | R5381 | Other malaise | ICD10 | 11152017 | 11032017 | 11102017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10032017 | 2017-10-03T14:56:34+00:00 |  | 000078676-01 | Iva | Edman | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 11152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09292017 | 10262017 | Standard |  |  | 2017-09-29 | 16/RUA01= $3214.76 | 0 | 2017-10-26 |  | 2017-11-15 | 2017-11-15 | 27 | 27 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003084 | E871, S32009D | Unsp fracture of unsp lum vertebra, subs for fx w routn heal | ICD10 | 11152017 | 09292017 | 10262017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 28 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10302017 | 2017-10-30T13:09:36+00:00 |  | 000059252-01 | BETSY | NOGGLE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10282017 | 11102017 | Standard |  |  | 2017-10-28 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-11-10 |  | 2017-11-14 | 2017-11-14 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030112 | M6281, R2689, R269, R531, S72144A | Nondisplaced intertrochanteric fracture of right femur, init | ICD10 | 11152017 | 10282017 | 11102017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10262017 | 2017-10-26T12:54:20+00:00 |  | 000077779-01 | Helen | Temple | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 11152017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 10252017 | 11102017 | Standard |  |  | 2017-10-25 | 17/RVA01= $3586.28 | 0 | 2017-11-10 |  | 2017-11-15 | 2017-11-15 | 16 | 16 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026067 | D62, M1990, Z471, Z96651 | Presence of right artificial knee joint | ICD10 | 11152017 | 10252017 | 11102017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 11102017 | 2017-11-10T11:27:18+00:00 |  | 000044450-01 | MARGARET | NICOLIA | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11012017 | 11022017 | Standard |  |  | 2017-11-01 | Per Diem: $200.00/day x 1 day = $200.00 | 0 | 2017-11-02 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114009 | I482, N179, R627 | Adult failure to thrive | ICD10 | 11152017 | 11012017 | 11022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 11102017 | 2017-11-10T16:14:50+00:00 |  | 000096836-01 | Mary | South | SOUND KENWOOD HSPISTS OF | 926206 | CHANTAL G | WALSH | 1740274760 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 11152017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 11092017 | 11102017 | Standard |  |  | 2017-11-09 | Per Diem: $200.00/day x 1 SNF day = $200.00 | 0 | 2017-11-10 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113001 | S72001G | Fx unsp part of nk of r femr, subs for clos fx w delay heal | ICD10 | 11152017 | 11092017 | 11102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 10232017 | 2017-10-23T12:15:51+00:00 |  | 000045431-01 | ROBERT | HEASLEY | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10212017 | 11102017 | Standard |  |  | 2017-10-21 | 17/RVB01=$5,411.86 | 0 | 2017-11-10 |  | 2017-11-14 | 2017-11-14 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023126 | F0280, G309, I2699, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 11152017 | 10212017 | 11102017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 10302017 | 2017-10-30T09:44:29+00:00 |  | 000082467-01 | John | Rowley | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10272017 | 10282017 | Standard |  |  | 2017-10-27 | PER DIEM RATE OF $250.00/DAY X 1 DAY=$250.00 | 25 | 2017-10-28 |  | 2017-11-14 |  | 1 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030064 | R296 | Repeated falls | ICD10 | 11152017 | 10272017 | 10282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 250 | 250 | Approved Skilled | 2 | Revenue | RV |  |  |  | 1.0 |
| 09252017 | 2017-09-25T16:24:28+00:00 |  | 000117926-01 | Lily | Smith | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 11152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09222017 | 10232017 | Standard |  |  | 2017-09-22 | 17/RVB01=$5,411.86 PER DIEM RATE OF $250.00/DAY X5=$1,250.00 PER DIEM RATE OF $200.00/DAY X6=$1,200.00 TOTAL PAYMENT=$7,861.86 | 0 | 2017-10-23 |  | 2017-11-15 | 2017-11-14 | 31 | 31 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926008 | G609 | Hereditary and idiopathic neuropathy, unspecified | ICD10 | 11152017 | 09222017 | 10232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7861 | 7861 | Approved Skilled | 32 | Revenue | RV |  |  |  | 4.0 |
| 10302017 | 2017-10-30T11:11:44+00:00 |  | 000095398-01 | Laura | Fisher | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 11152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10282017 | 11152017 | Standard |  |  | 2017-10-28 | 16/RVC01= $3539.19 | 34 | 2017-11-15 |  | 2017-11-15 | 2017-11-15 | 18 | 52 | 3539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030080 | N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 11152017 | 10282017 | 11152017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 09122017 | 2017-09-12T15:31:34+00:00 |  | 000106563-01 | Timothy | Corriveau | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 11152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09102017 | 11062017 | Standard |  |  | 2017-09-10 | 16/RVB01= $3350.20 21 DAYS @ $250.00= $5250.00 10 DYS @ $200.00= $2000.00 TOTAL: $10600.20 (6 HOSP DAYS USED) | 0 | 2017-11-06 |  | 2017-11-15 |  | 51 | 51 | 10600.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913028 | A419, J150, N179, N390 | Urinary tract infection, site not specified | ICD10 | 11152017 | 09102017 | 11062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 58 | Revenue | RV |  |  |  | 4.0 |
