Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-09_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-09_SNF
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
| 02242017 | 2017-02-24T15:01:11+00:00 |  | 000028236-01 | SADIE | PALSGROVE | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02232017 | 06062017 | Standard |  |  | 2017-02-23 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 52 days = $13,000.00 Per Diem: $200.00/day x 28 days = $5600.00 TOTAL PAYMENT = $25,933.11 | 0 | 2017-06-07 |  | 2017-06-08 |  | 100 | 100 | 25933.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170227103 | E876, I10, I4901, N390, R296, R531, R55 | Syncope and collapse | ICD10 | 06092017 | 02232017 | 06072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 104 | Revenue | RV |  |  |  | 8.0 |
| 04062017 | 2017-04-06T09:05:33+00:00 |  | 000056878-01 | JACQUELINE | BENIS | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 06092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04042017 | 06072017 | Standard |  |  | 2017-04-04 | 17/RVC01=$6306.19 21 DAYS@ $200.00=$8200.00 IV AMPICILLIN=$1519.72 TOTAL: $16025.91 | 0 | 2017-06-08 |  | 2017-04-12 | 2017-06-08 | 61 | 61 | 16025.91 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170406050 | T8579XD | Infect/inflm reaction due to oth int prosth dev/grft, subs | ICD10 | 06092017 | 04042017 | 06082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 65 | Revenue | RV |  |  |  | 3.0 |
| 04102017 | 2017-04-10T13:36:17+00:00 |  | 000044479-01 | PATRICIA | JOHNSON | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 06092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04082017 | 04272017 | Standard |  |  | 2017-04-08 | 17/RUB01=$5,813.99 | 0 | 2017-04-28 |  | 2017-05-04 | 2017-05-04 | 20 | 20 | 5813.99 | 170413080845.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170410067 | M4800 | Spinal stenosis, site unspecified | ICD10 | 06092017 | 04082017 | 04282017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 20 | 20 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04122017 | 2017-04-12T13:53:21+00:00 |  | 000098636-01 | Sheila | Smith | CENTRAL OHIO NP SERVICES | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN NEW ALBANY LLC | 944058 | 1407262165 | OTTERBEIN NEW ALBANY LLC | 1407262165 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN NEW ALBANY LLC | 06092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04132017 | 04262017 | Standard |  |  | 2017-04-13 | RUA01=$3214.76 | 20 | 2017-04-26 |  | 2017-05-04 | 2017-06-09 | 14 | 34 | 3214.76 | 170417096033.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413011 | R569 | Unspecified convulsions | ICD10 | 06092017 | 04132017 | 04272017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04282017 | 2017-04-28T09:01:55+00:00 |  | 000010172-01 | GEORGE | STRODE | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 06092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04282017 | 05162017 | Standard |  |  | 2017-04-28 | Per MDS/SCA: 17/RUC01 = $6049.81 TOTAL PAYMENT = $6049.81 | 0 | 2017-05-17 |  | 2017-06-09 |  | 19 | 19 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428026 | I639 | Cerebral infarction, unspecified | ICD10 | 06092017 | 04282017 | 05172017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 05022017 | 2017-05-02T09:42:36+00:00 |  | 000071356-01 | Charles | Padrutt | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 06092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06092017 | 06162017 | Standard |  |  | 2017-04-29 | 17/RVB01=$5,411.86 | 0 | 2017-05-10 |  | 2017-05-26 |  | 11 | 11 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503023 | S22089D | Unsp fracture of T11-T12 vertebra, subs for fx w routn heal | ICD10 | 06092017 | 04292017 | 05102017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05102017 | 2017-05-10T18:43:41+00:00 |  | 000065650-01 | PHYLLIS | APPENZELLER | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 06092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05102017 | 06022017 | Standard |  |  | 2017-05-10 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 4 SNF days = $800.00 Total Payment: $6,211.86 | 0 | 2017-06-03 |  | 2017-06-09 | 2017-06-09 | 24 | 24 | 6211.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511021 | K529, N179, R1084, R1111, R197 | Diarrhea, unspecified | ICD10 | 06092017 | 05102017 | 06032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6211 | 6211 | Approved | 24 | Revenue | RV |  |  |  | 4.0 |
| 05152017 | 2017-05-15T15:06:11+00:00 |  | 000036738-01 | MARY | GRAVES | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 06092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06092017 | 06162017 | Standard |  |  | 2017-05-13 | 16/RUB01=$4,429.71 | 0 | 2017-05-27 |  | 2017-06-05 | 2017-06-05 | 14 | 14 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515138 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 06092017 | 05132017 | 05272017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 05172017 | 2017-05-17T13:44:47+00:00 |  | 000009328-01 | RUBY | MOXLEY | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 06092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 06072017 | Standard |  |  | 2017-05-15 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-06-08 |  | 2017-06-09 | 2017-06-09 | 20 | 20 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517060 | M6281, Z5189 | Encounter for other specified aftercare | ICD10 | 06092017 | 05152017 | 06082017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 05252017 | 2017-05-25T08:45:17+00:00 |  | 000043253-01 | GEORGE | DRAKE | COPC CENTRAL OHIO PRIMAR | 937085 | PAUL C | LEIDHEISER JR | 1932183498 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 06092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06092017 | 06162017 | Standard |  |  | 2017-05-23 | 17/RUB01=$5,813.99 | 0 | 2017-06-01 |  | 2017-06-05 | 2017-06-05 | 9 | 9 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525045 | S3282XD | Mult fx of pelv w/o disrupt of pelv ring, 7thD | ICD10 | 06092017 | 05232017 | 06012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 06082017 | 2017-06-08T14:21:38+00:00 |  | 000086130-01 | Burton | Miller | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 06092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06062017 | 06072017 | Standard |  |  | 2017-06-06 | $200.00/day Swing Bed x 2 days = $ 400.00 | 0 | 2017-06-08 |  |  | 2017-06-08 | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608069 | R54 | Age-related physical debility | ICD10 | 06092017 | 06062017 | 06082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
