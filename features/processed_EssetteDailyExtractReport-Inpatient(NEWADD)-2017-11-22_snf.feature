Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-22_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-22_SNF
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
| 10132017 | 2017-10-13T17:14:16+00:00 |  | 000086793-01 | Phillip | Swisher | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 11222017 | Approved | THE TIMKEN COMPANY | Fax | SNF | Inpatient | 10112017 | 10292017 | Standard |  |  | 2017-11-11 | 16/RVB01= $3350.20 PLEURX SUPPLIES PER INVOICE= $999.18 TOTAL: $4349.38 | 0 | 2017-11-29 |  | 2017-11-06 | 2017-11-06 | 14 | 14 | 4349.18 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016017 | C259, J90, R0902 | Hypoxemia | ICD10 | 11222017 | 10112017 | 10292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4349 | 4349 | Approved | 19 | Revenue | RV |  |  |  | 11.0 |
| 08222017 | 2017-08-22T13:46:55+00:00 |  | 000051188-01 | EVELYN | FEDER | WESTLAND FAMILY CARE LLC | 912885 | FAOZAN A | NARVEL | 1215901020 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08182017 | 10312017 | Standard |  |  | 2017-08-18 | 81 DAYS @ $200.00= $16200.00 VANCO PER INVOICE= $902.73 WOUND VAC PER INVOICE= $1037.00 TOTAL: $18139.73 | 19 | 2017-10-31 |  | 2017-10-03 |  | 81 | 100 | 18139.73 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822096 | M6281, S31829D | Unspecified open wound of left buttock, subsequent encounter | ICD10 | 11222017 | 08182017 | 10312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 75 | Revenue | RV |  |  |  | 12.0 |
| 10242017 | 2017-10-24T12:26:44+00:00 |  | 000033627-01 | DUANE | BARNES | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10202017 | 11142017 | Standard |  |  | 2017-10-20 | 16/RUB01= $4429.71 5 DAYS @ $250.00= $1250.00 TOTAL: $5679.71 | 0 | 2017-11-14 |  | 2017-11-09 |  | 25 | 25 | 5679.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024066 | N179, S42201A | Unsp fracture of upper end of right humerus, init | ICD10 | 11222017 | 10202017 | 11142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5679 | 5679 | Approved | 26 | Revenue | RV |  |  |  | 5.0 |
| 11072017 | 2017-11-07T09:27:02+00:00 |  | 000075875-01 | Crystal | Bartimus | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 11222017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11052017 | 11252017 | Standard |  |  | 2017-11-05 | 16/RVC01= $3539.19 | 0 | 2017-11-25 |  | 2017-11-17 | 2017-11-21 | 20 | 20 | 3539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107045 | S32509D | Unsp fracture of unsp pubis, subs for fx w routn heal | ICD10 | 11222017 | 11052017 | 11252017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11062017 | 2017-11-06T11:16:49+00:00 |  | 000074555-01 | Irma | Stewart | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11052017 | 11182017 | Standard |  |  | 2017-11-05 | 16/RHC01= $3133.29 | 0 | 2017-11-18 |  | 2017-11-22 | 2017-11-22 | 13 | 13 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106097 | Z4789 | Encounter for other orthopedic aftercare | ICD10 | 11222017 | 11052017 | 11182017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 11102017 | 2017-11-10T11:38:37+00:00 |  | 000111065-01 | Joseph | Sawyer | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 11222017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11082017 | 11182017 | Standard |  |  | 2017-11-08 | 16/HD201= $4414.82 | 0 | 2017-11-18 |  | 2017-11-22 | 2017-11-22 | 10 | 10 | 4414.82 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110056 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11222017 | 11082017 | 11182017 | HD201 | SPECIAL CARE HIGH , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 10162017 | 2017-10-16T07:24:40+00:00 |  | 000001539-01 | GRACE | GILL | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 11222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10122017 | 11012017 | Standard |  |  | 2017-10-12 | 17/RVC01=$6,306.19 | 0 | 2017-11-01 |  | 2017-11-17 | 2017-11-17 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016028 | M4800 | Spinal stenosis, site unspecified | ICD10 | 11222017 | 10122017 | 11012017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10302017 | 2017-10-30T14:32:46+00:00 |  | 000027855-01 | EDNA | BANKS | AMERICAN HLTH NETWORK OF | 924337 | RAJNISH K | GUPTA | 1063466795 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10282017 | 11022017 | Standard |  |  | 2017-10-28 | 17/HD101=$3,681.73 | 0 | 2017-11-02 |  | 2017-11-20 | 2017-11-20 | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030120 | L03115 | Cellulitis of right lower limb | ICD10 | 11222017 | 10282017 | 11022017 | HD101 | SPECIAL CARE HIGH , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved Skilled | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 10162017 | 2017-10-16T11:38:47+00:00 |  | 000098516-01 | JUDITH | WILSON | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 11222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10142017 | 11102017 | Standard |  |  | 2017-10-14 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X 7 DAYS=$1,400.00 TOTAL PAYMENT=$6,811.86 | 0 | 2017-11-10 |  | 2017-11-17 | 2017-11-17 | 27 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016077 | J15212 | Pneumonia due to Methicillin resistant Staphylococcus aureus | ICD10 | 11222017 | 10142017 | 11102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 28 | Revenue | RV |  |  |  | 7.0 |
| 10302017 | 2017-10-30T14:55:03+00:00 |  | 000052048-01 | CHARLES | GRAF | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 11222017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 10282017 | 11172017 | Standard |  |  | 2017-10-28 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-11-17 |  | 2017-11-21 | 2017-11-21 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031031 | E039, E118, E785, G4730, I2699, I639 | Cerebral infarction, unspecified | ICD10 | 11222017 | 10282017 | 11172017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11072017 | 2017-11-07T12:22:05+00:00 |  | 000046226-01 | DEBRA | DRUMM | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 11222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11042017 | 11142017 | Standard |  |  | 2017-11-04 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-11-14 |  | 2017-11-21 |  | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107073 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 11222017 | 11042017 | 11142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 10242017 | 2017-10-24T16:42:58+00:00 |  | 000011988-01 | ELNORA | BELL | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 11222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10212017 | 10252017 | Standard |  |  | 2017-10-21 | Per MDS: 17/ES101 = $4881.45 | 0 | 2017-10-25 |  | 2017-11-22 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025005 | N186 | End stage renal disease | ICD10 | 11222017 | 10212017 | 10252017 | ES101 | EXTENSIVE SERVICES , ADL INDEX 2-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 09132017 | 2017-09-13T12:15:30+00:00 |  | 000033201-01 | DOROTHY | NICKELL | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 11222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09112017 | 11162017 | Standard |  |  | 2017-09-11 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00 37 days = $9250.00 Per Diem: $200.00/day = $1800.00 TOTAL PAYMENT = $17,099.81 | 0 | 2017-11-16 | 2017-11-13 | 2017-11-17 | 2017-11-17 | 66 | 66 | 17099.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913063 | M6281, S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 11222017 | 09112017 | 11162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 67 | Revenue | RV |  |  |  | 6.0 |
| 11082017 | 2017-11-08T13:43:37+00:00 |  | 000032393-01 | JOSEPHINE | LEIDINGER | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 11222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11072017 | 11222017 | Standard |  |  | 2017-11-07 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-11-22 | 2017-11-22 | 2017-11-17 | 2017-11-22 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108050 | R296, R4182, R531 | Weakness | ICD10 | 11222017 | 11072017 | 11222017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 11102017 | 2017-11-10T15:32:56+00:00 |  | 000036717-01 | JEANNETTE | LECRONE | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11082017 | 11202017 | Standard |  |  | 2017-11-08 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-11-20 |  | 2017-11-22 | 2017-11-22 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110077 | M25551, Z5189 | Encounter for other specified aftercare | ICD10 | 11222017 | 11082017 | 11202017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 11202017 | 2017-11-20T14:13:22+00:00 |  | 000019787-01 | Waneta | Burt | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | THORNVILLE HEALTH & REHABILITATION C | 939903 | 1689064487 | THORNVILLE HEALTH & REHABILITATION C | 1689064487 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THORNVILLE HEALTH & REHABILITATION C | 11222017 | Denied Skilled - Pay Unskilled | MediGold Southeast OH Classic Preferred | Fax |  | Inpatient | 11182017 | 11202017 | Standard |  |  | 2017-11-18 | ADMISSION DENIAL: Non Skilled Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $400.00 | 0 | 2017-11-20 |  |  |  | 2 | 0 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A171120124 | G300 | Alzheimer's disease with early onset | ICD10 | 11222017 | 11182017 | 11202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 11012017 | 2017-11-01T07:49:00+00:00 |  | 000086557-01 | Marthel | Slagle | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 11222017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10302017 | 11212017 | Standard |  |  | 2017-10-30 | Swing Bed Daily Rate x 22 days | 0 | 2017-11-21 |  |  |  | 22 | 22 | Swing Bed Daily Rate x 22 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101027 | I6350 | Cereb infrc due to unsp occls or stenos of unsp cereb artery | ICD10 | 11222017 | 10302017 | 11212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 23 | Revenue | RV |  |  |  | 7.0 |
| 10162017 | 2017-10-16T17:21:18+00:00 |  | 000092239-01 | James | Peer | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 11222017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10142017 | 11212017 | Standard |  |  | 2017-10-14 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 18 SNF Days = $3,600.00 Total Payment: $9,906.19 | 0 | 2017-11-21 |  | 2017-11-21 | 2017-11-21 | 38 | 38 | 9906.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017081 | M6281, S72141A | Displaced intertrochanteric fracture of right femur, init | ICD10 | 11222017 | 10142017 | 11212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9906 | 9906 | Approved | 39 | Revenue | RV |  |  |  | 4.0 |
