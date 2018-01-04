Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-30_thru_2018-01-02_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-30_thru_2018-01-02_SNF
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
| 11202017 | 2017-11-20T12:25:18+00:00 |  | 000097567-01 | Paula | White | GENNANTONIO, MARGRETTA E | 924402 | MARGRETTA E | GENNANTONIO | 1295735884 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 01022018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 11172017 | 12292017 | Standard |  |  | 2017-11-17 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 22 SNF Days = $4,400.00 Total Payment: $10,449.81 | 0 | 2017-12-29 | 2017-12-29 | 2017-12-29 | 2017-12-29 | 42 | 42 | 10449.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120087 | S82841D | Displ bimalleol fx r low leg, subs for clos fx w routn heal | ICD10 | 01022018 | 11172017 | 12292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 43 | Revenue | RV |  |  |  | 8.0 |
| 12072017 | 2017-12-07T11:02:39+00:00 |  | 000098577-01 | Myrna | Hauke | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 01022018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12052017 | 12192017 | Standard |  |  | 2017-12-05 | Contract/RUG: 17/RVB (per MDS) = $5,411.86 | 0 | 2017-12-19 |  | 2017-12-29 | 2017-12-29 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207044 | S72012D | Unsp intracap fx left femur, subs for clos fx w routn heal | ICD10 | 01022018 | 12052017 | 12192017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12202017 | 2017-12-20T14:58:10+00:00 |  | 000063745-01 | HOWARD | ROZUM | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 01022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12182017 | 12212017 | Standard |  |  | 2017-12-18 | Per Diem: $250.00/day x 3 days = $750.00 TOTAL PAYMENT = $750.00 | 0 | 2017-12-21 |  |  |  | 3 | 3 | 750.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220080 | I4891, L0390 | Cellulitis, unspecified | ICD10 | 01022018 | 12182017 | 12212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 750 | 750 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 12222017 | 2017-12-22T11:43:06+00:00 |  | 000105756-01 | Ronald | Barber | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 01022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12212017 | 12292017 | Standard |  |  | 2017-12-21 | Swing bed daily rate x 8 days | 0 | 2017-12-29 |  |  | 2017-12-27 | 8 | 8 | swing bed daily rate x 8 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222063 | M179, Z96659 | Presence of unspecified artificial knee joint | ICD10 | 01022018 | 12212017 | 12292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 9 | Revenue | RV |  |  |  | 1.0 |
| 12262017 | 2017-12-26T10:36:39+00:00 |  | 000095593-01 | Larry | Fisher | MONTGOMERY, DAVID | 901409 | DAVID | MONTGOMERY | 0 | HIGHLAND OAKS HEALTH CENTER | 934015 | 1083929186 | HIGHLAND OAKS HEALTH CENTER | 1083929186 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HIGHLAND OAKS HEALTH CENTER | 01022018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12222017 | 12242017 | Standard |  |  | 2017-12-22 | Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $400.00 | 0 | 2017-12-24 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226083 | S8291XA | Unsp fracture of right lower leg, init for clos fx | ICD10 | 01022018 | 12222017 | 12242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 12112017 | 2017-12-11T17:00:07+00:00 |  | 000017733-01 | GOLDIE | HAHN | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 01022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12082017 | 12222017 | Standard |  |  | 2017-12-08 | Contract/ RUG: 16/RUC (Per MDS) = $7,333.11 | 0 | 2017-12-22 |  | 2017-12-28 | 2017-12-28 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212016 | M545 | Low back pain | ICD10 | 01022018 | 12082017 | 12222017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11242017 | 2017-11-24T15:22:58+00:00 |  | 000097739-01 | Ruth | Davis | SOUND KENWOOD HSPISTS OF | 926206 | CHANTAL G | WALSH | 1740274760 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 01022018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 11222017 | 12282017 | Standard |  |  | 2017-11-22 | Contract/RUG:  17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 10 SNF Days = $2,000.00 Total Payment: $8,306.19 | 0 | 2017-12-28 |  | 2017-12-29 | 2017-12-29 | 30 | 30 | 8306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127094 | S36593D | Other injury of sigmoid colon, subsequent encounter | ICD10 | 01022018 | 11222017 | 12282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8306 | 8306 | Approved | 37 | Revenue | RV |  |  |  | 10.0 |
| 12132017 | 2017-12-13T11:33:43+00:00 |  | 000033403-01 | MARION | PURDY | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 01022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12112017 | 12232017 | Standard |  |  | 2017-12-11 | Contract/RUG: 16/RUC (Per MDS) = $7,333.11 | 0 | 2017-12-23 |  | 2017-12-29 | 2017-12-29 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213085 | N390 | Urinary tract infection, site not specified | ICD10 | 01022018 | 12112017 | 12232017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 12152017 | 2017-12-15T15:18:52+00:00 |  | 000060158-01 | DORIS | BOYER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 01022018 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 12142017 | 12182017 | Standard |  |  | 2017-12-14 | 17/HC101=$3,481.78 | 0 | 2017-12-18 |  | 2017-12-29 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218008 | G629, M5136, M545, Z86718 | Personal history of other venous thrombosis and embolism | ICD10 | 01022018 | 12142017 | 12182017 | HC101 | SPECIAL CARE HIGH , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 12202017 | 2017-12-20T09:50:51+00:00 |  | 000108639-01 | Joyce | Carmichael | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 01022018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12182017 | 12222017 | Standard |  |  | 2017-12-18 | Contract/RUG: 17/CA1 (Per MDS) = $2,698.63 | 0 | 2017-12-22 |  | 2017-12-29 | 2017-12-29 | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220059 | S42202D | Unsp fx upper end of l humerus, subs for fx w routn heal | ICD10 | 01022018 | 12182017 | 12222017 | CA101 | CLINICALLY COMPLEX , ADL INDEX 0-1/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 12042017 | 2017-12-04T09:40:50+00:00 |  | 000106276-01 | Barbara | Brewer | UNION COUNTY PHYS CORP | 919476 | JOSEPH M | METZ | 1770586984 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 01022018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12012017 | 12222017 | Standard |  |  | 2017-12-01 | Contract/RUG: 16/HB2 (Per MDS) = $4,114.96 Per Diem: $200.00/day x 1 SNF Day = $200.00 Total Payment: $4,314.96 | 0 | 2017-12-22 |  | 2017-12-28 | 2017-12-28 | 21 | 21 | 4314.96 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204106 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 01022018 | 12012017 | 12222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4314 | 4314 | Approved | 22 | Revenue | RV |  |  |  | 1.0 |
| 12042017 | 2017-12-04T14:59:27+00:00 |  | 000082628-01 | Virginia | Beaver | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 01022018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 12232017 | Standard |  |  | 2017-12-01 | Contract/RUG: 16/RUC  (Per MDS) = $7,333.11 Per Diem: $200.00/day x 1 SNF Day = $200.00 Total Payment: $7,533.11 | 0 | 2017-12-23 |  | 2017-12-28 | 2017-12-28 | 21 | 22 | 7533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204158 | M4802 | Spinal stenosis, cervical region | ICD10 | 01022018 | 12012017 | 12232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7533 | 7533 | Approved | 23 | Revenue | RV |  |  |  | 1.0 |
| 12132017 | 2017-12-13T09:56:30+00:00 |  | 000092088-01 | Paul | Krause | GENESIS MEDICAL GRP LLC | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 01022018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12122017 | 12302017 | Standard |  |  | 2017-12-12 | 17/RVC01= $6306.19 | 0 | 2017-12-30 |  | 2018-01-02 | 2018-01-02 | 18 | 18 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213066 | N3000, R531 | Weakness | ICD10 | 01022018 | 12122017 | 12302017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
