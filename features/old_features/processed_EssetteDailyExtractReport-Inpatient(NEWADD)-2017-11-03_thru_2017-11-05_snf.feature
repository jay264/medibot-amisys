Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-03_thru_2017-11-05_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-03_thru_2017-11-05_SNF
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
| 10102017 | 2017-10-10T10:47:54+00:00 |  | 000083156-01 | Richard | Tingler | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 11032017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 10082017 | 10092017 | Standard |  |  | 2017-10-08 | 1 DAY @ $200.00 | 0 | 2017-10-09 |  | 2017-11-03 |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010042 | S32000S | Wedge compression fracture of unsp lumbar vertebra, sequela | ICD10 | 11032017 | 10082017 | 10092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 10032017 | 2017-10-03T11:06:43+00:00 |  | 000115484-01 | EMILY | GETTYS | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 11032017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10022017 | 10082017 | Standard |  |  | 2017-10-02 | 16/RHL01= $4862.85 | 36 | 2017-11-08 |  | 2017-11-02 | 2017-11-02 | 6 | 42 | 4862.85 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003059 | M791, R29898 | Oth symptoms and signs involving the musculoskeletal system | ICD10 | 11032017 | 10022017 | 10082017 | RHL01 | HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 10102017 | 2017-10-10T14:51:05+00:00 |  | 000094565-01 | Dennis | Lucas | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | CEDAR HILL CARE CENTER | 924191 | 1326035130 | CEDAR HILL CARE CENTER | 1326035130 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CEDAR HILL CARE CENTER | 11032017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 10072017 | 10112017 | Standard |  |  | 2017-10-07 | 17/PC101= $2465.35 | 0 | 2017-11-11 |  | 2017-11-03 |  | 4 | 4 | 2465.35 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010087 | M25559 | Pain in unspecified hip | ICD10 | 11032017 | 10072017 | 11112017 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 10202017 | 2017-10-20T15:53:36+00:00 |  | 000023525-01 | MARIAN | MILLER | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | AHF OHIO, INC. | 947789 | 1659733723 | SANCTUARY AT TUTTLE CROSSING | 1659733723 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SANCTUARY AT TUTTLE CROSSING | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10252017 | 10302017 | Standard |  |  | 2017-10-25 | Contract/RUG: 17/PD1  (Per MDS) = $2,581.99 | 0 | 2017-10-30 |  | 2017-11-02 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020083 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 11032017 | 10252017 | 10302017 | PD101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCP | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 10062017 | 2017-10-06T15:49:31+00:00 |  | 000079396-01 | Sharon | Teal | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ZANESVILLE HEALTH AND REHABILITATION | 11032017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 10042017 | 10282017 | Standard |  |  | 2017-10-04 | Contract/RUG: 17/RUB  (Per MDS) = $5,813.99 | 15 | 2017-10-28 | 2017-11-02 | 2017-11-02 | 2017-11-02 | 20 | 39 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006074 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 11032017 | 10042017 | 10282017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 10192017 | 2017-10-19T15:17:27+00:00 |  | 000096803-01 | Mabel | Conley | DEEPAK SARWAL MD LLC | 902805 | DEEPAK | SARWAL | 1235159559 | KINGSTON OF MIAMISBURG | 927958 | 1972590115 | KINGSTON OF MIAMISBURG | 1972590115 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINGSTON OF MIAMISBURG | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10172017 | 10312017 | Standard |  |  | 2017-10-17 | Contract/RUG: 17/RUA  (Per MDS) = $3,214.76 | 0 | 2017-10-31 |  | 2017-11-01 | 2017-11-01 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019088 | M4806 | Spinal stenosis, lumbar region | ICD10 | 11032017 | 10172017 | 10312017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 10192017 | 2017-10-19T06:49:42+00:00 |  | 000090108-01 | Inez | Stinson | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 11032017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10172017 | 10242017 | Standard |  |  | 2017-10-17 | Contract/RUG: 17/RVB  (Per MDS) = $5,411.86 | 0 | 2017-10-24 |  | 2017-11-01 |  | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019023 | G939 | Disorder of brain, unspecified | ICD10 | 11032017 | 10172017 | 10242017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10202017 | 2017-10-20T16:58:52+00:00 |  | 000100486-01 | Mary | Barker | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10192017 | 10282017 | Standard |  |  | 2017-10-19 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 18 | 2017-10-28 |  | 2017-11-01 | 2017-11-01 | 9 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023030 | C8590 | Non-Hodgkin lymphoma, unspecified, unspecified site | ICD10 | 11032017 | 10192017 | 10282017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 11022017 | 2017-11-02T14:48:41+00:00 |  | 000057994-01 | SUSAN | WALDREN | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10312017 | 11012017 | Standard |  |  | 2017-10-31 | Per Diem: $200.00 x 1 SNF Day = $200.00 | 0 | 2017-11-01 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102061 | R4182 | Altered mental status, unspecified | ICD10 | 11032017 | 10312017 | 11012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 09182017 | 2017-09-18T14:36:55+00:00 |  | 000110712-01 | Geneva | Bishop | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09152017 | 10312017 | Standard |  |  | 2017-09-15 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 26 SNF Days = $5,200.00 Total Payment:$10,611.86 | 20 | 2017-10-31 |  | 2017-11-02 | 2017-11-02 | 46 | 66 | 10611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919012 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 11032017 | 09152017 | 10312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 0 | Approved | 47 | Revenue | RV |  |  |  | 12.0 |
| 09202017 | 2017-09-20T14:43:51+00:00 |  | 000005604-01 | FLORENCE | SEARFOSS | SOUND KENWOOD HSPISTS OF | 926206 | CHANTAL G | WALSH | 1740274760 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 11032017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 09182017 | 10202017 | Standard |  |  | 2017-09-18 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 12 SNF Days = $2,400.00 Total Payment: $8,449.81 | 0 | 2017-10-20 |  | 2017-11-02 | 2017-11-02 | 32 | 32 | 8449.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921021 | M25552 | Pain in left hip | ICD10 | 11032017 | 09182017 | 10202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8449 | 8449 | Approved | 33 | Revenue | RV |  |  |  | 2.0 |
| 10052017 | 2017-10-05T14:36:49+00:00 |  | 000033486-01 | GEORGE | SYKES | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10042017 | 10252017 | Standard |  |  | 2017-10-04 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00 x 1 SNF Day = $200.00 Total Payment: $6,249.81 | 0 | 2017-10-25 |  | 2017-10-31 |  | 21 | 21 | 6249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005055 | S76119D | Strain of unsp quadriceps muscle, fascia and tendon, subs | ICD10 | 11032017 | 10042017 | 10252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6249 | 6249 | Approved | 22 | Revenue | RV |  |  |  | 1.0 |
| 10202017 | 2017-10-20T16:15:36+00:00 |  | 000097505-01 | Robert | Haslett | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10192017 | 10242017 | Standard |  |  | 2017-10-19 | Per MDS: 16/RVC01 = $3539.19 | 11 | 2017-10-24 |  | 2017-11-03 |  | 5 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023045 | D649, E119, M4802, N186, R221, R4702, R569, Z992 | Dependence on renal dialysis | ICD10 | 11032017 | 10192017 | 10242017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 10162017 | 2017-10-16T16:42:55+00:00 |  | 000085679-01 | Benjamin | Ream | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10132017 | 11022017 | Standard |  |  | 2017-10-13 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-11-02 |  | 2017-11-02 | 2017-11-02 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017067 | E119, M25469, N400, R296 | Repeated falls | ICD10 | 11032017 | 10132017 | 11022017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10092017 | 2017-10-09T15:31:07+00:00 |  | 000034014-01 | BEATRICE | MADDEN | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10072017 | 10292017 | Standard |  |  | 2017-10-07 | Per MDS: 17/RVC01 = $6306.19 | 14 | 2017-10-29 | 2017-11-26 | 2017-11-02 | 2017-11-02 | 22 | 36 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010001 | N390 | Urinary tract infection, site not specified | ICD10 | 11032017 | 10072017 | 10292017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 10122017 | 2017-10-12T10:33:33+00:00 |  | 000103588-01 | Johnny | Clay | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10092017 | 10152017 | Standard |  |  | 2017-10-09 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-10-15 |  | 2017-11-02 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012016 | I639 | Cerebral infarction, unspecified | ICD10 | 11032017 | 10092017 | 10152017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 10162017 | 2017-10-16T10:24:55+00:00 |  | 000051807-01 | ELIZABETH | WALSH | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10132017 | 10262017 | Standard |  |  | 2017-10-13 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-10-26 |  | 2017-11-02 | 2017-11-02 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016061 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11032017 | 10132017 | 10262017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10092017 | 2017-10-09T15:26:43+00:00 |  | 000045627-01 | HAZEL | RADABAUGH | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10052017 | 10312017 | Standard |  |  | 2017-10-05 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $200.00/day x 6 days = $1200.00 TOTAL PAYMENT = $7249.81 | 0 | 2017-10-31 |  | 2017-11-02 | 2017-11-02 | 26 | 26 | 7249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009117 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 11032017 | 10052017 | 10312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7249 | 7249 | Approved | 27 | Revenue | RV |  |  |  | 6.0 |
| 10202017 | 2017-10-20T15:23:35+00:00 |  | 000088104-01 | Robert | Newton | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10182017 | 10272017 | Standard |  |  | 2017-10-18 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-10-27 |  | 2017-11-02 | 2017-11-02 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020080 | M6281, R4182, R488, Z736 | Limitation of activities due to disability | ICD10 | 11032017 | 10182017 | 10272017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 10112017 | 2017-10-11T15:25:14+00:00 |  | 000064531-01 | PAUL | DICUS | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 11032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10102017 | 11012017 | Standard |  |  | 2017-10-10 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $6706.19 | 0 | 2017-11-01 | 2017-11-02 | 2017-11-01 | 2017-11-01 | 22 | 22 | 6706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012001 | M25461 | Effusion, right knee | ICD10 | 11032017 | 10102017 | 11012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6706 | 6706 | Approved | 23 | Revenue | RV |  |  |  | 2.0 |
| 08282017 | 2017-08-28T10:46:53+00:00 |  | 000037411-01 | JAMES | BROWN | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 11052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08252017 | 11032017 | Standard |  |  | 2017-08-25 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 50 days = $10,000.00 TOTAL PAYMENT = $16,306.19 | 0 | 2017-11-03 |  | 2017-11-03 | 2017-11-03 | 70 | 70 | 16306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828073 | S72002S | Fracture of unspecified part of neck of left femur, sequela | ICD10 | 11052017 | 08252017 | 11032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 71 | Revenue | RV |  |  |  | 1.0 |
| 10062017 | 2017-10-06T15:08:25+00:00 |  | 000009165-01 | BERNICE | COLEMAN | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 11052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10042017 | 10312017 | Standard |  |  | 2017-10-04 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $200.00/day = $1400.00 TOTAL PAYMENT = $7213.99 | 28 | 2017-10-31 |  | 2017-11-03 | 2017-11-03 | 27 | 55 | 7213.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006073 | Z5189, S98129D | Partial traumatic amputation of unsp great toe, subs encntr | ICD10 | 11052017 | 10042017 | 10312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7213 | 7213 | Approved | 28 | Revenue | RV |  |  |  | 7.0 |
| 10132017 | 2017-10-13T10:34:47+00:00 |  | 000049870-01 | Betty | Claffey | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 11052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10112017 | 10312017 | Standard |  |  | 2017-10-11 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-10-31 |  | 2017-11-03 | 2017-11-03 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013026 | Z5189, Z4889 | Encounter for other specified surgical aftercare | ICD10 | 11052017 | 10112017 | 10312017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10162017 | 2017-10-16T11:41:17+00:00 |  | 000045673-01 | Mary | Elliott | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 11052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10122017 | 11012017 | Standard |  |  | 2017-10-12 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-11-01 |  | 2017-11-03 | 2017-11-03 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016078 | M6281, Z5189 | Encounter for other specified aftercare | ICD10 | 11052017 | 10122017 | 11012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10232017 | 2017-10-23T14:05:35+00:00 |  | 000067100-01 | Patricia | Divelbliss | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 11052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10202017 | 10312017 | Standard |  |  | 2017-10-20 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-10-31 |  | 2017-11-03 | 2017-10-31 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023137 | S12100D, S22071S | Stable burst fracture of T9-T10 vertebra, sequela | ICD10 | 11052017 | 10202017 | 10312017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
