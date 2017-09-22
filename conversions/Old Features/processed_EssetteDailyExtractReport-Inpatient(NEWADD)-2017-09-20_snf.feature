Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-20_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-20_SNF
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
| 08282017 | 2017-08-28T13:24:25+00:00 |  | 000097637-01 | Charles | Parker | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08252017 | 09042017 | Standard |  |  | 2017-08-25 | Per MDS: 17/RUC01 = $6049.81 | 50 | 2017-09-05 |  | 2017-09-06 |  | 11 | 61 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828098 | F068, M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 09202017 | 08252017 | 09052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 08292017 | 2017-08-29T15:22:55+00:00 |  | 000055184-01 | ROSEMARY | BETHEL | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08282017 | 09122017 | Standard |  |  | 2017-08-28 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-09-13 |  | 2017-09-13 | 2017-09-13 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829096 | I129, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 09202017 | 08282017 | 09132017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 09052017 | 2017-09-05T09:37:31+00:00 |  | 000069573-01 | DAVID | HORN | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09012017 | 09072017 | Standard |  |  | 2017-09-01 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-09-08 |  | 2017-09-14 | 2017-09-11 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905092 | S065X0D | Traum subdr hem w/o loss of consciousness, subs | ICD10 | 09202017 | 09012017 | 09082017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 09112017 | 2017-09-11T12:38:18+00:00 |  | 000029371-01 | WILLIAM | SPIRES | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09072017 | 09092017 | Standard |  |  | 2017-09-07 | PER DIEM RATE OF $200.00/DAY X 3 DAYS=$600.00 | 0 | 2017-09-10 |  | 2017-09-19 |  | 3 | 3 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911083 | G9340 | Encephalopathy, unspecified | ICD10 | 09202017 | 09072017 | 09102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved Skilled | 3 | Revenue | RV |  |  |  | 3.0 |
| 09082017 | 2017-09-08T15:47:44+00:00 |  | 000045463-01 | RUTH | HUTT | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09072017 | 09132017 | Standard |  |  | 2017-09-07 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-09-14 |  | 2017-09-14 | 2017-09-14 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908085 | F419, I10, Z96652 | Presence of left artificial knee joint | ICD10 | 09202017 | 09072017 | 09142017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 09012017 | 2017-09-01T17:12:28+00:00 |  | 000093504-01 | Nancy | Tabor | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08312017 | 09072017 | Standard |  |  | 2017-08-31 | 17/RUA01=$3,214.76 | 0 | 2017-09-09 |  | 2017-09-18 | 2017-09-18 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905067 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 09202017 | 08312017 | 09082017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07172017 | 2017-07-17T16:42:23+00:00 |  | 000030469-01 | IONA | WEST | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07132017 | 09072017 | Standard |  |  | 2017-07-13 | Per MDS: 17/RHA01 = $2812.08 Per Diem: $250.00/day x 34 days = $8500.00 TOTAL PAYMENT = $11,312.08 | 0 | 2017-09-08 |  | 2017-09-15 | 2017-09-15 | 54 | 54 | 11312.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718096 | J209, R531 | Weakness | ICD10 | 09202017 | 07132017 | 09082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 57 | Revenue | RV |  |  |  | 4.0 |
| 09062017 | 2017-09-06T17:14:10+00:00 |  | 000008318-01 | WILLIAM | ZWEYDORFF | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09012017 | 09012017 | Standard |  |  | 2017-09-01 | PER DIEM RATE OF #200.00/DAY X 1 DAY=$200.00 | 11 | 2017-09-02 |  |  |  | 1 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907093 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 09202017 | 09012017 | 09022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 1 | Revenue | RV |  |  |  | 1.0 |
| 08282017 | 2017-08-28T08:49:51+00:00 |  | 000085840-01 | Saward | Epps | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08252017 | 09102017 | Standard |  |  | 2017-08-25 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-09-11 |  | 2017-09-05 |  | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828043 | G4733, I4891, I5042, M84459A, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 09202017 | 08252017 | 09112017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 09012017 | 2017-09-01T17:20:44+00:00 |  | 000017478-01 | JOAN | SAVOIA | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08312017 | 09092017 | Standard |  |  | 2017-08-31 | 17/RUB01=$5,813.99 | 0 | 2017-09-10 |  | 2017-09-18 | 2017-09-18 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905068 | Z96652 | Presence of left artificial knee joint | ICD10 | 09202017 | 08312017 | 09102017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 08292017 | 2017-08-29T17:35:08+00:00 |  | 000010670-01 | RICHARD | HERRON | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08262017 | 09152017 | Standard |  |  | 2017-08-26 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-09-15 |  | 2017-09-18 | 2017-09-18 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830036 | E119, G20, I82409, J441, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 09202017 | 08262017 | 09152017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09012017 | 2017-09-01T15:38:16+00:00 |  | 000000008-01 | HELEN | GENOOZIS | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08312017 | 09152017 | Standard |  |  | 2017-08-31 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-09-16 |  | 2017-09-12 | 2017-09-18 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901065 | F0390, I10, M84459A, N390 | Urinary tract infection, site not specified | ICD10 | 09202017 | 08312017 | 09162017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 08302017 | 2017-08-30T11:23:26+00:00 |  | 000037549-01 | HOMER | WIGET | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08282017 | 09142017 | Standard |  |  | 2017-08-28 | Per MDS: 17/PC101 = $2465.35 | 0 | 2017-09-15 |  | 2017-09-18 | 2017-09-18 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830060 | K830, R2681 | Unsteadiness on feet | ICD10 | 09202017 | 08282017 | 09152017 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 09192017 | 2017-09-19T12:17:32+00:00 |  | 000031366-01 | NOUPHET | THEUAMTHALARAY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 09202017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09142017 | 09142017 | Standard |  |  | 2017-09-14 | PER DIEM RATE OF $200.00/DAY X 1 DAY =$200.00 | 0 | 2017-09-15 |  |  |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919084 | J159 | Unspecified bacterial pneumonia | ICD10 | 09202017 | 09142017 | 09152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 1 | Revenue | RV |  |  |  | 1.0 |
| 08302017 | 2017-08-30T14:05:19+00:00 |  | 000071283-01 | Joseph | Pratt | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08282017 | 09152017 | Standard |  |  | 2017-08-28 | Per MDS: 17/RUC01 = $6049.81 | 14 | 2017-09-16 |  | 2017-09-18 | 2017-09-18 | 19 | 33 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830069 | I480, I5033, M6281 | Muscle weakness (generalized) | ICD10 | 09202017 | 08282017 | 09162017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 07172017 | 2017-07-17T16:18:07+00:00 |  | 000016886-01 | HELEN | SANDERS | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07132017 | 09072017 | Standard |  |  | 2017-07-13 | Per MDS: $16/RVB01 = $3350.20 Per Diem: $250.00/day x 4 days = $1000.00 Per Diem: $200.00/day x 33 days = $6600.00 TOTAL PAYMENT = $10,950.20 | 0 | 2017-09-08 |  | 2017-09-19 | 2017-09-19 | 57 | 57 | 10950.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717122 | N3001, R531 | Weakness | ICD10 | 09202017 | 07132017 | 09082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 57 | Revenue | RV |  |  |  | 3.0 |
| 09182017 | 2017-09-18T11:40:01+00:00 |  | 000039127-01 | IRIS | STARNER | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09142017 | 09142017 | Standard |  |  | 2017-09-14 | Per Diem: $200.00/day x 1 day = $200.00 | 0 | 2017-09-15 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918070 | J189, R0600 | Dyspnea, unspecified | ICD10 | 09202017 | 09142017 | 09152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 200 |  | 1 | Revenue | RV |  |  |  | 1.0 |
| 08292017 | 2017-08-29T16:30:42+00:00 |  | 000072208-01 | Cynthy | Perry | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08282017 | 09152017 | Standard |  |  | 2017-08-28 | 17/RUB01= $5813.99 | 0 | 2017-09-16 |  | 2017-09-19 | 2017-09-19 | 19 | 19 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830013 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 09202017 | 08282017 | 09162017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 06062017 | 2017-06-06T08:35:28+00:00 |  | 000049834-01 | CAROL | THOMPSON | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06032017 | 08132017 | Standard |  |  | 2017-06-03 | 16/RUB01=$4,429.71 CARVE OUT FOR IV CEFTRIAXONE (TO START DAY 21) PER PHARMACY INVOICE=$2,402.16 TOTAL FACILITY PAYMENT=$6,831.87 | 0 | 2017-08-14 |  | 2017-08-16 | 2017-08-16 | 64 | 64 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606045 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 09202017 | 06032017 | 08142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6831 | 6831 | Approved Skilled | 72 | Revenue | RV |  |  |  | 13.0 |
| 06062017 | 2017-06-06T15:14:05+00:00 |  | 000091069-01 | John | Young | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06032017 | 09092017 | Standard |  |  | 2017-06-03 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $200.00/day x 70 days = $14,000.00 IV Unasyn: Per Invoice = $543.93 TOTAL PAYMENT = $20,357.92 | 0 | 2017-09-10 | 2017-09-18 | 2017-09-18 | 2017-09-18 | 90 | 90 | 20357.92 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606079 | M869, Z5189 | Encounter for other specified aftercare | ICD10 | 09202017 | 06032017 | 09102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 99 | Revenue | RV |  |  |  | 6.0 |
| 09082017 | 2017-09-08T14:41:21+00:00 |  | 000053498-01 | PEGGY | RILEY | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 09202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09072017 | 09182017 | Standard |  |  | 2017-09-07 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-09-19 |  | 2017-09-20 | 2017-09-20 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908082 | Z96612 | Presence of left artificial shoulder joint | ICD10 | 09202017 | 09072017 | 09192017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 09112017 | 2017-09-11T13:01:11+00:00 |  | 000111557-01 | Marietta | Webster | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 09202017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 09092017 | 09152017 | Standard |  |  | 2017-09-09 | 17/RUA01=$3,214.76 | 0 | 2017-09-16 | 2017-09-20 | 2017-09-20 | 2017-09-20 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911088 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 09202017 | 09092017 | 09162017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 04072017 | 2017-04-07T16:54:32+00:00 |  | 000034789-01 | LAWRENCE | DOWDEN | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 09202017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 09202017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170413080840.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170410011 | K4090 | Unil inguinal hernia, w/o obst or gangr, not spcf as recur | ICD10 | 09202017 | 04052017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 34.0 |
