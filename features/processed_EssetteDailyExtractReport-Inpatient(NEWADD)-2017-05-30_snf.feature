Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-30_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-30_SNF
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
| 02152017 | 2017-02-15T08:34:37+00:00 |  | 000083914-01 | Mary | Meier | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 05302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02132017 | 05232017 | Standard |  |  | 2017-02-13 | 27 days@ $250.00= $6750.00 73 days @ $200.00= $14600.00 IV cefazolin (per invoices)= $909.90 Total: $22259.90 | 0 | 2017-05-24 |  | 2017-02-24 |  | 100 | 100 | 22259.9 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215055 | M86659, T8451XD | Infect/inflm reaction due to internal right hip prosth, subs | ICD10 | 05302017 | 02132017 | 05242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 100 | Revenue | RV |  |  |  | 5.0 |
| 03292017 | 2017-03-29T12:17:58+00:00 |  | 000083957-01 | Jerry | Thompson | GERIATRIC PROVIDERS AND | 945374 | ANISHA | SINGH | 1881718989 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 05302017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 03272017 | 05172017 | Standard |  |  | 2017-03-27 | Contract/RUG: 17/RVC (Per MDS) =$6,306.19 Per Diem: $200.00/day x 29 Approved SNF Days = $ 5,800.00 (-3 Unapproved SNF Days) Total Payment: $12,106.19 | 33 | 2017-05-18 | 2017-05-26 | 2017-05-26 | 2017-05-26 | 52 | 85 | 12106.19 | 170404093304.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170329090 | I5032, L0390 | Cellulitis, unspecified | ICD10 | 05302017 | 03272017 | 05182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 52 | Revenue | RV |  |  |  | 3.0 |
| 04122017 | 2017-04-12T16:15:29+00:00 |  | 000112074-01 | Marilyn | Holden | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | MARIETTA REHABILITATION AND NURSING | 931538 | 1184730913 | MARIETTA REHABILITATION AND NURSING | 1184730913 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MARIETTA REHABILITATION AND NURSING | 05302017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 04112017 | 05182017 | Standard |  |  | 2017-04-11 | 17/RVB01=$5411.86 4 DAYS @ %250.00=$1000.00 14 DAYS @ $250.00=$2800.00 TOTAL= $9211.86 | 0 | 2017-05-19 |  | 2017-05-26 | 2017-05-26 | 38 | 38 | 9211.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413029 | J189 | Pneumonia, unspecified organism | ICD10 | 05302017 | 04112017 | 05192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9211 | 9211 | Approved | 38 | Revenue | RV |  |  |  | 6.0 |
| 04212017 | 2017-04-21T18:13:33+00:00 |  | 000043610-01 | Rose | Rodgers | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 05302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04202017 | 05052017 | Standard |  |  | 2017-04-20 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 4 | 2017-05-06 |  | 2017-05-26 | 2017-05-26 | 16 | 20 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424039 | M25561, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 05302017 | 04202017 | 05062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 05032017 | 2017-05-03T11:32:55+00:00 |  | 000092453-01 | Judith | Bice | CNP OPERATING CO LLC | 913181 | JEROLD A | MEYER | 1821093881 | COSHOCTON SPRINGS HEALTH & REHABILIT | 939939 | 1144610940 | COSHOCTON SPRINGS HEALTH & REHABILIT | 1144610940 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COSHOCTON SPRINGS HEALTH & REHABILIT | 05302017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 05012017 | 05192017 | Standard |  |  | 2017-05-01 | 17/RHB01=$3699.42 | 0 | 2017-05-20 |  | 2017-05-26 | 2017-05-26 | 20 | 20 | 3699.42 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504025 | S72061S, S82111S | Displaced fracture of right tibial spine, sequela | ICD10 | 05302017 | 05012017 | 05202017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05042017 | 2017-05-04T11:17:10+00:00 |  | 000099921-01 | Edith | Moore | MERCY HEALTH PHYSICIANS | 921405 | MICHAEL S | MCHENRY | 1447357769 | VILLA GEORGETOWN | 931679 | 1184612707 | VILLA GEORGETOWN | 1184612707 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA GEORGETOWN | 05302017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 05042017 | 05182017 | Standard |  |  | 2017-05-04 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-05-19 |  | 2017-05-30 | 2017-05-30 | 15 | 15 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504036 | S72002A, Z96642 | Presence of left artificial hip joint | ICD10 | 05302017 | 05042017 | 05192017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05042017 | 2017-05-04T15:16:06+00:00 |  | 000109064-01 | Bonita | Carpenter | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 05302017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 05032017 | 05222017 | Standard |  |  | 2017-05-03 | 17/RUB01=$5813.99 | 20 | 2017-05-22 |  | 2017-05-26 | 2017-05-26 | 20 | 40 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505038 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 05302017 | 05032017 | 05232017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05102017 | 2017-05-10T15:48:21+00:00 |  | 000084987-01 | Barbara | Harrell | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 05302017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 05082017 | 05252017 | Standard |  |  | 2017-05-08 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-05-26 |  | 2017-05-28 | 2017-05-28 | 18 | 18 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511013 | J189 | Pneumonia, unspecified organism | ICD10 | 05302017 | 05082017 | 05262017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 05162017 | 2017-05-16T11:22:57+00:00 |  | 000099882-01 | Charles | Booth | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 05302017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 05132017 | 05192017 | Standard |  |  | 2017-05-13 | 17/RUB01=$5813.99 | 0 | 2017-05-20 |  | 2017-05-30 |  | 7 | 7 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516101 | S066X0D | Traum subrac hem w/o loss of consciousness, subs | ICD10 | 05302017 | 05132017 | 05202017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 05222017 | 2017-05-22T12:27:01+00:00 |  | 000108414-01 | Mary Lou | Powell | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 05302017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 05162017 | 05192017 | Standard |  |  | 2017-05-16 | 17/RHA01=$2812.08 | 0 | 2017-05-20 |  | 2017-05-30 |  | 4 | 4 | 2812.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522082 | Z9049 | Acquired absence of other specified parts of digestive tract | ICD10 | 05302017 | 05162017 | 05202017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 4 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 05302017 | 2017-05-30T13:04:33+00:00 |  | 000081646-01 | Jodi | Cooperrider | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 05302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05282017 | 05292017 | Standard |  |  | 2017-05-28 | 1 day @ $200.00= $200.00 | 0 | 2017-05-29 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530189 | E860, I959, R531, Z89511 | Acquired absence of right leg below knee | ICD10 | 05302017 | 05282017 | 05292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
