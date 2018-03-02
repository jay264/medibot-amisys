Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-27_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-27_SNF
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
| 01312018 | 2018-01-31T14:17:30+00:00 |  | 000051426-01 | KATHERINE | YANK | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 02272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01302018 | 02092018 | Standard |  |  | 2018-01-30 | 16/RUC01=$7,333.11 | 0 | 2018-02-09 |  | 2018-02-26 |  | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201006 | R531, Z96641 | Presence of right artificial hip joint | ICD10 | 02272018 | 01302018 | 02092018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 02072018 | 2018-02-07T16:42:33+00:00 |  | 000106733-01 | Della | Alltop | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | FOUR SEASONS OF WASHINGTON LLC | 933668 | 1538593629 | FOUR SEASONS OF WASHINGTON LLC | 1538593629 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FOUR SEASONS OF WASHINGTON LLC | 02272018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02062018 | 02262018 | Standard |  |  | 2018-02-06 | Contract/RUG: 16/RHB (Per MDS) = $2,690.49 | 14 | 2018-02-26 |  | 2018-02-23 | 2018-02-26 | 20 | 34 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208016 | S7292XA | Unsp fracture of left femur, init encntr for closed fracture | ICD10 | 02272018 | 02062018 | 02262018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12212017 | 2017-12-21T16:43:26+00:00 |  | 000017627-01 | HELEN | EWING | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 02272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12192017 | 02182018 | Standard |  |  | 2017-12-19 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 41 days = $10,250.00 TOTAL PAYMENT = $16,063.99 | 0 | 2018-02-18 |  | 2018-02-27 |  | 61 | 61 | 16063.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222029 | I4891 | Unspecified atrial fibrillation | ICD10 | 02272018 | 12192017 | 02182018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 62 | Revenue | RV |  |  |  | 2.0 |
| 01022018 | 2018-01-02T15:03:56+00:00 |  | 000091904-01 | Norma Jeann | Dluzen | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 02272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12292017 | 02242018 | Standard |  |  | 2017-12-29 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 37 days = $7400.00 TOTAL PAYMENT = $13,706.19 | 0 | 2018-02-24 | 2018-02-22 | 2018-02-27 | 2018-02-27 | 57 | 57 | 13706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103040 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 02272018 | 12292017 | 02242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 58 | Revenue | RV |  |  |  | 1.0 |
| 01292018 | 2018-01-29T11:09:18+00:00 |  | 000080401-01 | Thomas | Vasbinder | CARROLL, FREDERICK C | 900430 | FREDERICK C | CARROLL | 1962431957 | THE LAURELS OF MT VERNON | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 02272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02272018 | Standard |  |  | 2018-01-26 | 17/RVB01= $5411.86 12 DAYS @ $200.00= $2400.00 TOTAL: $7811.86 | 0 | 2018-02-27 |  | 2018-02-27 | 2018-02-27 | 32 | 32 | 7811.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129084 | M86272, T8781 | Dehiscence of amputation stump | ICD10 | 02272018 | 01262018 | 02272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7811 | 7811 | Approved | 33 | Revenue | RV |  |  |  | 12.0 |
| 02022018 | 2018-02-02T09:33:50+00:00 |  | 000008375-01 | CHARLINE | DEAN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 02272018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01312018 | 02212018 | Standard |  |  | 2018-01-31 | 17/RVC01=$6,306.19 PER DIEM RATE OF $250.00/DAY X 1 DAY=$250.00 TOTAL PAYMENT=$6,556.19 | 0 | 2018-02-21 |  | 2018-02-27 |  | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202036 | S72142E | Displ intertroch fx l femr, 7thE | ICD10 | 02272018 | 01312018 | 02212018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6556 | 6556 | Approved Skilled | 22 | Revenue | RV |  |  |  | 1.0 |
| 02062018 | 2018-02-06T11:26:17+00:00 |  | 000038425-01 | KAYE | GAINES | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02032018 | 02232018 | Standard |  |  | 2018-02-03 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-02-23 |  | 2018-02-26 | 2018-02-26 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206061 | J9611 | Chronic respiratory failure with hypoxia | ICD10 | 02272018 | 02032018 | 02232018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02092018 | 2018-02-09T10:33:27+00:00 |  | 000113609-01 | Michael | Smallwood | CIRCLEVILLE CENTER | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 02272018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02072018 | 02232018 | Standard |  |  | 2018-02-07 | Per MDS: 17/RVB01 = $5411.86 | 4 | 2018-02-23 |  | 2018-02-27 | 2018-02-27 | 16 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209028 | I214, I469, R4182 | Altered mental status, unspecified | ICD10 | 02272018 | 02072018 | 02232018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 02122018 | 2018-02-12T10:53:02+00:00 |  | 000042786-01 | SALLY | CARTWRIGHT | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 02272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02192018 | Standard |  |  | 2018-02-09 | 16/RUA01=$3,214.76 | 0 | 2018-02-19 |  | 2018-02-26 | 2018-02-26 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212050 | E0865, N390, R2689, R41840, R488, R531, R55 | Syncope and collapse | ICD10 | 02272018 | 02092018 | 02192018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 02122018 | 2018-02-12T13:30:49+00:00 |  | 000043827-01 | ROBERT | GHILONI | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 02272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02242018 | Standard |  |  | 2018-02-09 | 1/RUB01= $4429.71 | 0 | 2018-02-24 |  | 2018-02-26 | 2018-02-26 | 15 | 15 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212112 | I25810 | Atherosclerosis of CABG w/o angina pectoris | ICD10 | 02272018 | 02092018 | 02242018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 02132018 | 2018-02-13T11:45:55+00:00 |  | 000105805-01 | Emma | Hunt | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 02272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02122018 | 02172018 | Standard |  |  | 2018-02-12 | 16/CB101= $2865.25 | 0 | 2018-02-17 |  | 2018-02-26 |  | 5 | 5 | 2865.25 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213083 | I222, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02272018 | 02122018 | 02172018 | CB101 | CLINICALLY COMPLEX , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 02132018 | 2018-02-13T15:01:29+00:00 |  | 000073699-01 | Mabel | Anderson | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 02272018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02242018 | Standard |  |  | 2018-02-09 | Per MDS: 17/RVC01 = $6306.19 | 16 | 2018-02-24 |  | 2018-02-26 | 2018-02-26 | 15 | 31 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213111 | E11622, Z5189 | Encounter for other specified aftercare | ICD10 | 02272018 | 02092018 | 02242018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 02202018 | 2018-02-20T07:51:16+00:00 |  | 000079627-01 | Lisa | Woods | AMERICAN HLTH NETWORK OF | 904090 | WILLIAM A | ELDER | 1710914833 | THE LAURELS OF MT VERNON | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 02272018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02152018 | 02232018 | Standard |  |  | 2018-02-15 | 17/RVB01= $5411.86 | 0 | 2018-02-23 |  | 2018-02-27 |  | 8 | 8 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220046 | Z96642 | Presence of left artificial hip joint | ICD10 | 02272018 | 02152018 | 02232018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 02262018 | 2018-02-26T16:49:36+00:00 |  | 000075367-01 | Sandra | Noland | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | THE OAKS AT NORTHPOINTE | 931632 | 1609181700 | THE OAKS AT NORTHPOINTE | 1609181700 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE OAKS AT NORTHPOINTE | 02272018 | Denied | MediGold Southeast OH Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 02272018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A180227015 | F339, F419, K219, K5900, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 02272018 | 12262017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02212018 | 2018-02-21T14:57:39+00:00 |  | 000061059-01 | WANDA | EWELL | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 02272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02192018 | 02212018 | Standard |  |  | 2018-02-19 | PER DIEM RATE OF $250.00/DAY X 2 DAYS =$500.00 | 8 | 2018-02-21 |  |  |  | 2 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222004 | N390 | Urinary tract infection, site not specified | ICD10 | 02272018 | 02192018 | 02212018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 500 | 500 | Approved Skilled | 3 | Revenue | RV |  |  |  | 2.0 |
| 02222018 | 2018-02-22T16:16:58+00:00 |  | 000014426-01 | HAROLD | CAIN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 02272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02202018 | 02242018 | Standard |  |  | 2018-02-20 | PER DIEM RATE OF $200.00/DAY X 4 DAYS=$800.00 | 30 | 2018-02-24 |  |  |  | 4 | 34 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223015 | R4182 | Altered mental status, unspecified | ICD10 | 02272018 | 02202018 | 02242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved Skilled | 5 | Revenue | RV |  |  |  | 4.0 |
| 02232018 | 2018-02-23T15:58:26+00:00 |  | 000075783-01 | Darmel | Steen | ARTHUR H WIN MD LLC | 905083 | ARTHUR H | WIN | 1780667444 | ARBORS AT SPRINGFIELD | 943322 | 1467850305 | ARBORS AT SPRINGFIELD | 1467850305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT SPRINGFIELD | 02272018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02212018 | 02262018 | Standard |  |  | 2018-02-21 | Contract/RUG: 17/CB1 (Per MDS) = $2,898.58 | 0 | 2018-02-26 |  | 2018-02-27 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223077 | M4800, R296 | Repeated falls | ICD10 | 02272018 | 02212018 | 02262018 | CB101 | CLINICALLY COMPLEX , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
