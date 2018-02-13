Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-08_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-08_SNF
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
| 10262017 | 2017-10-26T13:40:12+00:00 |  | 000062937-01 | GEORGE | MCCOMBS JR | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10242017 | 02012018 | Standard |  |  | 2017-10-24 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 80 days = $20.000.00 TOTAL PAYMENT = $25,813.99 | 0 | 2018-02-01 |  | 2018-02-07 | 2018-02-07 | 100 | 100 | 25813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026068 | A033 | Shigellosis due to Shigella sonnei | ICD10 | 02082018 | 10242017 | 02012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 101 | Revenue | RV |  |  |  | 6.0 |
| 01082018 | 2018-01-08T15:13:42+00:00 |  | 000045585-01 | SYLVIA | MEYERS | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 02062018 | Standard |  |  | 2018-01-04 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 13 days = $3250.00 TOTAL PAYMENT = $9063.99 | 66 | 2018-02-06 |  | 2018-02-07 |  | 33 | 99 | 9063.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109019 | J9610, O29019 | Aspirat pneumonitis due to anesth during preg, unsp tri | ICD10 | 02082018 | 01042018 | 02062018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9063 | 9063 | Approved | 34 | Revenue | RV |  |  |  | 6.0 |
| 01092018 | 2018-01-09T16:42:34+00:00 |  | 000042312-01 | John | Cox | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 02082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01052018 | 02032018 | Standard |  |  | 2018-01-05 | Per MDS: 17/RVA01 = $3586.28 Per Diem: $200.00/day x 9 days = $1800.00 TOTAL PAYMENT = $5386.28 | 0 | 2018-02-03 |  | 2018-02-08 | 2018-02-07 | 29 | 29 | 5386.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110035 | I69352 | Hemiplga following cerebral infrc aff left dominant side | ICD10 | 02082018 | 01052018 | 02032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5386 | 5386 | Approved | 30 | Revenue | RV |  |  |  | 2.0 |
| 01122018 | 2018-01-12T16:12:27+00:00 |  | 000016362-01 | MAURICE | SCOTT | RAYMOND PONGONIS DO INC | 910686 | RAYMOND | PONGONIS | 1922085596 | SUMMITS TRACE HLTHCARE C | 908932 | 1588803985 | SUMMITS TRACE HEALTHCARE CENTER | 1588803985 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SUMMITS TRACE HEALTHCARE CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01152018 | Standard |  |  | 2018-01-11 | 16/RMB01=$2,232.29 | 0 | 2018-01-15 |  | 2018-02-07 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115032 | K920 | Hematemesis | ICD10 | 02082018 | 01112018 | 01152018 | RMB01 | MEDIUM REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 01192018 | 2018-01-19T16:38:08+00:00 |  | 000003153-01 | MARGARET | ERVIN | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01172018 | 01262018 | Standard |  |  | 2018-01-17 | Contract/RUG: 16/RUC (Per MDS) = $7,333.11 | 0 | 2018-01-26 |  | 2018-02-07 |  | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122011 | I509, K922, M531 | Cervicobrachial syndrome | ICD10 | 02082018 | 01172018 | 01262018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01192018 | 2018-01-19T18:31:55+00:00 |  | 000002210-01 | SONYA | CHAFIN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01172018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122019 | A047, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 02082018 | 01172018 | 02052018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01262018 | 2018-01-26T11:36:34+00:00 |  | 000015235-01 | GERTRUDE | RASOR | CEN OHIO GERIATRICS LLC | 907151 | JEROME M | KONG | 1598711657 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01242018 | 02012018 | Standard |  |  | 2018-01-24 | 17/RVA01=$3,586.28 | 23 | 2018-03-01 |  | 2018-02-07 |  | 8 | 31 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126053 | M6281, R262, R609 | Edema, unspecified | ICD10 | 02082018 | 01242018 | 02012018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 01262018 | 2018-01-26T11:52:13+00:00 |  | 000019068-01 | JOHN | MCCOMAS | CEN OHIO GERIATRICS LLC | 907151 | JEROME M | KONG | 1598711657 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01242018 | 01292018 | Standard |  |  | 2018-01-24 | 17/RMC01=$3,027.33 | 0 | 2018-01-29 |  | 2018-02-07 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126056 | K5721, M6281, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 02082018 | 01242018 | 01292018 | RMC01 | MEDIUM REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 12112017 | 2017-12-11T11:32:38+00:00 |  | 000074354-01 | Jefferey | Sensabaugh | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 02082018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12092017 | 01092018 | Standard |  |  | 2017-12-09 | 31 DAYS @ $520.00 (VENT)= $16120.00 IV UNASYN PER INVOICE= $418.07 (corrected with 2 add. doses @ $6.55/ea.) TOTAL: $16538.07 | 0 | 2018-01-09 |  | 2018-01-23 | 2018-01-23 | 31 | 31 | 16538.07 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211097 | T3110 | Burns of 10-19% of body surfc w 0% to 9% third degree burns | ICD10 | 02082018 | 12092017 | 01092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 32 | Revenue | RV |  |  |  | 3.0 |
| 12182017 | 2017-12-18T16:26:27+00:00 |  | 000093439-01 | Archie | Hall | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12162017 | 01172018 | Standard |  |  | 2017-12-16 | 17/RVC01=$6,706.19 PER DIEM RATE OF $200.00/DAY X 12 DAYS=$2400.00 TOTAL PAYMENT=$9,106.19 | 0 | 2018-01-17 |  | 2018-02-07 | 2018-02-07 | 32 | 32 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219067 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 02082018 | 12162017 | 01172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9106 | 9106 | Approved Skilled | 33 | Revenue | RV |  |  |  | 2.0 |
| 01152018 | 2018-01-15T11:32:14+00:00 |  | 000120717-01 | Wanda | Smith | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 02082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01122018 | 02082018 | Standard |  |  | 2018-01-12 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 7 SNF Days = $1,400.00 Total Payment: $6,811.86 | 0 | 2018-02-08 | 2018-02-08 | 2018-02-08 | 2018-02-08 | 27 | 27 | 6811.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115118 | R296, S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 02082018 | 01122018 | 02082018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6811 | 6811 | Approved | 28 | Revenue | RV |  |  |  | 7.0 |
| 01182018 | 2018-01-18T16:27:07+00:00 |  | 000109099-01 | Carl | Pearson | CLYO INTERNAL MEDICINE | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 02082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01172018 | 01292018 | Standard |  |  | 2018-01-17 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 19 | 2018-01-29 |  | 2018-02-07 |  | 12 | 31 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119029 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 02082018 | 01172018 | 01292018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01222018 | 2018-01-22T13:09:35+00:00 |  | 000108511-01 | John | Gallagher | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 02082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01192018 | 01312018 | Standard |  |  | 2018-01-19 | 16/RVA01=$2,689.71 | 16 | 2018-01-31 |  | 2018-02-08 | 2018-02-01 | 12 | 28 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122111 | R451 | Restlessness and agitation | ICD10 | 02082018 | 01192018 | 01312018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01222018 | 2018-01-22T14:44:21+00:00 |  | 000076881-01 | Opal | Tomak | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 02082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01192018 | 02072018 | Standard |  |  | 2018-01-19 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2018-02-07 |  | 2018-02-08 | 2018-02-08 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122143 | S72142D, S72142S | Displaced intertrochanteric fracture of left femur, sequela | ICD10 | 02082018 | 01192018 | 02072018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01252018 | 2018-01-25T12:20:17+00:00 |  | 000012055-01 | CHARLES | KING | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01232018 | 02072018 | Standard |  |  | 2018-01-23 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-02-07 |  | 2018-02-08 | 2018-02-08 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125069 | E860, J09X2, N179, R269 | Unspecified abnormalities of gait and mobility | ICD10 | 02082018 | 01232018 | 02072018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 01252018 | 2018-01-25T17:45:51+00:00 |  | 000014426-01 | HAROLD | CAIN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01232018 | 02032018 | Standard |  |  | 2018-01-23 | 17/RUB01=$5,813.99 | 19 | 2018-02-03 |  | 2018-02-07 | 2018-02-07 | 11 | 30 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126023 | K625 | Hemorrhage of anus and rectum | ICD10 | 02082018 | 01232018 | 02032018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 02022018 | 2018-02-02T14:15:39+00:00 |  | 000097232-01 | Gladys | Huffman | SOUTHERN OHIO MED INC | 931426 | SABIR M | QURAISHI | 1427082841 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 928906 | 1811988009 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 1811988009 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ADAMS COUNTY REGIONAL MEDICAL CENTER | 02082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02082018 | Standard |  |  | 2018-02-02 | Swing Bed $200.00/day (Per Contract) x 6 Days = $1,200.00 | 12 | 2018-02-08 |  |  | 2018-02-08 | 6 | 18 | 1200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202055 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 02082018 | 02022018 | 02082018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved | 7 | Revenue | RV |  |  |  | 6.0 |
| 02072018 | 2018-02-07T14:21:09+00:00 |  | 000111065-01 | Joseph | Sawyer | HOSPICE OF CENTRAL OHIO | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10232017 | 10242017 | Standard |  |  | 2017-10-23 | 1 DAY @ $250.00= $250.00 | 0 | 2017-10-24 |  |  |  | 1 | 1 | 250.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208001 | I10, I2510, J209, J441, J9621, R1312, R41841 | Cognitive communication deficit | ICD10 | 02082018 | 10232017 | 10242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 250 | 250 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 12292017 | 2017-12-29T11:21:46+00:00 |  | 000080748-01 | Troy | Wilson | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 02082018 | Denied | MediGold Southeast OH Essential Care | Fax | Requested Medical Documentation Not Received | Inpatient | 02082018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171229048 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 02082018 | 12282017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 01102018 | 2018-01-10T16:11:07+00:00 |  | 000076808-01 | Elmer | Blankenship | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 02082018 | Denied | MediGold Southeast OH Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 02082018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A180110108 | J189, M6250, Z452 | Encounter for adjustment and management of VAD | ICD10 | 02082018 | 01082018 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 01102018 | 2018-01-10T17:15:32+00:00 |  | 000116154-01 | Joan | Kunz | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01082018 | 01172018 | Standard |  |  | 2018-01-08 | 17/RUB01=$5,411.86 | 0 | 2018-01-17 |  | 2018-02-09 | 2018-02-09 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111030 | S42201D | Unsp fx upper end of r humerus, subs for fx w routn heal | ICD10 | 02082018 | 01082018 | 01172018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 01112018 | 2018-01-11T16:59:21+00:00 |  | 000090693-01 | Raymond | Funk | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 02082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01102018 | 02092018 | Standard |  |  | 2018-01-10 | 16/RUC01= $7333.11 10 DAYS @ $250.00= $2000.00 TOTAL: $9333.11 | 0 | 2018-02-09 |  | 2018-02-08 | 2018-02-07 | 30 | 30 | 9333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112005 | R296 | Repeated falls | ICD10 | 02082018 | 01102018 | 02092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9533 | 9533 | Approved | 31 | Revenue | RV |  |  |  | 3.0 |
| 01152018 | 2018-01-15T17:33:19+00:00 |  | 000000766-01 | NORMA JEAN | FETTY | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01132018 | 02052018 | Standard |  |  | 2018-01-13 | 16/RUB01= $4429.71 | 0 | 2018-02-05 |  | 2018-02-01 | 2018-02-02 | 23 | 23 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116013 | N3000 | Acute cystitis without hematuria | ICD10 | 02082018 | 01132018 | 02052018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 01222018 | 2018-01-22T13:53:04+00:00 |  | 000020879-01 | MARGARETTEM | MCDANIEL | CANYON MEDICAL CENTER | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN NEW ALBANY LLC | 944058 | 1407262165 | OTTERBEIN NEW ALBANY LLC | 1407262165 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN NEW ALBANY LLC | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01182018 | 01312018 | Standard |  |  | 2018-01-18 | 13 days @ $250.00= $3250.00 Vancomycin 2 doses (per invoices provided)= $81.62 Ceftriaxone 1 dose (per invoices provided) = $81.60 Total: $3413.22 Pays IV antibiotic medications only | 0 | 2018-01-31 |  | 2018-02-01 | 2018-02-07 | 13 | 13 | 3413.22 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122117 | N390, R6521 | Severe sepsis with septic shock | ICD10 | 02082018 | 01182018 | 01312018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3413 | 3413 | Approved | 14 | Revenue | RV |  |  |  | 13.0 |
| 01222018 | 2018-01-22T15:14:35+00:00 |  | 000045553-01 | Ronald | Young | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 02082018 | Standard |  |  | 2018-01-19 | Per MDS: 17/RHA01 = $2812.08 | 0 | 2018-02-08 |  | 2018-02-08 | 2018-02-08 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122146 | I5022 | Chronic systolic (congestive) heart failure | ICD10 | 02082018 | 01192018 | 02082018 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
