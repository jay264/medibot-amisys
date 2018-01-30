Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-29_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-29_SNF
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
| 01042018 | 2018-01-04T15:05:48+00:00 |  | 000102110-01 | Angelyn | Blakeman | PICKAWAY HEALTH SERVICES | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01032018 | 01242018 | Standard |  |  | 2018-01-03 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-01-24 |  | 2018-01-24 | 2018-01-24 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104111 | I482 | Chronic atrial fibrillation | ICD10 | 01292018 | 01032018 | 01242018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01112018 | 2018-01-11T13:30:32+00:00 |  | 000045598-01 | MARY | ROLL | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01102018 | 01242018 | Standard |  |  | 2018-01-10 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2018-01-24 |  | 2018-01-24 | 2018-01-24 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111082 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 01292018 | 01102018 | 01242018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01122018 | 2018-01-12T12:04:26+00:00 |  | 000116303-01 | Judith | White | NEEL RAYA MD INC | 906799 |  | NEELKANT RAYA MD INC | 1720268626 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 01292018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01112018 | 01192018 | Standard |  |  | 2018-01-11 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-01-19 |  | 2018-01-22 | 2018-01-26 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112063 | Z4733, Z96651 | Presence of right artificial knee joint | ICD10 | 01292018 | 01112018 | 01192018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 01162018 | 2018-01-16T10:24:26+00:00 |  | 000036889-01 | MARVIN | WISECUP | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01122018 | 01252018 | Standard |  |  | 2018-01-12 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2018-01-25 |  | 2018-01-25 | 2018-01-25 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116043 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 01292018 | 01122018 | 01252018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01172018 | 2018-01-17T15:07:46+00:00 |  | 000115950-01 | Norma | Johnson | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01152018 | 01222018 | Standard |  |  | 2018-01-15 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-01-22 |  | 2018-01-24 |  | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117064 | I96 | Gangrene, not elsewhere classified | ICD10 | 01292018 | 01152018 | 01222018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 12182017 | 2017-12-18T15:43:57+00:00 |  | 000024061-01 | WANDA | TUCKER | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12152017 | 01152018 | Standard |  |  | 2017-12-15 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 11 days = $2200.00 TOTAL PAYMENT = $8506.19 | 0 | 2018-01-15 |  | 2018-01-23 | 2018-01-26 | 31 | 31 | 8506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219047 | S72142P, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 01292018 | 12152017 | 01152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8506 | 8506 | Approved | 32 | Revenue | RV |  |  |  | 4.0 |
| 12262017 | 2017-12-26T12:19:57+00:00 |  | 000097609-01 | Janet | Graf | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12222017 | 12312017 | Standard |  |  | 2017-12-22 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-12-31 |  | 2018-01-12 | 2018-01-26 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226135 | Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 01292018 | 12222017 | 12312017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 12282017 | 2017-12-28T14:44:01+00:00 |  | 000085530-01 | John | Park | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12262017 | 01172018 | Standard |  |  | 2017-12-26 | Per MDS: 17/RUC = $6049.81 Per Diem: $250.00/day x 1 day = $250.00 Per Diem: $200.00/day x 1 day = $200.00 TOTAL PAYMENT = $6499.81 | 43 | 2018-01-17 |  | 2018-01-26 |  | 22 | 65 | 6499.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228075 | I25810, I5020, J431, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 01292018 | 12262017 | 01172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6499 | 6499 | Approved | 23 | Revenue | RV |  |  |  | 2.0 |
| 01092018 | 2018-01-09T11:06:35+00:00 |  | 000040909-01 | NAOMI | KNOTTS | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 01142018 | Standard |  |  | 2018-01-05 | PEr MDS: 17/RUC01 = $6049.81 | 0 | 2018-01-14 |  | 2018-01-26 |  | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109136 | I5033, M6281 | Muscle weakness (generalized) | ICD10 | 01292018 | 01052018 | 01142018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01092018 | 2018-01-09T11:11:15+00:00 |  | 000036755-01 | CATHERINE | LEACH | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01062018 | 01252018 | Standard |  |  | 2018-01-06 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-01-25 |  | 2018-01-26 | 2018-01-26 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109137 | I82403, M6281, S32030D | Wedge comprsn fx third lum vert, subs for fx w routn heal | ICD10 | 01292018 | 01062018 | 01252018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01112018 | 2018-01-11T16:27:35+00:00 |  | 000111483-01 | William | Hoyles | SENIORS FIRST INC | 931142 | AMAN | AHMED | 1316046188 | HEARTLAND OF MADEIRA OH LLC | 920759 | 1871534834 | HEARTLAND OF MADEIRA OH LLC | 1871534834 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MADEIRA OH LLC | 01292018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 01092018 | 01172018 | Standard |  |  | 2018-01-09 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-01-17 |  | 2018-01-26 | 2018-01-26 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112002 | S9301XD | Subluxation of right ankle joint, subsequent encounter | ICD10 | 01292018 | 01092018 | 01172018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 12042017 | 2017-12-04T14:06:32+00:00 |  | 000044533-01 | PAULINE | RUSSELL | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 01042018 | Standard |  |  | 2017-12-01 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 9 days = $2250.00 Per Diem: $200.00/day x 5 days = $1000.00 TOTAL PAYMENT = $9299.81 | 0 | 2018-01-04 | 2018-01-26 | 2018-01-26 | 2018-01-26 | 34 | 34 | 9299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204155 | A419 | Sepsis, unspecified organism | ICD10 | 01292018 | 12012017 | 01042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9299 | 9299 | Approved | 35 | Revenue | RV |  |  |  | 5.0 |
| 12112017 | 2017-12-11T12:40:10+00:00 |  | 000062669-01 | JOSEPH | SOUTHERN | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12072017 | 01122018 | Standard |  |  | 2017-12-07 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 12 days = $3000.00 Per Diem: $200.00/day x 4 days = $800.00 TOTAL PAYMENT = $9849.81 | 29 | 2018-01-12 | 2018-01-11 | 2018-01-26 | 2018-01-26 | 36 | 65 | 9849.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211107 | S32009D | Unsp fracture of unsp lum vertebra, subs for fx w routn heal | ICD10 | 01292018 | 12072017 | 01122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9849 | 9849 | Approved | 37 | Revenue | RV |  |  |  | 2.0 |
| 12142017 | 2017-12-14T13:12:22+00:00 |  | 000028125-01 | HAROLD | NEELY | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12122017 | 01182018 | Standard |  |  | 2017-12-12 | Per MDS: 17/RUA01 = $3214.76 Per Diem: $250.00/day x 8 days = $2000.00 Per Diem: $200.00/day x 9 days = $1800.00 TOTAL PAYMENT = $7014.76 | 0 | 2018-01-18 | 2018-01-16 | 2018-01-19 | 2018-01-19 | 37 | 37 | 7014.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215015 | C9000, Z5189 | Encounter for other specified aftercare | ICD10 | 01292018 | 12122017 | 01182018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7014 | 7014 | Approved | 38 | Revenue | RV |  |  |  | 3.0 |
| 12262017 | 2017-12-26T14:02:20+00:00 |  | 000077972-01 | Sandy | Daniels | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 01292018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12242017 | 01062018 | Standard |  |  | 2017-12-24 | per diem rate of $200.00/day x 13 days=$2,600.00 carve out per invoice for wound vac=$1,684.42 total payment to facility=$4,284.42 | 0 | 2018-01-06 |  | 2018-01-12 | 2018-01-12 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226156 | R2689, R531 | Weakness | ICD10 | 01292018 | 12242017 | 01062018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4284 | 4284 | Approved Skilled | 14 | Revenue | RV |  |  |  | 13.0 |
| 12282017 | 2017-12-28T15:04:27+00:00 |  | 000111750-01 | GLORIA | MANN | FCMH MED & SURG ASSOC | 906134 | DAVID J | GUNDERMAN | 1508861246 | HEARTLAND OF HILLSBORO OH LLC | 940121 | 1184666711 | HEARTLAND OF HILLSBORO OH LLC | 1184666711 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF HILLSBORO OH LLC | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12272017 | 01132018 | Standard |  |  | 2017-12-27 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-01-13 | 2018-01-26 | 2018-01-26 | 2018-01-26 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228078 | N390 | Urinary tract infection, site not specified | ICD10 | 01292018 | 12272017 | 01132018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 01022018 | 2018-01-02T16:44:31+00:00 |  | 000121003-01 | MARCELLA | HENSON | FCMH MED & SURG ASSOC | 906134 | DAVID J | GUNDERMAN | 1508861246 | HEARTLAND OF HILLSBORO OH LLC | 940121 | 1184666711 | HEARTLAND OF HILLSBORO OH LLC | 1184666711 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF HILLSBORO OH LLC | 01292018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 01012018 | 01252018 | Standard |  |  | 2018-01-01 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $200.00/day x 1 day = $200.00 TOTAL PAYMENT = $6249.81 | 3 | 2018-01-25 |  | 2018-01-26 | 2018-01-26 | 21 | 24 | 6249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103066 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 01292018 | 01012018 | 01252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6249 | 6249 | Approved | 25 | Revenue | RV |  |  |  | 1.0 |
| 01042018 | 2018-01-04T15:13:18+00:00 |  | 000116146-01 | Clinton | Beaver | FCMH MED & SURG ASSOC | 906134 | DAVID J | GUNDERMAN | 1508861246 | HEARTLAND OF HILLSBORO OH LLC | 940121 | 1184666711 | HEARTLAND OF HILLSBORO OH LLC | 1184666711 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF HILLSBORO OH LLC | 01292018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 01032018 | 01192018 | Standard |  |  | 2018-01-03 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-01-19 |  | 2018-01-26 | 2018-01-26 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104113 | S32010D | Wedge comprsn fx first lum vert, subs for fx w routn heal | ICD10 | 01292018 | 01032018 | 01192018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 01082018 | 2018-01-08T08:55:18+00:00 |  | 000007344-01 | LOIS | HAMILTON | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 01242018 | Standard |  |  | 2018-01-05 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-01-24 |  | 2018-01-26 | 2018-01-26 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108075 | E876, F0390, I4891 | Unspecified atrial fibrillation | ICD10 | 01292018 | 01052018 | 01242018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01162018 | 2018-01-16T10:18:00+00:00 |  | 000043183-01 | PATRICIA | ELLIOTT | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01132018 | 01262018 | Standard |  |  | 2018-01-13 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-01-26 |  | 2018-01-26 | 2018-01-26 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116038 | Z96652 | Presence of left artificial knee joint | ICD10 | 01292018 | 01132018 | 01262018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01172018 | 2018-01-17T13:59:27+00:00 |  | 000002221-01 | MARGARET | COVERDALE | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01162018 | 01262018 | Standard |  |  | 2018-01-16 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-26 |  | 2018-01-29 | 2018-01-29 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117057 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 01292018 | 01162018 | 01262018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01182018 | 2018-01-18T14:14:37+00:00 |  | 000049202-01 | MARGARET | HENRY | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01172018 | 01222018 | Standard |  |  | 2018-01-17 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-01-22 |  | 2018-01-24 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118075 | E662, H449, N182, N390, R296 | Repeated falls | ICD10 | 01292018 | 01172018 | 01222018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 01252018 | 2018-01-25T18:15:09+00:00 |  | 000105169-01 | Harriett | Edmister | CARROLL, FREDERICK C | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 01292018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01232018 | 01272018 | Standard |  |  | 2018-01-23 | 4 DAYS OF NONSKILLED @ $200.00= $800.00 | 0 | 2018-01-27 |  |  |  | 4 | 0 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126025 | G301 | Alzheimer's disease with late onset | ICD10 | 01292018 | 01232018 | 01272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
| 01092018 | 2018-01-09T10:51:17+00:00 |  | 000007044-01 | CAROL | CAREY | BERGER HEALTH PARTNERS | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01062018 | 01262018 | Standard |  |  | 2018-01-06 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-01-26 | 2018-01-24 | 2018-01-29 | 2018-01-29 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109133 | R55 | Syncope and collapse | ICD10 | 01292018 | 01062018 | 01262018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 01162018 | 2018-01-16T13:36:43+00:00 |  | 000043408-01 | GERDA | WINKLER | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01142018 | 01232018 | Standard |  |  | 2018-01-14 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-01-23 | 2018-01-24 | 2018-01-29 | 2018-01-24 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116074 | N390, Z9181 | History of falling | ICD10 | 01292018 | 01142018 | 01232018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01162018 | 2018-01-16T13:42:54+00:00 |  | 000070097-01 | Allen | Beasley | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 01292018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01142018 | 01252018 | Standard |  |  | 2018-01-14 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-01-25 | 2018-01-26 | 2018-01-26 | 2018-01-29 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116076 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01292018 | 01142018 | 01252018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01192018 | 2018-01-19T16:11:11+00:00 |  | 000110483-01 | John | Beedy | AHMED, AIJAZ | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 01292018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 01182018 | 01212018 | Standard |  |  | 2018-01-18 | Per Diem: $200.00/day x 3 SNF days = $600.00 | 3 | 2018-01-21 |  | 2018-01-29 |  | 3 | 6 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119089 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 01292018 | 01182018 | 01212018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
