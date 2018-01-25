Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-24_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-24_SNF
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
| 12092017 | 2017-12-09T12:01:05+00:00 |  | 000050437-01 | CAROL | FORTNEY | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12072017 | 01202018 | Standard |  |  | 2017-12-07 | 16/RUB01=$4,429.71 PER DIEM RATE OF $250.00/DAY X 14 DAYS=$3,500.00 PER DIEM RATE OF $200.00/DAY X 5 DAYS=$1,000.00 TOTAL PAYMENT TO FACILITY=$8,929.71 | 0 | 2018-01-20 |  | 2018-01-22 | 2018-01-22 | 39 | 39 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211063 | R4182 | Altered mental status, unspecified | ICD10 | 01242018 | 12072017 | 01202018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8929 | 8929 | Approved Skilled | 45 | Revenue | RV |  |  |  | 5.0 |
| 12212017 | 2017-12-21T16:15:11+00:00 |  | 000050583-01 | PEGGY | MILLER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12192017 | 01182018 | Standard |  |  | 2017-12-19 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.00/DAY X 5 DAYS=$1,000.00 TOTAL PAYMENT TO FACILITY=$7,306.19 | 0 | 2018-01-18 |  | 2018-01-22 | 2018-01-22 | 25 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222007 | I4891 | Unspecified atrial fibrillation | ICD10 | 01242018 | 12192017 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12262017 | 2017-12-26T11:29:57+00:00 |  | 000034239-01 | ELIZABETH | GILLIAM | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12222017 | 01172018 | Standard |  |  | 2017-12-22 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $250.00/day x 6 SNF Days = $1,500.00 Total Payment: $6,911.86 | 0 | 2018-01-17 |  | 2018-01-18 | 2018-01-18 | 26 | 26 | 6911.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226150 | E109, N390 | Urinary tract infection, site not specified | ICD10 | 01242018 | 12222017 | 01172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6911 | 6911 | Approved | 27 | Revenue | RV |  |  |  | 6.0 |
| 12282017 | 2017-12-28T16:04:33+00:00 |  | 000039332-01 | JOANN | COX | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12152017 | 01022018 | Standard |  |  | 2017-12-15 | 17/RVB01=$5,411.86 | 0 | 2018-01-02 |  | 2018-01-22 |  | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229004 | C3490, J189, N183, R112 | Nausea with vomiting, unspecified | ICD10 | 01242018 | 12152017 | 01022018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 01082018 | 2018-01-08T15:15:59+00:00 |  | 000015235-01 | GERTRUDE | RASOR | CEN OHIO GERIATRICS LLC | 907151 | JEROME M | KONG | 1598711657 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01062018 | 01172018 | Standard |  |  | 2018-01-06 | 17/RUA01=$3,214.76 | 0 | 2018-01-17 |  | 2018-01-22 | 2018-01-22 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109026 | M71551 | Other bursitis, not elsewhere classified, right hip | ICD10 | 01242018 | 01062018 | 01172018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01172018 | 2018-01-17T10:05:51+00:00 |  | 000072142-01 | David | Binns | LONDON HEALTH & REHAB CENTER | 943587 |  | LONDON HEALTH & REHAB CENTER | 1912387879 | LONDON HEALTH & REHAB CENTER | 943587 | 1912387879 | LONDON HEALTH & REHAB CENTER | 1912387879 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LONDON HEALTH & REHAB CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01242018 | Standard |  |  | 2018-01-04 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-01-24 |  | 2018-01-23 | 2018-01-23 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117031 | J159 | Unspecified bacterial pneumonia | ICD10 | 01242018 | 01042018 | 01242018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07272017 | 2017-07-27T12:04:17+00:00 |  | 000076329-01 | Sharon | Mcelfresh | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 01242018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07252017 | 08022017 | Standard |  |  | 2017-07-25 | 17/RVA01=$3586.28 | 0 | 2017-08-03 |  | 2017-08-16 | 2017-08-16 | 9 | 9 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727055 | N390 | Urinary tract infection, site not specified | ICD10 | 01242018 | 07252017 | 08032017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 12192017 | 2017-12-19T17:21:14+00:00 |  | 000087845-01 | Larry | Taylor | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 01242018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12162017 | 01222018 | Standard |  |  | 2017-12-16 | Per Diem: $200.00/day x 31 days = $6,200.00 | 17 | 2018-01-22 |  |  | 2018-01-23 | 31 | 48 | 6200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220055 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01242018 | 12162017 | 01222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6200 | 6200 | Approved | 38 | Revenue | RV |  |  |  | 6.0 |
| 12212017 | 2017-12-21T16:16:56+00:00 |  | 000093826-01 | Patricia | Kendig | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 01242018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12202017 | 01172018 | Standard |  |  | 2017-12-20 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 Per Diem: $250.00/day x 6 SNF Days = $1,500.00 Total Payment: $5,086.28 | 0 | 2018-01-17 |  | 2018-01-23 | 2018-01-23 | 26 | 26 | 5086.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222009 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 01242018 | 12202017 | 01172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5086 | 5086 | Approved | 29 | Revenue | RV |  |  |  | 6.0 |
| 12282017 | 2017-12-28T14:12:18+00:00 |  | 000059879-01 | LOIS | GROOMS | CEN OHIO GERIATRICS LLC | 936950 | PETER D | HUCEK | 1548274871 | SARAH MOORE HEALTH CARE CENTER | 946271 | 1063476802 | SARAH MOORE HEALTH CARE CENTER | 1063476802 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SARAH MOORE HEALTH CARE CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12272017 | 01172018 | Standard |  |  | 2017-12-27 | 17/RVB01= $5411.86 1 DAYS @ $200.00= $200.00 TOTAL: $5611.86 | 20 | 2018-01-17 |  | 2018-01-24 | 2018-01-16 | 21 | 41 | 5611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228068 | G459, I2699, I5030, K5700, M6281, R0602 | Shortness of breath | ICD10 | 01242018 | 12272017 | 01172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5611 | 5611 | Approved | 22 | Revenue | RV |  |  |  | 1.0 |
| 01122018 | 2018-01-12T10:08:30+00:00 |  | 000118778-01 | Jackie | Whitt | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 01192018 | Standard |  |  | 2018-01-05 | 17/RUB01=$5,411.86 | 0 | 2018-01-19 |  | 2018-01-24 | 2018-01-24 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112026 | M169 | Osteoarthritis of hip, unspecified | ICD10 | 01242018 | 01052018 | 01192018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01122018 | 2018-01-12T11:03:16+00:00 |  | 000018544-01 | JAIME | RICO ORDEIX | CEN OHIO GERIATRICS LLC | 907151 | JEROME M | KONG | 1598711657 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01212018 | Standard |  |  | 2018-01-11 | 17/RVA01=$3,586.28 | 0 | 2018-01-21 |  | 2018-01-22 | 2018-01-22 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112047 | J09X1 | Influenza due to ident novel influenza A virus w pneumonia | ICD10 | 01242018 | 01112018 | 01212018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 07142017 | 2017-07-14T16:20:36+00:00 |  | 000077925-01 | Edward | Rhoades | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | HEARTLAND OF MADEIRA OH LLC | 920759 | 1871534834 | HEARTLAND OF MADEIRA OH LLC | 1871534834 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MADEIRA OH LLC | 01242018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 07102017 | 08292017 | Standard |  |  | 2017-07-10 | Contract/RUG: 17/RVX (Per MDS) = $6,171.24 Per Diem: $250.00/day x 21 SNF Days = $5,250.00 Carve Out: Zebrexa IV $109.56/Dose x  21/doses = $ 2,300.76 Total Payment: $13,722.00 | 59 | 2017-08-29 |  | 2017-09-10 |  | 41 | 100 | 13722.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714080 | J189 | Pneumonia, unspecified organism | ICD10 | 01242018 | 07102017 | 08292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 51 | Revenue | RV |  |  |  | 5.0 |
| 11142017 | 2017-11-14T08:58:34+00:00 |  | 000030358-01 | Joseph | Sullivan | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01242018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11112017 | 01242018 | Standard |  |  | 2017-11-11 | Per MDS: 17/RVC01 = $6306.19 Per Piem: $200.00/day x 3 days = $600.00 Per Diem: $250.00/day x 43 days = $10,750.00 TOTAL PAYMENT = $17,656.19 | 0 | 2018-01-24 |  | 2017-12-11 | 2018-01-24 | 66 | 66 | 17656.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114078 | D649, E1140, E119, N400, R012, R296 | Repeated falls | ICD10 | 01242018 | 11112017 | 01242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 75 | Revenue | RV |  |  |  | 3.0 |
| 12182017 | 2017-12-18T10:22:02+00:00 |  | 000009980-01 | MARIE | SULLIVAN | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12142017 | 01132018 | Standard |  |  | 2017-12-14 | 17/RUC01= $6049.81 10 DAYS @ $250.00= $2500.00 TOTAL: $8549.81 | 0 | 2018-01-13 |  | 2018-01-24 | 2018-01-24 | 30 | 30 | 8549.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218092 | R0602 | Shortness of breath | ICD10 | 01242018 | 12142017 | 01132018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8549 | 8549 | Approved | 31 | Revenue | RV |  |  |  | 10.0 |
| 12222017 | 2017-12-22T11:35:27+00:00 |  | 000108511-01 | John | Gallagher | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 01242018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12202017 | 01052018 | Standard |  |  | 2017-12-20 | 16/RVA01=$2,689.71 | 0 | 2018-01-05 |  | 2018-01-24 | 2018-01-24 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222048 | G9349 | Other encephalopathy | ICD10 | 01242018 | 12202017 | 01052018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 12292017 | 2017-12-29T16:09:42+00:00 |  | 000022324-01 | JAMES | BOSO | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12272017 | 01222018 | Standard |  |  | 2017-12-27 | 17/RUB01=$5,813.99 PER DIEM RATE OF $250.00/DAY X 6 DAYS=$1,500.00 TOTAL PAYMENT TO FACILITY=$7,313.99 | 0 | 2018-01-22 |  | 2018-01-23 | 2018-01-23 | 26 | 26 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102025 | J09X2, J449, N179, R55 | Syncope and collapse | ICD10 | 01242018 | 12272017 | 01222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7313 | 7313 | Approved Skilled | 27 | Revenue | RV |  |  |  | 6.0 |
| 01022018 | 2018-01-02T14:33:42+00:00 |  | 000079976-01 | Beverly | Mayhugh | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12292017 | 01182018 | Standard |  |  | 2017-12-29 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-01-18 |  | 2018-01-24 | 2018-01-24 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103029 | K7030, R4182 | Altered mental status, unspecified | ICD10 | 01242018 | 12292017 | 01182018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01032018 | 2018-01-03T09:56:55+00:00 |  | 000042847-01 | FRANCES | ARMSTRONG | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 01242018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12302017 | 01132018 | Standard |  |  | 2017-12-30 | 17/rub01= $5813.99 | 0 | 2018-01-13 |  | 2018-01-24 | 2018-01-24 | 14 | 14 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103092 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 01242018 | 12302017 | 01132018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01032018 | 2018-01-03T12:10:18+00:00 |  | 000017728-01 | MARGARET | DULA | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01022018 | 01162018 | Standard |  |  | 2018-01-02 | 16/RUB01=$4,429.71 | 0 | 2018-01-16 |  | 2018-01-22 | 2018-01-22 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103111 | I270, R55 | Syncope and collapse | ICD10 | 01242018 | 01022018 | 01162018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01112018 | 2018-01-11T12:40:06+00:00 |  | 000041129-01 | DOLORES | LEISTIKOW | HOSPICE OF CENTRAL OHIO | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 01242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01102018 | 01192018 | Standard |  |  | 2018-01-10 | 17/RUL01= $5317.57 | 0 | 2018-01-19 |  | 2018-01-24 | 2018-01-24 | 9 | 9 | 5317.57 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111080 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 01242018 | 01102018 | 01192018 | RUL01 | ULTRA HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA O | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
