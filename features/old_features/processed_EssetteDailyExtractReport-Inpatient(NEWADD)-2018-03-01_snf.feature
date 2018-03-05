Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-01_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-01_SNF
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
| 02282018 | 2018-02-28T11:50:18+00:00 |  | 000111542-01 | DEBORAH | GATTS | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | THE GRAND OF DUBLIN | 946137 | 1346632247 | THE GRAND OF DUBLIN | 1346632247 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE GRAND OF DUBLIN | 03012018 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Inpatient | 03012018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A180228044 | Z471 | Aftercare following joint replacement surgery | ICD10 | 03012018 | 02282018 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02062018 | 2018-02-06T10:36:02+00:00 |  | 000037431-01 | MILDRED | SCHRADER | RUKSENAS, AUDRIUS | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND AT CARECORE | 952605 | 1417470527 | WESTMORELAND AT CARECORE LLC | 1417470527 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND AT CARECORE LLC | 03012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02012018 | 02242018 | Standard |  |  | 2018-02-01 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2018-02-24 | 2018-02-21 | 2018-02-28 | 2018-02-28 | 20 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206046 | S81811D, Z9181 | History of falling | ICD10 | 03012018 | 02012018 | 02242018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 02082018 | 2018-02-08T14:11:20+00:00 |  | 000009304-01 | MARY | CANTER | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD GARDENS REHABI | 949221 | 1235684309 | COUNTRY LANE GARDENS REHABILITATION | 1235684309 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY LANE GARDENS REHABILITATION | 03012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072018 | 02272018 | Standard |  |  | 2018-02-07 | PEr MDS: 17/RVC01 = $6306.19 | 0 | 2018-02-27 |  | 2018-03-01 |  | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208071 | J189, M25552 | Pain in left hip | ICD10 | 03012018 | 02072018 | 02272018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02152018 | 2018-02-15T16:20:46+00:00 |  | 000096277-01 | Beverly | Callander | CLYO INTERNAL MEDICINE | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 03012018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02142018 | 02172018 | Standard |  |  | 2018-02-14 | Per Diem: $250.00/day x 3 SNF Days = $750.00 | 0 | 2018-02-17 |  | 2018-02-28 |  | 3 | 3 | 750.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216002 | D490 | Neoplasm of unspecified behavior of digestive system | ICD10 | 03012018 | 02142018 | 02172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 750 | 750 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 02192018 | 2018-02-19T09:28:22+00:00 |  | 000108393-01 | Gary | Stover | OHIOHEALTH PHYS GRP | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 03012018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02152018 | 02252018 | Standard |  |  | 2018-02-15 | 17/RVB01= $5411.86 | 0 | 2018-02-25 |  | 2018-03-01 | 2018-03-01 | 10 | 10 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219026 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 03012018 | 02152018 | 02252018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 02192018 | 2018-02-19T14:44:06+00:00 |  | 000118219-01 | Ellen | Mckirgan | FCMH MED & SURG ASSOC | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 03012018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02192018 | 02282018 | Standard |  |  | 2018-02-19 | Swing Bed Daily Rate x 9 SNF Days | 0 | 2018-02-28 |  |  | 2018-02-28 | 9 | 9 | Swing Bed Daily Rate x 9 SNF Days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220007 | Z5189 | Encounter for other specified aftercare | ICD10 | 03012018 | 02192018 | 02282018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 10 | Revenue | RV |  |  |  | 5.0 |
| 01102018 | 2018-01-10T11:23:39+00:00 |  | 000000934-01 | NORMA | REED | HOSPICE OF CENTRAL OHIO | 935546 | THOMAS K | PETRYK | 1245210244 | THORNVILLE HEALTH & REHABILITATION C | 939903 | 1689064487 | THORNVILLE HEALTH & REHABILITATION C | 1689064487 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THORNVILLE HEALTH & REHABILITATION C | 03012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01062018 | 02272018 | Standard |  |  | 2018-01-06 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 28 days = $5600.00 TOTAL PAYMENT = $11,906.19 | 0 | 2018-02-27 | 2018-02-13 | 2018-03-01 | 2018-03-01 | 48 | 48 | 11906.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110070 | M009 | Pyogenic arthritis, unspecified | ICD10 | 03012018 | 01062018 | 02272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 53 | Revenue | RV |  |  |  | 7.0 |
| 01122018 | 2018-01-12T11:10:30+00:00 |  | 000089980-01 | Carol | Brown | VASILIU, ANTON C | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 03012018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01092018 | 02202018 | Standard |  |  | 2018-01-09 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 21 SNF Days = $4,200.00 Total Payment: $10,506.19 | 0 | 2018-02-20 |  | 2018-03-01 | 2018-03-01 | 41 | 42 | 10506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112056 | S022XXA, S0990XA, S42202A, S45309A, W19XXXA, Z992 | Dependence on renal dialysis | ICD10 | 03012018 | 01092018 | 02202018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 43 | Revenue | RV |  |  |  | 1.0 |
| 01182018 | 2018-01-18T16:09:11+00:00 |  | 000005543-01 | NANCY | WHITACRE | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 03012018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 01172018 | 02272018 | Standard |  |  | 2018-01-17 | 1/RUC01= $7333.11 21 DAYS @ $200.00= $4200.00 TOTAL: $11533.11 | 0 | 2018-02-27 |  | 2018-03-01 | 2018-03-01 | 41 | 41 | 11533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118089 | S72402D | Unsp fx lower end of l femur, subs for clos fx w routn heal | ICD10 | 03012018 | 01172018 | 02272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 42 | Revenue | RV |  |  |  | 7.0 |
| 01312018 | 2018-01-31T06:54:14+00:00 |  | 000089041-01 | Karen | Feisel | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 03012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02252018 | Standard |  |  | 2018-01-26 | 16/RUC01=$7,333.11 PER DIEM RATE OF $250.00/DAY X 10=$2,500.00 TOTAL PAYMENT=$9,833.11 | 16 | 2018-02-25 |  | 2018-03-01 |  | 30 | 46 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131085 | A419, G9340 | Encephalopathy, unspecified | ICD10 | 03012018 | 01262018 | 02252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9833 | 9833 | Approved Skilled | 31 | Revenue | RV |  |  |  | 3.0 |
| 01312018 | 2018-01-31T14:18:09+00:00 |  | 000075879-01 | Mary | Lawson | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 03012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01292018 | 02162018 | Standard |  |  | 2018-01-29 | 17/RUB01=$5,813.99 | 0 | 2018-02-16 |  | 2018-02-28 | 2018-02-28 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201007 | E119, N184, S32414D, S32511D, S32591D | Oth fracture of right pubis, subs for fx w routn heal | ICD10 | 03012018 | 01292018 | 02162018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 02122018 | 2018-02-12T11:07:45+00:00 |  | 000016444-01 | CHARLES | HANDLEY | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 03012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082018 | 02132018 | Standard |  |  | 2018-02-08 | 5 NONSKILLED DAYS $200.00= $1000.00 | 0 | 2018-03-14 |  |  | 2018-03-01 | 5 | 0 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212067 | R55 | Syncope and collapse | ICD10 | 03012018 | 02082018 | 02132018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 6 | Revenue | RV |  |  |  | 5.0 |
| 02132018 | 2018-02-13T17:38:13+00:00 |  | 000086429-01 | Gary | Miller | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 03012018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02092018 | 03012018 | Standard |  |  | 2018-02-09 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-03-01 |  | 2018-02-28 | 2018-02-28 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214009 | R262, Z5189 | Encounter for other specified aftercare | ICD10 | 03012018 | 02092018 | 03012018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02162018 | 2018-02-16T18:19:19+00:00 |  | 000075749-01 | John | Schmitz | CEN OHIO GERIATRICS LLC | 907151 | JEROME M | KONG | 1598711657 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 03012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02152018 | 02282018 | Standard |  |  | 2018-02-15 | 17/RUB01=$5,813.99 | 14 | 2018-02-28 |  | 2018-03-28 | 2018-03-28 | 13 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219009 | I471 | Supraventricular tachycardia | ICD10 | 03012018 | 02152018 | 02282018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 02082018 | 2018-02-08T14:20:55+00:00 |  | 000045118-01 | RUTH | KNAPP | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 03012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072018 | 03012018 | Standard |  |  | 2018-02-07 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2018-03-01 |  | 2018-03-01 | 2018-03-01 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208074 | Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 03012018 | 02072018 | 03012018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 02122018 | 2018-02-12T17:11:57+00:00 |  | 000011156-01 | HAROLD | FISHER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CONTINUING HEALTHCARE OF | 952581 | 1356871610 | CONTINUING HEALTHCARE OF GAHANNA LLC | 1356871610 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CONTINUING HEALTHCARE OF GAHANNA LLC | 03012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02242018 | Standard |  |  | 2018-02-09 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2018-02-24 |  | 2018-03-01 | 2018-03-01 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213051 | Z96651 | Presence of right artificial knee joint | ICD10 | 03012018 | 02092018 | 02242018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 02152018 | 2018-02-15T13:55:28+00:00 |  | 000012442-01 | DON | RISER | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 03012018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02142018 | 02222018 | Standard |  |  | 2018-02-14 | Contract/RUG: 17/RHC (Per MDS) = $4,132.02 | 0 | 2018-02-22 |  | 2018-03-01 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215068 | J09X2, R2681, R531, R6520 | Severe sepsis without septic shock | ICD10 | 03012018 | 02142018 | 02222018 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
