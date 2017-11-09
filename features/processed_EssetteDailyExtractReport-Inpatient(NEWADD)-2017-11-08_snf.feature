Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-08_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-08_SNF
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
| 09062017 | 2017-09-06T16:34:45+00:00 |  | 000025507-01 | HELEN | CARVOUR | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | AHF OHIO, INC. | 947789 | 1659733723 | SANCTUARY AT TUTTLE CROSSING | 1659733723 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SANCTUARY AT TUTTLE CROSSING | 11082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09082017 | 10312017 | Standard |  |  | 2017-09-08 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $250.00/Day x 18 SNF Days = $4,500.00 Per Diem $200.00/Day x 11 SNF Days = $2,200.00 Total Payment: $12,513.99 | 0 | 2017-10-31 |  | 2017-10-13 |  | 49 | 49 | 12513.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907027 | I5033, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11082017 | 09082017 | 10312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 54 | Revenue | RV |  |  |  | 7.0 |
| 09282017 | 2017-09-28T12:25:04+00:00 |  | 000103009-01 | Elinor | Holbrook | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 11082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09262017 | 11012017 | Standard |  |  | 2017-09-26 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $250.00/Day x 16 SNF Days = $4,000.00 Total Payment: $10,049.81 | 0 | 2017-11-01 |  | 2017-10-16 | 2017-11-07 | 36 | 36 | 10049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928055 | I639 | Cerebral infarction, unspecified | ICD10 | 11082017 | 09262017 | 11012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 37 | Revenue | RV |  |  |  | 6.0 |
| 09152017 | 2017-09-15T10:30:22+00:00 |  | 000052582-01 | BEVERLY | MARRIOTT | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 11082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09132017 | 10222017 | Standard |  |  | 2017-09-13 | 16/RUB01= $4429.71 19 DAYS @ $250.00= $4750.00 TOTAL: $9179.71 | 20 | 2017-10-22 |  | 2017-11-08 | 2017-11-08 | 39 | 59 | 9179.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915067 | F061, G9340, N390 | Urinary tract infection, site not specified | ICD10 | 11082017 | 09132017 | 10222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9179 | 9179 | Approved | 40 | Revenue | RV |  |  |  | 12.0 |
| 10122017 | 2017-10-12T09:19:39+00:00 |  | 000105713-01 | Thomas | Hall | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 11082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10112017 | 10312017 | Standard |  |  | 2017-10-11 | 17/RVB01=$5,411.86 | 20 | 2017-10-31 |  | 2017-11-07 | 2017-11-07 | 20 | 40 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012009 | E119, S7291XS | Unspecified fracture of right femur, sequela | ICD10 | 11082017 | 10112017 | 10312017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10042017 | 2017-10-04T12:42:39+00:00 |  | 000089104-01 | Harold | Bailey | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 11082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10022017 | 10252017 | Standard |  |  | 2017-10-02 | 1/RMX01= $5832.54 | 0 | 2017-10-25 |  | 2017-11-08 | 2017-11-08 | 23 | 23 | 5832.54 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004068 | J189, N390 | Urinary tract infection, site not specified | ICD10 | 11082017 | 10022017 | 10252017 | RMX01 | MEDIUM REHAB PLUS EXTENSIVE, ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SC | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 10202017 | 2017-10-20T12:43:00+00:00 |  | 000007093-01 | Mildred | Forte | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 11082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10182017 | 11042017 | Standard |  |  | 2017-10-18 | 17/RUB01=$5,813.99 | 0 | 2017-11-04 |  | 2017-11-06 | 2017-11-07 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020063 | R262, Z9181 | History of falling | ICD10 | 11082017 | 10182017 | 11042017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 10122017 | 2017-10-12T10:50:54+00:00 |  | 000092354-01 | Deborah | Dietsch | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 11082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10102017 | 10272017 | Standard |  |  | 2017-10-10 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-10-27 |  | 2017-11-06 | 2017-11-06 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012041 | M6281, R262, Z4789, Z4889 | Encounter for other specified surgical aftercare | ICD10 | 11082017 | 10102017 | 10272017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 10182017 | 2017-10-18T09:00:26+00:00 |  | 000001545-01 | MARY | BAUGHN | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 11082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10132017 | 10262017 | Standard |  |  | 2017-10-13 | 17/RUC01=$6,049.81 | 0 | 2017-10-26 |  | 2017-11-07 | 2017-11-07 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018052 | C4440, K922, Z85118 | Personal history of malignant neoplasm of bronchus and lung | ICD10 | 11082017 | 10132017 | 10262017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10312017 | 2017-10-31T15:21:03+00:00 |  | 000077250-01 | Joyce | Williams | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 11082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10302017 | 11062017 | Standard |  |  | 2017-10-30 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-11-06 |  | 2017-11-07 | 2017-11-07 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031095 | K5669, R2681 | Unsteadiness on feet | ICD10 | 11082017 | 10302017 | 11062017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10302017 | 2017-10-30T13:03:58+00:00 |  | 000010759-01 | MARY | REA | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 11082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10262017 | 10282017 | Standard |  |  | 2017-10-26 | Per Diem $200.00/day x 2 SNF Days = $400.00 | 0 | 2017-10-28 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030110 | S2241XD | Multiple fx of ribs, right side, subs for fx w routn heal | ICD10 | 11082017 | 10262017 | 10282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 10122017 | 2017-10-12T17:18:09+00:00 |  | 000108700-01 | George | Christy | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 11082017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 10112017 | 10232017 | Standard |  |  | 2017-10-11 | Contract/RUG: 17/RVA  (Per MDS) = $3,586.28 | 8 | 2017-10-23 |  | 2017-11-03 | 2017-11-03 | 12 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013017 | I5022 | Chronic systolic (congestive) heart failure | ICD10 | 11082017 | 10112017 | 10232017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 11062017 | 2017-11-06T17:52:11+00:00 |  | 000098265-01 | Gerda | Rivera | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 11082017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 11022017 | 11032017 | Standard |  |  | 2017-11-02 | Per Diem: $200.00/day x 1 SNF Day = $200.00 | 0 | 2017-11-03 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107042 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 11082017 | 11022017 | 11032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 10232017 | 2017-10-23T08:59:23+00:00 |  | 000071228-01 | Alma | White | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 11082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10192017 | 11032017 | Standard |  |  | 2017-10-19 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 19 | 2017-11-03 |  | 2017-11-03 | 2017-11-03 | 15 | 34 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023064 | J189 | Pneumonia, unspecified organism | ICD10 | 11082017 | 10192017 | 11032017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 10202017 | 2017-10-20T14:35:54+00:00 |  | 000100964-01 | Otis | Smith | UNION COUNTY PHYS CORP | 919476 | JOSEPH M | METZ | 1770586984 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 11082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 10192017 | 10252017 | Standard |  |  | 2017-10-19 | Contract/RUG: 16/CB1 (Per MDS) = $2,865.25 | 0 | 2017-10-25 |  | 2017-11-08 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020072 | I6930 | Unspecified sequelae of cerebral infarction | ICD10 | 11082017 | 10192017 | 10252017 | CB101 | CLINICALLY COMPLEX , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 09152017 | 2017-09-15T13:04:36+00:00 |  | 000005588-01 | PAUL | STOVER | WESTLAND FAMILY CARE LLC | 912885 | FAOZAN A | NARVEL | 1215901020 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 11082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09122017 | 10272017 | Standard |  |  | 2017-09-12 | 16/RVB01= $3350.20 25 DAYS @ $200.00= $5000.00 TOTAL: $8350.20 | 0 | 2017-10-27 | 2017-11-08 | 2017-10-03 | 2017-10-30 | 45 | 45 | 8350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915087 | I639, S82001A | Unsp fracture of right patella, init for clos fx | ICD10 | 11082017 | 09122017 | 10272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8350 | 8350 | Approved | 46 | Revenue | RV |  |  |  | 4.0 |
| 09292017 | 2017-09-29T14:55:40+00:00 |  | 000033006-01 | ESTEL | PACK | JOHN R LINSCOTT MD INC | 937106 | JOSEPH C | LINSCOTT | 1811993801 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 11082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10062017 | 10252017 | Standard |  |  | 2017-10-06 | 17/RVB01= $5411.86 | 0 | 2017-10-25 |  | 2017-11-08 | 2017-11-08 | 19 | 19 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929054 | M4326 | Fusion of spine, lumbar region | ICD10 | 11082017 | 10062017 | 10252017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
