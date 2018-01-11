Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-08_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-08_SNF
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
| 12202017 | 2017-12-20T10:13:43+00:00 |  | 000066892-01 | ALBERTA | BOLANDER | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12192017 | 01052018 | Standard |  |  | 2017-12-19 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-05 |  | 2018-01-05 | 2018-01-05 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220061 | S22060D | Wedge comprsn fx T7-T8 vertebra, subs for fx w routn heal | ICD10 | 01082018 | 12192017 | 01052018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 01022018 | 2018-01-02T14:35:58+00:00 |  | 000113390-01 | Linda | Sockman | RCHP WILMINGTON LLC | 933583 | CHRISTINE E | HENRY | 1659364842 | OHIO LIVING CAPE MAY | 946695 | 1285801233 | OHIO LIVING CAPE MAY | 1285801233 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING CAPE MAY | 01082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12312017 | 01012018 | Standard |  |  | 2017-12-31 | Per Diem: $200.00/day x 1 SNF day = $200.00 | 0 | 2018-01-01 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103036 | M1711, Z96651 | Presence of right artificial knee joint | ICD10 | 01082018 | 12312017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 12282017 | 2017-12-28T15:53:29+00:00 |  | 000104722-01 | Eugene | Nance | FCMH MED & SURG ASSOC | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 01082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12272017 | 01042018 | Standard |  |  | 2017-12-27 | Swing Bed Daily Rate for 7 SNF Days | 0 | 2018-01-04 |  |  | 2018-01-04 | 7 | 8 | Swing Bed Daily Rate for 7 SNF Days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229009 | Z5189 | Encounter for other specified aftercare | ICD10 | 01082018 | 12272017 | 01042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 9 | Revenue | RV |  |  |  | 1.0 |
| 11302017 | 2017-11-30T20:43:21+00:00 |  | 000028097-01 | SANDRA | EVANS | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11292017 | 12082017 | Standard |  |  | 2017-11-29 | 17/RUC01= $6049.81 | 0 | 2017-12-08 |  | 2018-01-05 | 2018-01-05 | 9 | 9 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201005 | L03116 | Cellulitis of left lower limb | ICD10 | 01082018 | 11292017 | 12082017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 12112017 | 2017-12-11T17:02:42+00:00 |  | 000099409-01 | Barbara | Winter | ALAM, RUKHSANA | 931810 | RUKHSANA | ALAM | 1205826732 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 01082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 12082017 | 12222017 | Standard |  |  | 2017-12-08 | Per Diem: $250.00/day x 14 SNF Days = $3,500.00 Carve Out: IV Daptomycin $2,884.96 (Per Invoices) Total Payment: $6,384.96 | 35 | 2017-12-22 |  |  | 2018-01-04 | 14 | 49 | 6384.96 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212021 | S82002D | Unsp fracture of left patella, subs for clos fx w routn heal | ICD10 | 01082018 | 12082017 | 12222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6384 | 6384 | Approved | 15 | Revenue | RV |  |  |  | 14.0 |
| 11302017 | 2017-11-30T20:45:39+00:00 |  | 000039181-01 | KENNETH | SIDERS | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 01082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11282017 | 12072017 | Standard |  |  | 2017-11-28 | 17/RVB01= $5411.86 | 0 | 2017-12-07 |  | 2018-01-05 | 2018-01-05 | 9 | 9 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201009 | M6281 | Muscle weakness (generalized) | ICD10 | 01082018 | 11282017 | 12072017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 12122017 | 2017-12-12T15:17:08+00:00 |  | 000106376-01 | Irene | Rees | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12062017 | 12102017 | Standard |  |  | 2017-12-06 | 17/HB201= $4114.45 | 17 | 2017-12-10 |  | 2018-01-08 |  | 4 | 21 | 4114.45 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212086 | I639 | Cerebral infarction, unspecified | ICD10 | 01082018 | 12062017 | 12102017 | HB201 | SPECIAL CARE HIGH , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 12142017 | 2017-12-14T11:03:13+00:00 |  | 000085980-01 | Judith | Hopper | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 01082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12112017 | 12282017 | Standard |  |  | 2017-12-11 | Contract/RUG: 16/HB1 (Per MDS) = $3,448.45 | 0 | 2017-12-28 |  | 2018-01-04 | 2018-01-04 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214056 | Z96651 | Presence of right artificial knee joint | ICD10 | 01082018 | 12112017 | 12282017 | HB101 | SPECIAL CARE HIGH , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 12152017 | 2017-12-15T12:15:27+00:00 |  | 000028216-01 | RALPH | FRANKLIN | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12152017 | 12212017 | Standard |  |  | 2017-12-15 | 17/rvb01= $5411.86 | 20 | 2017-12-21 |  | 2018-01-08 |  | 6 | 26 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215076 | N139 | Obstructive and reflux uropathy, unspecified | ICD10 | 01082018 | 12152017 | 12212017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 12262017 | 2017-12-26T13:40:07+00:00 |  | 000106429-01 | Clyde | Buckmaster | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ZANESVILLE HEALTH AND REHABILITATION | 01082018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12232017 | 01012018 | Standard |  |  | 2017-12-23 | Per Diem: $200.00/day x 9 SNF Days = $1,800.00 | 15 | 2018-01-01 |  |  |  | 9 | 24 | 1800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226147 | I482, I5042, R55 | Syncope and collapse | ICD10 | 01082018 | 12232017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1800 | 1800 | Approved | 10 | Revenue | RV |  |  |  | 9.0 |
| 11132017 | 2017-11-13T14:17:51+00:00 |  | 000022358-01 | CHARLES | SCHMELZER | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11122017 | 12302017 | Standard |  |  | 2017-11-12 | Per MDS: 16/HD201 = $4414.82 Per Diem: $200.00/day = $5600.00 TOTAL PAYMENT = $10,014.82 | 0 | 2017-12-30 | 2017-12-27 | 2018-01-04 | 2018-01-04 | 48 | 48 | 10014.82 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113098 | A403, D649, D72829, I10, I214, I4891, I509, N179, R310, R6889 | Other general symptoms and signs | ICD10 | 01082018 | 11122017 | 12302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 49 | Revenue | RV |  |  |  | 4.0 |
| 11152017 | 2017-11-15T16:29:46+00:00 |  | 000045295-01 | WILLIAM | WOLTZ | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11142017 | 12292017 | Standard |  |  | 2017-11-14 | Per MDS; 16/RUC01 = $7333.11 Per Diem: $200.00/day x 25 days = $5000.00 TOTAL PAYMENT = $12,333.11 | 0 | 2017-12-29 | 2017-12-26 | 2018-01-04 | 2018-01-04 | 45 | 45 | 12333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116009 | A419, I10, I2510, I679, J690, N184, R509 | Fever, unspecified | ICD10 | 01082018 | 11142017 | 12292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 7.0 |
| 12152017 | 2017-12-15T16:40:28+00:00 |  | 000051581-01 | KANWARD | FAULK | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12142017 | 01032018 | Standard |  |  | 2017-12-14 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2018-01-03 |  | 2018-01-04 | 2018-01-04 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218071 | I10, I214, J189, J449, N390, R5381, R6520 | Severe sepsis without septic shock | ICD10 | 01082018 | 12142017 | 01032018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12152017 | 2017-12-15T16:40:28+00:00 |  | 000119532-01 | Phillip | Woodrum | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12142017 | 01032018 | Standard |  |  | 2017-12-14 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2018-01-03 |  | 2018-01-04 | 2018-01-04 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218073 | E785, F4310, I10, I639, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01082018 | 12142017 | 01032018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12142017 | 2017-12-14T15:49:41+00:00 |  | 000080513-01 | Vivien | Johnson | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 01082018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12052017 | 01012018 | Standard |  |  | 2017-12-05 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 7 days = $140.00 TOTAL PAYMENT = $7706.19 | 55 | 2018-01-01 |  | 2018-01-05 |  | 27 | 82 | 7706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215051 | I480, J189, J9611, R0682 | Tachypnea, not elsewhere classified | ICD10 | 01082018 | 12052017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7706 | 7706 | Approved | 28 | Revenue | RV |  |  |  | 20.0 |
| 01032018 | 2018-01-03T09:17:27+00:00 |  | 000027196-01 | Gladys | Myers | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 01082018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 01012018 | 01072018 | Standard |  |  | 2018-01-01 | ADMISSION DENIAL: Non skilled per diem: $200.00/day x 6 days = $1200.00 TOTAL PAYMENT = $1200.00 | 0 | 2018-01-07 |  |  |  | 6 | 0 | 1200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A180103086 | I10, I82403, L97819, R609 | Edema, unspecified | ICD10 | 01082018 | 01012018 | 01072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved | 7 | Revenue | RV |  |  |  | 6.0 |
| 12182017 | 2017-12-18T09:38:36+00:00 |  | 000015945-01 | ESTHER | MESSERKNECHT | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12132017 | 01052018 | Standard |  |  | 2017-12-13 | Per MDS; 17/RUB01 = $5813.99 | 4 | 2018-01-05 | 2018-01-03 | 2018-01-05 | 2018-01-05 | 23 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218086 | S065X0S | Traum subdr hem w/o loss of consciousness, sequela | ICD10 | 01082018 | 12132017 | 01052018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 12112017 | 2017-12-11T15:31:03+00:00 |  | 000022509-01 | MARY | WINDON | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12102017 | 01052018 | Standard |  |  | 2017-12-10 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 6 days = $1500.00 TOTAL PAYMENT = $7313.99 | 0 | 2018-01-05 |  | 2017-12-18 | 2018-01-05 | 26 | 26 | 7313.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211157 | G20, M174, R296, S72091A | Oth fracture of head and neck of right femur, init | ICD10 | 01082018 | 12102017 | 01052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7313 | 7313 | Approved | 27 | Revenue | RV |  |  |  | 6.0 |
| 12212017 | 2017-12-21T12:33:36+00:00 |  | 000087719-01 | Joseph | Welch | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ZANESVILLE HEALTH AND REHABILITATION | 01082018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12192017 | 01012018 | Standard |  |  | 2017-12-19 | Per Diem: $200.00/day x 13 SNF Days = $ 2,600.00 | 0 | 2018-01-01 |  |  |  | 13 | 13 | 2600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221062 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 01082018 | 12192017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2600 | 2600 | Approved | 14 | Revenue | RV |  |  |  | 13.0 |
| 12072017 | 2017-12-07T22:16:03+00:00 |  | 000037622-01 | LARABEE | MOORE JR | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12052017 | 12142017 | Standard |  |  | 2017-12-05 | 17/RUB01= $5813.99 | 0 | 2017-12-14 |  | 2018-01-08 | 2018-01-08 | 9 | 9 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208033 | N390, R339 | Retention of urine, unspecified | ICD10 | 01082018 | 12052017 | 12142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 10252017 | 2017-10-25T13:48:04+00:00 |  | 000115915-01 | VALLA | ODELL | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 01082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10232017 | 12232017 | Standard |  |  | 2017-10-23 | Per Diem: $250.00/day x 61 days = $15,250.00 IV Ambisone (per invoice) = $12,481.97 PO Flucytosine (per invoice) = $2555.17 TOTAL PAYMENT = $30,287.14 | 0 | 2017-12-23 |  | 2018-01-04 | 2018-01-04 | 61 | 61 | 30287.14 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025061 | J180 | Bronchopneumonia, unspecified organism | ICD10 | 01082018 | 10232017 | 12232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 62 | Revenue | RV |  |  |  | 5.0 |
| 11242017 | 2017-11-24T12:58:51+00:00 |  | 000078210-01 | Katrina | Whitesed | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 01082018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 11212017 | 12102017 | Standard |  |  | 2017-11-21 | Per Diem: $200.00/day x 19 SNF Days = $3,800.00 Carve Outs: IV Daptomycin $1,644.66 (Per Invoice) IV Invanz $756.09 (Per Invoice) Total Payment: $6,200.75 | 63 | 2017-12-10 |  |  | 2018-01-05 | 19 | 82 | 6200.75 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127076 | T827XXD | Infect/inflm react d/t oth cardi/vasc dev/implnt/grft, subs | ICD10 | 01082018 | 11212017 | 12102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6200 | 6200 | Approved | 20 | Revenue | RV |  |  |  | 5.0 |
| 01032018 | 2018-01-03T12:21:38+00:00 |  | 000108693-01 | Jane | Molter | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 01082018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12292017 | 01012018 | Standard |  |  | 2017-12-29 | Per Diem: $200.00/day x 3 SNF Days = $600.00 | 0 | 2018-01-01 |  |  |  | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103113 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 01082018 | 12292017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 12112017 | 2017-12-11T16:44:31+00:00 |  | 000099587-01 | Rudolf | Sperger | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 01082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 12072017 | 12262017 | Standard |  |  | 2017-12-07 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-12-26 |  | 2018-01-05 | 2018-01-05 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212009 | R262, S128XXA, Z741 | Need for assistance with personal care | ICD10 | 01082018 | 12072017 | 12262017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 12262017 | 2017-12-26T08:57:24+00:00 |  | 000066494-01 | PATRICIA | CAPUANO | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12232017 | 01052018 | Standard |  |  | 2017-12-23 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-01-05 |  | 2018-01-02 | 2018-01-07 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226062 | I6523, R109, R531 | Weakness | ICD10 | 01082018 | 12232017 | 01052018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 12042017 | 2017-12-04T16:08:49+00:00 |  | 000117120-01 | Janet | Baker | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 01082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12012017 | 12232017 | Standard |  |  | 2017-12-01 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-12-23 |  | 2018-01-05 | 2018-01-05 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205050 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 01082018 | 12012017 | 12232017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12202017 | 2017-12-20T13:37:54+00:00 |  | 000077869-01 | Anna | Todd | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 01082018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12182017 | 12312017 | Standard |  |  | 2017-12-18 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-12-31 | 2018-01-05 | 2018-01-05 | 2018-01-05 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220076 | A419 | Sepsis, unspecified organism | ICD10 | 01082018 | 12182017 | 12312017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 12152017 | 2017-12-15T14:35:14+00:00 |  | 000091467-01 | Bernice | Grobosky | ALAM, RUKHSANA | 931810 | RUKHSANA | ALAM | 1205826732 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 01082018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12132017 | 01022018 | Standard |  |  | 2017-12-13 | Contract/ RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-01-02 |  | 2018-01-08 | 2018-01-08 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215084 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 01082018 | 12132017 | 01022018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12212017 | 2017-12-21T16:11:35+00:00 |  | 000079956-01 | Minerva | Dyson | FCMH MED & SURG ASSOC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 01082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12202017 | 01052018 | Standard |  |  | 2017-12-20 | Swing Bed Daily Rate x 16 SNF Days | 0 | 2018-01-05 |  |  |  | 16 | 16 | Swing Bed Daily Rate x 16 SNF Days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222006 | Z5189 | Encounter for other specified aftercare | ICD10 | 01082018 | 12202017 | 01052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 17 | Revenue | RV |  |  |  | 3.0 |
| 01022018 | 2018-01-02T13:01:04+00:00 |  | 000074694-01 | Charles | Merryman | GENESIS MEDICAL GRP LLC | 923234 | PAUL D | MUMMA | 1619958121 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ZANESVILLE HEALTH AND REHABILITATION | 01082018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12292017 | 01012018 | Standard |  |  | 2017-12-29 | Per Diem: $200.00/day x 3 SNF Days = $600.00 | 0 | 2018-01-01 |  |  |  | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102108 | K5721 | Dvtrcli of lg int w perforation and abscess w bleeding | ICD10 | 01082018 | 12292017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 12152017 | 2017-12-15T16:50:12+00:00 |  | 000109099-01 | Carl | Pearson | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 01082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12142017 | 01022018 | Standard |  |  | 2017-12-14 | Contract/RUG: 17/RHB (Per MDS) = $3,699.42 | 0 | 2018-01-02 |  | 2018-01-08 | 2018-01-08 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218057 | S42102D | Fx unsp part of scapula, l shldr, subs for fx w routn heal | ICD10 | 01082018 | 12142017 | 01022018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
