Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-12_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-12_SNF
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
| 04122017 | 2017-04-12T16:36:48+00:00 |  | 000025381-01 | RALPH | PINSON | TJ BRIGHT & RG VARGO DOS | 935342 | TIMOTHY J | BRIGHT | 1760405393 | CENTERBURG POINTE | 915833 | 1033410295 | CENTERBURG POINTE | 1033410295 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG POINTE | 06122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04102017 | 06062017 | Standard |  |  | 2017-04-10 | 17/RHA01=$2812.08 30 days@ $200.00=$6000.00 total: $8812.08 | 22 | 2017-06-07 |  | 2017-06-09 | 2017-06-09 | 50 | 72 | 8812.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413034 | E11649 | Type 2 diabetes mellitus with hypoglycemia without coma | ICD10 | 06122017 | 04102017 | 06072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 881 | 881 | Approved | 58 | Revenue | RV |  |  |  | 6.0 |
| 05112017 | 2017-05-11T15:09:48+00:00 |  | 000064629-01 | Eleanor | Burris | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 06122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06122017 | 06192017 | Standard |  |  | 2017-05-08 | PER DIEM RATE OF $200.00/DAY X 9 DAYS=$1,800.00 | 0 | 2017-05-17 |  |  |  | 5 | 5 | 1800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512004 | S92354D | Nondisp fx of 5th metatarsal bone, r ft, 7thD | ICD10 | 06122017 | 05082017 | 05172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 8 | Revenue | RV |  |  |  | 9.0 |
| 05122017 | 2017-05-12T13:27:42+00:00 |  | 000100080-01 | Dennis | Neumann | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 06122017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05102017 | 05312017 | Standard |  |  | 2017-05-10 | Contract/RUG: 17/RVC (per MDS) = $6,306.19 Per Diem: $200.00/day x 2 SNF days = $400.00 Total Payment: $6,706.19 | 11 | 2017-06-01 |  | 2017-06-11 | 2017-06-11 | 22 | 33 | 6706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512074 | I421 | Obstructive hypertrophic cardiomyopathy | ICD10 | 06122017 | 05102017 | 06012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6706 | 6706 | Approved | 22 | Revenue | RV |  |  |  | 2.0 |
| 05122017 | 2017-05-12T17:36:17+00:00 |  | 000100931-01 | Janet | Casada | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 06122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 05102017 | 06012017 | Standard |  |  | 2017-05-10 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $250.00/day x 1 SNF Day = $250.00 Per Diem: $200.00/day x2 SNF Days = $ 400.00 Total Payment: $6,463.99 | 0 | 2017-06-02 |  | 2017-06-12 |  | 23 | 23 | 6463.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515053 | J9611 | Chronic respiratory failure with hypoxia | ICD10 | 06122017 | 05102017 | 06022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6463 | 6463 | Approved | 23 | Revenue | RV |  |  |  | 3.0 |
| 05162017 | 2017-05-16T08:55:44+00:00 |  | 000105373-01 | Linda | Wagstaff | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | GREYSTONE HEALTH & REHABILITATION CE | 942955 | 1326438128 | GREYSTONE HEALTH & REHABILITATION CE | 1326438128 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREYSTONE HEALTH & REHABILITATION CE | 06122017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 05182017 | 06082017 | Standard |  |  | 2017-05-18 | 17/RUL01=$5317.57 | 0 | 2017-06-09 |  | 2017-06-12 | 2017-06-12 | 22 | 22 | 5317.57 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516056 | R531, Z4732 | Aftercare following explantation of hip joint prosthesis | ICD10 | 06122017 | 05182017 | 06092017 | RUL01 | ULTRA HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA O | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 05172017 | 2017-05-17T12:35:02+00:00 |  | 000087724-01 | Edgar | Eldridge | HORSLEY, CHARLES D | 941004 | CHARLES D | HORSLEY | 1477546976 | LEBANON COUNTRY MANOR | 930691 | 1225455926 | LEBANON COUNTRY MANOR | 1225455926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LEBANON COUNTRY MANOR | 06122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 05122017 | 06102017 | Standard |  |  | 2017-05-12 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $250.00/day x 10 SNF Days = $2,500.00 Total Payment: $8,313.99 | 58 | 2017-06-11 | 2017-06-08 | 2017-06-08 | 2017-06-08 | 30 | 88 | 8313.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517036 | K8067 | Calculus of GB and bile duct w ac and chr cholecyst w obst | ICD10 | 06122017 | 05122017 | 06112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8313 | 8313 | Approved | 30 | Revenue | RV |  |  |  | 3.0 |
| 05172017 | 2017-05-17T14:51:03+00:00 |  | 000074247-01 | Dale | Knight | MARIETTA MEM HSP | 906929 | FREDERIC A | HUMPHREY | 1366438848 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 06122017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 05152017 | 05282017 | Standard |  |  | 2017-05-15 | 14 DAYS@ $200.00=$2800.00 DAPTOMYCIN (PER INVOICE) $1911.91 TOTAL: $4711.97 | 0 | 2017-05-29 |  | 2017-06-09 | 2017-06-09 | 14 | 14 | 4711.91 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517095 | A419 | Sepsis, unspecified organism | ICD10 | 06122017 | 05152017 | 05292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 4711 |  | 14 | Revenue | RV |  |  |  | 14.0 |
| 05172017 | 2017-05-17T16:11:53+00:00 |  | 000033321-01 | MARY | MORGAN | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05162017 | 06082017 | Standard |  |  | 2017-05-16 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-06-09 |  | 2017-06-08 | 2017-06-08 | 24 | 24 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518041 | I10, I4891, M25552, M545, R52, Z9981 | Dependence on supplemental oxygen | ICD10 | 06122017 | 05162017 | 06092017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 05192017 | 2017-05-19T15:56:40+00:00 |  | 000060665-01 | SARAH | COLLINS | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 06122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05182017 | 06072017 | Standard |  |  | 2017-05-18 | Contract/RUG: 16/RVA (Per MDS) = $2,689.71 Per Diem: $250.00/day x1 SNF Day = $250.00 Total Payment: $2,939.71 | 0 | 2017-06-08 |  | 2017-06-12 | 2017-06-12 | 21 | 21 | 2939.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522018 | E876, I279, I509, J810 | Acute pulmonary edema | ICD10 | 06122017 | 05182017 | 06082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2939 | 2939 | Approved | 21 | Revenue | RV |  |  |  | 1.0 |
| 05192017 | 2017-05-19T16:23:10+00:00 |  | 000045016-01 | REGINA | ADAMS | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 06122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05182017 | 06052017 | Standard |  |  | 2017-05-18 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2017-06-06 |  | 2017-06-09 | 2017-06-09 | 19 | 19 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522020 | M6281, Z96641 | Presence of right artificial hip joint | ICD10 | 06122017 | 05182017 | 06062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 05222017 | 2017-05-22T15:59:00+00:00 |  | 000072893-01 | Barry | Weber | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 06122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05192017 | 05312017 | Standard |  |  | 2017-05-19 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-06-01 |  | 2017-06-11 | 2017-06-11 | 13 | 13 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522130 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06122017 | 05192017 | 06012017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 05242017 | 2017-05-24T08:20:39+00:00 |  | 000106016-01 | Michelle | Damon | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 06122017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06122017 | 06192017 | Standard |  |  | 2017-05-19 | 17/RVA01=$3,586.28 | 0 | 2017-05-30 |  | 2017-06-06 | 2017-06-06 | 11 | 11 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524034 | E119, I10, I2510, R296, S82499D | Oth fx shaft of unsp fibula, subs for clos fx w routn heal | ICD10 | 06122017 | 05192017 | 05302017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05252017 | 2017-05-25T15:48:49+00:00 |  | 000109773-01 | Sukran | Akbay | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 06122017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05242017 | 05292017 | Standard |  |  | 2017-05-24 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-05-30 |  | 2017-06-11 | 2017-06-11 | 6 | 6 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525064 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 06122017 | 05242017 | 05302017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 05262017 | 2017-05-26T15:05:01+00:00 |  | 000115915-01 | VALLA | ODELL | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 06122017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05252017 | 06082017 | Standard |  |  | 2017-05-25 | 17/RVC01=$6306.19 | 10 | 2017-06-09 |  | 2017-06-07 | 2017-06-09 | 15 | 25 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526079 | A0839, B258 | Other cytomegaloviral diseases | ICD10 | 06122017 | 05252017 | 06092017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05262017 | 2017-05-26T15:48:12+00:00 |  | 000043374-01 | Rise | Surface-Hurley | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 06122017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06122017 | 06192017 | Standard |  |  | 2017-05-25 | 16/RVC01=$3,539.19 | 0 | 2017-06-05 |  | 2017-06-06 | 2017-06-06 | 11 | 11 | 3539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530050 | T8451XD | Infect/inflm reaction due to internal right hip prosth, subs | ICD10 | 06122017 | 05252017 | 06052017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 8 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05262017 | 2017-05-26T15:49:14+00:00 |  | 000074627-01 | Ronald | Zapfe | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 06122017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 05252017 | 05302017 | Standard |  |  | 2017-05-25 | Contract/RUG: 17/PA1 (Per MDS) = $ 2,048.78 | 0 | 2017-05-31 |  | 2017-06-11 | 2017-06-11 | 6 | 6 | 2048.78 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530057 | E876 | Hypokalemia | ICD10 | 06122017 | 05252017 | 05312017 | PA101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 0-1/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 05302017 | 2017-05-30T12:05:10+00:00 |  | 000052492-01 | ROBERT | GOLDSBERRY | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 06122017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05272017 | 06112017 | Standard |  |  | 2017-05-27 | Swing Bed Daily Rate x 16 SNF Days | 0 | 2017-06-12 |  |  | 2017-06-09 | 16 | 16 | Swing Bed Daily Rate |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530180 | Z5189 | Encounter for other specified aftercare | ICD10 | 06122017 | 05272017 | 06122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 16 | Revenue | RV |  |  |  | 3.0 |
| 05312017 | 2017-05-31T11:47:18+00:00 |  | 000098026-01 | Gary | Lustgarten | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 06122017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-05-25 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 25 | 2017-06-02 |  | 2017-06-11 | 2017-06-11 | 8 | 33 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531057 | E860 | Dehydration | ICD10 | 06122017 | 05252017 | 06022017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06022017 | 2017-06-02T09:07:54+00:00 |  | 000008715-01 | JOYCE | SHIVENER | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 06122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05312017 | 06082017 | Standard |  |  | 2017-05-31 | Per MDS: 16/RUB01 = $4429.71 TOTAL PAYMENT = $4429.71 | 0 | 2017-06-09 |  | 2017-06-12 | 2017-06-12 | 9 | 9 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602054 | C211, C3490, D720, I4892, I499, J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06122017 | 05312017 | 06092017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 06072017 | 2017-06-07T09:57:15+00:00 |  | 000080067-01 | Mary | Kennard | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 06122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 05292017 | 06022017 | Standard |  |  | 2017-05-29 | 17/RVA01=$3586.28 | 58 | 2017-06-03 |  | 2017-06-09 | 2017-06-09 | 5 | 63 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607044 | S81802A | Unspecified open wound, left lower leg, initial encounter | ICD10 | 06122017 | 05292017 | 06032017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 02162017 | 2017-02-16T15:16:01+00:00 |  | 000027425-01 | E LEROY | BUNDY | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 06122017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 06122017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170217062 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 06122017 | 02132017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 02272017 | 2017-02-27T16:19:17+00:00 |  | 000030433-01 | ALFREDA | HUTCHISON | CENTRAL OHIO NP SERVICES | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN GAHANNA LLC | 943640 | 1437548575 | OTTERBEIN GAHANNA LLC | 1437548575 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN GAHANNA LLC | 06122017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 06122017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170301106 | I639 | Cerebral infarction, unspecified | ICD10 | 06122017 | 03012017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03032017 | 2017-03-03T16:42:56+00:00 |  | 000110767-01 | LORRAINE | CHAFFIN | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 06122017 | Denied | MediGold Essential Care | Fax | Requested Medical Documentation Not Received | Inpatient | 06122017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170306005 | R296 | Repeated falls | ICD10 | 06122017 | 02282017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 34.0 |
| 06082017 | 2017-06-08T16:58:56+00:00 |  | 000056785-01 | MARY | MCBRIDE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CHS OF SCIOTO OPERATING COMPANY INC | 926528 | 1932452398 | CHS OF SCIOTO OPERATING COMPANY INC | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS OF SCIOTO OPERATING COMPANY INC | 06122017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 06122017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170609031 | M84322A | Stress fracture, left humerus, init encntr for fracture | ICD10 | 06122017 | 06092017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
