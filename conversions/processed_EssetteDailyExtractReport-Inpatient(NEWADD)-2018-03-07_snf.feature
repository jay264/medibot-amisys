Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-07_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-07_SNF
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
| 02152018 | 2018-02-15T11:32:22+00:00 |  | 000023471-01 | FRANK | KYNKOR | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02122018 | 02232018 | Standard |  |  | 2018-02-12 | 17/RUC01=$6,049.81 | 0 | 2018-03-23 |  | 2018-03-06 | 2018-03-06 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215053 | I509, R4182 | Altered mental status, unspecified | ICD10 | 03072018 | 02122018 | 02232018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01312018 | 2018-01-31T14:55:02+00:00 |  | 000063397-01 | DEBRA | IRELAND | LONDON HEALTH & REHAB CENTER | 943587 |  | LONDON HEALTH & REHAB CENTER | 1912387879 | LONDON HEALTH & REHAB CENTER | 943587 | 1912387879 | LONDON HEALTH & REHAB CENTER | 1912387879 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LONDON HEALTH & REHAB CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01292018 | 02262018 | Standard |  |  | 2018-01-29 | Contract/RUG: 17/RHC ( Per Diem: $200.00/day x 8 SNF Days = $1,600.00Per MDS) = $4,132.02 Total Payment: $5,732.02 | 0 | 2018-02-26 |  | 2018-03-06 | 2018-03-05 | 28 | 28 | 5732.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201009 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 03072018 | 01292018 | 02262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5732 | 5732 | Approved | 29 | Revenue | RV |  |  |  | 8.0 |
| 01102018 | 2018-01-10T14:44:18+00:00 |  | 000112377-01 | Kathleen | Palm | ALLIANCE PHYSICIANS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01072018 | 02182018 | Standard |  |  | 2018-01-07 | Contract/RUG: 17/RU B (Per MDS) = $5,813.99 Per Diem: $250.00/day x 22 SNF Days = $5,500.00 Total Days: $11,313.99 | 0 | 2018-02-18 |  | 2018-03-06 | 2018-02-18 | 42 | 42 | 11313.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110097 | I2109 | STEMI involving oth coronary artery of anterior wall | ICD10 | 03072018 | 01072018 | 02182018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 43 | Revenue | RV |  |  |  | 3.0 |
| 02092018 | 2018-02-09T15:04:20+00:00 |  | 000090815-01 | Harold | Bartley | AHMED, IMTIAZ | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082018 | 03012018 | Standard |  |  | 2018-02-08 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2018-03-01 |  | 2018-03-06 | 2018-03-06 | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209079 | I69343 | Monoplg low lmb fol cerebral infrc aff right nondom side | ICD10 | 03072018 | 02082018 | 03012018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 02152018 | 2018-02-15T08:08:58+00:00 |  | 000065717-01 | MARTHA | SELLERS | CATHERINE LARUFFA MD INC | 939724 | CATHERINE | LARUFFA | 1972502789 | THE LAURELS OF BLANCHEST | 948218 | 1992032148 | LAURELS OF BLANCHESTER | 1992032148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF BLANCHESTER | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02142018 | 03062018 | Standard |  |  | 2018-02-14 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-03-06 |  | 2018-03-06 | 2018-03-06 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215003 | Z96652 | Presence of left artificial knee joint | ICD10 | 03072018 | 02142018 | 03062018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 02152018 | 2018-02-15T15:29:16+00:00 |  | 000043801-01 | JOEY | ASHBROOK | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03072018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 02152018 | 02282018 | Standard |  |  | 2018-02-15 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-02-28 |  | 2018-03-22 |  | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215075 | I10, J449, J9601, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 03072018 | 02152018 | 02282018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 02152018 | 2018-02-15T15:48:50+00:00 |  | 000051116-01 | CHELSEA | VAWTERS | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 03072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02142018 | 03062018 | Standard |  |  | 2018-02-14 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2018-03-06 |  | 2018-03-06 | 2018-03-06 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215076 | K5732, M1990, M545, M62838, M797, R52 | Pain, unspecified | ICD10 | 03072018 | 02142018 | 03062018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02272018 | 2018-02-27T12:18:13+00:00 |  | 000090172-01 | George | Gholson | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 03072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02262018 | 03042018 | Standard |  |  | 2018-02-26 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-03-04 |  | 2018-03-06 | 2018-03-06 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227047 | L03115, M14672, M6281, R2681 | Unsteadiness on feet | ICD10 | 03072018 | 02262018 | 03042018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 12182017 | 2017-12-18T15:41:28+00:00 |  | 000063860-01 | BERNICE | RIFFLE | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 03072018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 12152017 | 12202017 | Standard |  |  | 2017-12-15 | ADMISSON DENIAL: Non skilled Per Diem: $200.00/day x 5 days = $1000.00 TOTAL PAYMENT = $1000.00 | 0 | 2017-12-20 |  |  |  | 0 | 0 | 1000.0 | 171222147689.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A171219032 | M6281 | Muscle weakness (generalized) | ICD10 | 03072018 | 12152017 | 12202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 6 | Revenue | RV |  |  |  | 5.0 |
| 01182018 | 2018-01-18T11:06:14+00:00 |  | 000054987-01 | SHARON | BAKER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01162018 | 03022018 | Standard |  |  | 2018-01-16 | 17/RVC01=$6,306.19 PER DIEM RATE OF $250.00/DAY X 35 DAYS=$8,750.00 TOTAL PAYMENT TO FACILITY=$15,056.19 | 45 | 2018-03-02 |  | 2018-03-06 | 2018-03-06 | 55 | 100 | 15056.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118057 | J189 | Pneumonia, unspecified organism | ICD10 | 03072018 | 01162018 | 03022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 46 | Revenue | RV |  |  |  | 7.0 |
| 01222018 | 2018-01-22T10:49:14+00:00 |  | 000068974-01 | PHYLLIS | LOGUE | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 02182018 | Standard |  |  | 2018-01-19 | 16/RUC01=$7,333.11 PER DIEM RATE OF $250.00/DAY X 10 DAYS=$2,500.00 TOTAL PAYMENT=$9,833.11 | 0 | 2018-02-18 |  | 2018-03-06 | 2018-03-06 | 30 | 30 | 9833.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122082 | F0151 | Vascular dementia with behavioral disturbance | ICD10 | 03072018 | 01192018 | 02182018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9833 | 9833 | Approved Skilled | 31 | Revenue | RV |  |  |  | 3.0 |
| 01242018 | 2018-01-24T08:57:04+00:00 |  | 000069764-01 | RUBY | MCFADDEN | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 03072018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 01222018 | 03072018 | Standard |  |  | 2018-01-22 | 16/RUC01=$7,333.11 PER DIEM RATE OF $200.00/DAY X 24 DAYS=$4,800.00 TOTAL PAYMENT TO FACILITY=$12,133.11 | 0 | 2018-03-07 |  | 2018-03-07 | 2018-03-07 | 44 | 44 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124017 | M84321D | Stress fracture, right humerus, subs for fx w routn heal | ICD10 | 03072018 | 01222018 | 03072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 45 | Revenue | RV |  |  |  | 7.0 |
| 01262018 | 2018-01-26T16:42:22+00:00 |  | 000097601-01 | Lyle | Ward | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01252018 | 03062018 | Standard |  |  | 2018-01-25 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 Per Diem: $250.00/day x 14 SNF Days = $3,500.00 Total Payment: $ 7,086.28 | 0 | 2018-03-06 |  | 2018-03-06 | 2018-03-06 | 34 | 34 | 7086.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129047 | I10, I2510, I509, M6281, N179, R41841, Z741 | Need for assistance with personal care | ICD10 | 03072018 | 01252018 | 03062018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7086 | 7086 | Approved | 41 | Revenue | RV |  |  |  | 7.0 |
| 02072018 | 2018-02-07T10:16:20+00:00 |  | 000100253-01 | James | Indiciani | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 03072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02052018 | 03012018 | Standard |  |  | 2018-02-05 | RVX01= $6171.24 | 0 | 2018-03-01 |  | 2018-03-07 | 2018-03-07 | 20 | 20 | 6171.24 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207028 | I639 | Cerebral infarction, unspecified | ICD10 | 03072018 | 02052018 | 03012018 | RVX01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 11-16/STAND-ALONE OBRA SCSA O | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 02072018 | 2018-02-07T10:59:30+00:00 |  | 000033439-01 | THELMA | RANKE | COLS INPATIENT CARE INC | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02282018 | Standard |  |  | 2018-02-02 | 17/RUC01=$6,049.81 PER DIME RATE OF $200.00/DAY X 6 DAYS=$1,200.00 TOTAL PAYMENT TO FACILITY=$7,249.81 | 0 | 2018-02-28 | 2018-03-07 | 2018-03-06 | 2018-03-06 | 26 | 26 | 7249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207038 | E1165, I10, R4182 | Altered mental status, unspecified | ICD10 | 03072018 | 02022018 | 02282018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7249 | 7249 | Approved Skilled | 27 | Revenue | RV |  |  |  | 6.0 |
| 02072018 | 2018-02-07T16:35:19+00:00 |  | 000041808-01 | MARY | HUPP | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02032018 | 02262018 | Standard |  |  | 2018-02-03 | 17/RUB01= $5813.99 | 0 | 2018-02-26 |  | 2018-03-07 | 2018-03-07 | 23 | 23 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208015 | R109, S22089A, S23162D | Subluxation of T11/T12 thoracic vertebra, subs encntr | ICD10 | 03072018 | 02032018 | 02262018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 02082018 | 2018-02-08T10:17:28+00:00 |  | 000028393-01 | SAMMY | JUNK | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02062018 | 03032018 | Standard |  |  | 2018-02-06 | Per MDS: 17/RUC = $6049.81 Per Diem: $250.00/day x 5 days = $1250.00 TOTAL PAYMENT = $7299.81 | 0 | 2018-03-03 |  | 2018-03-07 | 2018-03-07 | 25 | 25 | 7299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208042 | M6281, Z86011 | Personal history of benign neoplasm of the brain | ICD10 | 03072018 | 02062018 | 03032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7299 | 7299 | Approved | 26 | Revenue | RV |  |  |  | 5.0 |
| 02092018 | 2018-02-09T15:33:45+00:00 |  | 000012896-01 | Freda | Tippie | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072018 | 02272018 | Standard |  |  | 2018-02-07 | 17/RUB01= $5813.99 | 0 | 2018-02-27 |  | 2018-03-07 |  | 20 | 20 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209081 | E784, I110, I252, I350, I509 | Heart failure, unspecified | ICD10 | 03072018 | 02072018 | 02272018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02122018 | 2018-02-12T11:35:33+00:00 |  | 000079342-01 | Rodney | Gibson | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082018 | 03032018 | Standard |  |  | 2018-02-08 | 17/RVC01=$6,306.19 | 0 | 2018-03-03 | 2018-03-07 | 2018-03-06 | 2018-03-06 | 20 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212075 | I639, J9601, S0990XA, Z931 | Gastrostomy status | ICD10 | 03072018 | 02082018 | 03032018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 24 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 02132018 | 2018-02-13T12:30:46+00:00 |  | 000058323-01 | LUTHER | SWAVELY | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02272018 | Standard |  |  | 2018-02-09 | 17/RVB01=$5,411.86 | 0 | 2018-02-27 |  | 2018-03-06 | 2018-03-06 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213088 | I509, M6281, R296, R55, Z950 | Presence of cardiac pacemaker | ICD10 | 03072018 | 02092018 | 02272018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 02132018 | 2018-02-13T12:49:02+00:00 |  | 000084699-01 | David | Riley Jr | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 03052018 | Standard |  |  | 2018-02-09 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-03-05 | 2018-03-02 | 2018-03-07 | 2018-03-02 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213093 | J181, M6281, R2681 | Unsteadiness on feet | ICD10 | 03072018 | 02092018 | 03052018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 02222018 | 2018-02-22T14:27:10+00:00 |  | 000039969-01 | ROBERT | FOURNIER | HOSPICE OF CENTRAL OHIO | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02192018 | 03012018 | Standard |  |  | 2018-02-19 | 17/RUB01= $5813.99 | 0 | 2018-03-01 |  | 2018-03-07 |  | 10 | 10 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222086 | D500, E039, K4030, N184, N390, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 03072018 | 02192018 | 03012018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 02232018 | 2018-02-23T14:59:44+00:00 |  | 000034973-01 | LEWIS | LARRICK | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02212018 | 02272018 | Standard |  |  | 2018-02-21 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-02-27 |  | 2018-03-07 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223066 | N189, Z5189 | Encounter for other specified aftercare | ICD10 | 03072018 | 02212018 | 02272018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 02282018 | 2018-02-28T12:16:27+00:00 |  | 000106079-01 | Elizabeth | Marcus | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 03072018 | Denied Skilled - Pay Unskilled | Flexible Choice PPO | Fax |  | Inpatient | 02252018 | 03022018 | Standard |  |  | 2018-02-25 | NON-SKILLED RATE OF $200.00/DAY X 5 DAYS=$1,000.00 | 0 | 2018-03-02 |  |  |  | 5 | 0 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A180228053 | F0390, L03116 | Cellulitis of left lower limb | ICD10 | 03072018 | 02252018 | 03022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved Unskilled | 6 | Revenue | RV |  |  |  | 5.0 |
| 12292017 | 2017-12-29T11:21:46+00:00 |  | 000080748-01 | Troy | Wilson | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 03072018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12282017 | 01272018 | Standard |  |  | 2017-12-28 | 16/RVB01= $3350.20 denial after Case Rate, pays the 20 day Case Rate. Mbr used 30 days. | 0 | 2018-01-27 |  | 2018-03-07 | 2018-01-25 | 30 | 30 | 3350.2 | 180221157814.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229048 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 03072018 | 12282017 | 01272018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 31 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01082018 | 2018-01-08T21:25:04+00:00 |  | 000100063-01 | Louise | Sandlin | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 03072018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 01062018 | 03012018 | Standard |  |  | 2018-01-06 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 31 SNF Days = $6,200.00 Total Payment: $12,506.19 | 0 | 2018-03-01 | 2018-02-26 | 2018-03-07 | 2018-03-07 | 51 | 51 | 12506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109092 | K659 | Peritonitis, unspecified | ICD10 | 03072018 | 01062018 | 03012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 55 | Revenue | RV |  |  |  | 8.0 |
| 01302018 | 2018-01-30T10:13:43+00:00 |  | 000085530-01 | John | Park | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02172018 | Standard |  |  | 2018-01-26 | Per Diem: $250.00/day x 20 days = $5000.00 Per Diem: $200.00/day x 2 days = $400.00 IV Invanz (per invoice): $1789.13 IV Zosyn (per invoice): $202.59 TOTAL PAYMENT = $7391.72 | 65 | 2018-02-17 |  | 2018-03-07 |  | 22 | 87 | 7391.72 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130079 | J181, J9620, M6281 | Muscle weakness (generalized) | ICD10 | 03072018 | 01262018 | 02172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7391 | 7391 | Approved | 23 | Revenue | RV |  |  |  | 1.0 |
| 02052018 | 2018-02-05T14:43:20+00:00 |  | 000085125-01 | Dorothy | Stokes | AHMED, IMTIAZ | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 03072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02012018 | 02282018 | Standard |  |  | 2018-02-01 | Contract/RUG: 16/RVC (Per MDS) = $3,539.19 Per Diem: $200.00/day x 7 SNF days = $1,400.00 Total Payment: $4,939.19 | 0 | 2018-02-28 |  | 2018-03-07 | 2018-03-07 | 27 | 27 | 4939.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205103 | S06350D | Traum hemor left cerebrum w/o loss of consciousness, subs | ICD10 | 03072018 | 02012018 | 02282018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4939 | 4939 | Approved | 28 | Revenue | RV |  |  |  | 7.0 |
| 02162018 | 2018-02-16T15:06:28+00:00 |  | 000104028-01 | CHARLES | CLARK | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 03072018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 02132018 | 03022018 | Standard |  |  | 2018-02-13 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-03-02 |  | 2018-03-07 | 2018-03-07 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216072 | I713 | Abdominal aortic aneurysm, ruptured | ICD10 | 03072018 | 02132018 | 03022018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 02192018 | 2018-02-19T13:06:14+00:00 |  | 000084859-01 | Diane | Spurgeon | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 03072018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 02172018 | 02252018 | Standard |  |  | 2018-02-17 | 8 DAYS @ $200.00= $1600.00 ZOSYN PER INVOICE= $426.82 TOTAL: $2026.82 | 0 | 2018-02-25 |  | 2018-03-07 | 2018-03-07 | 8 | 8 | 2026.82 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219066 | J158 | Pneumonia due to other specified bacteria | ICD10 | 03072018 | 02172018 | 02252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2026 | 2026 | Approved | 9 | Revenue | RV |  |  |  | 8.0 |
| 02232018 | 2018-02-23T15:55:22+00:00 |  | 000070802-01 | Jane | Langdon | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 03072018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02232018 | 03012018 | Standard |  |  | 2018-02-23 | Per Diem: $200.00/day x 6 SNF Days = $1,200.00 | 38 | 2018-03-01 |  |  |  | 6 | 44 | 1200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223076 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 03072018 | 02232018 | 03012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved | 7 | Revenue | RV |  |  |  | 6.0 |
| 02262018 | 2018-02-26T11:37:55+00:00 |  | 000067194-01 | Mary | Castle | FCMH MED & SURG ASSOC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 03072018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02222018 | 02242018 | Standard |  |  | 2018-02-22 | Per Diem: $200.00/day x 2 days = $400.00 IV Flagyl (per invoice): $49.90 TOTAL PAYMENT = $449.90 | 0 | 2018-02-24 |  |  |  | 2 | 2 | 449.9 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226072 | B377, M6281 | Muscle weakness (generalized) | ICD10 | 03072018 | 02222018 | 02242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 449 | 449 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
