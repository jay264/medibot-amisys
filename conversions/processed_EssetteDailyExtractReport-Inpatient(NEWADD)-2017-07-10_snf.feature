Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-10_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-10_SNF
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
| 04182017 | 2017-04-18T12:16:31+00:00 |  | 000083739-01 | Betty | Baxter | PIKE MED & SURG ASSOC | 935928 | ELLIS | FRAZIER | 1245228196 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04152017 | 07012017 | Standard |  |  | 2017-04-15 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 33 days = $8250.00 Per Diem: $200.00/day x 14 days = $2800.00 IV Invanz: Per invoice = $456.72 IV Cefoxitin: Per Invoice =  $86.33 TOTAL PAYMENT = $17,642.86 | 20 | 2017-07-02 | 2017-06-29 | 2017-07-07 | 2017-06-29 | 67 | 87 | 17642.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418037 | J189, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 07102017 | 04152017 | 07022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 78 | Revenue | RV |  |  |  | 4.0 |
| 05122017 | 2017-05-12T16:29:57+00:00 |  | 000072716-01 | John | Stemen | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05102017 | 07022017 | Standard |  |  | 2017-05-10 | 17/RVB01=$5411.86 30 DAYS @ $200.00= $6000.00 TOTAL: $11411.86 | 0 | 2017-07-03 | 2017-07-10 | 2017-07-10 | 2017-07-17 | 50 | 50 | 11411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515035 | T827XXA | Infect/inflm react d/t oth cardi/vasc dev/implnt/grft, init | ICD10 | 07102017 | 05102017 | 07032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 54 | Revenue | RV |  |  |  | 3.0 |
| 05232017 | 2017-05-23T16:10:07+00:00 |  | 000033680-01 | WANDA | SCHRADER | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05192017 | 06262017 | Standard |  |  | 2017-05-19 | Per MDS: 17/RVC01 = $6309.19 Per Diem: $200.00/day x 19 days = $3800.00 IV Vancomycin (began 6/8/17) Per Invoice = 306.91 TOTAL PAYMENT = $10,413.10 | 0 | 2017-06-27 |  | 2017-07-07 | 2017-06-26 | 39 | 39 | 10413.1 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524010 | S52592D, S72321D | Displ transverse fx shaft of r femr, 7thD | ICD10 | 07102017 | 05192017 | 06272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 39 | Revenue | RV |  |  |  | 8.0 |
| 05252017 | 2017-05-25T10:25:11+00:00 |  | 000028205-01 | ANN | CARPENTER | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 06282017 | Standard |  |  | 2017-05-23 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $200.00/day x15 days = $3000.00 TOTAL PAYMENT = $8411.86 | 0 | 2017-06-29 | 2017-06-26 | 2017-07-06 | 2017-07-06 | 35 | 35 | 8411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525053 | S32010A, Z5189 | Encounter for other specified aftercare | ICD10 | 07102017 | 05232017 | 06292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8411 | 8411 | Approved | 37 | Revenue | RV |  |  |  | 6.0 |
| 05302017 | 2017-05-30T10:00:50+00:00 |  | 000079815-01 | Martha | Walker | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 07102017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05272017 | 05302017 | Standard |  |  | 2017-05-26 | Per MDS: 17/CA101 = $2698.63 | 0 | 2017-05-31 |  | 2017-07-10 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530136 | R079 | Chest pain, unspecified | ICD10 | 07102017 | 05272017 | 05312017 | CA101 | CLINICALLY COMPLEX , ADL INDEX 0-1/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 4 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 05312017 | 2017-05-31T13:20:09+00:00 |  | 000024115-01 | CATHERINE | DAVIS | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07102017 | 07172017 | Standard |  |  | 2017-05-27 | 17/RVC01=$6,306.19 | 0 | 2017-06-08 |  | 2017-06-27 | 2017-06-27 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531079 | I10, R221, R5381, S3289XD | Fracture of oth parts of pelvis, subs for fx w routn heal | ICD10 | 07102017 | 05272017 | 06082017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 06012017 | 2017-06-01T13:29:20+00:00 |  | 000008217-01 | LOIS | LIST | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07102017 | 07172017 | Standard |  |  | 2017-05-30 | 17/RUB01=$5,813.99 | 0 | 2017-06-09 |  | 2017-06-27 | 2017-06-27 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601078 | I4891, M6281, S22089D | Unsp fracture of T11-T12 vertebra, subs for fx w routn heal | ICD10 | 07102017 | 05302017 | 06092017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 06082017 | 2017-06-08T14:02:28+00:00 |  | 000012620-01 | MARTHA | KROENER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06062017 | 07052017 | Standard |  |  | 2017-06-06 | 17/RUC01=$6049.81 10 DAYS @ $200.00= $2000.00 TOTAL: $8049.81 | 0 | 2017-07-06 |  | 2017-07-10 | 2017-07-10 | 30 | 30 | 8049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608067 | J189 | Pneumonia, unspecified organism | ICD10 | 07102017 | 06062017 | 07062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8049 | 8049 | Approved | 30 | Revenue | RV |  |  |  | 2.0 |
| 06092017 | 2017-06-09T11:11:20+00:00 |  | 000062668-01 | GAIL | LANDEFELD | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 07102017 | Approved | THE TIMKEN COMPANY | Fax | SNF | Inpatient | 07102017 | 07172017 | Standard |  |  | 2017-06-07 | PER DIEM RATE OF $200.00/DAY X 3 DAYS=$600.00 CARVE OUT FOR IV THERAPY PER INVOICES=$744.86 tOTAL PAYMENT=$1,344.86 | 0 | 2017-06-10 |  | 2017-07-10 |  | 3 | 3 | 1344.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609050 | T8452XD | Infect/inflm reaction due to internal left hip prosth, subs | ICD10 | 07102017 | 06072017 | 06102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 1344 |  | 8 | Revenue | RV |  |  |  | 20.0 |
| 06092017 | 2017-06-09T12:55:37+00:00 |  | 000008224-01 | MARIANN | SCHMITT | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07102017 | 07172017 | Standard |  |  | 2017-06-07 | 17/RUC01=$6,049.81 | 0 | 2017-06-17 |  | 2017-07-27 | 2017-07-27 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609054 | D649, R4182, W19XXXA | Unspecified fall, initial encounter | ICD10 | 07102017 | 06072017 | 07172017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 06142017 | 2017-06-14T15:33:15+00:00 |  | 000043562-01 | DAVID | BRAUER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06122017 | 06222017 | Standard |  |  | 2017-06-12 | 17/RVB01= $5411.86 | 0 | 2017-06-23 |  | 2017-07-10 | 2017-07-10 | 11 | 11 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614072 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 07102017 | 06122017 | 06232017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06192017 | 2017-06-19T09:46:38+00:00 |  | 000013939-01 | AVANELLE | BAKER | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06162017 | 07062017 | Standard |  |  | 2017-06-16 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 1 day = $200.00 TOTAL PAYMENT = $7533.11 | 0 | 2017-07-07 |  | 2017-06-28 | 2017-07-09 | 21 | 21 | 7533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619071 | E119, I10, I739, S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 07102017 | 06162017 | 07072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7533 | 7533 | Approved | 21 | Revenue | RV |  |  |  | 1.0 |
| 06192017 | 2017-06-19T14:00:03+00:00 |  | 000016516-01 | ANNA | SHULTZ | COPC CENTRAL OHIO PRIMAR | 901490 | ANURADHA | KESARI | 1740389352 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07102017 | 07172017 | Standard |  |  | 2017-06-17 | 17/RVC01=$6306.19 | 0 | 2017-07-06 |  | 2017-06-19 | 2017-06-19 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619118 | S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 07102017 | 06172017 | 07062017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 06192017 | 2017-06-19T17:07:10+00:00 |  | 000007563-01 | BETTY | BAKER | COPC CENTRAL OHIO PRIMAR | 901490 | ANURADHA | KESARI | 1740389352 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07102017 | 07172017 | Standard |  |  | 2017-06-17 | 17/RVA01=$3,586.28 | 3 | 2017-06-24 |  | 2017-07-03 | 2017-07-03 | 7 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620012 | G9340 | Encephalopathy, unspecified | ICD10 | 07102017 | 06172017 | 06242017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 06212017 | 2017-06-21T15:45:06+00:00 |  | 000019563-01 | DORA | ZWEYDORFF | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 07102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06202017 | 06292017 | Standard |  |  | 2017-06-20 | 16/RUB01= $4429.71 | 0 | 2017-06-30 |  | 2017-07-07 | 2017-07-07 | 10 | 10 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621076 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 07102017 | 06202017 | 06032017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 07042017 | 2017-07-04T09:48:01+00:00 |  | 000077898-01 | Willard | Hatfield | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | THE OAKS AT BETHESDA | 930994 | 1295172047 | THE OAKS AT BETHESDA | 1295172047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE OAKS AT BETHESDA | 07102017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07022017 | 07022017 | Standard |  |  | 2017-07-02 | 1 DAY @ $200.00= $200.00 | 0 | 2017-07-03 |  | 2017-07-07 |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705038 | L03115, L03116 | Cellulitis of left lower limb | ICD10 | 07102017 | 07022017 | 07032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
| 07032017 | 2017-07-03T14:41:15+00:00 |  | 000048487-01 | EVERETT | SMITH | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 07102017 | Denied Skilled - Pay Unskilled | MediGold Medical Only | Fax |  | Inpatient | 06292017 | 07072017 | Standard |  |  | 2017-06-29 | Admission Denial: Unskilled Per diem: $200.00/day x 9 days = $1800.00 | 0 | 2017-07-08 |  |  |  | 0 | 0 | 1800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170703122 | K567 | Ileus, unspecified | ICD10 | 07102017 | 06292017 | 07082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1800 | 1800 | Approved Unskilled | 9 | Revenue | RV |  |  |  | 9.0 |
