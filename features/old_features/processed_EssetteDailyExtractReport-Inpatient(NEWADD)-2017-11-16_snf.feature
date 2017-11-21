Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-16_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-16_SNF
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
| 09112017 | 2017-09-11T14:51:57+00:00 |  | 000107490-01 | Clarence | Barnhart | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09072017 | 10262017 | Standard |  |  | 2017-09-07 | Per MDS: 17/RUB = $5813.99 Per Diem: $250.00/day x 26 days = $6500.00 TOTAL PAYMENT = $12,313.99 | 1 | 2017-10-26 |  | 2017-11-08 |  | 46 | 47 | 12313.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912034 | I509, R262, R4182 | Altered mental status, unspecified | ICD10 | 11162017 | 09072017 | 10262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 50 | Revenue | RV |  |  |  | 4.0 |
| 10102017 | 2017-10-10T15:31:34+00:00 |  | 000102198-01 | Thomas | Vaughan | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 11162017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10092017 | 10212017 | Standard |  |  | 2017-10-09 | Per Diem: $200.00/day x 12 days = $2400.00 Wound VAC (per invoice) = $1021.73 TOTAL PAYMENT = $3421.73 | 9 | 2017-10-21 |  | 2017-10-25 | 2017-10-25 | 12 | 21 | 3421.73 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011007 | I2510, I482, J449, R52, Z9981, L03213, T814XXS | Infection following a procedure, sequela | ICD10 | 11162017 | 10092017 | 10212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3421 | 3421 | Approved | 13 | Revenue | RV |  |  |  | 12.0 |
| 10252017 | 2017-10-25T16:07:40+00:00 |  | 000030039-01 | BRENDAN | KAVANAGH | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 11162017 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 10232017 | 11082017 | Standard |  |  | 2017-10-23 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-11-08 |  | 2017-11-10 | 2017-11-10 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026015 | J189 | Pneumonia, unspecified organism | ICD10 | 11162017 | 10232017 | 11082017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 10272017 | 2017-10-27T11:53:54+00:00 |  | 000010711-01 | MARY | HADDOX | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10252017 | 11072017 | Standard |  |  | 2017-10-25 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-11-07 |  | 2017-11-07 | 2017-11-07 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027048 | C519 | Malignant neoplasm of vulva, unspecified | ICD10 | 11162017 | 10252017 | 11072017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10272017 | 2017-10-27T14:22:36+00:00 |  | 000008715-01 | JOYCE | SHIVENER | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10262017 | 11082017 | Standard |  |  | 2017-10-26 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-11-08 |  | 2017-11-03 | 2017-11-08 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027059 | C4650, I483, I499, J449, J9601 | Acute respiratory failure with hypoxia | ICD10 | 11162017 | 10262017 | 11082017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 11072017 | 2017-11-07T15:31:37+00:00 |  | 000097764-01 | Barbara | Molen | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11042017 | 11132017 | Standard |  |  | 2017-11-04 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2017-11-13 |  | 2017-11-15 |  | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107115 | Z4789 | Encounter for other orthopedic aftercare | ICD10 | 11162017 | 11042017 | 11132017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 10022017 | 2017-10-02T21:46:51+00:00 |  | 000071935-01 | Richard | Showers | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09302017 | 11052017 | Standard |  |  | 2017-09-30 | 17/RUC01=$6,049.81 PER DIEM RATE OF $250.00/DAY X 16 DAYS=$4,000.00 TOTAL PAYMENT=$10,049.81 | 0 | 2017-11-05 |  | 2017-11-15 |  | 36 | 36 | 10049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003032 | J384, Z4889 | Encounter for other specified surgical aftercare | ICD10 | 11162017 | 09302017 | 11052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 37 | Revenue | RV |  |  |  | 2.0 |
| 11062017 | 2017-11-06T13:15:34+00:00 |  | 000038449-01 | TERESA | STIDHAM | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11022017 | 11142017 | Standard |  |  | 2017-11-02 | 16/RUA01= $3214.76 | 0 | 2017-11-14 |  | 2017-11-16 | 2017-11-16 | 12 | 12 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106110 | Z96641 | Presence of right artificial hip joint | ICD10 | 11162017 | 11022017 | 11142017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 10202017 | 2017-10-20T12:02:59+00:00 |  | 000109146-01 | MILDRED | LINDSEY | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 11162017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 10192017 | 11022017 | Standard |  |  | 2017-10-19 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-11-02 |  | 2017-11-15 | 2017-11-15 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020047 | S2221XD, S81001D | Unspecified open wound, right knee, subsequent encounter | ICD10 | 11162017 | 10192017 | 11022017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 10092017 | 2017-10-09T13:34:38+00:00 |  | 000070943-01 | Gary | Binegar | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10072017 | 10282017 | Standard |  |  | 2017-10-07 | 17/RVA01=$3,586.28 PER DIEM RATE OF $250.00/DAY X 1 DAY=$250.00 TOTAL PAYMENT=$3,836.28 | 21 | 2017-10-28 |  | 2017-11-14 | 2017-11-14 | 21 | 42 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009090 | G4700, L89621, R6520 | Severe sepsis without septic shock | ICD10 | 11162017 | 10072017 | 10282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3836 | 3836 | Approved Skilled | 22 | Revenue | RV |  |  |  | 1.0 |
| 11132017 | 2017-11-13T15:49:48+00:00 |  | 000091041-01 | Pauline | Allen | TEAGUE, PHILLIP C | 944173 | PHILLIP C | TEAGUE | 1770571069 | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF COSHOCTON | 11162017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 11112017 | 11152017 | Standard |  |  | 2017-11-11 | NONSKILLED 4 DAYS @ $200.00= $800.00 | 0 | 2017-11-15 |  |  |  | 4 | 0 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114027 | I639 | Cerebral infarction, unspecified | ICD10 | 11162017 | 11112017 | 11152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
| 11062017 | 2017-11-06T15:48:17+00:00 |  | 000109025-01 | Donald | Thomas | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11032017 | 11072017 | Standard |  |  | 2017-11-03 | 4 NONSKILLED DAYS @ $200.00= $800.00 | 0 | 2017-11-07 |  |  |  | 4 | 0 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107010 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11162017 | 11032017 | 11072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
| 10102017 | 2017-10-10T14:10:16+00:00 |  | 000052350-01 | George | Cheatwood | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 11162017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10072017 | 11032017 | Standard |  |  | 2017-10-07 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-11-03 | 2017-10-31 | 2017-11-06 | 2017-11-06 | 27 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010080 | Z5189, Z4889 | Encounter for other specified surgical aftercare | ICD10 | 11162017 | 10072017 | 11032017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 28 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10102017 | 2017-10-10T16:39:24+00:00 |  | 000022422-01 | MARJORIE | WOLVERTON | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10072017 | 11042017 | Standard |  |  | 2017-10-07 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 8 days = $2000.00 TOTAL PAYMENT = $7411.86 | 0 | 2017-11-04 |  | 2017-11-06 | 2017-11-06 | 28 | 28 | 7411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011002 | N179, R443 | Hallucinations, unspecified | ICD10 | 11162017 | 10072017 | 11042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7411 | 7411 | Approved | 29 | Revenue | RV |  |  |  | 1.0 |
| 10122017 | 2017-10-12T16:27:53+00:00 |  | 000065848-01 | CURTIS | MANN JR | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 11162017 | Approved | MediGold Classic Preferred | Mail | SNF | Inpatient | 10112017 | 11042017 | Standard |  |  | 2017-10-11 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-11-04 | 2017-11-01 | 2017-11-06 | 2017-11-06 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013014 | E1310, E872, G9341, N179, R52, Z9181 | History of falling | ICD10 | 11162017 | 10112017 | 11042017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 10232017 | 2017-10-23T15:30:07+00:00 |  | 000112375-01 | Richard | France | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 11162017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10202017 | 11032017 | Standard |  |  | 2017-10-20 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-11-03 |  | 2017-10-27 | 2017-11-06 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023147 | D72819, F4489, I82409, R531, Z9181 | History of falling | ICD10 | 11162017 | 10202017 | 11032017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 10232017 | 2017-10-23T14:13:08+00:00 |  | 000036782-01 | ELLENIA | WALTON | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10222017 | 11042017 | Standard |  |  | 2017-10-22 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-11-04 |  | 2017-11-06 | 2017-11-06 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023139 | J180 | Bronchopneumonia, unspecified organism | ICD10 | 11162017 | 10222017 | 11042017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10272017 | 2017-10-27T15:25:12+00:00 |  | 000103878-01 | PATRICIA | ROBINSON | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | SOMERSET HEALTH & REHABILITATION C | 942963 | 1952791758 | SOMERSET HEALTH & REHABILITATION C | 1952791758 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOMERSET HEALTH & REHABILITATION C | 11162017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 10252017 | 11092017 | Standard |  |  | 2017-10-25 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-11-09 |  | 2017-11-10 | 2017-11-10 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030024 | G918 | Other hydrocephalus | ICD10 | 11162017 | 10252017 | 11092017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 10242017 | 2017-10-24T15:02:27+00:00 |  | 000011513-01 | PAULINE | LEFEBURE | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10202017 | 11092017 | Standard |  |  | 2017-10-20 | Per MDS: 17/RHC01 = $4132.02 | 0 | 2017-11-09 |  | 2017-11-10 | 2017-11-10 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024084 | M6281, Z5189 | Encounter for other specified aftercare | ICD10 | 11162017 | 10202017 | 11092017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10232017 | 2017-10-23T15:40:22+00:00 |  | 000017176-01 | ELIZABETH | WALDEN | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10222017 | 11112017 | Standard |  |  | 2017-10-22 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-11-11 | 2017-11-16 | 2017-10-30 | 2017-11-13 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023148 | E039, F329, F419, I10, J189, Z9181 | History of falling | ICD10 | 11162017 | 10222017 | 11112017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10122017 | 2017-10-12T15:39:36+00:00 |  | 000030469-01 | IONA | WEST | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10102017 | 11112017 | Standard |  |  | 2017-10-10 | Per MDS: 17/RVA01 = $3586.28 Per Diem: $200.00/day x 12 days = $2400.00 TOTAL PAYMENT = $5986.28 | 68 | 2017-11-11 |  | 2017-11-13 |  | 32 | 100 | 5986.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012054 | I10, I509, J449, M6281 | Muscle weakness (generalized) | ICD10 | 11162017 | 10102017 | 11112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5986 | 5986 | Approved | 33 | Revenue | RV |  |  |  | 5.0 |
| 10302017 | 2017-10-30T10:54:23+00:00 |  | 000057441-01 | TERRY | PETERS | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10202017 | 11092017 | Standard |  |  | 2017-10-20 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-11-09 |  | 2017-11-13 | 2017-11-13 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030078 | D649, E119, I509, N179, N189, R0602, R6510, Z794 | Long term (current) use of insulin | ICD10 | 11162017 | 10202017 | 11092017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11012017 | 2017-11-01T13:42:54+00:00 |  | 000097431-01 | Bonnie | Dunn | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10312017 | 11112017 | Standard |  |  | 2017-10-31 | Swing Bed daily rate x 11 days | 0 | 2017-11-11 | 2017-11-08 |  | 2017-11-08 | 11 | 11 | Swing Bed daily rate x 11 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101048 | I6350 | Cereb infrc due to unsp occls or stenos of unsp cereb artery | ICD10 | 11162017 | 10312017 | 11112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 12 | Revenue | RV |  |  |  | 4.0 |
| 11012017 | 2017-11-01T11:34:39+00:00 |  | 000086851-01 | Linda | Pierce | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10302017 | 11142017 | Standard |  |  | 2017-10-30 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-11-14 |  | 2017-11-14 | 2017-11-14 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101043 | K862, N132 | Hydronephrosis with renal and ureteral calculous obstruction | ICD10 | 11162017 | 10302017 | 11142017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 11012017 | 2017-11-01T16:04:13+00:00 |  | 000034981-01 | RICHARD | SMITH | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10282017 | 11062017 | Standard |  |  | 2017-10-28 | Per MDS: 17/RUB01 = $5813.99 | 10 | 2017-11-06 |  | 2017-11-15 |  | 9 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101073 | J441, M6281, R488 | Other symbolic dysfunctions | ICD10 | 11162017 | 10282017 | 11062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 10122017 | 2017-10-12T15:10:20+00:00 |  | 000062669-01 | JOSEPH | SOUTHERN | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10112017 | 11092017 | Standard |  |  | 2017-10-11 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 9 days = $2250.00 TOTAL PAYMENT = $8299.81 | 0 | 2017-11-09 |  | 2017-11-15 | 2017-11-15 | 29 | 29 | 8299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012048 | , G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 11162017 | 10112017 | 11092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8299 | 8299 | Approved | 30 | Revenue | RV |  |  |  | 9.0 |
| 10162017 | 2017-10-16T11:22:24+00:00 |  | 000077439-01 | Earl | Baylous | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10142017 | 11082017 | Standard |  |  | 2017-10-14 | Per Diem: $250.00/day x 3 days = $750.00 Per Diem: $200.00/day x 22 days = $4400.00 Zosyn (per invoice) = $909.43 TOTAL PAYMENT = $6059.43 | 0 | 2017-11-08 |  | 2017-11-15 | 2017-11-15 | 25 | 25 | 6059.43 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016076 | , , A419 | Sepsis, unspecified organism | ICD10 | 11162017 | 10142017 | 11082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6059 | 6059 | Approved | 26 | Revenue | RV |  |  |  | 2.0 |
| 10022017 | 2017-10-02T14:26:48+00:00 |  | 000093968-01 | Sharon | Hollingsworth | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09292017 | 11112017 | Standard |  |  | 2017-09-29 | 16/RVC01=$3,539.19 PER DIEM RATE OF $250.00/DAY X 23 DAYS=$5,750.00 TOTAL PAYMENT=$9,286.19 | 0 | 2017-11-11 |  | 2017-11-14 | 2017-11-14 | 43 | 43 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002141 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 11162017 | 09292017 | 11112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9286 | 9286 | Approved Skilled | 44 | Revenue | RV |  |  |  | 2.0 |
| 10092017 | 2017-10-09T14:37:09+00:00 |  | 000091069-01 | John | Young | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10052017 | 10152017 | Standard |  |  | 2017-10-05 | Per Diem: $200.00/day = $2000.00 Meropenum (per invoice) = $743.35 TOTAL PAYMENT = $2743.35 | 90 | 2017-10-15 |  |  |  | 10 | 100 | 2743.35 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009108 | M869, Z5189 | Encounter for other specified aftercare | ICD10 | 11162017 | 10052017 | 10152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2743 | 2743 | Approved | 11 | Revenue | RV |  |  |  | 10.0 |
| 10202017 | 2017-10-20T16:55:45+00:00 |  | 000005690-01 | SUSAN | STARNER | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10192017 | 10242017 | Standard |  |  | 2017-10-19 | 16/RUB01= $4429.71 | 0 | 2017-11-24 |  | 2017-11-15 | 2017-11-15 | 23 | 23 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023024 | E871, M6281, S32000D | Wedge comprsn fx unsp lum vertebra, subs for fx w routn heal | ICD10 | 11162017 | 10192017 | 10242017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 10312017 | 2017-10-31T17:09:37+00:00 |  | 000017256-01 | WILMA | JENKINS | RAMALINGAM SELVARAJAH MD | 935881 | RAMALINGAM | SELVARAJAH | 1104912773 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 11162017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10272017 | 11042017 | Standard |  |  | 2017-10-27 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-11-04 |  | 2017-11-16 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101016 | E119, I10, I509 | Heart failure, unspecified | ICD10 | 11162017 | 10272017 | 11042017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 10102017 | 2017-10-10T13:47:32+00:00 |  | 000080879-01 | Debra | Fisher | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 11162017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10062017 | 10272017 | Standard |  |  | 2017-10-06 | Per Diem: $250.00/day x 21 days = $5250.00 Zosyn (per Invoice) = $361.16 TOTAL PAYMENT = $5611.16 | 0 | 2017-10-27 |  | 2017-11-16 |  | 21 | 21 | 5611.16 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010057 | I639, R1310, R1319 | Other dysphagia | ICD10 | 11162017 | 10062017 | 10272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5611 | 5611 | Approved | 22 | Revenue | RV |  |  |  | 1.0 |
