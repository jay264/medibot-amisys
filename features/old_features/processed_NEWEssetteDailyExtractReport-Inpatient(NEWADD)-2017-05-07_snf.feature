Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-07_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-07_SNF
Given I save the auth class "<auth_class>" to a variable
Given I use "<care_date>" to determine the start and end dates and authorized days
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
	And in the "hospital_services" page I enter the first SNF date into the "est_admit" image

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
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name    | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class             | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment  | days_used_prior | dc         | denc_date | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem | auth_type         | auth_status    |	auth_number |	diagnosis_code     |	diagnosis            	|	diagnosis_type |	auth_modified_date | service_code       | service_description                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                               | care_date                                                                                                                                                                                              | actual_level_of_care                                                                               | approved_level_of_care                                                                             | determination                                                                                                          | auth_approval_days                                                             | blank_qty_1 | blank_qty_2                  | blank_qty_3 |

| 02142017 | 2017-02-14T14:49:49+00:00 |  | 000085052-01 | Loretta | Wolfe | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 05052017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 02132017 | 03072017 | Standard |  |  | 2017-02-13 | 17/HC101=$3481.78 | 0 | 2017-03-08 | 2017-05-01 | 2017-04-06 | 2017-04-17 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215012 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05052017 | HC101 | SPECIAL CARE HIGH , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP | Out to the hosp 2/15/17 back 2/22/17= 7 days LCD:3/11/17 NRD:3/12/17, FTA FILED., KEPRO FTA fax notification received, MDS with RUG RVC10 received, DC info NOMNC received, updated MDS rec., DENC received |  |  |  |  | 0 |  |  | 16.0 |
| 03032017 | 2017-03-03T09:43:50+00:00 |  | 000032490-01 | NANCY | BEACH | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 05052017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 03012017 | 03102017 | Standard |  |  | 2017-03-01 | 16/CA101=$2698.63 | 10 | 2017-03-10 |  | 2017-03-13 | 2017-05-05 | 10 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170303020 | R410 | Disorientation, unspecified | ICD10 | 05052017 | CA101 | CLINICALLY COMPLEX , ADL INDEX 0-1/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP | DC info MDS with RUG CA110 received, NOMNC received |  |  |  |  | 0 |  |  | 10.0 |
| 03032017 | 2017-03-03T13:27:42+00:00 |  | 000028939-01 | CHARLES | HIXSON | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03012017 | 04182017 | Standard |  |  | 2017-03-01 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 29 SNF Days = $5,800.00 Total Payment: $11,849.81 | 0 | 2017-04-19 |  | 2017-04-29 | 2017-04-29 | 49 | 49 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170303064 | M4806, M6281, Z9181 | History of falling | ICD10 | 05052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 49 | Revenue | RV | Received a voice mail message from Meridith from SNF that member was discharged to hospital yesterday on 4/19/17 and will let MediGold know when member returns to SNF., Called Meridith at SNF-- she informed member has not returned to SNF. I requested the DC checklist  5 day MDS to close case  she verbalized understanding., DC Checklist Rec'd, MDS received |  |  |  |  | 0 |  |  | 49.0 |
| 03062017 | 2017-03-06T08:58:48+00:00 |  | 000112735-01 | Mary | Nash | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 05052017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Inpatient | 03032017 | 03102017 | Standard |  |  | 2017-03-03 | Per Diem: $250.00/day x 8 SNF days | 0 | 2017-03-11 |  | 2017-03-14 | 2017-03-14 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170306079 | , , R7881 | Bacteremia | ICD10 | 05052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2685 | 2685 | Approved | 8 | Revenue | RV | DC info NOMNC MDS with RUG RUA10 received, MAR received |  |  |  |  | 0 |  |  | 8.0 |
| 03062017 | 2017-03-06T15:46:07+00:00 |  | 000082078-01 | John | Jones | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03022017 | 03132017 | Standard |  |  | 2017-03-02 | Contract/RUG: 17/RVA (Per MDS) =$3,586.28 | 0 | 2017-03-14 |  | 2017-04-29 |  | 12 | 12 | 170315090216.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170307025 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05052017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP | Called Meredith at SNF-- she informed that member discharged on 3/14/17 to home.  I requested the DC checklist  MDS and NOMNC to close case  she verbalized understanding., MDS received |  |  |  |  | 0 |  |  | 12.0 |
| 03302017 | 2017-03-30T10:50:09+00:00 |  | 000112586-01 | Rosemary | Ross | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 05052017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03282017 | 04262017 | Standard |  |  | 2017-03-28 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $200.00/day x 10 days = $2,000.00 Total Payment: $7,813.99 | 0 | 2017-04-27 |  | 2017-05-01 | 2017-05-01 | 30 | 30 | 170404093505.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170330035 | S0990XD, W19XXXD | Unspecified fall, subsequent encounter | ICD10 | 05052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7813 | 7813 | Approved | 30 | Revenue | RV | Left message for Deanna Meadows at facility-- requesting second page of the Per Diem form for review for possible extent of skilled days for member. Also left my phone number to call with any questions., DC info NOMNC and MDS with RUG RUB10 received. |  |  |  |  | 0 |  |  | 30.0 |
| 03302017 | 2017-03-30T11:18:18+00:00 |  | 000040674-01 | SHIRLEY | WRIGHT | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03292017 | 04292017 | Standard |  |  | 2017-03-29 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x  12 SNF Days = $2,400.00 Total Payment: $7,811.86 | 2 | 2017-04-30 |  | 2017-05-03 | 2017-05-03 | 32 | 34 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170330037 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7811 | 7811 | Approved | 32 | Revenue | RV | Unable to contact facility to request addtl info/request fax be resent as work space phone is not working., MDS with RUG RVB10 received, DC info NOMNC and MDS with RVB10 received. |  |  |  |  | 0 |  |  | 32.0 |
| 03312017 | 2017-03-31T14:38:20+00:00 |  | 000097198-01 | Jesse | Snader | MEDICINE INPATIENT GROUP | 929488 | LOFTI F | MAMLOUK | 1013957216 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 05052017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03302017 | 04262017 | Standard |  |  | 2017-03-30 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 8 SNF Days = $1,600.00 Total Payment: $7,649.81 | 14 | 2017-04-27 |  | 2017-05-03 | 2017-05-03 | 28 | 42 | 170404093560.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170403086 | R296 | Repeated falls | ICD10 | 05052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7649 | 7649 | Approved | 28 | Revenue | RV | DC info NOMNC  and MDS with RUG RUC10 received. |  |  |  |  | 0 |  |  | 28.0 |
| 04032017 | 2017-04-03T10:50:41+00:00 |  | 000117250-01 | BENJAMIN | LEMASTER JR | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 05052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03302017 | 04132017 | Standard |  |  | 2017-03-30 | Per MDS: 17/RVB01 = $5411.86 TOTAL PAYMENT = $5411.86 | 0 | 2017-04-14 |  | 2017-04-27 |  | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170404028 | K8689 | OTHER SPECIFIED DISEASES OF PANCREAS | ICD10 | 05052017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP | DC info and MDS section G/O received., DC info and MDS with RUG RVB10 received. |  |  |  |  | 0 |  |  | 5.0 |
| 04072017 | 2017-04-07T13:55:09+00:00 |  | 000092166-01 | Mary | Hampp | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04062017 | 04192017 | Standard |  |  | 2017-04-06 | Per MDS: 16/RUB01 = $4429.71 TOTAL PAYMENT= $4429.71 | 0 | 2017-04-20 |  | 2017-04-25 | 2017-04-25 | 14 | 14 | 170413080836.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170407088 | R4182 | Altered mental status, unspecified | ICD10 | 05052017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP | per telephone conversation will Molly  DX: altered mental status, DC info NOMNC and MDS with RUG RUB10 received. |  |  |  |  | 0 |  |  | 14.0 |
| 04112017 | 2017-04-11T14:53:18+00:00 |  | 000015306-01 | ROSA | JOHNSON | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03302017 | 04192017 | Standard |  |  | 2017-03-30 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 1 SNF day = $250.00 TOTAL PAYMENT = $5661.86 | 0 | 2017-05-20 |  | 2017-04-26 | 2017-04-26 | 21 | 21 | 170413095644.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170412011 | S72352D | Displ commnt fx shaft of l femr, 7thD | ICD10 | 05052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5661 | 5661 | Approved | 21 | Revenue | RV | MDS with RUG RVB10 received, DC info NOMNC and MDS with RUG RVB10 received. |  |  |  |  | 0 |  |  | 21.0 |
| 05022017 | 2017-05-02T19:07:17+00:00 |  | 000045030-01 | ROBERTA | BASS | NANCY LYNN ALKIRE LLC | 901854 | NANCY | ALKIRE | 1710924659 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 05052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04292017 | 05022017 | Standard |  |  | 2017-04-29 | Per Diem: $200.00/day x 4 SNF days = $800.00 TOTAL PAYMENT = $800.00 | 0 | 2017-05-03 |  |  | 2017-05-04 | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503063 | S73005D | Unspecified dislocation of left hip, subsequent encounter | ICD10 | 05052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 4 | Revenue | RV | Per Stephanie  mbr DC home 5/3/17, NOMNC received |  |  |  |  | 0 |  |  | 4.0 |
| 04252017 | 2017-04-25T14:01:43+00:00 |  | 000099940-01 | KATHLEEN | DURHAM | FAMILY PRACTICE ASSOC | 902127 | SALLY A | ABBOTT | 1891788626 | SPRINGFIELD NURSING & INDEPENDENT LI | 911709 | 1598905838 | SPRINGFIELD NURSING & INDEPENDENT LI | 1598905838 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SPRINGFIELD NURSING & INDEPENDENT LI | 05052017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170427015 | S7292XS | Unspecified fracture of left femur, sequela | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  | P/c to Gerald; s/w Carol who adv'd he is not yet in the office this morning and to try back after 11am., Called facility/ Gerald in meeting   received his cell number 937-469-6165 from Carol. Called/left voice mail message requesting the correct paperwork for a SNF admit  informed of www.Medigold.com site to get correct forms and to call me if he had any questions at 614-546-3102., Late Entry from 5/1/17-- Gerald had returned call  reviewed what paperwork was needed  he verbalized understanding. Also  I faxed the admit notification  per deim  update/task summary forms to Gerald., Received a fax from Gerald but only received the cover page  appears he tried to fax 9 pages  called SNF  spoke with Gerald  he will re-fax information to MediGold., Received another fax from Gerald but still only received the cover page  appears he tried to fax 9 pages again. Called SNF  spoke with Gerald  he will re-fax information to MediGold in am. I asked for him to please confirm that all pages go through on his fax at facility in am  he verbalized understanding. |  |  |  |  | 0 |  |  | 20.0 |
| 05012017 | 2017-05-01T16:32:22+00:00 |  | 000024123-01 | JEANNINE | GREEN | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170502095 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05012017 | 2017-05-01T21:59:36+00:00 |  | 000084483-01 | Jonathan | Kirk | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 05052017 | Interim Approval | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170502096 | L03116 | Cellulitis of left lower limb | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05022017 | 2017-05-02T07:12:55+00:00 |  | 000025378-01 | PHYLLIS | MAXWELL | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170502097 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  | KEPRO fax for records received |  |  |  |  | 0 |  |  | 10.0 |
| 05022017 | 2017-05-02T08:53:24+00:00 |  | 000015297-01 | JUDITH | TERRY | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170502100 | J189 | Pneumonia, unspecified organism | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05022017 | 2017-05-02T08:58:31+00:00 |  | 000057590-01 | GEORGE | GRIFFITH | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170502101 | K550, Z433 | Encounter for attention to colostomy | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05022017 | 2017-05-02T08:52:38+00:00 |  | 000075168-01 | Iris | Roberts | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | CAMBRIDGE HEALTHCARE AND | 930700 | 1053662429 | ASTORIA PLACE OF CAMBRIDGE | 1053662429 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF CAMBRIDGE | 05052017 | Interim Approval | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503005 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  | P/c to Chris G; requested remaining admit documentation be faxed.  She adv'd member was only at the facility for about 40 minutes and has been in the hospital ever since.  Member due to return to facility Thurs-Fri. |  |  |  |  | 0 |  |  | 1.0 |
| 05022017 | 2017-05-02T09:42:36+00:00 |  | 000071356-01 | Charles | Padrutt | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503023 | S22089D | Unsp fracture of T11-T12 vertebra, subs for fx w routn heal | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05022017 | 2017-05-02T09:53:46+00:00 |  | 000052063-01 | DONALD | GOURLEY | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503025 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05022017 | 2017-05-02T10:54:43+00:00 |  | 000109709-01 | Bonna | Dennis | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503029 | E860, N179, R262, R4182 | Altered mental status, unspecified | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05022017 | 2017-05-02T10:55:09+00:00 |  | 000038116-01 | EDGAR | ROHRER | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503030 | I5023, J9601 | Acute respiratory failure with hypoxia | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05022017 | 2017-05-02T11:49:16+00:00 |  | 000010360-01 | Elizabeth | Dunn | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 05052017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503035 | Q780 | Osteogenesis imperfecta | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05022017 | 2017-05-02T12:03:02+00:00 |  | 000118213-01 | Marsha | Gaudi | AMERICAN HLTH NETWORK OF | 904090 | WILLIAM A | ELDER | 1710914833 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 05052017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503038 | S52501D, S82841D, W109XXD | Fall (on) (from) unspecified stairs and steps, subs encntr | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  | Faxed Per Diem request and update summary  spoke with Amy Carpenter and requested a therapy update for 4/20/17  4/27/17  and 5/4/17. Amy will have therapy fill out and fax back. |  |  |  |  | 0 |  |  | 20.0 |
| 05022017 | 2017-05-02T12:54:48+00:00 |  | 000028781-01 | AUDREY | ORR | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503040 | S42201D | Unsp fx upper end of r humerus, subs for fx w routn heal | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05022017 | 2017-05-02T14:53:20+00:00 |  | 000075070-01 | Harry | Ludwig | CENTRAL OH HSPISTS INC | 937256 | LYLE T | OLSON | 1053373217 | COUNTRY CLUB RETIREMENT CENTER V LLC | 930468 | 1881021830 | COUNTRY CLUB RETIREMENT CENTER V LLC | 1881021830 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY CLUB RETIREMENT CENTER V LLC | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503042 | M1711, Z96651 | Presence of right artificial knee joint | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05022017 | 2017-05-02T15:01:46+00:00 |  | 000107828-01 | Odessa | Lacy | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 05052017 | Interim Approval | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503043 | M4326 | Fusion of spine, lumbar region | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05032017 | 2017-05-03T08:43:51+00:00 |  | 000083662-01 | Dorothy | Holcomb | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504005 | Z96642 | Presence of left artificial hip joint | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05032017 | 2017-05-03T09:17:14+00:00 |  | 000003244-01 | ELSIE | RITCHEY | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504010 | E871, S32810A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05032017 | 2017-05-03T09:40:01+00:00 |  | 000026609-01 | VERNON | WILLIAMS | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504011 | S32020D | Wedge comprsn fx second lum vert, subs for fx w routn heal | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05032017 | 2017-05-03T10:03:14+00:00 |  | 000084059-01 | Carl | Cathel | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05052017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504012 | D72829, J40, K5900, R195 | Other fecal abnormalities | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05032017 | 2017-05-03T10:12:55+00:00 |  | 000074223-01 | Alice | Shaw | CNP OPERATING CO LLC | 913181 | JEROLD A | MEYER | 1821093881 | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF COSHOCTON | 05052017 | Interim Approval | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504013 | S82301D | Unsp fx lower end of r tibia, subs for clos fx w routn heal | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  | no 2nd page of the notification was received  sent a request for pg 2. |  |  |  |  | 0 |  |  | 20.0 |
| 05032017 | 2017-05-03T11:32:55+00:00 |  | 000092453-01 | Judith | Bice | CNP OPERATING CO LLC | 913181 | JEROLD A | MEYER | 1821093881 | COSHOCTON SPRINGS HEALTH & REHABILIT | 939939 | 1144610940 | COSHOCTON SPRINGS HEALTH & REHABILIT | 1144610940 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COSHOCTON SPRINGS HEALTH & REHABILIT | 05052017 | Interim Approval | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504025 | S72061S, S82111S | Displaced fracture of right tibial spine, sequela | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05032017 | 2017-05-03T15:05:52+00:00 |  | 000092175-01 | Craig | Jones | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504050 | S91001A | Unspecified open wound, right ankle, initial encounter | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  | Spoke with Tammy RE distance mbr ambulated on eval and minutes per day for PT/OT. Mbr amb 2'. PT/OT= 72 min/day each. |  |  |  |  | 0 |  |  | 20.0 |
| 05032017 | 2017-05-03T15:09:20+00:00 |  | 000072345-01 | Joyce | Glick | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504051 | S72002A, Z9181 | History of falling | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05032017 | 2017-05-03T16:36:28+00:00 |  | 000000241-01 | BYRON | THOMPSON | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504058 | E780, I6930, R339, S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05032017 | 2017-05-03T17:07:29+00:00 |  | 000087589-01 | Donna | Mummey | MED HOME PRIMARY CARE CT | 911942 | SHELLY L | DUNMYER | 1053392555 | THE OAKS AT BETHESDA | 930994 | 1295172047 | THE OAKS AT BETHESDA | 1295172047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE OAKS AT BETHESDA | 05052017 | Interim Approval | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504062 | J189 | Pneumonia, unspecified organism | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |  |  | 6.0 |
| 05042017 | 2017-05-04T11:22:57+00:00 |  | 000117391-01 | Shirley | Wiggins | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170505014 | S72001B | Fx unsp part of neck of r femur, init for opn fx type I/2 | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  | Per Emily  PT 55 min/day  OT 55 min/day  and ST 30 min/day |  |  |  |  | 0 |  |  | 20.0 |
| 05042017 | 2017-05-04T13:29:51+00:00 |  | 000000029-01 | Joyce | Messenger | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 05052017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170505028 | M4806, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05042017 | 2017-05-04T13:40:22+00:00 |  | 000060397-01 | MARGIE | CLARK | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170505031 | Z4789, Z5189 | Encounter for other specified aftercare | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05042017 | 2017-05-04T15:16:06+00:00 |  | 000109064-01 | Bonita | Carpenter | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 05052017 | Interim Approval | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170505038 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05042017 | 2017-05-04T15:18:25+00:00 |  | 000002954-01 | PAUL | KOSE | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170505039 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05052017 | 2017-05-05T08:45:22+00:00 |  | 000033535-01 | NANCY | ABBITT | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170505045 | S7221XD | Displ subtrochnt fx r femur, subs for clos fx w routn heal | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05052017 | 2017-05-05T09:49:29+00:00 |  | 000060738-01 | Glenna | Spears | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 05052017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170505048 | M79602 | Pain in left arm | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05052017 | 2017-05-05T11:07:20+00:00 |  | 000021622-01 | HELEN | MYERS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 05052017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170505055 | J189 | Pneumonia, unspecified organism | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05052017 | 2017-05-05T13:05:25+00:00 |  | 000023771-01 | Wilburt | Sills | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 05052017 | Interim Approval | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170505070 | I4891, I7389, L03115 | Cellulitis of right lower limb | ICD10 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
