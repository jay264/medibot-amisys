Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-07_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-07_SNF
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
| 03032017 | 2017-03-03T09:43:50+00:00 |  | 000032490-01 | NANCY | BEACH | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 05052017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 03012017 | 03102017 | Standard |  |  | 2017-03-01 | 16/CA101=$2698.63 | 10 | 2017-03-10 |  | 2017-03-13 | 2017-05-05 | 10 | 20 | 2698.63 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170303020 | R410 | Disorientation, unspecified | ICD10 | 05052017 | 03012017 | 03112017 | CA101 | CLINICALLY COMPLEX , ADL INDEX 0-1/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 03032017 | 2017-03-03T13:27:42+00:00 |  | 000028939-01 | CHARLES | HIXSON | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03012017 | 04182017 | Standard |  |  | 2017-03-01 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 29 SNF Days = $5,800.00 Total Payment: $11,849.81 | 0 | 2017-04-19 |  | 2017-04-29 | 2017-04-29 | 49 | 49 | 11849.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170303064 | M4806, M6281, Z9181 | History of falling | ICD10 | 05052017 | 03012017 | 04192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 49 | Revenue | RV |  |  |  | 49.0 |
| 03062017 | 2017-03-06T08:58:48+00:00 |  | 000112735-01 | Mary | Nash | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 05052017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Inpatient | 03032017 | 03102017 | Standard |  |  | 2017-03-03 | Per Diem: $250.00/day x 8 SNF days Zosyn = 21 doses = $322.77 per invoice Pipercillin = 8 does = $362.25 TOTAL PAYMENT: $2685.02 | 0 | 2017-03-11 |  | 2017-03-14 | 2017-03-14 | 8 | 8 | 2685.05 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170306079 | R7881 | Bacteremia | ICD10 | 05052017 | 03032017 | 03112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2685 | 2685 | Approved | 8 | Revenue | RV |  |  |  | 8.0 |
| 03062017 | 2017-03-06T15:46:07+00:00 |  | 000082078-01 | John | Jones | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03022017 | 03132017 | Standard |  |  | 2017-03-02 | Contract/RUG: 17/RVA (Per MDS) =$3,586.28 | 0 | 2017-03-14 |  | 2017-04-29 |  | 12 | 12 | 3586.28 | 170315090216.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170307025 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05052017 | 03022017 | 03142017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 03302017 | 2017-03-30T10:50:09+00:00 |  | 000112586-01 | Rosemary | Ross | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 05052017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03282017 | 04262017 | Standard |  |  | 2017-03-28 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $200.00/day x 10 days = $2,000.00 Total Payment: $7,813.99 | 0 | 2017-04-27 |  | 2017-05-01 | 2017-05-01 | 30 | 30 | 7813.99 | 170404093505.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170330035 | S0990XD, W19XXXD | Unspecified fall, subsequent encounter | ICD10 | 05052017 | 03282017 | 04272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7813 | 7813 | Approved | 30 | Revenue | RV |  |  |  | 30.0 |
| 03302017 | 2017-03-30T11:18:18+00:00 |  | 000040674-01 | SHIRLEY | WRIGHT | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03292017 | 04292017 | Standard |  |  | 2017-03-29 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x  12 SNF Days = $2,400.00 Total Payment: $7,811.86 | 2 | 2017-04-30 |  | 2017-05-03 | 2017-05-03 | 32 | 34 | 7811.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170330037 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05052017 | 03292017 | 04302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7811 | 7811 | Approved | 32 | Revenue | RV |  |  |  | 32.0 |
| 03312017 | 2017-03-31T14:38:20+00:00 |  | 000097198-01 | Jesse | Snader | MEDICINE INPATIENT GROUP | 929488 | LOFTI F | MAMLOUK | 1013957216 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 05052017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03302017 | 04262017 | Standard |  |  | 2017-03-30 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 8 SNF Days = $1,600.00 Total Payment: $7,649.81 | 14 | 2017-04-27 |  | 2017-05-03 | 2017-05-03 | 28 | 42 | 7649.81 | 170404093560.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170403086 | R296 | Repeated falls | ICD10 | 05052017 | 03302017 | 04272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7649 | 7649 | Approved | 28 | Revenue | RV |  |  |  | 28.0 |
| 04032017 | 2017-04-03T10:50:41+00:00 |  | 000117250-01 | BENJAMIN | LEMASTER JR | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 05052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03302017 | 04132017 | Standard |  |  | 2017-03-30 | Per MDS: 17/RVB01 = $5411.86 TOTAL PAYMENT = $5411.86 | 0 | 2017-04-14 |  | 2017-04-27 |  | 15 | 15 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170404028 | K8689 | OTHER SPECIFIED DISEASES OF PANCREAS | ICD10 | 05052017 | 03302017 | 04142017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 04072017 | 2017-04-07T13:55:09+00:00 |  | 000092166-01 | Mary | Hampp | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04062017 | 04192017 | Standard |  |  | 2017-04-06 | Per MDS: 16/RUB01 = $4429.71 TOTAL PAYMENT= $4429.71 | 0 | 2017-04-20 |  | 2017-04-25 | 2017-04-25 | 14 | 14 | 4429.71 | 170413080836.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170407088 | R4182 | Altered mental status, unspecified | ICD10 | 05052017 | 04062017 | 04202017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04112017 | 2017-04-11T14:53:18+00:00 |  | 000015306-01 | ROSA | JOHNSON | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03302017 | 04192017 | Standard |  |  | 2017-03-30 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 1 SNF day = $250.00 TOTAL PAYMENT = $5661.86 | 0 | 2017-05-20 |  | 2017-04-26 | 2017-04-26 | 21 | 21 | 5661.86 | 170413095644.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170412011 | S72352D | Displ commnt fx shaft of l femr, 7thD | ICD10 | 05052017 | 03302017 | 04202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5661 | 5661 | Approved | 21 | Revenue | RV |  |  |  | 21.0 |
| 05022017 | 2017-05-02T19:07:17+00:00 |  | 000045030-01 | ROBERTA | BASS | NANCY LYNN ALKIRE LLC | 901854 | NANCY | ALKIRE | 1710924659 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04292017 | 05022017 | Standard |  |  | 2017-04-29 | Per Diem: $200.00/day x 4 SNF days = $800.00 TOTAL PAYMENT = $800.00 | 0 | 2017-05-03 |  |  | 2017-05-04 | 4 | 4 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503063 | S73005D | Unspecified dislocation of left hip, subsequent encounter | ICD10 | 05052017 | 04292017 | 05032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 4 | Revenue | RV |  |  |  | 4.0 |
