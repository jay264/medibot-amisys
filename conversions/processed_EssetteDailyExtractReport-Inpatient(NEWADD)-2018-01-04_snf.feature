Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-04_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-04_SNF
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
| 11282017 | 2017-11-28T10:19:16+00:00 |  | 000028526-01 | LESTER | ABBOTT | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 01042018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01042018 | 01112018 | Standard |  |  | 2017-11-26 | 17/RUC01= $6049.81 (corrected) | 0 | 2017-12-18 |  | 2017-12-28 | 2017-12-21 | 22 | 22 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128077 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 01042018 | 11262017 | 12182017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 12112017 | 2017-12-11T15:20:59+00:00 |  | 000040824-01 | CHARLES | DERENBERGER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01112018 | Standard |  |  | 2017-12-07 | 17/RVC01= $6306.19 (corrected) | 0 | 2017-12-22 |  | 2017-12-27 | 2017-12-27 | 15 | 15 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211156 | A419 | Sepsis, unspecified organism | ICD10 | 01042018 | 12072017 | 12222017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12152017 | 2017-12-15T08:29:31+00:00 |  | 000020385-01 | RALPH | HAYES | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ARBORS AT DELAWARE | 943309 | 1033517891 | ARBORS AT DELAWARE | 1033517891 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT DELAWARE | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01112018 | Standard |  |  | 2017-12-13 | 17/LD101= $3448.45 (corrected) | 0 | 2017-12-24 |  | 2017-12-27 |  | 7 | 7 | 3448.45 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215061 | I2510, I5030, N186, S12120G | Oth displaced dens fracture, subs for fx w delay heal | ICD10 | 01042018 | 12132017 | 12242017 | LD101 | SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 12132017 | 2017-12-13T10:28:27+00:00 |  | 000030306-01 | VELMA | CANTER | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12092017 | 12232017 | Standard |  |  | 2017-12-09 | 17/RUC01=$6,049.81 | 0 | 2017-12-23 |  | 2018-01-03 | 2018-01-03 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213075 | F339, I10, N390, V4364 | HIP JOINT REPLACEMENT | ICD10 | 01042018 | 12092017 | 12232017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12182017 | 2017-12-18T11:24:07+00:00 |  | 000027317-01 | GEORGEANN | ALMOND | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12142017 | 12292017 | Standard |  |  | 2017-12-14 | 17/RUB01=$5,813.99 | 0 | 2017-12-29 |  | 2018-01-03 | 2018-01-03 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218119 | M25551 | Pain in right hip | ICD10 | 01042018 | 12142017 | 12292017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12222017 | 2017-12-22T14:22:56+00:00 |  | 000073078-01 | Kathleen | Boren | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12212017 | 12312017 | Standard |  |  | 2017-12-21 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-12-31 |  | 2018-01-02 | 2018-01-02 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222068 | E782, I10, I69398, I69311 | MEMORY DEFICIT FOLLOWING CEREBRAL INFARCTION | ICD10 | 01042018 | 12212017 | 12312017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 12182017 | 2017-12-18T11:27:02+00:00 |  | 000029859-01 | SHARON | FOOR | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12142017 | 12242017 | Standard |  |  | 2017-12-14 | 17/RUB01=$5,813.99 | 0 | 2017-12-24 |  | 2018-01-03 | 2018-01-03 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218121 | S32119S | Unspecified Zone I fracture of sacrum, sequela | ICD10 | 01042018 | 12142017 | 12242017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01032018 | 2018-01-03T11:47:45+00:00 |  | 000076934-01 | Harold | Wagstaff | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 01042018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12302017 | 01012018 | Standard |  |  | 2017-12-30 | 2 DAYS @ $200.00= $400.00 | 0 | 2018-01-01 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103106 | K5669, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 01042018 | 12302017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 12122017 | 2017-12-12T15:46:10+00:00 |  | 000011532-01 | DOLLY | JONES | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 01042018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12112017 | 12242017 | Standard |  |  | 2017-12-11 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-12-24 |  | 2018-01-02 |  | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212092 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 01042018 | 12112017 | 12242017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 12192017 | 2017-12-19T11:26:13+00:00 |  | 000051552-01 | THOMAS | MADDEN | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12152017 | 12302017 | Standard |  |  | 2017-12-15 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-12-30 | 2018-01-02 | 2018-01-02 | 2018-01-02 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219102 | G9340 | Encephalopathy, unspecified | ICD10 | 01042018 | 12152017 | 12302017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12132017 | 2017-12-13T11:28:47+00:00 |  | 000097017-01 | Louis | Barth | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 01042018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12122017 | 01032018 | Standard |  |  | 2017-12-12 | Contract/RUG: 16/RHB (Per MDS) = $2,690.49 Per Diem: $200.00/day x 2 SNF Days = $400.00 Total Payment: $3,090.49 | 0 | 2018-01-03 |  | 2018-01-03 | 2018-01-03 | 22 | 22 | 3090.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213084 | S32431A | Disp fx of anterior column of right acetabulum, init | ICD10 | 01042018 | 12122017 | 01032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3090 | 3090 | Approved | 23 | Revenue | RV |  |  |  | 2.0 |
| 12042017 | 2017-12-04T11:26:04+00:00 |  | 000059879-01 | LOIS | GROOMS | CENTRAL OH HSPISTS INC | 937256 | LYLE T | OLSON | 1053373217 | COUNTRY CLUB RETIREMENT CENTER V LLC | 930468 | 1881021830 | COUNTRY CLUB RETIREMENT CENTER V LLC | 1881021830 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY CLUB RETIREMENT CENTER V LLC | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 12212017 | Standard |  |  | 2017-12-01 | 17/RUB01= $5813.99 | 0 | 2017-12-21 |  | 2018-01-04 | 2018-01-04 | 20 | 20 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204120 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 01042018 | 12012017 | 12212017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12142017 | 2017-12-14T09:26:42+00:00 |  | 000088279-01 | Donald | Gardner | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 01042018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12122017 | 12302017 | Standard |  |  | 2017-12-12 | 17/RUB01= $5813.99 | 0 | 2017-12-30 |  | 2018-01-04 | 2018-01-04 | 18 | 18 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214044 | E119, E785, I10, I2510, I639, R4182, R4701, T68XXXD | Hypothermia, subsequent encounter | ICD10 | 01042018 | 12122017 | 12302017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 12222017 | 2017-12-22T13:02:26+00:00 |  | 000089041-01 | Karen | Feisel | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12182017 | 12272017 | Standard |  |  | 2017-12-18 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-12-27 |  | 2018-01-02 |  | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222059 | I69354 | Hemiplga following cerebral infrc affecting left nondom side | ICD10 | 01042018 | 12182017 | 12272017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 10242017 | 2017-10-24T15:05:21+00:00 |  | 000024925-01 | MARILYN | HOCKMAN | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10212017 | 12302017 | Standard |  |  | 2017-10-21 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 40 days = $8000.00 TOTAL PAYMENT = $14,306.19 | 0 | 2017-12-30 | 2017-12-27 | 2018-01-03 | 2018-01-03 | 60 | 60 | 14306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024086 | S42302D, Z5189 | Encounter for other specified aftercare | ICD10 | 01042018 | 10212017 | 12302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 71 | Revenue | RV |  |  |  | 7.0 |
| 12052017 | 2017-12-05T15:14:58+00:00 |  | 000045030-01 | ROBERTA | BASS | NANCY LYNN ALKIRE LLC | 901854 | NANCY | ALKIRE | 1710924659 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12032017 | 12232017 | Standard |  |  | 2017-12-03 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-12-23 |  | 2018-01-02 | 2018-01-02 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205098 | J449, R296 | Repeated falls | ICD10 | 01042018 | 12032017 | 12232017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12062017 | 2017-12-06T13:26:59+00:00 |  | 000108853-01 | Mary | Cronin | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 01042018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12042017 | 12292017 | Standard |  |  | 2017-12-04 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-12-29 | 2017-12-22 | 2018-01-03 | 2018-01-03 | 25 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206067 | M545, S32010A | Wedge compression fracture of first lumbar vertebra, init | ICD10 | 01042018 | 12042017 | 12292017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 12182017 | 2017-12-18T15:58:29+00:00 |  | 000073678-01 | Jane | Young | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12152017 | 12192017 | Standard |  |  | 2017-12-15 | Per MDS: 17/HC101 = $3481.78 | 0 | 2017-12-19 |  | 2017-12-21 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219057 | S36593S, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 01042018 | 12152017 | 12192017 | HC101 | SPECIAL CARE HIGH , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 11282017 | 2017-11-28T11:00:25+00:00 |  | 000066116-01 | JANET | FLEISHER | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11242017 | 01012018 | Standard |  |  | 2017-11-24 | Contract/RUG: 16/RUC (Per MDS) = $7,333.11 Per Diem: $200.00 x 18 SNF Days = $3,600.00 Total Payment: $10,933.11 | 0 | 2018-01-01 |  | 2018-01-04 |  | 38 | 38 | 10933.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128092 | S9301XA | Subluxation of right ankle joint, initial encounter | ICD10 | 01042018 | 11242017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 39 | Revenue | RV |  |  |  | 1.0 |
| 12202017 | 2017-12-20T13:55:37+00:00 |  | 000088295-01 | David | Roffe | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12192017 | 01032018 | Standard |  |  | 2017-12-19 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-01-03 | 2018-01-04 | 2018-01-04 | 2018-01-04 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220077 | I619, R2689, R5383, Z741, Z736 | Limitation of activities due to disability | ICD10 | 01042018 | 12192017 | 01032018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 10302017 | 2017-10-30T09:46:51+00:00 |  | 000105509-01 | Mary | Pool | PAUL MD LLC | 921506 | PAWEL | SZCZYKUTOWICZ | 1831142439 | COTTINGHAM RETIREMENT CO | 949774 | 1245223007 | COTTINGHAM RETIREMENT COMMUNITY | 1245223007 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COTTINGHAM RETIREMENT COMMUNITY | 01042018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 11072017 | 12242017 | Standard |  |  | 2017-11-07 | Per MDS and SCA: 17/RVB01 = $5411.86 Per Diem: $200.00/day x 25 days = $5000.00 TOTAL PAYMENT = $10,411.86 | 0 | 2017-12-24 | 2017-12-21 | 2018-01-03 | 2018-01-03 | 45 | 45 | 10411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031076 | S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 01042018 | 11072017 | 12242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 48 | Revenue | RV |  |  |  | 7.0 |
| 11212017 | 2017-11-21T09:49:16+00:00 |  | 000033201-01 | DOROTHY | NICKELL | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11182017 | 12282017 | Standard |  |  | 2017-11-18 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day  x 14 days = $3500.00 TOTAL PAYMENT = $9806.19 | 66 | 2017-12-28 |  | 2018-01-03 |  | 34 | 100 | 9806.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121059 | M6281, R4182 | Altered mental status, unspecified | ICD10 | 01042018 | 11182017 | 12282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9806 | 9806 | Approved | 41 | Revenue | RV |  |  |  | 7.0 |
| 11302017 | 2017-11-30T12:05:16+00:00 |  | 000062303-01 | MARY | LODRIGUE | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11292017 | 12222017 | Standard |  |  | 2017-11-29 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-12-22 | 2018-01-19 | 2018-01-03 | 2018-01-03 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130098 | F419, I10, M6281, R569 | Unspecified convulsions | ICD10 | 01042018 | 11292017 | 12222017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 12192017 | 2017-12-19T08:17:17+00:00 |  | 000083470-01 | Patricia | Barstow | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12172017 | 01032018 | Standard |  |  | 2017-12-17 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-01-03 |  | 2017-12-28 | 2018-01-03 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219115 | E039, E785, I10, I509, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 01042018 | 12172017 | 01032018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 12262017 | 2017-12-26T08:21:55+00:00 |  | 000002922-01 | DORIS | GRIFFIN | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12212017 | 01032018 | Standard |  |  | 2017-12-21 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-01-03 |  | 2017-12-28 | 2018-01-03 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226018 | I10, N189, N390, R296 | Repeated falls | ICD10 | 01042018 | 12212017 | 01032018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 12212017 | 2017-12-21T15:19:46+00:00 |  | 000026941-01 | NORMA | RINEHART | PICKAWAY HEALTH SERVICES | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 01042018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12202017 | 12302017 | Standard |  |  | 2017-12-20 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-12-30 |  | 2018-01-02 | 2018-01-02 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221082 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 01042018 | 12202017 | 12302017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
