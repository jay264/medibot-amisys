Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-24_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-24_SNF
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
| 02012018 | 2018-02-01T09:24:53+00:00 |  | 000005382-01 | ANN | HANSEN | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 04242018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01302018 | 04192018 | Standard |  |  | 2018-01-30 | 16/RUC=$7,333.11 PER DIEM RATE OF $250.00/DAY X 38 DAYS=$9,500.00 PER DIEM RATE OF $200.00/DAY X 21 DAYS=$4200.00 TOTAL PAYMENT TO FACILITY=$21,033.11 | 0 | 2018-04-19 |  | 2018-04-24 | 2018-04-18 | 79 | 79 | 21033.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201042 | S32511D, S32591D, S42001D | Fx unsp part of r clavicle, subs for fx w routn heal | ICD10 | 04242018 | 01302018 | 04192018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 80 | Revenue | RV |  |  |  | 3.0 |
| 04022018 | 2018-04-02T15:39:23+00:00 |  | 000103471-01 | Phillip | Kinnisten | CANYON MEDICAL CENTER | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN NEW ALBANY LLC | 944058 | 1407262165 | OTTERBEIN NEW ALBANY LLC | 1407262165 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN NEW ALBANY LLC | 04242018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03312018 | 04062018 | Standard |  |  | 2018-03-31 | 17/RVA01= $3586.28 | 0 | 2018-04-06 |  | 2018-04-24 | 2018-04-23 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403002 | J189, M6281 | Muscle weakness (generalized) | ICD10 | 04242018 | 03312018 | 04062018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 12192017 | 2017-12-19T14:49:07+00:00 |  | 000102696-01 | Linda | Carpenter | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | CENTERBURG RESPIRATORY A | 949066 | 1083157747 | CENTERBURG RESPIRATORY & SPECIALTY R | 1083157747 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG RESPIRATORY & SPECIALTY R | 04242018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01022018 | 04122018 | Standard |  |  | 2018-01-02 | Per Diem (vent): $520.00/day x 11 days = $5720.00 Per Diem : $250.00/day x 41 days = $10,250.00 Per Diem: $200.00/day x 48 days = $9600.00 TOTAL PAYMENT = $25,570.00 | 0 | 2018-04-12 |  | 2018-04-20 |  | 100 | 100 | 25570.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219120 | I716, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04242018 | 01022018 | 04122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 101 | Revenue | RV |  |  |  | 10.0 |
| 02262018 | 2018-02-26T15:34:43+00:00 |  | 000111002-01 | Nancy | Miller | THE CHRIST HSP MED ASSOC | 944399 | ORSON J | AUSTIN | 1053395855 | MAPLE KNOLLS COMMUNITY | 953033 | 1194726588 | MAPLE KNOLL VILLAGE | 1194726588 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAPLE KNOLL VILLAGE | 04242018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 02222018 | 04122018 | Standard |  |  | 2018-02-22 | 17/RVA01= $3586.28 24 DAYS @ $200.00= 4800.00 TOTAL: $8386.28 | 0 | 2018-04-12 | 2018-04-10 | 2018-04-23 | 2018-04-23 | 44 | 44 | 8386.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226108 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 04242018 | 02222018 | 04122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8386 | 8386 | Approved | 50 | Revenue | RV |  |  |  | 3.0 |
| 03072018 | 2018-03-07T11:51:29+00:00 |  | 000034556-01 | LEOLA | REINCKE | ARBORS AT CARROLL | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 04242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03062018 | 04142018 | Standard |  |  | 2018-03-06 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 16 days = $3200.00 Per Diem: $250.00/day x 3 days = $750.00 TOTAL PAYMENT = $10,256.19 | 0 | 2018-04-14 |  | 2018-04-23 | 2018-04-11 | 39 | 39 | 10256.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307034 | S72142D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 04242018 | 03062018 | 04142018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 40 | Revenue | RV |  |  |  | 5.0 |
| 03132018 | 2018-03-13T15:43:30+00:00 |  | 000098025-01 | DENA | LYONS | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | LP WASHINGTON CH LLC | 930093 | 1063846020 | LP WASHINGTON CH LLC | 1063846020 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LP WASHINGTON CH LLC | 04242018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03122018 | 03312018 | Standard |  |  | 2018-03-12 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-03-31 |  | 2018-04-06 |  | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313085 | E1165, I10, I639, N189 | Chronic kidney disease, unspecified | ICD10 | 04242018 | 03122018 | 03312018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03232018 | 2018-03-23T12:11:38+00:00 |  | 000120999-01 | JOANNE | TOLER | THE CHRIST HSP MED ASSOC | 944399 | ORSON J | AUSTIN | 1053395855 | MAPLE KNOLLS COMMUNITY | 953033 | 1194726588 | MAPLE KNOLL VILLAGE | 1194726588 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAPLE KNOLL VILLAGE | 04242018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 03212018 | 04062018 | Standard |  |  | 2018-03-21 | 17/RUB01= $5813.99 | 0 | 2018-04-06 |  | 2018-04-24 | 2018-04-04 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323044 | K469 | Unspecified abdominal hernia without obstruction or gangrene | ICD10 | 04242018 | 03212018 | 04062018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 03232018 | 2018-03-23T14:53:30+00:00 |  | 000045684-01 | NORMA | FISHER | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03212018 | 04202018 | Standard |  |  | 2018-03-21 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 10 days = $2500.00 TOTAL PAYMENT = $8806.19 | 0 | 2018-04-20 |  | 2018-04-24 | 2018-04-24 | 30 | 30 | 8806.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323069 | J189 | Pneumonia, unspecified organism | ICD10 | 04242018 | 03212018 | 04202018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8806 | 8806 | Approved | 31 | Revenue | RV |  |  |  | 3.0 |
| 03262018 | 2018-03-26T10:39:07+00:00 |  | 000044045-01 | MARY | COTTRILL | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 04242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03242018 | 04242018 | Standard |  |  | 2018-03-24 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day = $2200.00 TOTAL PAYMENT = $8506.19 | 0 | 2018-04-24 |  | 2018-04-24 | 2018-04-24 | 31 | 31 | 8506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326079 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04242018 | 03242018 | 04242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8506 | 8506 | Approved | 32 | Revenue | RV |  |  |  | 4.0 |
| 04052018 | 2018-04-05T11:22:48+00:00 |  | 000056594-01 | PHYLLIS | MILLER | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04032018 | 04212018 | Standard |  |  | 2018-04-03 | 17/RUC01=$6,049.81 | 0 | 2018-04-21 |  | 2018-04-24 | 2018-04-24 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405032 | I69314 | FRONTAL LOBE AND EXEC FCN DEF FOLLOWING CEREBRAL INFARCTION | ICD10 | 04242018 | 04032018 | 04212018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 04052018 | 2018-04-05T15:58:36+00:00 |  | 000022394-01 | LORRAINE | CROMWELL | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 04242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04042018 | 04132018 | Standard |  |  | 2018-04-04 | 16/RUB01=$4,429.71 | 0 | 2018-04-13 |  | 2018-04-24 | 2018-04-24 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405069 | M25562, R2689, R531, W19XXXD | Unspecified fall, subsequent encounter | ICD10 | 04242018 | 04042018 | 04132018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 04162018 | 2018-04-16T13:09:46+00:00 |  | 000066731-01 | JAMES | MARTIN | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 04242018 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 04132018 | 04142018 | Standard |  |  | 2018-04-13 | 1 DAY @ $200.00= $200.00 | 0 | 2018-04-14 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416097 | I509 | Heart failure, unspecified | ICD10 | 04242018 | 04132018 | 04142018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 04232018 | 2018-04-23T16:35:01+00:00 |  | 000001189-01 | RICHARD | LANGWASSER | MOUNT CARMEL HLTH PRVDRS | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 04242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04202018 | 04222018 | Standard |  |  | 2018-04-20 | 2 DAYS @ $200.00= $400.00 | 0 | 2018-04-22 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424012 | S22029S | Unspecified fracture of second thoracic vertebra, sequela | ICD10 | 04242018 | 04202018 | 04222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 04022018 | 2018-04-02T12:04:25+00:00 |  | 000070632-01 | Joseph | Lipich | CLYO INTERNAL MEDICINE | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 04242018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03292018 | 04132018 | Standard |  |  | 2018-03-29 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-04-13 |  | 2018-04-24 | 2018-04-24 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402068 | L03115 | Cellulitis of right lower limb | ICD10 | 04242018 | 03292018 | 04132018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 04032018 | 2018-04-03T15:24:14+00:00 |  | 000100362-01 | George | Maurer | HEARTLAND OF BEAVERCREEK | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 04242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04022018 | 04162018 | Standard |  |  | 2018-04-02 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 19 | 2018-04-16 |  | 2018-04-24 |  | 14 | 33 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403090 | A419 | Sepsis, unspecified organism | ICD10 | 04242018 | 04022018 | 04162018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04102018 | 2018-04-10T10:27:39+00:00 |  | 000047566-01 | HELEN | MARCUM | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04062018 | 04232018 | Standard |  |  | 2018-04-06 | 17/RUC01=$6,049.81 | 0 | 2018-04-23 |  | 2018-04-24 | 2018-04-24 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410114 | C50911, Z7389 | Other problems related to life management difficulty | ICD10 | 04242018 | 04062018 | 04232018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 04132018 | 2018-04-13T10:18:52+00:00 |  | 000036777-01 | Harry | Marcum | EVANS, MARK A | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 04242018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04112018 | 04212018 | Standard |  |  | 2018-04-11 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-04-21 | 2018-04-24 | 2018-04-24 | 2018-04-24 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413044 | A419, G960, M4646 | Discitis, unspecified, lumbar region | ICD10 | 04242018 | 04112018 | 04212018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 04232018 | 2018-04-23T10:26:33+00:00 |  | 000098016-01 | Ronald | Bressler | HEARTLAND OF SPRINGFIELD | 917780 | CHRISTINE B | WELLER | 1811953318 | CYPRESS POINTE HEALTH CAMPUS | 915832 | 1629304399 | CYPRESS POINTE HEALTH CAMPUS | 1629304399 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CYPRESS POINTE HEALTH CAMPUS | 04242018 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A180423044 | R296 | Repeated falls | ICD10 | 04242018 | 04232018 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
