Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-19_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-19_SNF
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
| 08292017 | 2017-08-29T11:28:58+00:00 |  | 000008791-01 | EVELYN | NETHERS | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | THORNVILLE HEALTH & REHABILITATION C | 939903 | 1689064487 | THORNVILLE HEALTH & REHABILITATION C | 1689064487 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THORNVILLE HEALTH & REHABILITATION C | 09192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08272017 | 09082017 | Standard |  |  | 2017-08-27 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-09-09 |  | 2017-09-11 | 2017-09-11 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829065 | N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 09192017 | 08272017 | 09092017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06192017 | 2017-06-19T12:44:27+00:00 |  | 000057679-01 | JAMES | PAGE | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 09192017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06152017 | 09042017 | Standard |  |  | 2017-06-15 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $200.00/day x 59 days = $11,800.00 TOTAL PAYMENT = $17,211.86 | 0 | 2017-09-05 |  | 2017-09-12 |  | 79 | 79 | 17211.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619111 | L03313, Z5189 | Encounter for other specified aftercare | ICD10 | 09192017 | 06152017 | 09052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 82 | Revenue | RV |  |  |  | 6.0 |
| 08162017 | 2017-08-16T10:09:34+00:00 |  | 000009165-01 | BERNICE | COLEMAN | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 09192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08142017 | 09102017 | Standard |  |  | 2017-08-14 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 8 days = $2000.00 TOTAL PAYMENT = $7813.99 | 0 | 2017-09-11 |  | 2017-09-12 | 2017-09-12 | 28 | 28 | 7813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816054 | Z5189, Z9181 | History of falling | ICD10 | 09192017 | 08142017 | 09112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7813 | 7813 | Approved | 28 | Revenue | RV |  |  |  | 8.0 |
| 08182017 | 2017-08-18T15:15:03+00:00 |  | 000034014-01 | BEATRICE | MADDEN | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 09192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08172017 | 08302017 | Standard |  |  | 2017-08-17 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-08-31 | 2017-09-12 | 2017-09-12 | 2017-09-12 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821092 | N390 | Urinary tract infection, site not specified | ICD10 | 09192017 | 08172017 | 08312017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 08212017 | 2017-08-21T13:05:55+00:00 |  | 000043722-01 | HAROLD | WHEELER | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 09192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08192017 | 08312017 | Standard |  |  | 2017-08-19 | Per MDS: 17/RVC01 = $6306.19 | 18 | 2017-09-01 | 2017-09-12 | 2017-09-12 | 2017-09-12 | 13 | 31 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822014 | R531 | Weakness | ICD10 | 09192017 | 08192017 | 09012017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 08252017 | 2017-08-25T16:46:29+00:00 |  | 000049168-01 | ABAGAIL | MALONE | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 09192017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08232017 | 08292017 | Standard |  |  | 2017-08-23 | Per MDS: 17/RHC01 = $4132.02 | 13 | 2017-08-30 |  | 2017-09-12 | 2017-09-12 | 7 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170826004 | M160 | Bilateral primary osteoarthritis of hip | ICD10 | 09192017 | 08232017 | 08302017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 08282017 | 2017-08-28T09:59:16+00:00 |  | 000048487-01 | EVERETT | SMITH | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 09192017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 08252017 | 09082017 | Standard |  |  | 2017-08-25 | Per MDS: 17/RHC01 = $4132.02 | 0 | 2017-09-09 |  | 2017-09-12 | 2017-09-12 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828068 | I482 | Chronic atrial fibrillation | ICD10 | 09192017 | 08252017 | 09092017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 08292017 | 2017-08-29T10:13:05+00:00 |  | 000079815-01 | Martha | Walker | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 09192017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08252017 | 08312017 | Standard |  |  | 2017-08-25 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-09-01 |  | 2017-09-12 | 2017-09-12 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829056 | M6281 | Muscle weakness (generalized) | ICD10 | 09192017 | 08252017 | 09012017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 08312017 | 2017-08-31T13:06:38+00:00 |  | 000033155-01 | Michael | Noll | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 09192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08302017 | 09082017 | Standard |  |  | 2017-08-30 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-09-09 |  | 2017-09-12 | 2017-09-12 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831057 | B379, L0390, M6282, N179, R0602, R296, R531, R600 | Localized edema | ICD10 | 09192017 | 08302017 | 09092017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 09012017 | 2017-09-01T14:33:59+00:00 |  | 000052993-01 | ROBERT | MCNEAL | GREENFIELD AREA MED CTR | 936489 |  | GREENFIELD AREA MEDICAL CENTER | 1215960901 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 09192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08302017 | 09122017 | Standard |  |  | 2017-08-30 | Swing Bed daily rate x 14 days | 0 | 2017-09-13 |  |  | 2017-09-11 | 14 | 14 | swing bed daily rate x 14 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901061 | Z89519 | Acquired absence of unspecified leg below knee | ICD10 | 09192017 | 08302017 | 09132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 14 | Revenue | RV |  |  |  | 2.0 |
| 09052017 | 2017-09-05T11:40:02+00:00 |  | 000002821-01 | JAMES | PRICE | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 09192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09022017 | 09062017 | Standard |  |  | 2017-09-02 | Per MDS; 17/PD101 = $2581.99 | 0 | 2017-09-07 |  | 2017-09-12 | 2017-09-12 | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905106 | N390 | Urinary tract infection, site not specified | ICD10 | 09192017 | 09022017 | 09072017 | PD101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCP | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 08242017 | 2017-08-24T05:10:03+00:00 |  | 000110712-01 | Geneva | Bishop | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 09192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08222017 | 09102017 | Standard |  |  | 2017-08-22 | Contract/RUG: 17/RVC  (Per MDS) = $6,306.19 | 0 | 2017-09-11 |  | 2017-09-18 | 2017-09-18 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824035 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 09192017 | 08222017 | 09112017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 08302017 | 2017-08-30T13:56:19+00:00 |  | 000025444-01 | MARGARET | LLOYD | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08292017 | 09142017 | Standard |  |  | 2017-08-29 | Swing Bed Daily Rate x 16 SNF Days | 0 | 2017-09-15 |  |  | 2017-09-13 | 16 | 17 | Swing Bed Daily Rate x 16 SNF Days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830066 | Z5189 | Encounter for other specified aftercare | ICD10 | 09192017 | 08292017 | 09152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 17 | Revenue | RV |  |  |  | 1.0 |
| 08282017 | 2017-08-28T13:48:16+00:00 |  | 000070764-01 | Donna | Vest Barker | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 902185 | 1205823770 | SCIOTO RETIREMENT COMMUNITY | 1205823770 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 09192017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08252017 | 09132017 | Standard |  |  | 2017-08-25 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-09-14 |  | 2017-09-15 | 2017-09-12 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828111 | R7881 | Bacteremia | ICD10 | 09192017 | 08252017 | 09142017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09192017 | 2017-09-19T12:55:59+00:00 |  | 000093504-01 | Nancy | Tabor | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 09192017 | Approved | MediGold Classic Preferred | EMR | SNF | Inpatient | 08312017 | 08312017 | Standard |  |  | 2017-08-31 | PER DIEM RATE OF $200.00 X 1 DAY=$200.00 | 0 | 2017-08-31 |  |  |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919070 | Z96641 | Presence of right artificial hip joint | ICD10 | 09192017 | 08312017 | 08312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 1 | Revenue | RV |  |  |  | 1.0 |
