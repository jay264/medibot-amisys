Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-09_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-09_SNF
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
| 06022017 | 2017-06-02T12:25:05+00:00 |  | 000066495-01 | ELLEN | VAUGHN | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06012017 | 06112017 | Standard |  |  | 2017-06-01 | 16/RVC01=$3,539.19 | 20 | 2017-06-12 |  | 2017-06-14 | 2017-08-08 | 11 | 31 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602065 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 08092017 | 06012017 | 06122017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 07102017 | 2017-07-10T15:04:05+00:00 |  | 000048840-01 | ROBERT | BLACK | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07082017 | 07252017 | Standard |  |  | 2017-07-08 | PER DIEM OF $200.00/DAY X 17 DAYS=$3,400.00 CARVE OUT FOR IV INVANZ PER INVOICE=$3,626.73 TOTAL FACILITY PAYMENT=$7,026.73 | 0 | 2017-07-25 |  | 2017-08-04 | 2017-08-04 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710131 | I2510, R531 | Weakness | ICD10 | 08092017 | 07082017 | 07252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7026 | 7026 | Approved Skilled | 18 | Revenue | RV |  |  |  | 17.0 |
| 07202017 | 2017-07-20T10:44:58+00:00 |  | 000100445-01 | June | Faust | FCMH MED & SURG ASSOC | 906134 | DAVID J | GUNDERMAN | 1508861246 | HEARTLAND OF HILLSBORO OH LLC | 940121 | 1184666711 | HEARTLAND OF HILLSBORO OH LLC | 1184666711 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF HILLSBORO OH LLC | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07182017 | 08062017 | Standard |  |  | 2017-07-18 | PEr MDS: 17/RUA01 = $3214.76 | 0 | 2017-08-07 | 2017-08-08 | 2017-08-08 | 2017-08-08 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720050 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 08092017 | 07182017 | 08072017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06062017 | 2017-06-06T14:09:30+00:00 |  | 000004042-01 | MARY | FRASHER | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05172017 | 06132017 | Standard |  |  | 2017-05-17 | 17/RUA01=$3,214.76 PER DIEM RATE OF $250.00/DAY X 7 DAYS=$1,700.00 TOTAL FACILITY PAYMENT=$4,964.76 | 0 | 2017-06-13 |  | 2017-08-08 | 2017-08-08 | 27 | 27 | 4964.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607066 | I639 | Cerebral infarction, unspecified | ICD10 | 08092017 | 05172017 | 06132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3214 | 3214 | Approved Skilled | 28 | Revenue | RV |  |  |  | 7.0 |
| 07272017 | 2017-07-27T08:47:05+00:00 |  | 000088560-01 | Carol | Ramsey | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 08092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07252017 | 08042017 | Standard |  |  | 2017-07-25 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-08-05 |  | 2017-08-07 | 2017-08-07 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727046 | G9340, Z5189 | Encounter for other specified aftercare | ICD10 | 08092017 | 07252017 | 08052017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06272017 | 2017-06-27T14:57:03+00:00 |  | 000051677-01 | NORMAN | SMYTH | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06232017 | 08032017 | Standard |  |  | 2017-06-23 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 22 days = $5500.00 TOTAL PAYMENT = $10,911.86 | 0 | 2017-08-04 |  | 2017-08-08 | 2017-08-08 | 42 | 42 | 10911.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628013 | J189 | Pneumonia, unspecified organism | ICD10 | 08092017 | 06232017 | 08042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 42 | Revenue | RV |  |  |  | 4.0 |
| 06082017 | 2017-06-08T16:25:35+00:00 |  | 000010759-01 | MARY | REA | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06062017 | 07062017 | Standard |  |  | 2017-06-06 | 17/RUA01=$3,214.76 PER DIEM OF $200.00/DAY X 7 AUTHORIZED DAYS (LCD PER AUTHORIZATION=7/1/17)=$1,400.00 TOTAL AUTHORIZED PAYMENT=$4,614.76 | 0 | 2017-07-06 |  | 2017-08-08 | 2017-07-03 | 30 | 30 | 4614.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609014 | M549 | Dorsalgia, unspecified | ICD10 | 08092017 | 06062017 | 07062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4614 | 4614 | Approved Skilled | 31 | Revenue | RV |  |  |  | 3.0 |
| 07212017 | 2017-07-21T15:21:22+00:00 |  | 000004095-01 | NORMA | ANDERSEN | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07192017 | 08022017 | Standard |  |  | 2017-07-19 | 16/RHC01=$3,133.29 | 0 | 2017-08-03 |  | 2017-08-08 | 2017-08-08 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721068 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 08092017 | 07192017 | 08032017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 07112017 | 2017-07-11T12:20:25+00:00 |  | 000092292-01 | Rogene | Wokna | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | ST LEONARD HEALTH CARE CENTER | 915994 | 1851387047 | ST LEONARD HEALTH CARE CENTER | 1851387047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST LEONARD HEALTH CARE CENTER | 08092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07102017 | 07302017 | Standard |  |  | 2017-07-10 | Contract/RUG: 17/RHA (Per MDS) = $2,812.08 | 0 | 2017-07-31 |  | 2017-08-08 | 2017-08-08 | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711065 | I10 | Essential (primary) hypertension | ICD10 | 08092017 | 07102017 | 07312017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 07242017 | 2017-07-24T15:44:24+00:00 |  | 000101006-01 | Paulmina | Vetovich | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 08092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07222017 | 08032017 | Standard |  |  | 2017-07-22 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-08-04 |  | 2017-08-08 | 2017-08-08 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725004 | D649, I2699, I509, J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 08092017 | 07222017 | 08042017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 07252017 | 2017-07-25T10:38:30+00:00 |  | 000070297-01 | Jewell | Hinton | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07212017 | 08062017 | Standard |  |  | 2017-07-21 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-08-07 |  | 2017-08-08 | 2017-08-04 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725077 | J439, M6281, R0602 | Shortness of breath | ICD10 | 08092017 | 07212017 | 08072017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 06292017 | 2017-06-29T10:58:52+00:00 |  | 000092299-01 | John | Wokna | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | ST LEONARD HEALTH CARE CENTER | 915994 | 1851387047 | ST LEONARD HEALTH CARE CENTER | 1851387047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST LEONARD HEALTH CARE CENTER | 08092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06292017 | 07062017 | Standard |  |  | 2017-06-29 | Contract/RUG: 17/RHA (Per MDS) = $2,812.08 | 0 | 2017-07-07 |  | 2017-08-08 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629049 | I509, N179 | Acute kidney failure, unspecified | ICD10 | 08092017 | 06292017 | 07072017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 08012017 | 2017-08-01T11:12:58+00:00 |  | 000006796-01 | HERBERT | SHARP | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07252017 | 08072017 | Standard |  |  | 2017-07-25 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-08-08 |  | 2017-08-08 | 2017-08-08 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801104 | G20, I10, I2510, I82409, M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 08092017 | 07252017 | 08082017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 07072017 | 2017-07-07T12:34:57+00:00 |  | 000066373-01 | HOWARD | FRENCH | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 08092017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 07052017 | 07272017 | Standard |  |  | 2017-07-05 | Per MDS: 16/HE101 = $3915.01 | 53 | 2017-07-28 |  | 2017-08-08 | 2017-08-08 | 14 | 67 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707050 | A419, G459, I2510, N189, N390, R296, R531 | Weakness | ICD10 | 08092017 | 07052017 | 07282017 | HE101 | SPECIAL CARE HIGH , ADL INDEX 15-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 07112017 | 2017-07-11T08:44:12+00:00 |  | 000027942-01 | BETTY | WONDERLEIGH | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07092017 | 07312017 | Standard |  |  | 2017-07-09 | Contract/RUG: 16/RHC (Per MDS) = 3,133.29 Per Diem: $200.00/day x 3 SNF Days = $ 600.00 Total: $3,733.29 | 0 | 2017-08-01 |  | 2017-08-01 |  | 23 | 23 | 3733.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711025 | J189, N390 | Urinary tract infection, site not specified | ICD10 | 08092017 | 07092017 | 08012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3733 | 3733 | Approved | 23 | Revenue | RV |  |  |  | 9.0 |
| 07242017 | 2017-07-24T13:09:11+00:00 |  | 000045675-01 | BETTY | EVANS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ARBORS AT DELAWARE | 943309 | 1033517891 | ARBORS AT DELAWARE | 1033517891 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT DELAWARE | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07202017 | 08032017 | Standard |  |  | 2017-07-20 | 17/RUC01=$6049.81 | 26 | 2017-08-04 |  | 2017-08-09 |  | 15 | 41 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724093 | T81710D | Complication of mesent art following a procedure, NEC, subs | ICD10 | 08092017 | 07202017 | 08042017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06052017 | 2017-06-05T12:45:18+00:00 |  | 000052800-01 | WALTER | LINK | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | OTTERBEIN GAHANNA LLC | 943640 | 1437548575 | OTTERBEIN GAHANNA LLC | 1437548575 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN GAHANNA LLC | 08092017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 06072017 | 06262017 | Standard |  |  | 2017-06-07 | OON SCA/RUB01=$5,813.99 | 19 | 2017-06-26 |  | 2017-08-08 | 2017-08-08 | 20 | 39 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605123 | S73005D | Unspecified dislocation of left hip, subsequent encounter | ICD10 | 08092017 | 06072017 | 06262017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06282017 | 2017-06-28T08:35:20+00:00 |  | 000107115-01 | Carolyn | Wonka | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | ST LEONARD HEALTH CARE CENTER | 915994 | 1851387047 | ST LEONARD HEALTH CARE CENTER | 1851387047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST LEONARD HEALTH CARE CENTER | 08092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06302017 | 07172017 | Standard |  |  | 2017-06-30 | Contract/RUG: 17/RVB (per MDS) = $5,411.86 | 0 | 2017-07-18 |  | 2017-08-08 | 2017-08-08 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628056 | S32402A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 08092017 | 06302017 | 07182017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 06292017 | 2017-06-29T13:16:09+00:00 |  | 000016092-01 | ANNE | LOWERY | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 08092017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 06262017 | 07102017 | Standard |  |  | 2017-06-26 | NON-SKILLED RATE OF $200.00/DAY (AUTHORIZED FOR 7 DAYS 6/26/17-7/2/17)=$1,400.00 | 0 | 2017-07-10 |  |  |  | 7 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170629073 | K51811 | Other ulcerative colitis with rectal bleeding | ICD10 | 08092017 | 06262017 | 07102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved Skilled | 15 | Revenue | RV |  |  |  | 7.0 |
| 06202017 | 2017-06-20T10:22:27+00:00 |  | 000011988-01 | ELNORA | BELL | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06162017 | 06262017 | Standard |  |  | 2017-06-16 | PER DIEM RATE OF $200.00/DAY X 10 DAYS=$1,000.00 | 0 | 2017-06-26 |  |  |  | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620083 | N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 08092017 | 06162017 | 06262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved Skilled | 11 | Revenue | RV |  |  |  | 10.0 |
| 07202017 | 2017-07-20T08:58:27+00:00 |  | 000083327-01 | Walter | Harris | WEST PARK CARE CENTER | 947403 |  | WEST PARK CARE CENTER LLC | 1720449788 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07182017 | 08042017 | Standard |  |  | 2017-07-18 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-08-05 | 2017-08-09 | 2017-08-09 | 2017-08-09 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720036 | I63541 | Cereb infrc due to unsp occls or stenos of right cereblr art | ICD10 | 08092017 | 07182017 | 08052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 07242017 | 2017-07-24T15:57:54+00:00 |  | 000075032-01 | Jerome | Knight | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07222017 | 07292017 | Standard |  |  | 2017-07-22 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-07-30 |  | 2017-08-09 | 2017-08-09 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725007 | E1140, I10, M064, M549, R531, Z9181 | History of falling | ICD10 | 08092017 | 07222017 | 07302017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07242017 | 2017-07-24T15:38:46+00:00 |  | 000034027-01 | ROBERT | HOWELLS | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07212017 | 08032017 | Standard |  |  | 2017-07-21 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-08-04 | 2017-08-09 | 2017-08-09 | 2017-08-09 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725003 | M4800 | Spinal stenosis, site unspecified | ICD10 | 08092017 | 07212017 | 08042017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 07312017 | 2017-07-31T11:40:17+00:00 |  | 000015709-01 | GARRY | NEWELL | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07282017 | 08042017 | Standard |  |  | 2017-07-28 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-08-05 | 2017-08-09 | 2017-08-09 | 2017-08-09 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731093 | C946 | Myelodysplastic disease, not classified | ICD10 | 08092017 | 07282017 | 08052017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06262017 | 2017-06-26T14:13:26+00:00 |  | 000006396-01 | Stella | Pickrell | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 08092017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 06232017 | 06302017 | Standard |  |  | 2017-06-23 | non-skilled rate of $200.00/day x 7 days=$1,400.00 | 0 | 2017-06-30 |  |  |  | 7 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170626117 | M1711, R531, Z471 | Aftercare following joint replacement surgery | ICD10 | 08092017 | 06232017 | 06302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved Unskilled | 8 | Revenue | RV |  |  |  | 7.0 |
| 06082017 | 2017-06-08T10:41:15+00:00 |  | 000005242-01 | WINONA | ROBERTS | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06062017 | 08082017 | Standard |  |  | 2017-06-06 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 37 days = $9250.00 Per Diem: $200.00/day x 7 days = $1400.00 TOTAL PAYMENT = $16,061.86 | 20 | 2017-08-09 | 2017-08-09 | 2017-08-09 | 2017-08-09 | 64 | 84 | 10061.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608050 | G8190, I10, I480, I639 | Cerebral infarction, unspecified | ICD10 | 08092017 | 06062017 | 08092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 64 | Revenue | RV |  |  |  | 5.0 |
