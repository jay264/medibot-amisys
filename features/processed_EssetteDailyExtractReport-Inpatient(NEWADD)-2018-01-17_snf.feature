Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-17_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-17_SNF
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
| 12292017 | 2017-12-29T15:07:33+00:00 |  | 000002524-01 | JOHN | DYE | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12282017 | 01152018 | Standard |  |  | 2017-12-28 | Per MDS: 16/RUB01 = $4429.71 | 46 | 2018-01-15 |  | 2018-01-16 | 2018-01-16 | 18 | 64 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229083 | I10, I2510, R269, R296, R410, Z950 | Presence of cardiac pacemaker | ICD10 | 01172018 | 12282017 | 01152018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 01052018 | 2018-01-05T14:13:04+00:00 |  | 000098060-01 | Norma | Ricketts | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01122018 | Standard |  |  | 2018-01-04 | 16/RVB01=$3,350.20 | 0 | 2018-01-12 |  | 2018-01-16 | 2018-01-16 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105078 | C169 | Malignant neoplasm of stomach, unspecified | ICD10 | 01172018 | 01042018 | 01122018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 12212017 | 2017-12-21T14:35:02+00:00 |  | 000080092-01 | Arabadella | Rinehart | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12202017 | 01092018 | Standard |  |  | 2017-12-20 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-01-09 |  | 2018-01-16 | 2018-01-08 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221075 | M6281, S42292D | Oth disp fx of upper end l humer, subs for fx w routn heal | ICD10 | 01172018 | 12202017 | 01092018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12192017 | 2017-12-19T13:02:07+00:00 |  | 000034793-01 | FRANCES | RAVER | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12182017 | 01112018 | Standard |  |  | 2017-12-18 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-01-11 |  | 2018-01-16 | 2018-01-08 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219117 | I340, I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 01172018 | 12182017 | 01112018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 01122018 | 2018-01-12T12:41:30+00:00 |  | 000022573-01 | RICHARD | BAUMANN | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01152018 | Standard |  |  | 2018-01-11 | Per MDS: 17/RHC01 = $4132.02 | 0 | 2018-01-15 |  | 2018-01-16 | 2018-01-15 | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112073 | E785, M1711, R296, R52 | Pain, unspecified | ICD10 | 01172018 | 01112018 | 01152018 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 12282017 | 2017-12-28T17:38:00+00:00 |  | 000014426-01 | HAROLD | CAIN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12262017 | 01142018 | Standard |  |  | 2017-12-26 | 17/RVL01=$ | 0 | 2018-01-14 |  | 2018-01-15 | 2018-01-15 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229007 | J189 | Pneumonia, unspecified organism | ICD10 | 01172018 | 12262017 | 01142018 | RVL01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA OR | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 12202017 | 2017-12-20T08:30:47+00:00 |  | 000111713-01 | Dora | Smailes | TEAGUE, PHILLIP C | 944173 | PHILLIP C | TEAGUE | 1770571069 | COSHOCTON HEALTHCARE & REHAB CENTER | 929914 | 1639410806 | COSHOCTON HEALTHCARE & REHAB CENTER | 1639410806 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COSHOCTON HEALTHCARE & REHAB CENTER | 01172018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12182017 | 01012018 | Standard |  |  | 2017-12-18 | 17/RUC01= $6049.81 | 30 | 2018-01-01 |  | 2018-01-17 |  | 14 | 44 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220057 | K1120 | Sialoadenitis, unspecified | ICD10 | 01172018 | 12182017 | 01012018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12132017 | 2017-12-13T14:59:02+00:00 |  | 000106587-01 | Christopher | Jarrells | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | RIVERSIDE NURSING & REHAB | 910253 | 1114918836 | RIVERSIDE NURSING & REHAB | 1114918836 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | RIVERSIDE NURSING & REHAB | 01172018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12112017 | 12292017 | Standard |  |  | 2017-12-11 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 | 57 | 2017-12-29 |  | 2018-01-17 |  | 18 | 75 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213101 | J9611 | Chronic respiratory failure with hypoxia | ICD10 | 01172018 | 12112017 | 12292017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 12112017 | 2017-12-11T07:59:33+00:00 |  | 000046857-01 | EDNA | LOWE | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12072017 | 01052018 | Standard |  |  | 2017-12-07 | 16/RUC01=$7,333.11 PER DIEM RATE OF $200.00/DAY X 9 DAYS= $1,800.00 TOTAL PAYMENT TO FACILITY=$9,133.11 | 0 | 2018-01-05 |  | 2018-01-16 | 2018-01-16 | 29 | 29 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211067 | J9602 | Acute respiratory failure with hypercapnia | ICD10 | 01172018 | 12072017 | 01052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9133 | 9133 | Approved Skilled | 30 | Revenue | RV |  |  |  | 2.0 |
| 12112017 | 2017-12-11T15:01:19+00:00 |  | 000044378-01 | NEVIL | WATSON | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12092017 | 01022018 | Standard |  |  | 2017-12-09 | 17/RUB01= $5813.99 4 DAYS @ $250.00= $1000.00 TOTAL: $6813.99 | 0 | 2018-01-02 |  | 2018-01-17 |  | 24 | 24 | 6813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211153 | E669, I4891, I8291 | Chronic embolism and thrombosis of unspecified vein | ICD10 | 01172018 | 12092017 | 01022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6813 | 6813 | Approved | 25 | Revenue | RV |  |  |  | 4.0 |
| 11212017 | 2017-11-21T14:10:09+00:00 |  | 000117257-01 | Harold | Bowers | PICKAWAY HEALTH SERVICES | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11202017 | 01062018 | Standard |  |  | 2017-11-20 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 27 days = $6750.00 TOTAL PAYMENT = $12,799.81 | 0 | 2018-01-06 | 2018-01-03 | 2018-01-08 | 2018-01-08 | 47 | 47 | 12799.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121075 | S72143S, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 01172018 | 11202017 | 01062018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 48 | Revenue | RV |  |  |  | 2.0 |
| 11292017 | 2017-11-29T10:01:44+00:00 |  | 000034014-01 | BEATRICE | MADDEN | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11272017 | 12112017 | Standard |  |  | 2017-11-27 | Per MDS: 17/RVC01 = $6306.19 | 36 | 2017-12-11 | 2018-01-04 | 2018-01-04 | 2018-01-04 | 14 | 50 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129111 | M6282 | Rhabdomyolysis | ICD10 | 01172018 | 11272017 | 12112017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12082017 | 2017-12-08T16:50:13+00:00 |  | 000104972-01 | Delores | Ellison | GERIMED INC | 932657 | EMMANUEL V | RIVERA | 1912946146 | LEBANON HEALTH CARE CENT | 951201 | 1053851055 | LEBANON HEALTH CARE CENTER | 1053851055 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LEBANON HEALTH CARE CENTER | 01172018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12072017 | 01102018 | Standard |  |  | 2017-12-07 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 Per Diem: $250.00/day x 4 SNF days = $ 1,000.00 Total Payment: $4,586.28 | 0 | 2018-01-10 |  | 2018-01-16 |  | 24 | 28 | 4586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211050 | K5669 | Other intestinal obstruction | ICD10 | 01172018 | 12072017 | 01102018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4586 | 4586 | Approved | 35 | Revenue | RV |  |  |  | 4.0 |
| 01092018 | 2018-01-09T16:29:53+00:00 |  | 000084240-01 | John | Reynolds | AHMED, IMTIAZ | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01062018 | 01152018 | Standard |  |  | 2018-01-06 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2018-01-15 |  | 2018-01-17 | 2018-01-17 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110031 | K921 | Melena | ICD10 | 01172018 | 01062018 | 01152018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01102018 | 2018-01-10T11:43:30+00:00 |  | 000098419-01 | Patricia | Trent | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 916533 | 1215960901 | GREENFIELD AREA MEDICAL CENTER SNF | 1235155425 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER SNF | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01082018 | 01172018 | Standard |  |  | 2018-01-08 |  | 0 | 2018-01-17 |  |  | 2018-01-15 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110071 | M4326 | Fusion of spine, lumbar region | ICD10 | 01172018 | 01082018 | 01172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 10 | Revenue | RV |  |  |  | 2.0 |
| 11082017 | 2017-11-08T16:30:11+00:00 |  | 000060428-01 | ALBERT | KRAMER | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | GARDEN REHAB AND HEALTH | 949780 | 1245785310 | CAPITAL CITY GARDENS REHABILITATION | 1245785310 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CAPITAL CITY GARDENS REHABILITATION | 01172018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11062017 | 01162018 | Standard |  |  | 2017-11-06 | 17/RVC01= $6306.19 35 days@ $200.00= $7000.00 TOTAL: $13306.19 | 0 | 2018-01-16 |  | 2018-01-17 | 2018-01-17 | 55 | 71 | 13306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109012 | D649, M8440XA | Pathological fracture, unsp site, init encntr for fracture | ICD10 | 01172018 | 11062017 | 01162018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 72 | Revenue | RV |  |  |  | 16.0 |
