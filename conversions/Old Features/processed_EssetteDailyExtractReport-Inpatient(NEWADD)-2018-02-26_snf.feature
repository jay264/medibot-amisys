Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-26_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-26_SNF
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
| 01312018 | 2018-01-31T13:06:06+00:00 |  | 000099583-01 | Lester | Morgenstern | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 02262018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 01292018 | 02082018 | Standard |  |  | 2018-01-29 | 17/RVA01= $3586.28 | 0 | 2018-02-08 |  | 2018-02-22 | 2018-02-22 | 10 | 10 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131102 | S9301XD | Subluxation of right ankle joint, subsequent encounter | ICD10 | 02262018 | 01292018 | 02082018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01312018 | 2018-01-31T13:15:34+00:00 |  | 000115844-01 | Scott | Christy | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 02262018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 01292018 | 02202018 | Standard |  |  | 2018-01-29 | 22 DAYS @ $200.00= $4400.00 VANCO PER INVOICE= $487.61 TOTAL: $4887.61 | 0 | 2018-02-20 |  | 2018-02-22 | 2018-02-22 | 22 | 22 | 4887.61 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131103 | L02419 | Cutaneous abscess of limb, unspecified | ICD10 | 02262018 | 01292018 | 02202018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4887 | 4887 | Approved | 23 | Revenue | RV |  |  |  | 8.0 |
| 02052018 | 2018-02-05T19:00:24+00:00 |  | 000017603-01 | LOIS | LYNN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02012018 | 03162018 | Standard |  |  | 2018-02-01 | 17/RUA01=$3,214.76 | 0 | 2018-02-16 |  | 2018-02-23 | 2018-02-23 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206035 | I63412 | Cereb infrc due to embolism of left middle cerebral artery | ICD10 | 02262018 | 02012018 | 02162018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 44 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 02122018 | 2018-02-12T16:42:15+00:00 |  | 000065536-01 | Joan | Olsson | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | FRIENDSHIP VILLAGE DUBLI | 900154 | 1891778536 | FRIENDSHIP VILLAGE DUBLIN | 1891778536 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE DUBLIN | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02232018 | Standard |  |  | 2018-02-09 | 17/RUB01=$5,813.99 | 0 | 2018-02-23 |  | 2018-02-21 | 2018-02-22 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213036 | J441, M6281, R296 | Repeated falls | ICD10 | 02262018 | 02092018 | 02232018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01052018 | 2018-01-05T08:54:46+00:00 |  | 000089041-01 | Karen | Feisel | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01032018 | 01192018 | Standard |  |  | 2018-01-03 | 16/RUC01=$7,333.11 | 12 | 2018-01-19 |  | 2018-02-26 |  | 16 | 28 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105038 | I618, N390 | Urinary tract infection, site not specified | ICD10 | 02262018 | 01032018 | 01192018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 01252018 | 2018-01-25T18:16:51+00:00 |  | 000103174-01 | Mary | Fiorilli | CARROLL, FREDERICK C | 900430 | FREDERICK C | CARROLL | 1962431957 | THE LAURELS OF MT VERNON | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 02262018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01192018 | 02252018 | Standard |  |  | 2018-01-19 | 17/RVC01= $6306.19 17 DAYS @ $200.00= $3400.00 TOTAL: $9706.19 | 47 | 2018-02-25 |  | 2018-02-26 | 2018-02-26 | 37 | 84 | 9706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126029 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 02262018 | 01192018 | 02252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9706 | 9706 | Approved | 38 | Revenue | RV |  |  |  | 3.0 |
| 02012018 | 2018-02-01T18:18:01+00:00 |  | 000120757-01 | Charles | Adkins Jr | CLINICAL CARE CONSULTANT | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02262018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01302018 | 02092018 | Standard |  |  | 2018-01-30 | 17/RVB=$5,411.86 | 0 | 2018-02-09 |  | 2018-02-23 | 2018-02-23 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202031 | A419, J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02262018 | 01302018 | 02092018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 02052018 | 2018-02-05T12:47:00+00:00 |  | 000052378-01 | ROBERT | MASSEY | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02012018 | 02102018 | Standard |  |  | 2018-02-01 | 16/RUB01=$4,429.71 | 0 | 2018-02-10 |  | 2018-02-26 | 2018-02-08 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205082 | I4891 | Unspecified atrial fibrillation | ICD10 | 02262018 | 02012018 | 02102018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 02062018 | 2018-02-06T17:37:29+00:00 |  | 000114467-01 | ANGELINE | BOGGS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02032018 | 02102018 | Standard |  |  | 2018-02-03 | 17/RUA01=$3,214.76 | 0 | 2018-02-10 |  | 2018-02-23 | 2018-02-23 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207019 | M9732XD | PERIPROSTH FX AROUND INTERNAL PROSTH L SHOULDER JT, SUBS | ICD10 | 02262018 | 02032018 | 02102018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 02132018 | 2018-02-13T16:25:35+00:00 |  | 000031217-01 | KENNETH | SCHOOLEY | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02242018 | Standard |  |  | 2018-02-09 | 17/RVC01= $6306.19 | 13 | 2018-02-24 |  | 2018-02-26 | 2018-02-26 | 15 | 28 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214005 | I469 | Cardiac arrest, cause unspecified | ICD10 | 02262018 | 02092018 | 02242018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 01262018 | 2018-01-26T14:31:21+00:00 |  | 000037882-01 | BETTY | RECOB | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01232018 | 02212018 | Standard |  |  | 2018-01-23 | 17/rRUC01= $6049.81 9 days @ $250.00= $2250.00 TOTAL: $8299.81 | 0 | 2018-02-21 |  | 2018-02-26 | 2018-02-26 | 29 | 29 | 8299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126076 | S35291D | Minor laceration of branches of celiac and mesent art, subs | ICD10 | 02262018 | 01232018 | 02212018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8299 | 8299 | Approved | 30 | Revenue | RV |  |  |  | 2.0 |
| 02052018 | 2018-02-05T10:16:01+00:00 |  | 000070802-01 | Jane | Langdon | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02012018 | 02152018 | Standard |  |  | 2018-02-01 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 24 | 2018-02-15 |  | 2018-02-26 | 2018-02-23 | 14 | 38 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205036 | A419 | Sepsis, unspecified organism | ICD10 | 02262018 | 02012018 | 02152018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 02052018 | 2018-02-05T18:46:14+00:00 |  | 000075749-01 | John | Schmitz | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 03092018 | Standard |  |  | 2018-02-02 | 17/RUC01=$6,049.81 | 0 | 2018-02-09 |  | 2018-02-23 |  | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206033 | N390 | Urinary tract infection, site not specified | ICD10 | 02262018 | 02022018 | 02092018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 36 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 02082018 | 2018-02-08T13:34:38+00:00 |  | 000109165-01 | Bonnie | Gibson | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 02262018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02072018 | 02232018 | Standard |  |  | 2018-02-07 | 16/RHC01= $3133.29 | 26 | 2018-02-23 |  | 2018-02-26 | 2018-02-21 | 16 | 42 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208065 | M6281, N179 | Acute kidney failure, unspecified | ICD10 | 02262018 | 02072018 | 02232018 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 02082018 | 2018-02-08T15:05:09+00:00 |  | 000077408-01 | Sallie | Dixon | HEARTLAND WOODRIDGE OF F | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 02262018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 02062018 | 02132018 | Standard |  |  | 2018-02-06 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-02-13 | 2018-02-23 | 2018-02-23 | 2018-02-23 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208081 | N179 | Acute kidney failure, unspecified | ICD10 | 02262018 | 02062018 | 02132018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 02112018 | 2018-02-11T16:33:49+00:00 |  | 000018487-01 | RUBY | BUTT | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02122018 | Standard |  |  | 2018-02-09 | 17/CC101=$3,231.84 | 0 | 2018-02-12 |  | 2018-02-23 | 2018-02-23 | 3 | 3 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212037 | S52512D | Disp fx of l radial styloid pro, 7thD | ICD10 | 02262018 | 02092018 | 02122018 | CC101 | CLINICALLY COMPLEX , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved Skilled | 4 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 02152018 | 2018-02-15T12:33:26+00:00 |  | 000120905-01 | Bruce | Blain | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02262018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 02142018 | 02232018 | Standard |  |  | 2018-02-14 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-02-23 |  | 2018-02-26 |  | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215058 | R5381 | Other malaise | ICD10 | 02262018 | 02142018 | 02232018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 02162018 | 2018-02-16T13:30:11+00:00 |  | 000085294-01 | Tillie | Chamberlain | GENESIS MEDICAL GRP LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02152018 | 02242018 | Standard |  |  | 2018-02-15 | Swing Bed Daily Rate | 0 | 2018-02-24 |  |  | 2018-02-22 | 9 | 9 | Swing Bed Daily Rate x 9 SNF Days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216065 | Z5189 | Encounter for other specified aftercare | ICD10 | 02262018 | 02152018 | 02242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 10 | Revenue | RV |  |  |  | 2.0 |
| 02192018 | 2018-02-19T13:03:08+00:00 |  | 000022033-01 | ALICE | SHEPPARD | CEN OHIO GERIATRICS LLC | 936950 | PETER D | HUCEK | 1548274871 | SARAH MOORE HEALTH CARE CENTER | 946271 | 1063476802 | SARAH MOORE HEALTH CARE CENTER | 1063476802 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SARAH MOORE HEALTH CARE CENTER | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02162018 | 02212018 | Standard |  |  | 2018-02-16 | 5 DAYS NONSKILLED @ $200.00= $1000.00 | 0 | 2018-02-21 |  |  |  | 5 | 0 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219062 | C541 | Malignant neoplasm of endometrium | ICD10 | 02262018 | 02162018 | 02212018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 6 | Revenue | RV |  |  |  | 5.0 |
| 02192018 | 2018-02-19T15:55:49+00:00 |  | 000113186-01 | Donald | Lane | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 02262018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 02182018 | 02222018 | Standard |  |  | 2018-02-18 | 4 DAYS OF NONSKILLED @ $200.00= $800.00 | 0 | 2018-02-22 |  |  |  | 4 | 0 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220028 | J9602, R4182 | Altered mental status, unspecified | ICD10 | 02262018 | 02182018 | 02222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
| 02222018 | 2018-02-22T09:42:03+00:00 |  | 000089749-01 | Rosemary | Wallace | CARROLL, FREDERICK C | 900430 | FREDERICK C | CARROLL | 1962431957 | THE LAURELS OF MT VERNON | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 02262018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02202018 | 02232018 | Standard |  |  | 2018-02-20 | 3 NONSKILLED DAYS @ $200.00= $600.00 | 0 | 2018-02-23 |  |  |  | 3 | 0 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222042 | G9340 | Encephalopathy, unspecified | ICD10 | 02262018 | 02202018 | 02232018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 02222018 | 2018-02-22T13:21:09+00:00 |  | 000060983-01 | BETTY | MESSER | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 02262018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02212018 | 02252018 | Standard |  |  | 2018-02-21 | Per Diem: $250.00/day x 3 SNF Days = $750.00 | 0 | 2018-02-25 |  |  |  | 3 | 3 | 750.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222072 | I951 | Orthostatic hypotension | ICD10 | 02262018 | 02212018 | 02252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 750 | 750 | Approved | 5 | Revenue | RV |  |  |  | 2.0 |
| 02232018 | 2018-02-23T12:19:42+00:00 |  | 000073367-01 | Anita | Turner | MEDICAL & SURG ASSOC INC | 913868 | RAJU | FATEHCHAND | 1346201407 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 02262018 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 02152018 | 02162018 | Standard |  |  | 2018-02-15 | PER DIEM RATE OF $200.00/DAY X 1 DAY=$200.00 | 0 | 2018-02-16 |  |  |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223047 | M1611, Z96641 | Presence of right artificial hip joint | ICD10 | 02262018 | 02152018 | 02162018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 2 | Revenue | RV |  |  |  | 1.0 |
