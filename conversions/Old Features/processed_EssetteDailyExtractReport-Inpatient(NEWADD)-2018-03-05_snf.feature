Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-05_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-05_SNF
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
| 01302018 | 2018-01-30T15:27:40+00:00 |  | 000112375-01 | Richard | France | HEARTLAND OF UPTOWN WEST | 908403 | DANIEL L | MILLER | 1386731263 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01292018 | 02252018 | Standard |  |  | 2018-01-29 | 17/RUC01=$6,049.81 PER DIEM RATE OF $250.00/DAY X 7 DAYS=$1,750.00 TOTAL PAYMENT=$7,799.81 | 0 | 2018-02-25 |  | 2018-03-02 |  | 27 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131046 | F0280, J209 | Acute bronchitis, unspecified | ICD10 | 03052018 | 01292018 | 02252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7799 | 7799 | Approved Skilled | 28 | Revenue | RV |  |  |  | 7.0 |
| 01152018 | 2018-01-15T17:36:47+00:00 |  | 000071097-01 | Lonnie | Bateman Jr | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01142018 | 02282018 | Standard |  |  | 2018-01-14 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $250.00/day x 25 SNF Days = $6,250.00 Total Payment: $12,299.81 | 0 | 2018-02-28 |  | 2018-03-02 | 2018-03-02 | 45 | 45 | 12299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116018 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 03052018 | 01142018 | 02282018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 6.0 |
| 01172018 | 2018-01-17T11:43:20+00:00 |  | 000042503-01 | ELEANOR | KASLER | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 03052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01152018 | 03012018 | Standard |  |  | 2018-01-15 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $200.00/day x 25 days = $5000.00 TOTAL PAYMENT = $10,411.86 | 0 | 2018-03-01 |  | 2018-03-02 | 2018-03-02 | 45 | 45 | 10411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117050 | S42291D, Z5189 | Encounter for other specified aftercare | ICD10 | 03052018 | 01152018 | 03012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 3.0 |
| 02052018 | 2018-02-05T11:27:17+00:00 |  | 000057747-01 | RICHARD | DEBEVOISE | AMERICAN HLTH NETWORK OF | 924337 | RAJNISH K | GUPTA | 1063466795 | EDGEWOOD MANOR OF WESTER | 952373 | 1518485820 | BUCKEYE TERRACE REHABILITATION & NUR | 1518485820 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BUCKEYE TERRACE REHABILITATION & NUR | 03052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02162018 | Standard |  |  | 2018-02-02 | 17/RVC01=$6,306.19 | 0 | 2018-02-16 |  | 2018-03-02 |  | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205058 | I4891 | Unspecified atrial fibrillation | ICD10 | 03052018 | 02022018 | 02162018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 02122018 | 2018-02-12T13:50:14+00:00 |  | 000041026-01 | ELEANOR | JONES | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 03052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082018 | 02162018 | Standard |  |  | 2018-02-08 | 17/RVC01=$6,306.19 | 0 | 2018-02-16 |  | 2018-03-04 | 2018-03-04 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212116 | J189 | Pneumonia, unspecified organism | ICD10 | 03052018 | 02082018 | 02162018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 02122018 | 2018-02-12T15:17:28+00:00 |  | 000089274-01 | IRENE | SNODGRASS | BIO-MEDICAL APPLICATIONS | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02092018 | 02152018 | Standard |  |  | 2018-02-09 | Contract/RUG: 17/ES1 (Per MDS) = $4,881.45 | 0 | 2018-02-15 |  | 2018-03-02 | 2018-03-02 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212128 | J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 03052018 | 02092018 | 02152018 | ES101 | EXTENSIVE SERVICES , ADL INDEX 2-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 02192018 | 2018-02-19T14:08:00+00:00 |  | 000090772-01 | Cynthia | Strausbaugh | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02162018 | 03022018 | Standard |  |  | 2018-02-16 | Per MDS; 17/RVC01 = $6306.19 | 0 | 2018-03-02 |  | 2018-03-02 | 2018-03-02 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219071 | Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 03052018 | 02162018 | 03022018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 02192018 | 2018-02-19T14:35:57+00:00 |  | 000112264-01 | Marian | Watts | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02162018 | 02282018 | Standard |  |  | 2018-02-16 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-02-28 |  | 2018-03-02 | 2018-03-02 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220004 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 03052018 | 02162018 | 02282018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 12042017 | 2017-12-04T17:11:01+00:00 |  | 000044725-01 | SHARON | DOUP | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 03052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12022017 | 02152018 | Standard |  |  | 2017-12-02 | 68 days @ $200.00= $13600.00 (with denial mbr stayed past LCD of 2/10/18 due to SNF not providing info needed to Kepro. 72 days used with 68 paid) wound vac through 2/14/18 per invoices $540.00 IV Teflora per invoice= $14050.39 Total: $28190.39 | 0 | 2018-02-15 |  | 2018-03-02 | 2018-03-02 | 72 | 72 | 28190.39 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205062 | Z89422 | Acquired absence of other left toe(s) | ICD10 | 03052018 | 12022017 | 02152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 76 | Revenue | RV |  |  |  | 9.0 |
| 01302018 | 2018-01-30T17:44:04+00:00 |  | 000111063-01 | Patricia | Sullivan | HEARTLAND OF SPRINGFIELD | 917780 | CHRISTINE B | WELLER | 1811953318 | SPRINGFIELD MASONIC COMM | 939421 | 1962510305 | SPRINGFIELD MASONIC COMMUNITY | 1962510305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SPRINGFIELD MASONIC COMMUNITY | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01292018 | 03032018 | Standard |  |  | 2018-01-29 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $250.00/day x 13 SNF Days = $3,250.00 Total Payment: $9,299.81 | 0 | 2018-03-03 |  | 2018-02-28 | 2018-02-28 | 33 | 33 | 9299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131072 | E1165, I10 | Essential (primary) hypertension | ICD10 | 03052018 | 01292018 | 03032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9299 | 9299 | Approved | 34 | Revenue | RV |  |  |  | 3.0 |
| 02082018 | 2018-02-08T14:05:05+00:00 |  | 000046448-01 | EDWARD | BLACK | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02062018 | 02282018 | Standard |  |  | 2018-02-06 | 16/RUA01= $3214.76 | 0 | 2018-02-28 |  | 2018-03-01 | 2018-03-01 | 22 | 22 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208072 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 03052018 | 02062018 | 02282018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 02122018 | 2018-02-12T15:00:44+00:00 |  | 000088279-01 | Donald | Gardner | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02092018 | 02192018 | Standard |  |  | 2018-02-09 | 9 DAYS @ $250.00= $2250.00 1 DAY @ $200.00= $200.00 VANCO PER INVOICE= $100.10 INVANZ PER INVOICE= $448.25 ZOSYN PER INVOICE= $254.85 TOTAL: $3253.20 Please send the MARs for this and each closing that has IV meds, its needed to show doses used | 18 | 2018-02-19 |  | 2018-03-02 |  | 10 | 28 | 3253.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212124 | I639, I70235, L03115, M86271 | Subacute osteomyelitis, right ankle and foot | ICD10 | 03052018 | 02092018 | 02192018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3253 | 3253 | Approved | 11 | Revenue | RV |  |  |  | 10.0 |
| 02132018 | 2018-02-13T09:57:46+00:00 |  | 000090157-01 | Jarie | Wilburn | HEARTLAND WOODRIDGE OF F | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 03052018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 02102018 | 02272018 | Standard |  |  | 2018-02-10 | Contract/RUG: 17/RUX (Per MDS) = $7,339.86 | 0 | 2018-02-27 | 2018-03-04 | 2018-03-04 | 2018-03-04 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213060 | B028 | Zoster with other complications | ICD10 | 03052018 | 02102018 | 02272018 | RUX01 | ULTRA HIGH REHAB PLUS EXTENSIVE , ADL INDEX 11-16/STAND-ALONE OBRA SCSA | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 02132018 | 2018-02-13T10:07:19+00:00 |  | 000010999-01 | MILLARD | MEDLEY | RHEE, CHOO Y | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 03052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082018 | 03032018 | Standard |  |  | 2018-02-08 | 17/RVB01=$5,411.86 PER DIEM RATE OF $250.00/DAY X 3 DAYS=$750.00 TOTAL PAYMENT TO FACILITY=$6,161.86 | 77 | 2018-03-03 |  | 2018-03-01 |  | 23 | 100 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213062 | I5042, J189, N186, Z992 | Dependence on renal dialysis | ICD10 | 03052018 | 02082018 | 03032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6161 | 6161 | Approved Skilled | 24 | Revenue | RV |  |  |  | 3.0 |
| 02132018 | 2018-02-13T11:00:20+00:00 |  | 000092113-01 | Gary | Davish Sr | HEARTLAND WOODRIDGE OF F | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 03052018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 02112018 | 02212018 | Standard |  |  | 2018-02-11 | Contract/RUG: 17/PB1 (Per MDS) = $2,132.09 | 0 | 2018-02-21 |  | 2018-03-04 | 2018-03-04 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213072 | M6282 | Rhabdomyolysis | ICD10 | 03052018 | 02112018 | 02212018 | PB101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 02132018 | 2018-02-13T11:57:13+00:00 |  | 000087611-01 | Janice | Jackson | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02102018 | 02192018 | Standard |  |  | 2018-02-10 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-02-19 |  | 2018-03-04 | 2018-03-04 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213085 | S0990XD | Unspecified injury of head, subsequent encounter | ICD10 | 03052018 | 02102018 | 02192018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 02162018 | 2018-02-16T12:24:05+00:00 |  | 000092239-01 | James | Peer | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02142018 | 02272018 | Standard |  |  | 2018-02-14 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 38 | 2018-02-27 |  | 2018-03-04 | 2018-03-04 | 13 | 51 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216055 | J810 | Acute pulmonary edema | ICD10 | 03052018 | 02142018 | 02272018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 02192018 | 2018-02-19T16:33:31+00:00 |  | 000106009-01 | DIXIE | SCHEFFLER | THE DERM & LASER SURG CT | 902564 | GARY D | PALMER | 1134124563 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02162018 | 02272018 | Standard |  |  | 2018-02-16 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-02-27 |  | 2018-03-05 | 2018-03-05 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220042 | S72141D | Displ intertroch fx r femur, subs for clos fx w routn heal | ICD10 | 03052018 | 02162018 | 02272018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 02202018 | 2018-02-20T07:46:47+00:00 |  | 000109086-01 | Ruth | Ermlich | CARROLL, FREDERICK C | 900430 | FREDERICK C | CARROLL | 1962431957 | THE LAURELS OF MT VERNON | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02162018 | 03052018 | Standard |  |  | 2018-02-16 | 17/RVB01= $5411.86 | 16 | 2018-03-05 |  | 2018-03-05 | 2018-03-05 | 17 | 33 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220044 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 03052018 | 02162018 | 03052018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 01182018 | 2018-01-18T10:11:42+00:00 |  | 000074693-01 | Frederick | Acord | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 03052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01162018 | 03032018 | Standard |  |  | 2018-01-16 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 3 days = $750.00 Per Diem: $200.00/day x 23 days = $4600.00 TOTAL PAYMENT = $11,656.19 | 0 | 2018-03-03 | 2018-03-05 | 2018-03-05 | 2018-03-05 | 46 | 46 | 11656.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118040 | A047, I69898 | Other sequelae of other cerebrovascular disease | ICD10 | 03052018 | 01162018 | 03032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 47 | Revenue | RV |  |  |  | 5.0 |
| 02282018 | 2018-02-28T14:26:17+00:00 |  | 000095539-01 | Sharon | Thabat Mohamed | CMH REGIONAL HLTH SYSTEM | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 03052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02282018 | 03032018 | Standard |  |  | 2018-02-28 | Swing Bed Daily Rate x 3 SNF Days | 5 | 2018-03-03 |  |  | 2018-03-02 | 3 | 8 | Swing Bed Daily Rate x 3 SNF Days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228075 | Z5189 | Encounter for other specified aftercare | ICD10 | 03052018 | 02282018 | 03032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 02282018 | 2018-02-28T17:30:40+00:00 |  | 000095958-01 | Ronald | Cahoone | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 03052018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 02272018 | 03022018 | Standard |  |  | 2018-02-27 | 3 NONSKILLED DAYS @ $200.00= $600.00 | 0 | 2018-03-02 |  |  |  | 6 | 0 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301010 | C171, Z9049 | Acquired absence of other specified parts of digestive tract | ICD10 | 03052018 | 02272018 | 03022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 03022018 | 2018-03-02T12:46:50+00:00 |  | 000024186-01 | DONALD | SANDER | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 03052018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 02282018 | 03062018 | Standard |  |  | 2018-02-28 | 6 NONSKILLED DAYS @ $200.00= $1200.00 | 0 | 2018-03-06 |  |  |  | 6 | 0 | 1200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302043 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03052018 | 02282018 | 03062018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved | 7 | Revenue | RV |  |  |  | 6.0 |
| 03022018 | 2018-03-02T13:09:34+00:00 |  | 000007450-01 | MARVELINE | MCCONNELL | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 03052018 | Denied | MediGold Classic Preferred | Fax | Skilled Criteria Not Met (SNF Only) | Inpatient | 03052018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A180302049 | S7292XD | Unsp fracture of left femur, subs for clos fx w routn heal | ICD10 | 03052018 | 02282018 |  | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved Unskilled | 0 | Revenue | RV |  |  |  | 6.0 |
