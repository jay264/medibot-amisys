Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-14_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-14_SNF
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
| 03092018 | 2018-03-09T08:25:12+00:00 |  | 000061755-01 | LINDA | WAUGH | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03072018 | 04142018 | Standard |  |  | 2018-03-07 | 17/RUC01=$6,049.81 PER DIEM RATE OF $200.00/DAY X 18 DAYS=$3,600.00 CARVE OUT PER INVOICE OF WOUND VAC DAILY RENTAL X 18 DAYS PEER DIEM=$2,160.00 CARVE OUT PER INVOICE OF WOUND VAC SUPPLIES (CANISTER/SM BLACK FOAM)=$1,492.39 TOTAL PAYMENT TO FACILITY=$13,302.20 | 21 | 2018-04-14 |  | 2018-04-18 | 2018-04-18 | 38 | 59 | 13302.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309019 | I5031, J810, M6281 | Muscle weakness (generalized) | ICD10 | 05142018 | 03072018 | 04142018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 39 | Revenue | RV |  |  |  | 5.0 |
| 04192018 | 2018-04-19T16:30:06+00:00 |  | 000043868-01 | STEVEN | POWELL | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04172018 | 05072018 | Standard |  |  | 2018-04-17 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-05-07 |  | 2018-05-09 | 2018-05-09 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420024 | S82402D | Unsp fx shaft of left fibula, subs for clos fx w routn heal | ICD10 | 05142018 | 04172018 | 05072018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04172018 | 2018-04-17T19:19:38+00:00 |  | 000100104-01 | Ruth | Brinkel | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 05142018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04132018 | 04302018 | Standard |  |  | 2018-04-13 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 10 | 2018-04-30 |  | 2018-05-08 | 2018-05-08 | 17 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418010 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 05142018 | 04132018 | 04302018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 04192018 | 2018-04-19T15:11:13+00:00 |  | 000056199-01 | Edna | Disbennet | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04182018 | 05082018 | Standard |  |  | 2018-04-18 | Contract/RUG: 16/RUC (Per MDS) = $7,333.11 | 0 | 2018-05-08 |  | 2018-05-09 | 2018-05-09 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419074 | B029, B9620, R21, R410, R5381, W19XXXS | Unspecified fall, sequela | ICD10 | 05142018 | 04182018 | 05082018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 03052018 | 2018-03-05T12:33:49+00:00 |  | 000022013-01 | ERNEST | POWELL | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03012018 | 05052018 | Standard |  |  | 2018-03-01 | 17/RUC01=$6,049.81 PER DIEM RATE OF $250.00/DAY X 45 DAYS=$11,250.00 TOTAL PAYMENT TO FACILITY=$17,299.81 | 0 | 2018-05-05 |  | 2018-05-10 | 2018-05-10 | 65 | 65 | 17299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305122 | I69854 | Hemiplga fol oth cerebvasc disease aff left nondom side | ICD10 | 05142018 | 03012018 | 05052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 66 | Revenue | RV |  |  |  | 3.0 |
| 03232018 | 2018-03-23T14:13:04+00:00 |  | 000115363-01 | Helen | Smith | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 05142018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03172018 | 04282018 | Standard |  |  | 2018-03-17 | Contract/RUG: 17/RVC (Pert MDS) = $6,306.19 Per Diem: $200.00/day x 19 SNF Days = $3,800.00 Total Payment: $10,106.19 | 0 | 2018-04-28 |  | 2018-05-08 | 2018-05-08 | 39 | 39 | 10106.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323061 | N132 | Hydronephrosis with renal and ureteral calculous obstruction | ICD10 | 05142018 | 03172018 | 04282018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 43 | Revenue | RV |  |  |  | 7.0 |
| 04122018 | 2018-04-12T09:09:08+00:00 |  | 000042275-01 | JUDY | STEVENS | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04112018 | 05072018 | Standard |  |  | 2018-04-11 | 17/RVC01= $6306.19 6 DAYS @ $200.00= $1200.00 TOTAL: $7506.19 | 0 | 2018-05-07 |  | 2018-05-18 |  | 26 | 26 | 7506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412027 | E662, J811 | Chronic pulmonary edema | ICD10 | 05142018 | 04112018 | 05072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7506 | 7506 | Approved | 27 | Revenue | RV |  |  |  | 1.0 |
| 04132018 | 2018-04-13T14:44:36+00:00 |  | 000031210-01 | KYOKO | MCKINNEY | ADENA MEDICAL GROUP LLC | 926035 | DAVID R | KESSLER | 1861427718 | WAVERLY CARE CENTER INC | 928699 | 1962508069 | WAVERLY CARE CENTER INC | 1962508069 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WAVERLY CARE CENTER INC | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04122018 | 05102018 | Standard |  |  | 2018-04-12 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $250.00/day x 7 SNF Days = $1,750.00 Total Payment: $7,563.99 | 0 | 2018-05-10 |  | 2018-04-18 | 2018-05-09 | 27 | 27 | 7563.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413087 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 05142018 | 04122018 | 05102018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7563 | 7563 | Approved | 29 | Revenue | RV |  |  |  | 7.0 |
| 04192018 | 2018-04-19T17:14:03+00:00 |  | 000066428-01 | Venita | Howard | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 05142018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04182018 | 04242018 | Standard |  |  | 2018-04-18 | Contract/RUG: 17/HD2 (Per MDS) = $4,414.89 | 6 | 2018-04-24 |  | 2018-05-08 |  | 5 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420044 | K5669 | Other intestinal obstruction | ICD10 | 05142018 | 04182018 | 04242018 | HD201 | SPECIAL CARE HIGH , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 03272018 | 2018-03-27T10:54:22+00:00 |  | 000096241-01 | YELL | CULVERSON | MT AIRY GARDENS REHABIL | 949963 |  | MT AIRY GARDENS REHABILITATION & NUR | 1063967131 | MT AIRY GARDENS REHABIL | 949963 | 1063967131 | MT AIRY GARDENS REHABILITATION & NUR | 1063967131 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT AIRY GARDENS REHABILITATION & NUR | 05142018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03192018 | 04122018 | Standard |  |  | 2018-03-19 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-04-12 |  | 2018-05-11 | 2018-04-16 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327100 | G9341, I639 | Cerebral infarction, unspecified | ICD10 | 05142018 | 03192018 | 04122018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 04092018 | 2018-04-09T12:46:13+00:00 |  | 000008230-01 | LOIS | BRYANT | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04072018 | 05132018 | Standard |  |  | 2018-04-07 | 17/RVC01= $6306.19 16 DAYS @ $200.00= $3200.00 TOTAL: $9506.19 | 0 | 2018-05-13 | 2018-05-27 | 2018-04-17 | 2018-05-11 | 36 | 36 | 9506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409069 | I10, J449, R296, S7292XA | Unsp fracture of left femur, init encntr for closed fracture | ICD10 | 05142018 | 04072018 | 05132018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9506 | 9506 | Approved | 37 | Revenue | RV |  |  |  | 2.0 |
| 04132018 | 2018-04-13T16:08:51+00:00 |  | 000053377-01 | THOMAS | JONES | INPATIENT CNSLT OF OH IN | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF MIAMISBURG OH LLC | 905914 | 1184666406 | HEARTLAND OF MIAMISBURG OH LLC | 1184666406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MIAMISBURG OH LLC | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04122018 | 05012018 | Standard |  |  | 2018-04-12 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-05-01 |  | 2018-05-09 | 2018-05-09 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416003 | M6281 | Muscle weakness (generalized) | ICD10 | 05142018 | 04122018 | 05012018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 04202018 | 2018-04-20T08:50:26+00:00 |  | 000075447-01 | Arthur | Williams | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 05142018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04182018 | 05082018 | Standard |  |  | 2018-04-18 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-05-08 |  | 2018-05-10 | 2018-05-10 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420051 | I509, J918, J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 05142018 | 04182018 | 05082018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04242018 | 2018-04-24T14:31:31+00:00 |  | 000115796-01 | Ola | Vanfossan | ADENA REGIONAL MED CTR | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 05142018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04232018 | 04302018 | Standard |  |  | 2018-04-23 | Contract/RUG: 17/PE1 (Per MDS) = $2,731.95 | 0 | 2018-04-30 |  | 2018-05-10 | 2018-05-10 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424089 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05142018 | 04232018 | 04302018 | PE101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 15-16/STAND-ALONE OBRA SCSA OR SCP | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 04262018 | 2018-04-26T13:05:40+00:00 |  | 000026513-01 | SPYROS | SEVIS | CENTRAL OHIO NP SERVICES | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN GAHANNA LLC | 943640 | 1437548575 | OTTERBEIN GAHANNA LLC | 1437548575 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN GAHANNA LLC | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04252018 | 05082018 | Standard |  |  | 2018-04-25 | 17/RUC01= $6049.81 | 10 | 2018-05-08 |  | 2018-05-10 | 2018-05-11 | 13 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426044 | J189, R1312, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 05142018 | 04252018 | 05082018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 04272018 | 2018-04-27T13:42:25+00:00 |  | 000093851-01 | Helen | Townsend | HEARTLAND OF BEAVERCREEK | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04252018 | 05022018 | Standard |  |  | 2018-04-25 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-05-02 |  | 2018-05-08 |  | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427049 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 05142018 | 04252018 | 05022018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 04302018 | 2018-04-30T10:57:58+00:00 |  | 000054327-01 | JOYCE | MAYNARD | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272018 | 05022018 | Standard |  |  | 2018-04-27 | Contract/RUG: 17/HC1 (Per MDS) = $3,481.78 | 0 | 2018-05-02 |  | 2018-05-09 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430046 | I509, J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05142018 | 04272018 | 05022018 | HC101 | SPECIAL CARE HIGH , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 04302018 | 2018-04-30T14:26:42+00:00 |  | 000096861-01 | Carol | Orahood | HOSPITALIST MEDICINE PHY | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272018 | 05042018 | Standard |  |  | 2018-04-27 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 | 0 | 2018-05-04 |  | 2018-05-10 | 2018-05-10 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430084 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 05142018 | 04272018 | 05042018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 05012018 | 2018-05-01T10:10:56+00:00 |  | 000062734-01 | JON | NOE | PAUL E HARRIS JR DO INC | 905253 | PAUL E | HARRIS III | 1467679365 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 05142018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272018 | 05082018 | Standard |  |  | 2018-04-27 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 14 | 2018-05-08 | 2018-05-09 | 2018-05-09 | 2018-05-09 | 11 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501027 | A419 | Sepsis, unspecified organism | ICD10 | 05142018 | 04272018 | 05082018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05042018 | 2018-05-04T13:33:41+00:00 |  | 000120746-01 | Evylena | Mustard | ADENA MEDICAL GROUP LLC | 926035 | DAVID R | KESSLER | 1861427718 | WAVERLY CARE CENTER INC | 928699 | 1962508069 | WAVERLY CARE CENTER INC | 1962508069 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WAVERLY CARE CENTER INC | 05142018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05032018 | 05102018 | Standard |  |  | 2018-05-03 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-05-10 |  | 2018-05-09 | 2018-05-09 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504057 | I69351, I69391 | Dysphagia following cerebral infarction | ICD10 | 05142018 | 05032018 | 05102018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
