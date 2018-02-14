Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-12_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-12_SNF
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
| 01152018 | 2018-01-15T11:38:31+00:00 |  | 000023074-01 | Shirley | Keefe | PAUL E HARRIS JR DO INC | 905253 | PAUL E | HARRIS III | 1467679365 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 02122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 02092018 | Standard |  |  | 2018-01-11 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $200.00/day x 3 SNF Days = $600.00 Total Payment: $6,413.99 | 0 | 2018-02-09 | 2018-02-09 | 2018-02-09 | 2018-02-09 | 23 | 23 | 6413.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115119 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02122018 | 01112018 | 02092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6413 | 6413 | Approved | 30 | Revenue | RV |  |  |  | 3.0 |
| 01292018 | 2018-01-29T09:51:42+00:00 |  | 000028829-01 | JOHN | JOHNSON | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 02122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02092018 | Standard |  |  | 2018-01-26 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-02-09 |  | 2018-02-05 | 2018-02-09 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129075 | A419, C799, E119, I4891, J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 02122018 | 01262018 | 02092018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01042018 | 2018-01-04T10:23:37+00:00 |  | 000110406-01 | Irene | Miller | JEFFREY J HAGGENJOS | 916460 | JEFFREY J | HAGGENJOS | 1417940172 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 02122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 01022018 | 02092018 | Standard |  |  | 2018-01-02 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/days x 18 days = $4500.00 TOTAL PAYMENT = $10,806.19 | 0 | 2018-02-09 | 2018-02-06 | 2018-02-12 | 2018-02-12 | 38 | 38 | $10.806.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104084 | E860, J209, R4182, R531 | Weakness | ICD10 | 02122018 | 01022018 | 02092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 39 | Revenue | RV |  |  |  | 4.0 |
| 01052018 | 2018-01-05T13:52:31+00:00 |  | 000018527-01 | RICHARD | SAMPSON | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 02122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 02092018 | Standard |  |  | 2018-01-04 | 16/RUC01=7,333.11 PER DIEM RATE OF $250.00/DAY X 14 DAYS=$3500.00 TOTAL PAYMENT TO FACILITY=$10,833.11 *NO AUTH AFTER 2/6/18 | 0 | 2018-02-09 |  | 2018-02-09 | 2018-02-09 | 34 | 36 | 10833.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105077 | I69351 | Hemiplga following cerebral infrc aff right dominant side | ICD10 | 02122018 | 01042018 | 02092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 37 | Revenue | RV |  |  |  | 2.0 |
| 01102018 | 2018-01-10T19:34:27+00:00 |  | 000083094-01 | Rose | Heslin | CLINICAL CARE CONSULTANT | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01092018 | 01252018 | Standard |  |  | 2018-01-09 | 17/RUA01=$3,214.76 | 0 | 2018-01-25 |  | 2018-02-07 | 2018-02-07 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111052 | Z471 | Aftercare following joint replacement surgery | ICD10 | 02122018 | 01092018 | 01252018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 01312018 | 2018-01-31T12:42:30+00:00 |  | 000056891-01 | JAMES | DOWELL | HOCKING VALLEY HSPISTS I | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01302018 | 02102018 | Standard |  |  | 2018-01-30 | 16/RVC01= $3539.19 | 0 | 2018-02-10 |  | 2018-02-12 | 2018-02-12 | 11 | 11 | 3539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131099 | I5033, N390 | Urinary tract infection, site not specified | ICD10 | 02122018 | 01302018 | 02102018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01112018 | 2018-01-11T12:25:23+00:00 |  | 000066350-01 | ISABELLE | BUONI | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 02122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01092018 | 01232018 | Standard |  |  | 2018-01-09 | 16/RUB01=$4,429.71 | 0 | 2018-01-23 |  | 2018-02-09 | 2018-01-16 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111073 | N179 | Acute kidney failure, unspecified | ICD10 | 02122018 | 01092018 | 01232018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01152018 | 2018-01-15T18:49:36+00:00 |  | 000041142-01 | BEVERLY | YOUNKIN | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 02032018 | Standard |  |  | 2018-01-11 | 17/RUA01=$3,214.76 | 18 | 2018-02-03 |  | 2018-02-08 | 2018-01-31 | 20 | 40 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116026 | Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 02122018 | 01112018 | 02032018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 24 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 01222018 | 2018-01-22T17:08:55+00:00 |  | 000094126-01 | Timothy | Swinney | HEARTLAND WOODRIDGE OF F | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 02122018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 01192018 | 01272018 | Standard |  |  | 2018-01-19 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-01-27 |  | 2018-02-09 | 2018-02-09 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123006 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 02122018 | 01192018 | 01272018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 01232018 | 2018-01-23T15:48:23+00:00 |  | 000083583-01 | Frances | Gentry | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01222018 | 02042018 | Standard |  |  | 2018-01-22 | Contract/RUG: 17/RUB (Per MDS ) = $5,813.99 | 0 | 2018-02-04 | 2018-02-07 | 2018-02-07 | 2018-02-07 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123094 | S82841D | Displ bimalleol fx r low leg, subs for clos fx w routn heal | ICD10 | 02122018 | 01222018 | 02042018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01292018 | 2018-01-29T13:46:06+00:00 |  | 000059382-01 | EUGENE | GERHART | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 02122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02102018 | Standard |  |  | 2018-01-26 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-02-10 | 2018-02-12 | 2018-02-12 | 2018-02-12 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129115 | G20, G9341, I10, M62838, R296, R42 | Dizziness and giddiness | ICD10 | 02122018 | 01262018 | 02102018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 02062018 | 2018-02-06T15:35:26+00:00 |  | 000102049-01 | Georgean | Johnson | HERITAGESPRING HEALTH CA | 929666 | GALINA | KRAYTERMAN | 1235253378 | OTTERBEIN LOVELAND LLC | 949386 | 1780042622 | OTTERBEIN LOVELAND | 1780042622 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN LOVELAND | 02122018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 02032018 | 02082018 | Standard |  |  | 2018-02-03 | 5 NONSKILLED DAYS @ $200.00= $1000.00 | 0 | 2018-02-08 |  |  |  | 5 | 0 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207010 | M89522 | Osteolysis, left upper arm | ICD10 | 02122018 | 02032018 | 02082018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 6 | Revenue | RV |  |  |  | 5.0 |
| 02072018 | 2018-02-07T14:46:00+00:00 |  | 000047880-01 | RALPH | PICKERING | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02122018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02022018 | 02032018 | Standard |  |  | 2018-02-02 | 1 DAY @ $250.00 | 0 | 2018-02-03 |  |  |  | 1 | 1 | 250.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207080 | F0390, I776, M6281, N183, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 02122018 | 02022018 | 02032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 250 | 250 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
