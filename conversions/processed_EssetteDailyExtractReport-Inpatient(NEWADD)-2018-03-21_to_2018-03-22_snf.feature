Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-21_to_2018-03-22_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-21_to_2018-03-22_SNF
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
| 01092018 | 2018-01-09T14:42:57+00:00 |  | 000003172-01 | Charles | Wagner | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 03222018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 03172018 | Standard |  |  | 2018-01-15 | 17/RUB01=$5,813.99 PER DIEM RATE OF $250.00/DAY X 11 DAYS=$2,750.00 PER DIEM RATE OF $200.00/DAY X 40 DAYS=$8000.00 TOTAL PAYMENT=$16,563.99 | 0 | 2018-03-17 |  | 2018-03-19 | 2018-03-19 | 71 | 71 | 16563.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110005 | J101, J449, J9601 | Acute respiratory failure with hypoxia | ICD10 | 03222018 | 01052018 | 03172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 72 | Revenue | RV |  |  |  | 2.0 |
| 03022018 | 2018-03-02T14:01:27+00:00 |  | 000080519-01 | Robert | Thompson | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 03212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02282018 | 03192018 | Standard |  |  | 2018-02-28 | 16/RVB01= $3350.20 | 0 | 2018-03-19 |  | 2018-03-20 |  | 19 | 19 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302058 | T8571XA | Infect/inflm reaction due to periton dialysis catheter, init | ICD10 | 03212018 | 02282018 | 03192018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 03062018 | 2018-03-06T11:23:40+00:00 |  | 000090199-01 | Sonja | Brannan | THE CHRIST HSP MED ASSOC | 944399 | ORSON J | AUSTIN | 1053395855 | MAPLE KNOLLS COMMUNITY | 953033 | 1194726588 | MAPLE KNOLL VILLAGE | 1194726588 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAPLE KNOLL VILLAGE | 03212018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 03022018 | 03152018 | Standard |  |  | 2018-03-02 | 17/RVC01= $6306.19 | 0 | 2018-03-15 |  | 2018-03-21 | 2018-03-15 | 13 | 13 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306061 | R4182 | Altered mental status, unspecified | ICD10 | 03212018 | 03022018 | 03152018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 03122018 | 2018-03-12T10:44:50+00:00 |  | 000027993-01 | MELVIN | HERB | COLS INPATIENT CARE INC | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 03212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03102018 | 03182018 | Standard |  |  | 2018-03-10 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-03-18 |  | 2018-03-20 | 2018-03-20 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312035 | S32009D | Unsp fracture of unsp lum vertebra, subs for fx w routn heal | ICD10 | 03212018 | 03102018 | 03182018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 02202018 | 2018-02-20T15:05:57+00:00 |  | 000098257-01 | GEORGE | HERB | THE CHRIST HSP MED ASSOC | 944399 | ORSON J | AUSTIN | 1053395855 | MAPLE KNOLLS COMMUNITY | 953033 | 1194726588 | MAPLE KNOLL VILLAGE | 1194726588 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAPLE KNOLL VILLAGE | 03212018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 02172018 | 03142018 | Standard |  |  | 2018-02-17 | 17/RUB01= $5813.99 | 0 | 2018-03-14 |  | 2018-03-21 | 2018-03-14 | 21 | 21 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221010 | M9702XA | PERIPROSTH FRACTURE AROUND INTERNAL PROSTH L HIP JT, INIT | ICD10 | 03212018 | 02172018 | 03142018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 02202018 | 2018-02-20T15:38:59+00:00 |  | 000121377-01 | ERIC | WETZEL | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 03212018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02162018 | 03082018 | Standard |  |  | 2018-02-16 | 17/RVA01= $3586.28 | 0 | 2018-03-08 |  | 2018-03-21 |  | 20 | 20 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221027 | J441, M069 | Rheumatoid arthritis, unspecified | ICD10 | 03212018 | 02162018 | 03082018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02202018 | 2018-02-20T16:38:17+00:00 |  | 000021022-01 | CARROLL | HUNT | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 03212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02162018 | 03192018 | Standard |  |  | 2018-02-16 | 16/RUB01= $4429.71 11 DAYS @ $250.00= $2750.00 TOTAL: $7179.71 | 0 | 2018-03-19 |  | 2018-03-20 |  | 31 | 31 | 7179.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221036 | G9341 | Metabolic encephalopathy | ICD10 | 03212018 | 02162018 | 03192018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7179 | 7179 | Approved | 32 | Revenue | RV |  |  |  | 4.0 |
| 01222018 | 2018-01-22T09:42:38+00:00 |  | 000089705-01 | Jack | Reynard Jr | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | GOOD SHEPHERD VILLAGE | 920229 | 1396862314 | GOOD SHEPHERD VILLAGE | 1396862314 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GOOD SHEPHERD VILLAGE | 03222018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01192018 | 03182018 | Standard |  |  | 2018-01-19 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $250.00/day x 27 SNF days = $6,750.00 Per Diem: $200.00/day x 11 SNF Days = $2,200.00 Total Payment: $12,300.20 | 15 | 2018-03-18 | 2018-03-15 | 2018-01-31 | 2018-03-21 | 58 | 73 | 12300.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122067 | M6281, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 03222018 | 01192018 | 03182018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 59 | Revenue | RV |  |  |  | 3.0 |
| 02082018 | 2018-02-08T09:03:38+00:00 |  | 000119848-01 | William | Baker | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 03212018 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 02062018 | 03182018 | Standard |  |  | 2018-02-06 | 16/RUC01= $7333.11 20 DAYS @ $250.00= $5000.00 TOTAL: $12333.11 | 0 | 2018-03-18 |  | 2018-03-20 | 2018-03-20 | 40 | 40 | 12333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208035 | I629, I639 | Cerebral infarction, unspecified | ICD10 | 03212018 | 02062018 | 03182018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 41 | Revenue | RV |  |  |  | 2.0 |
| 02222018 | 2018-02-22T17:43:12+00:00 |  | 000025849-01 | MARIAN | ABBOTT | CLINICAL CARE CONSULTANT | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 03212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02202018 | 02212018 | Standard |  |  | 2018-02-20 | PER DIEM RATE IF $200.00/DAY X 1 DAY=$200.00 | 0 | 2018-02-21 |  | 2018-03-20 |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223033 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 03212018 | 02202018 | 02212018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 2 | Revenue | RV |  |  |  | 1.0 |
| 02262018 | 2018-02-26T16:57:16+00:00 |  | 000085536-01 | Marilyn | Richards | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 03222018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02242018 | 03092018 | Standard |  |  | 2018-02-24 | Contract/RUG: 17/RHA (Per MDS) = $2,812.08 | 0 | 2018-03-09 |  | 2018-03-22 | 2018-03-20 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227029 | S8291XD | Unsp fracture of r low leg, subs for clos fx w routn heal | ICD10 | 03222018 | 02242018 | 03092018 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 02272018 | 2018-02-27T15:07:13+00:00 |  | 000025185-01 | JERRY | BERRY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 03222018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02252018 | 03172018 | Standard |  |  | 2018-02-25 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-03-17 |  | 2018-03-21 | 2018-03-21 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227086 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 03222018 | 02252018 | 03172018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02272018 | 2018-02-27T18:14:54+00:00 |  | 000003061-01 | Stanley | Hockenberry | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 03212018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02232018 | 03012018 | Standard |  |  | 2018-02-23 | 17/RHC01= $4132.02 | 0 | 2018-03-01 |  | 2018-03-21 |  | 6 | 6 | 4132.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228006 | E119, F5104, I10, I447, I4891, R000 | Tachycardia, unspecified | ICD10 | 03212018 | 02232018 | 03012018 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 02272018 | 2018-02-27T18:28:57+00:00 |  | 000027817-01 | RITA | IACOBELLIS | CHERRY WESTGATE FAM PRCT | 926222 | CHARLES L | GEIGER | 1235115270 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 03212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02232018 | 03112018 | Standard |  |  | 2018-02-23 | 17/RUB01= $5813.99 | 0 | 2018-03-11 |  | 2018-03-21 |  | 16 | 16 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228007 | E872, I272, I5033, J449, K279, N185 | Chronic kidney disease, stage 5 | ICD10 | 03212018 | 02232018 | 03112018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 03022018 | 2018-03-02T14:45:28+00:00 |  | 000095051-01 | Mary | Nichols | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 03222018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02282018 | 03202018 | Standard |  |  | 2018-02-28 | Per MDS: 17/RVL01 = $4874.23 | 0 | 2018-03-20 |  | 2018-03-21 | 2018-03-21 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302066 | J910, R0602 | Shortness of breath | ICD10 | 03222018 | 02282018 | 03202018 | RVL01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA OR | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 03052018 | 2018-03-05T13:36:57+00:00 |  | 000046031-01 | DOROTHY | MCCOY | AHMED, AIJAZ | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 03212018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 03022018 | 03152018 | Standard |  |  | 2018-03-02 | Contract/RUG: 17/RHA (Per MDS) = $2,812.08 | 25 | 2018-03-15 |  | 2018-03-21 | 2018-03-21 | 13 | 38 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306001 | Z48812, Z952 | Presence of prosthetic heart valve | ICD10 | 03212018 | 03022018 | 03152018 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 03052018 | 2018-03-05T15:22:26+00:00 |  | 000014354-01 | BETTY | RADCLIFF | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 03222018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03032018 | 03092018 | Standard |  |  | 2018-03-03 | Contract/RUG: 16/RVA (Per MDS) = $2,689.71 | 0 | 2018-03-09 |  | 2018-03-22 | 2018-03-22 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306016 | S42401A | Unsp fracture of lower end of right humerus, init | ICD10 | 03222018 | 03032018 | 03092018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 03052018 | 2018-03-05T15:29:30+00:00 |  | 000098801-01 | Clayton | Morris | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 03222018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03022018 | 03162018 | Standard |  |  | 2018-03-02 | 16/RUB01=$4,429.71 | 0 | 2018-03-16 |  | 2018-03-22 | 2018-03-22 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306019 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 03222018 | 03022018 | 03162018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 03082018 | 2018-03-08T12:52:32+00:00 |  | 000109454-01 | Michael | Myers | COLS INPATIENT CARE INC | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 03212018 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 03072018 | 03202018 | Standard |  |  | 2018-03-07 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-03-20 |  | 2018-03-20 | 2018-03-20 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308017 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 03212018 | 03072018 | 03202018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 03122018 | 2018-03-12T09:56:32+00:00 |  | 000001565-01 | Thomas | Geary | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03222018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03092018 | 03212018 | Standard |  |  | 2018-03-09 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-03-21 |  | 2018-03-18 | 2018-03-22 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312020 | E785, I10, M84459A, N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 03222018 | 03092018 | 03212018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 03122018 | 2018-03-12T11:57:53+00:00 |  | 000120638-01 | SHARON | SALLY | COLS INPATIENT CARE INC | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 03212018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03092018 | 03162018 | Standard |  |  | 2018-03-09 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-03-16 |  | 2018-03-20 | 2018-03-20 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312057 | K5660 | Unspecified intestinal obstruction | ICD10 | 03212018 | 03092018 | 03162018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 03122018 | 2018-03-12T12:16:41+00:00 |  | 000037548-01 | SANDRA | WIGET | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 03212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03092018 | 03152018 | Standard |  |  | 2018-03-09 | Per MDS: 17/RMB01 = $2790.37 | 14 | 2018-03-15 |  | 2018-03-21 | 2018-03-15 | 6 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312060 | I5032, J189, N390 | Urinary tract infection, site not specified | ICD10 | 03212018 | 03092018 | 03152018 | RMB01 | MEDIUM REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 03152018 | 2018-03-15T08:49:29+00:00 |  | 000121518-01 | Bonnie | Hall | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 03222018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03132018 | 03182018 | Standard |  |  | 2018-03-13 | 5 days @ $200.00= $1000.00 (ADMISSION DENIAL) | 0 | 2018-03-18 |  |  |  | 5 | 5 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315007 | M6281 | Muscle weakness (generalized) | ICD10 | 03222018 | 03132018 | 03182018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 6 | Revenue | RV |  |  |  | 1.0 |
| 03162018 | 2018-03-16T11:53:21+00:00 |  | 000060277-01 | CECIL | HATFIELD JR | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03142018 | 03222018 | Standard |  |  | 2018-03-14 | Per Diem: $200.00/day x 8 days = $1600.00 TOTAL PAYMENT = $1600.00 | 0 | 2018-03-22 | 2018-03-19 |  | 2018-03-20 | 8 | 8 | 1600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316047 | F0391, F29, M6281 | Muscle weakness (generalized) | ICD10 | 03222018 | 03142018 | 03222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved | 9 | Revenue | RV |  |  |  | 2.0 |
| 03192018 | 2018-03-19T10:45:10+00:00 |  | 000096946-01 | Bruce | Mannasmith | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ARBORS AT DELAWARE | 943309 | 1033517891 | ARBORS AT DELAWARE | 1033517891 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT DELAWARE | 03222018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03132018 | 03222018 | Standard |  |  | 2018-03-13 | 9 DAYS @ $200.00= $1800.00 (ADMISSION DENIAL) | 0 | 2018-03-22 |  |  |  | 9 | 9 | 1800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319030 | J449, L119, M21372, M5416 | Radiculopathy, lumbar region | ICD10 | 03222018 | 03132018 | 03222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1800 | 1800 | Approved | 10 | Revenue | RV |  |  |  | 9.0 |
| 03192018 | 2018-03-19T13:53:55+00:00 |  | 000069412-01 | Jane | Garrison | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 03222018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03172018 | 03202018 | Standard |  |  | 2018-03-17 | Per Diem: $200.00/day x 3 SNF days = $600.00 | 0 | 2018-03-20 |  |  |  | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320031 | S42301A | Unsp fracture of shaft of humerus, right arm, init | ICD10 | 03222018 | 03172018 | 03202018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
