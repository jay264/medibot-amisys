Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-19_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-19_SNF
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
| 02282018 | 2018-02-28T15:48:29+00:00 |  | 000029134-01 | ELIZABETH | WILSON | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03192018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02272018 | 03122018 | Standard |  |  | 2018-02-27 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-03-12 |  | 2018-03-07 |  | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228089 | C679, D649, E119, I10, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 03192018 | 02272018 | 03122018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 03072018 | 2018-03-07T12:40:02+00:00 |  | 000038488-01 | PATRICIA | LONGBERRY | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03192018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03062018 | 03182018 | Standard |  |  | 2018-03-06 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-03-18 |  | 2018-03-13 | 2018-03-18 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307045 | E039, F419, R009, Z96642 | Presence of left artificial hip joint | ICD10 | 03192018 | 03062018 | 03182018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01192018 | 2018-01-19T14:37:46+00:00 |  | 000000231-01 | HARRIETT | KELLENBARGER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 03192018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01182018 | 03152018 | Standard |  |  | 2018-01-18 | 16/RUC01=$7,333.11 PER DIEM RATE OF $250.00/DAY X 25 DAYS=$6,250.00 PER DIEM RATE OF $200.00/DAY=$1800.00 TOTAL PAYMENT TO FACILITY=$15,383.11 | 0 | 2018-03-15 |  | 2018-03-16 | 2018-03-16 | 54 | 54 | 15383.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119074 | A419, J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 03192018 | 01182018 | 03152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 57 | Revenue | RV |  |  |  | 6.0 |
| 02052018 | 2018-02-05T15:53:09+00:00 |  | 000090684-01 | Richard | Brewer | THE CHRIST HSP MED ASSOC | 944399 | ORSON J | AUSTIN | 1053395855 | MAPLE KNOLLS COMMUNITY | 953033 | 1194726588 | MAPLE KNOLL VILLAGE | 1194726588 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAPLE KNOLL VILLAGE | 03192018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02062018 | Standard |  |  | 2018-02-02 | 17/HB101= $3448.45 | 0 | 2018-02-06 |  | 2018-03-16 |  | 4 | 4 | 3448.45 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205119 | I10 | Essential (primary) hypertension | ICD10 | 03192018 | 02022018 | 02062018 | HB101 | SPECIAL CARE HIGH , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 02212018 | 2018-02-21T12:43:50+00:00 |  | 000085409-01 | Nancy | Fields | PIKE MED & SURG ASSOC | 935928 | ELLIS | FRAZIER | 1245228196 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 03192018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02202018 | 03082018 | Standard |  |  | 2018-02-20 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-03-08 |  | 2018-03-19 |  | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221082 | J181, J441, M6281 | Muscle weakness (generalized) | ICD10 | 03192018 | 02202018 | 03082018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 02272018 | 2018-02-27T14:59:26+00:00 |  | 000085817-01 | Clarence | Spaulding | JS AESTHETICS | 906812 | JODI I | SPERBER | 1770569741 | PATRIOT RIDGE COMMUNITY | 913103 | 1528041647 | PATRIOT RIDGE COMMUNITY | 1528041647 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATRIOT RIDGE COMMUNITY | 03192018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02262018 | 03162018 | Standard |  |  | 2018-02-26 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2018-03-16 |  | 2018-03-19 |  | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227085 | M25452 | Effusion, left hip | ICD10 | 03192018 | 02262018 | 03162018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 03012018 | 2018-03-01T12:34:05+00:00 |  | 000044306-01 | PEGGY | SALYER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CONTINUING HEALTHCARE OF | 952581 | 1356871610 | CONTINUING HEALTHCARE OF GAHANNA LLC | 1356871610 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CONTINUING HEALTHCARE OF GAHANNA LLC | 03192018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02272018 | 03102018 | Standard |  |  | 2018-02-27 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-03-10 |  | 2018-03-19 | 2018-03-19 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301038 | I5032, N3000, N390 | Urinary tract infection, site not specified | ICD10 | 03192018 | 02272018 | 03102018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 03022018 | 2018-03-02T13:38:44+00:00 |  | 000076412-01 | Paul | Malone Jr | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 03192018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03012018 | 03172018 | Standard |  |  | 2018-03-01 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-03-17 |  | 2018-03-19 | 2018-03-19 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302054 | S066X1D | Traum subrac hem w LOC of 30 minutes or less, subs | ICD10 | 03192018 | 03012018 | 03172018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 03022018 | 2018-03-02T14:25:54+00:00 |  | 000009031-01 | FRANCES | REED | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 03192018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02282018 | 03152018 | Standard |  |  | 2018-02-28 | 16/RVC01=$3,539.19 | 0 | 2018-03-16 |  | 2018-03-16 | 2018-03-12 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302060 | S72145D | Nondisp intertroch fx l femur, subs for clos fx w routn heal | ICD10 | 03192018 | 02282018 | 03152018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 11032017 | 2017-11-03T15:11:36+00:00 |  | 000083865-01 | Mary | Kinser | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 03192018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11062017 | 12012017 | Standard |  |  | 2017-11-06 | 17/rvb01= $5411.86 1 day @ $200.00= $200.00 total: $5611.86 | 0 | 2017-12-01 |  | 2017-12-28 | 2017-12-28 | 21 | 21 | 5611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106059 | K5660 | Unspecified intestinal obstruction | ICD10 | 03192018 | 11062017 | 12012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5611 | 5611 | Approved | 26 | Revenue | RV |  |  |  | 1.0 |
| 03092018 | 2018-03-09T13:25:34+00:00 |  | 000032935-01 | CLAUDE | WISECUP | GENERAL MEDICAL CNSLT | 905523 | JERRY D | SMUCKER | 1740326362 | GREENFIELD AREA MED CTR | 916533 | 1215960901 | GREENFIELD AREA MEDICAL CENTER SNF | 1235155425 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER SNF | 03192018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03082018 | 03172018 | Standard |  |  | 2018-03-08 |  | 0 | 2018-03-17 |  |  | 2018-03-15 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309070 | I639 | Cerebral infarction, unspecified | ICD10 | 03192018 | 03082018 | 03172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 10 | Revenue | RV |  |  |  | 2.0 |
