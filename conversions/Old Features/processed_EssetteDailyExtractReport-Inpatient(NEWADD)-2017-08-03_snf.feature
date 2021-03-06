Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-03_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-03_SNF
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
| 08012017 | 2017-08-01T12:15:49+00:00 |  | 000097674-01 | Rose | Hazelbaker | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 08032017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07182017 | 07182017 | Standard |  |  | 2017-07-18 | Per Diem $200.00/day x 1 SNF Day = $200.00 | 4 | 2017-07-19 |  | 2017-08-01 |  | 1 | 5 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801126 | R6889 | Other general symptoms and signs | ICD10 | 08032017 | 07182017 | 07192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
| 07242017 | 2017-07-24T13:50:15+00:00 |  | 000028784-01 | BEVERLY | BROKAW | SOUND PHYSICIANS OF OHI | 917840 | JIGNA N | JANANI | 1023278413 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07232017 | 08012017 | Standard |  |  | 2017-07-23 | 17/RUB01=$ | 0 | 2017-08-01 |  | 2017-08-02 | 2017-08-02 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724108 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08032017 | 07232017 | 08012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07202017 | 2017-07-20T16:24:23+00:00 |  | 000022371-01 | MARY | JENKINS | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | GUARDIAN ELDER CARE OF COLS | 923938 | 1386994671 | GUARDIAN ELDER CARE OF COLS | 1386994671 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GUARDIAN ELDER CARE OF COLS | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07192017 | 07252017 | Standard |  |  | 2017-07-19 | 17/RMA01=$2,477.40 | 0 | 2017-07-25 |  | 2017-07-28 | 2017-07-28 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721005 | N390 | Urinary tract infection, site not specified | ICD10 | 08032017 | 07192017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05222017 | 2017-05-22T15:49:33+00:00 |  | 000103505-01 | ANDREW | HOLUPKA | COPC CENTRAL OHIO PRIMAR | 936191 | TIMOTHY S | COSS | 1720071699 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 08032017 | Denied | MediGold Essential Care | Fax | Requested Medical Documentation Not Received | Inpatient | 08032017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170522128 | M86571, S98131A | Complete traumatic amputation of one right lesser toe, init | ICD10 | 08032017 | 05222017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 07312017 | 2017-07-31T13:51:48+00:00 |  | 000080577-01 | Vera | Clark | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | CAMBRIDGE CARE & REHAB | 951200 | 1578003570 | CAMBRIDGE CARE & REHAB | 1578003570 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CAMBRIDGE CARE & REHAB | 08032017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07282017 | 08032017 | Standard |  |  | 2017-07-28 | 7 NONSKILLED DAYS@ $200.00=$1400.00 | 0 | 2017-08-04 |  |  |  | 7 | 7 | 1400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731110 | G20, I480, I495, M6281, Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 08032017 | 07282017 | 08042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved | 7 | Revenue | RV |  |  |  | 7.0 |
| 05092017 | 2017-05-09T10:50:04+00:00 |  | 000072204-01 | John | Slagle | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05052017 | 07212017 | Standard |  |  | 2017-05-05 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00 x 36 days = $9000.00 Per Diem: $200.00 x 22 days = $4400.00 TOTAL PAYMENT = $19,449.81 | 22 | 2017-07-22 |  | 2017-08-01 |  | 78 | 100 | 19449.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510039 | G8192, I639, R1312, R41841 | Cognitive communication deficit | ICD10 | 08032017 | 05052017 | 07222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 78 | Revenue | RV |  |  |  | 12.0 |
| 07132017 | 2017-07-13T12:14:39+00:00 |  | 000083739-01 | Betty | Baxter | PIKE MED & SURG ASSOC | 935928 | ELLIS | FRAZIER | 1245228196 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07122017 | 07242017 | Standard |  |  | 2017-07-12 | Per Diem: $250.00/day x 13 days = $3250.00 TOTAL PAYMENT = $3250.00 | 87 | 2017-07-25 |  |  |  | 13 | 100 | 3250.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713046 | E875, R071 | Chest pain on breathing | ICD10 | 08032017 | 07122017 | 07252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3250 | 3250 | Approved | 13 | Revenue | RV |  |  |  | 13.0 |
| 07102017 | 2017-07-10T15:40:24+00:00 |  | 000034547-01 | BETTY | JEFFERS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07272017 | Standard |  |  | 2017-07-07 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-07-28 | 2017-07-25 | 2017-08-01 | 2017-07-25 | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710137 | I5023, N186 | End stage renal disease | ICD10 | 08032017 | 07072017 | 07282017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 07102017 | 2017-07-10T14:46:04+00:00 |  | 000066862-01 | MARILYN | PHILLIPS | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07302017 | Standard |  |  | 2017-07-07 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-07-31 | 2017-08-28 | 2017-08-01 | 2017-08-01 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710127 | F0390, G309 | Alzheimer's disease, unspecified | ICD10 | 08032017 | 07072017 | 07312017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 07312017 | 2017-07-31T13:11:28+00:00 |  | 000082896-01 | Helen | Sharp | ADENA MEDICAL GROUP LLC | 906142 | RICHARD D | MIZER | 1811977788 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 08032017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07282017 | 08012017 | Standard |  |  | 2017-07-28 | Swing Bed daily rate x 5 days | 0 | 2017-08-02 |  |  | 2017-07-31 | 5 | 5 | Swing Bed daily rate x 5 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731106 | M4326 | Fusion of spine, lumbar region | ICD10 | 08032017 | 07282017 | 08022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
| 05252017 | 2017-05-25T15:59:30+00:00 |  | 000052594-01 | DONALD | MEADE | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08032017 | 08102017 | Standard |  |  | 2017-05-24 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-06-09 |  | 2017-05-31 | 2017-06-08 | 16 | 16 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526003 | C799, E119, E785, I10, I639 | Cerebral infarction, unspecified | ICD10 | 08032017 | 05242017 | 06092017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 07102017 | 2017-07-10T15:35:15+00:00 |  | 000085766-01 | Richard | Boyer | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 08032017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07072017 | 07292017 | Standard |  |  | 2017-07-07 | Per MDS: 17/RUB01 = $5813.99 | 19 | 2017-07-30 | 2017-07-27 | 2017-08-01 | 2017-08-03 | 23 | 42 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710135 | A4189, Z5189 | Encounter for other specified aftercare | ICD10 | 08032017 | 07072017 | 07302017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 06132017 | 2017-06-13T15:36:33+00:00 |  | 000072252-01 | KATHLEEN | BAUGHN | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06092017 | 07242017 | Standard |  |  | 2017-06-09 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $200.00/day x 22 days = $4400.00 IV Vancomycin x 8 doses (per invoice) = $493.48 TOTAL PAYMENT = $10,305.34 | 0 | 2017-07-25 |  | 2017-08-02 | 2017-08-02 | 42 | 42 | 10305.34 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613074 | S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 08032017 | 06092017 | 07252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 4.0 |
| 07312017 | 2017-07-31T07:46:18+00:00 |  | 000076896-01 | Richard | Sohrenssen | LANFAIR CTR FOR REHAB & | 939399 |  | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Pre-Service | PRE |  | LANFAIR CTR FOR REHAB & NURSING CARE | 08032017 | Denied | MediGold Essential Care | Fax | Not Medically Necessary | Inpatient | 08032017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170731016 | S42009A | Fracture of unsp part of unsp clavicle, init for clos fx | ICD10 | 08032017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 06282017 | 2017-06-28T14:13:28+00:00 |  | 000112038-01 | Jane | Thorne | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 08032017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06272017 | 07112017 | Standard |  |  | 2017-06-27 | 16/RVB01=$3,350.20 PAID PER 14 DAY AS ONE TIME EXCEPTION | 0 | 2017-07-11 |  | 2017-08-03 | 2017-08-03 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628069 | M6281 | Muscle weakness (generalized) | ICD10 | 08032017 | 06272017 | 07112017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 07182017 | 2017-07-18T12:43:18+00:00 |  | 000015901-01 | VELMA | WILLIAMS | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07152017 | 07252017 | Standard |  |  | 2017-07-15 | 17/RUB01=$5,813.99 | 0 | 2017-07-25 |  | 2017-08-02 | 2017-08-02 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718124 | N318, N390 | Urinary tract infection, site not specified | ICD10 | 08032017 | 07152017 | 07252017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 06302017 | 2017-06-30T15:46:01+00:00 |  | 000090260-01 | Rose | Lawson | CHS MIAMI VALLEY INC | 900871 |  | CHS MIAMI VALLEY INC | 1942284138 | CHS MIAMI VALLEY INC | 900871 | 1942284138 | CHS MIAMI VALLEY INC | 1942284138 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS MIAMI VALLEY INC | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06302017 | 07192017 | Standard |  |  | 2017-06-30 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2017-07-20 |  | 2017-08-03 | 2017-07-20 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630070 | S329XXS, Z96641 | Presence of right artificial hip joint | ICD10 | 08032017 | 06302017 | 07202017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07252017 | 2017-07-25T13:07:48+00:00 |  | 000008670-01 | EILEEN | PETERSEN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07242017 | 07292017 | Standard |  |  | 2017-07-24 | 16/CC201=$3,548.43 | 0 | 2017-07-29 |  | 2017-08-03 | 2017-08-03 | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725097 | J189 | Pneumonia, unspecified organism | ICD10 | 08032017 | 07242017 | 07292017 | CC201 | CLINICALLY COMPLEX , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 0 | 1 |  | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 07172017 | 2017-07-17T14:29:35+00:00 |  | 000015216-01 | MINNIE | BRONSON | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07122017 | 07282017 | Standard |  |  | 2017-07-12 | 17/RUB01=$5,813.99 | 13 | 2017-07-28 |  | 2017-08-03 | 2017-08-03 | 16 | 29 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717113 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 08032017 | 07122017 | 07282017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 06022017 | 2017-06-02T14:00:57+00:00 |  | 000099846-01 | Alice | Peak | MERCY HEALTH PHYSICIANS | 921296 | PRASAD G | CHANDRA | 1063468312 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 08032017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 06012017 | 08012017 | Standard |  |  | 2017-06-01 | Contract/RUG: 16/RVC (Per MDS) = 3,539.19 Per Diem $200.00/day x 42 SNF Days = $8,400.00 Total Payment: $11,939.19 | 0 | 2017-08-02 |  | 2017-08-03 | 2017-08-03 | 62 | 62 | 11939.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602068 | S72301D | Unsp fx shaft of right femur, subs for clos fx w routn heal | ICD10 | 08032017 | 06012017 | 08022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 62 | Revenue | RV |  |  |  | 12.0 |
| 07032017 | 2017-07-03T09:29:20+00:00 |  | 000072736-01 | Marjory | Hillis | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06302017 | 07132017 | Standard |  |  | 2017-06-30 | 17/RVA01=$3,586.28 | 0 | 2017-07-13 |  | 2017-07-25 | 2017-07-25 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703039 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 08032017 | 06302017 | 07132017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06282017 | 2017-06-28T14:18:04+00:00 |  | 000060665-01 | SARAH | COLLINS | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06242017 | 07212017 | Standard |  |  | 2017-06-24 | Contract/RUG: 16/RVB (Per MDS) =$3,350.20 | 21 | 2017-07-22 |  | 2017-08-03 | 2017-07-31 | 28 | 49 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628072 | R531 | Weakness | ICD10 | 08032017 | 06242017 | 07222017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 28 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06202017 | 2017-06-20T12:15:47+00:00 |  | 000079604-01 | Patricia | Gram | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 08032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06192017 | 08022017 | Standard |  |  | 2017-06-19 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem $250.00/day x 23 SNF Days = $5,750.00 Per Diem $200.00/day x 2 SNF Days = $400.00 Total: $12,199.81 | 55 | 2017-08-03 |  | 2017-08-03 |  | 45 | 100 | 12199.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620097 | J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 08032017 | 06192017 | 08032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 45 | Revenue | RV |  |  |  | 3.0 |
