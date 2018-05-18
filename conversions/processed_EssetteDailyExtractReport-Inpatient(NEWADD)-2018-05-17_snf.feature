Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-17_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-17_SNF
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
| 04022018 | 2018-04-02T14:31:36+00:00 |  | 000087933-01 | Diane | Bereczky | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 05172018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03302018 | 04122018 | Standard |  |  | 2018-03-30 | Per Diem: $200.00/day x 13 SNF Days = $2,600.00 Carve Out: Vancomycin IV $330.20 for 13 doses Total Payment: $2,930.20 | 20 | 2018-04-12 |  | 2018-04-17 | 2018-04-17 | 13 | 33 | 2930.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402116 | M1611, R2681, T8451XD | Infect/inflm reaction due to internal right hip prosth, subs | ICD10 | 05172018 | 03302018 | 04122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2930 | 2930 | Approved | 14 | Revenue | RV |  |  | No child records to display. |  |
| 04132018 | 2018-04-13T16:17:26+00:00 |  | 000080281-01 | James | Williams | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 05172018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04122018 | 05142018 | Standard |  |  | 2018-04-12 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 7 SNF Days = $1,400.00 Total Payment: $6,811.86 | 0 | 2018-05-14 |  | 2018-05-16 |  | 27 | 27 | 6811.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416007 | I509 | Heart failure, unspecified | ICD10 | 05172018 | 04122018 | 05142018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6811 | 6811 | Approved | 33 | Revenue | RV |  |  | No child records to display. |  |
| 04232018 | 2018-04-23T15:23:40+00:00 |  | 000096058-01 | Robert | Rice | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 05172018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04212018 | 05112018 | Standard |  |  | 2018-04-21 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-05-11 |  | 2018-05-16 | 2018-05-16 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424001 | Z96642 | Presence of left artificial hip joint | ICD10 | 05172018 | 04212018 | 05112018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 03202018 | 2018-03-20T11:12:20+00:00 |  | 000108897-01 | Nita | Snider | AMERICAN HLTH NETWORK OF | 924337 | RAJNISH K | GUPTA | 1063466795 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03162018 | 04262018 | Standard |  |  | 2018-03-16 | 17/RUB01=$5,813.99 PER DIEM RATE OF $250.00/DAY X 21 DAYS=$5,250.00 TOTAL PAYMENT TO FACILITY=$11,063.99 | 0 | 2018-04-26 |  | 2018-05-03 | 2018-05-03 | 41 | 41 | 11063.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320084 | I4891, S32402D, S32502D | Unsp fracture of left pubis, subs for fx w routn heal | ICD10 | 05172018 | 03162018 | 04262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 42 | Revenue | RV |  |  | No child records to display. |  |
| 02052018 | 2018-02-05T15:48:09+00:00 |  | 000035165-01 | DARLEEN | SHOW | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02042018 | 05042018 | Standard |  |  | 2018-02-04 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.00/DAY X 69 DAYS=$13.800.00 TOTAL PAYMENT TO FACILITY=$20,106.19 | 0 | 2018-05-04 |  | 2018-05-16 | 2018-05-16 | 89 | 89 | 20106.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205116 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 05172018 | 02042018 | 05042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 90 | Revenue | RV |  |  | No child records to display. |  |
| 04062018 | 2018-04-06T12:22:16+00:00 |  | 000116364-01 | NORMA | SCHNEEBERGER | MARIETTA HLTH CARE PHYS | 914714 | DAVID M | MONTGOMERY | 1992773501 | MARIETTA REHABILITATION AND NURSING | 931538 | 1184730913 | MARIETTA REHABILITATION AND NURSING | 1184730913 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MARIETTA REHABILITATION AND NURSING | 05172018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 04042018 | 04132018 | Standard |  |  | 2018-04-04 | 17/RMB01= $2790.37 | 0 | 2018-04-13 |  | 2018-05-17 |  | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406034 | R627 | Adult failure to thrive | ICD10 | 05172018 | 04042018 | 04132018 | RMB01 | MEDIUM REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04192018 | 2018-04-19T14:38:38+00:00 |  | 000037992-01 | SONDRA | HINDEL | HOSPICE OF CENTRAL OHIO | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04172018 | 05052018 | Standard |  |  | 2018-04-17 | 17/RUB01= $5813.99 | 0 | 2018-05-05 |  | 2018-05-17 |  | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419068 | E119, K529, N179, N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 05172018 | 04172018 | 05052018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04252018 | 2018-04-25T10:36:46+00:00 |  | 000076779-01 | Richard | Wright | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04192018 | 05032018 | Standard |  |  | 2018-04-19 | 17/RUB01= $5813.99 | 0 | 2018-05-03 |  | 2018-05-17 |  | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425035 | E039, F329, I10, I519, I639, M4802, N183, R000, R55 | Syncope and collapse | ICD10 | 05172018 | 04192018 | 05032018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04272018 | 2018-04-27T10:24:46+00:00 |  | 000075243-01 | Nancy | Wares | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04262018 | 05072018 | Standard |  |  | 2018-04-26 | 17/RVA01= $3586.28 | 0 | 2018-05-07 |  | 2018-05-17 |  | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427019 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05172018 | 04262018 | 05072018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04272018 | 2018-04-27T13:47:15+00:00 |  | 000043720-01 | HAZEL | ENGLE | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04262018 | 05102018 | Standard |  |  | 2018-04-26 | 17/RVA01=$3,586.28 | 0 | 2018-05-10 |  | 2018-05-11 | 2018-05-14 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427051 | Z4733, Z96652 | Presence of left artificial knee joint | ICD10 | 05172018 | 04262018 | 05102018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04302018 | 2018-04-30T12:05:20+00:00 |  | 000040253-01 | MARY | MCCLOSKEY | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | VALLEY VIEW CARE CENTER | 909041 | 1972578045 | VALLEY VIEW CARE CENTER | 1972578045 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VALLEY VIEW CARE CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272018 | 05172018 | Standard |  |  | 2018-04-27 | 16/RUC01=$7,333.11 | 0 | 2018-05-17 |  | 2018-05-16 | 2018-05-16 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430065 | F0390, J449, S32501D, S32592D, S72001B | Fx unsp part of neck of r femur, init for opn fx type I/2 | ICD10 | 05172018 | 04272018 | 05172018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04302018 | 2018-04-30T14:31:38+00:00 |  | 000075233-01 | Rose | Self | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 05172018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 04262018 | 05082018 | Standard |  |  | 2018-04-26 | 17/RVB01=$5,411.86 | 0 | 2018-05-08 |  | 2018-05-09 | 2018-05-09 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430088 | Z4789, Z5189 | Encounter for other specified aftercare | ICD10 | 05172018 | 04262018 | 05082018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05022018 | 2018-05-02T12:46:33+00:00 |  | 000112942-01 | Cheryl | Street | COLS INPATIENT CARE INC | 942957 | CHARLES F | WARE III | 1528355922 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04302018 | 05102018 | Standard |  |  | 2018-04-30 | 17/RVC01=$6,306.19 | 0 | 2018-05-10 |  | 2018-05-11 | 2018-05-11 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502055 | M5106 | Intervertebral disc disorders with myelopathy, lumbar region | ICD10 | 05172018 | 04302018 | 05102018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05032018 | 2018-05-03T14:55:11+00:00 |  | 000077334-01 | Joyce | Shirk | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 05172018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05022018 | 05112018 | Standard |  |  | 2018-05-02 | Contract/RUG: 17/RHA (Per MDS) = $2,812.08 | 0 | 2018-05-11 |  | 2018-05-17 | 2018-05-17 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503058 | Z96651 | Presence of right artificial knee joint | ICD10 | 05172018 | 05022018 | 05112018 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04242018 | 2018-04-24T14:36:38+00:00 |  | 000002109-01 | CHESTER | GRIMM | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04212018 | 05132018 | Standard |  |  | 2018-04-21 | Contract/RUG: 17/RHC (Per MDS) = $4,132.02 | 24 | 2018-05-13 |  | 2018-05-17 | 2018-05-14 | 22 | 46 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424091 | M4800 | Spinal stenosis, site unspecified | ICD10 | 05172018 | 04212018 | 05132018 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04302018 | 2018-04-30T15:25:11+00:00 |  | 000094422-01 | Daniel | Cottrell | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272018 | 05172018 | Standard |  |  | 2018-04-27 | 16/RUC01= $7333.11 | 21 | 2018-05-17 |  | 2018-05-17 | 2018-05-17 | 20 | 41 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430090 | Z96642 | Presence of left artificial hip joint | ICD10 | 05172018 | 04272018 | 05172018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05042018 | 2018-05-04T12:35:29+00:00 |  | 000030713-01 | AUGUSTINE | WATSON | COLS INPATIENT CARE INC | 942957 | CHARLES F | WARE III | 1528355922 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05022018 | 05112018 | Standard |  |  | 2018-05-02 | 17/RVA01=$3,586.28 | 0 | 2018-05-11 |  | 2018-05-15 | 2018-05-15 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504051 | I4891 | Unspecified atrial fibrillation | ICD10 | 05172018 | 05022018 | 05112018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05072018 | 2018-05-07T13:47:54+00:00 |  | 000013458-01 | ERMA | SILVEIRA | CEN OHIO GERIATRICS LLC | 907151 | JEROME M | KONG | 1598711657 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05042018 | 05162018 | Standard |  |  | 2018-05-04 | 17/RUB01=$5,813.99 | 0 | 2018-05-16 |  | 2018-05-17 | 2018-05-17 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508024 | M4805, M6281, M961, R262, S32030D, Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 05172018 | 05042018 | 05162018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05102018 | 2018-05-10T14:19:34+00:00 |  | 000048447-01 | JEAN | RASOR | CEN OHIO GERIATRICS LLC | 907151 | JEROME M | KONG | 1598711657 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05082018 | 05152018 | Standard |  |  | 2018-05-08 | 17/RUB01=$5,813.99 | 0 | 2018-05-15 |  | 2018-05-16 | 2018-05-16 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511002 | N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 05172018 | 05082018 | 05152018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05152018 | 2018-05-15T15:14:44+00:00 |  | 000068280-01 | ROSEWIN | OCHS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272018 | 05112018 | Standard |  |  | 2018-04-27 | 17/RUA01=$3,214.76 | 0 | 2018-05-11 |  | 2018-05-15 | 2018-05-15 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515111 | I10, I4891, I509, M6281 | Muscle weakness (generalized) | ICD10 | 05172018 | 04272018 | 05112018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  | No child records to display. |  |
