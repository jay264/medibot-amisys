Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-31_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-31_SNF
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
| 06052017 | 2017-06-05T17:54:26+00:00 |  | 000083623-01 | Paul | Dailey | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | MOUNT VERNON HEALTH & REHABILITATION | 942063 | 1962892661 | MOUNT VERNON HEALTH & REHABILITATION | 1962892661 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOUNT VERNON HEALTH & REHABILITATION | 07312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06022017 | 07222017 | Standard |  |  | 2017-06-02 | 17/RVB01=$5411.86 31 DAYS @ $200.00=$6200.00 TOTAL: $11611.86 | 49 | 2017-07-23 |  | 2017-07-26 | 2017-07-26 | 51 | 100 | 11611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606052 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 07312017 | 06022017 | 07232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 51 | Revenue | RV |  |  |  | 12.0 |
| 06122017 | 2017-06-12T13:55:40+00:00 |  | 000058306-01 | DARLA | NELSON | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 07312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06092017 | 07202017 | Standard |  |  | 2017-06-09 | 16/RHC01=$3133.29 22 DAYS @ $200.00=$4400.00 TOTAL: $7533.29 | 0 | 2017-07-20 |  | 2017-07-31 | 2017-07-31 | 42 | 42 | 7533.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612110 | J189, R531 | Weakness | ICD10 | 07312017 | 06092017 | 07212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 42 | Revenue | RV |  |  |  | 7.0 |
| 06232017 | 2017-06-23T18:22:40+00:00 |  | 000099620-01 | Emma | Werneske | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 07312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06222017 | 07042017 | Standard |  |  | 2017-06-22 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-07-05 |  | 2017-07-30 | 2017-07-30 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626002 | N179 | Acute kidney failure, unspecified | ICD10 | 07312017 | 06222017 | 07052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06272017 | 2017-06-27T13:58:56+00:00 |  | 000096382-01 | Robert | Mount | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 07312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06272017 | 07282017 | Standard |  |  | 2017-06-27 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $250.00/day x 12 SNF Days = $3,000.00 Total Payment: $6,350.20 | 16 | 2017-07-29 | 2017-07-26 | 2017-07-31 | 2017-07-31 | 32 | 48 | 6350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627106 | M6281, R4182 | Altered mental status, unspecified | ICD10 | 07312017 | 06272017 | 07292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6350 | 6350 | Approved | 32 | Revenue | RV |  |  |  | 4.0 |
| 07032017 | 2017-07-03T16:17:48+00:00 |  | 000088069-01 | Katherine | Davis | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 07312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06302017 | 07132017 | Standard |  |  | 2017-06-30 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-07-14 |  | 2017-07-30 | 2017-07-30 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705019 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 07312017 | 06302017 | 07142017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 07042017 | 2017-07-04T10:30:00+00:00 |  | 000099889-01 | Mary | Schroeder | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 07312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06302017 | 07202017 | Standard |  |  | 2017-06-30 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-07-21 |  | 2017-07-27 | 2017-07-27 | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705041 | S73004A | Unspecified dislocation of right hip, initial encounter | ICD10 | 07312017 | 06302017 | 07212017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 07062017 | 2017-07-06T18:51:26+00:00 |  | 000048446-01 | PATRICIA | WILLIAMS | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 07312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07032017 | 07042017 | Standard |  |  | 2017-07-03 | Per Diem $200.00/day x 2 SNF Days = $400.00 | 0 | 2017-07-05 |  |  | 2017-07-28 | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707002 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 07312017 | 07032017 | 07052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
| 07072017 | 2017-07-07T13:33:24+00:00 |  | 000052582-01 | BEVERLY | MARRIOTT | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 07312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07052017 | 07242017 | Standard |  |  | 2017-07-05 | 16/RUC01=$7333.11 | 0 | 2017-07-24 |  | 2017-07-31 | 2017-07-31 | 20 | 20 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707061 | F061, G9340, I5032, N183, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 07312017 | 07052017 | 07252017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07102017 | 2017-07-10T13:52:44+00:00 |  | 000009280-01 | THEOLA | WAFE | CEN OHIO GERIATRICS LLC | 930346 | PAUL | WEIGAND | 1013959196 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 07312017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 07072017 | 07272017 | Standard |  |  | 2017-07-07 | 17/RVB01=$5411.86 | 0 | 2017-07-28 |  | 2017-07-28 | 2017-07-28 | 18 | 18 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710117 | I5022 | Chronic systolic (congestive) heart failure | ICD10 | 07312017 | 07072017 | 07282017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07132017 | 2017-07-13T15:00:32+00:00 |  | 000076271-01 | Betty | Jenkins | LICKING MEM HEART CTR | 937200 | IMTIAZ | AHMED | 1407916505 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 07312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07122017 | 07202017 | Standard |  |  | 2017-07-12 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2017-07-21 |  | 2017-07-25 | 2017-07-25 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713064 | Z96642 | Presence of left artificial hip joint | ICD10 | 07312017 | 07122017 | 07212017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07142017 | 2017-07-14T14:40:55+00:00 |  | 000077415-01 | DOROTHY | MARTIN | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 07312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07122017 | 07272017 | Standard |  |  | 2017-07-12 | 16/RUA01=$3214.75 | 0 | 2017-07-27 |  | 2017-07-31 | 2017-07-31 | 16 | 16 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714068 | A047, R531 | Weakness | ICD10 | 07312017 | 07122017 | 07282017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 07172017 | 2017-07-17T13:22:46+00:00 |  | 000071283-01 | Joseph | Pratt | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 07312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07162017 | 07292017 | Standard |  |  | 2017-07-16 | swing bed daily rate x 14 days | 0 | 2017-07-30 |  |  | 2017-07-27 | 14 | 14 | swing bed daily rate x 14 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717076 | J189, R5381 | Other malaise | ICD10 | 07312017 | 07162017 | 07302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 14 | Revenue | RV |  |  |  | 2.0 |
| 07172017 | 2017-07-17T18:00:32+00:00 |  | 000083266-01 | Ronald | Dewert | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 07312017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 07132017 | 07202017 | Standard |  |  | 2017-07-13 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-07-21 |  | 2017-07-30 | 2017-07-30 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718104 | G9340 | Encephalopathy, unspecified | ICD10 | 07312017 | 07132017 | 07212017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07182017 | 2017-07-18T13:22:50+00:00 |  | 000079578-01 | Martha | Brown | JS AESTHETICS | 906812 | JODI I | SPERBER | 1770569741 | PATRIOT RIDGE COMMUNITY | 913103 | 1528041647 | PATRIOT RIDGE COMMUNITY | 1528041647 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATRIOT RIDGE COMMUNITY | 07312017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07172017 | 07202017 | Standard |  |  | 2017-07-17 | Contract/RUG: 16/HD1 (Per MDS) = $3,681.73 | 0 | 2017-07-21 |  | 2017-07-26 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718128 | I2510, I509 | Heart failure, unspecified | ICD10 | 07312017 | 07172017 | 07212017 | HD101 | SPECIAL CARE HIGH , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 4 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 07182017 | 2017-07-18T16:18:19+00:00 |  | 000018994-01 | ANDREA | LONGWELL | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | SCIOTO RETIREMENT COMMUNITY | 902185 | 1205823770 | SCIOTO RETIREMENT COMMUNITY | 1205823770 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 07312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07192017 | 07192017 | Standard |  |  | 2017-07-19 | Per Diem $200.00/day x 1 SNF Day = $200.00 | 0 | 2017-07-20 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719039 | R6889 | Other general symptoms and signs | ICD10 | 07312017 | 07192017 | 07202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
| 07182017 | 2017-07-18T16:22:28+00:00 |  | 000083957-01 | Jerry | Thompson | GERIATRIC PROVIDERS AND | 945374 | ANISHA | SINGH | 1881718989 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 07312017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 07112017 | 07252017 | Standard |  |  | 2017-07-11 | Per Diem $200.00/day x 15 SNF Days = $3,000.00 | 85 | 2017-07-26 |  |  |  | 15 | 100 | 3000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719041 | L03115, L03116 | Cellulitis of left lower limb | ICD10 | 07312017 | 07112017 | 07262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3000 | 3000 | Approved | 15 | Revenue | RV |  |  |  | 15.0 |
| 07192017 | 2017-07-19T13:20:52+00:00 |  | 000008318-01 | WILLIAM | ZWEYDORFF | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 07312017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07182017 | 07232017 | Standard |  |  | 2017-07-18 | 16/CB101=$2865.25 | 0 | 2017-07-23 |  | 2017-07-27 | 2017-07-27 | 6 | 6 | 2865.25 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719089 | J159, M6281 | Muscle weakness (generalized) | ICD10 | 07312017 | 07182017 | 07242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 6 | Revenue | RV |  |  |  | 6.0 |
| 07202017 | 2017-07-20T17:35:42+00:00 |  | 000077430-01 | Arlis | Wall | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 07312017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 07182017 | 07222017 | Standard |  |  | 2017-07-18 | Contract/RUG: 17/RMC (Per MDS) = $3,027.33 | 0 | 2017-07-23 |  | 2017-07-30 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721038 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 07312017 | 07182017 | 07232017 | RMC01 | MEDIUM REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 07282017 | 2017-07-28T11:45:14+00:00 |  | 000091288-01 | M Jane | Ludman | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 07312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07262017 | 07262017 | Standard |  |  | 2017-07-26 | 1 DAY @ $200.00= $200.00 | 0 | 2017-07-27 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728038 | D62 | Acute posthemorrhagic anemia | ICD10 | 07312017 | 07262017 | 07272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
