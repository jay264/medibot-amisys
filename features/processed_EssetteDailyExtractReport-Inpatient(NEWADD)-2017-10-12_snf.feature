Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-12_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-12_SNF
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
| 08212017 | 2017-08-21T15:58:25+00:00 |  | 000068766-01 | CAROL | NELSON | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 10122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08182017 | 10062017 | Standard |  |  | 2017-08-18 | 16/RUC01=$7,333.11 PER DIEM RATE OF $200.00/DAY FOR 2 THERAPIES OR LESS X 29 DAYS=$5,800.00 TOTAL FACILITY PAYMENT=$13,133.11 | 26 | 2017-10-06 |  | 2017-10-11 | 2017-10-11 | 49 | 75 | 13133.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822059 | I998 | Other disorder of circulatory system | ICD10 | 10122017 | 08182017 | 10062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 50 | Revenue | RV |  |  |  | 2.0 |
| 09062017 | 2017-09-06T17:32:12+00:00 |  | 000079661-01 | Sharon | Salvato | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 10122017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09032017 | 09142017 | Standard |  |  | 2017-09-03 | 17/RHB01=$3,699.42 | 0 | 2017-09-14 |  | 2017-10-11 | 2017-10-11 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907095 | S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 10122017 | 09032017 | 09142017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 09082017 | 2017-09-08T12:24:40+00:00 |  | 000108271-01 | DELORES | RAHE | TRIHEALTH G LLC | 950391 | RHAZES K | KHODADAD | 1558363960 | CLOVERNOOK HEALTH CARE PAVILION | 946240 | 1487636452 | CLOVERNOOK HEALTH CARE PAVILION | 1487636452 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CLOVERNOOK HEALTH CARE PAVILION | 10122017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 09082017 | 10082017 | Standard |  |  | 2017-09-08 | Per MDS/SCA: $5411.86 Per Diem: $250.00/day x 10 days = $2500.00 TOTAL PAYMENT = $7911.86 | 0 | 2017-10-08 | 2017-10-05 | 2017-10-11 | 2017-10-11 | 30 | 30 | 7911.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908072 | F22, M159, R251 | Tremor, unspecified | ICD10 | 10122017 | 09082017 | 10082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7911 | 7911 | Approved | 31 | Revenue | RV |  |  |  | 3.0 |
| 09152017 | 2017-09-15T11:29:34+00:00 |  | 000020319-01 | VIRGINIA | PACK | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 10122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09132017 | 09212017 | Standard |  |  | 2017-09-13 | 17/RVB01=$5,411.86 | 0 | 2017-09-21 |  | 2017-10-11 | 2017-10-11 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915075 | I639 | Cerebral infarction, unspecified | ICD10 | 10122017 | 09132017 | 09212017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 09112017 | 2017-09-11T14:35:39+00:00 |  | 000100080-01 | Dennis | Neumann | DUDNEY, JERALD | 935969 | JERALD | DUDNEY | 1770669871 | GOOD SHEPHERD VILLAGE | 920229 | 1396862314 | GOOD SHEPHERD VILLAGE | 1396862314 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GOOD SHEPHERD VILLAGE | 10122017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09072017 | 09302017 | Standard |  |  | 2017-09-07 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $200.00/day x 4 SNF days = $800.00 Total Payment: $4,150.20 | 35 | 2017-09-30 |  | 2017-10-06 |  | 24 | 59 | 4150.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911123 | I5023, M6281, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 10122017 | 09072017 | 09302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4150 | 4150 | Approved | 24 | Revenue | RV |  |  |  | 1.0 |
| 06262017 | 2017-06-26T15:28:18+00:00 |  | 000043637-01 | WENDLE | SMITH | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 10122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06222017 | 06232017 | Standard |  |  | 2017-06-22 | PER DIEM RATE OF $200.00/DAY X 1 DAY | 0 | 2017-06-23 |  |  |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626130 | J189 | Pneumonia, unspecified organism | ICD10 | 10122017 | 06222017 | 06232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 2 | Revenue | RV |  |  |  | 1.0 |
| 09112017 | 2017-09-11T14:28:29+00:00 |  | 000112252-01 | Patricia | Clark | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 10122017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 09062017 | 10072017 | Standard |  |  | 2017-09-06 | 17/RVC01= $6306.19 11 DAYS @ $250.00= $2750.00 TOTAL: $9056.19 | 0 | 2017-10-07 |  | 2017-10-12 | 2017-10-12 | 31 | 31 | 9056.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911116 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 10122017 | 09062017 | 10072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 32 | Revenue | RV |  |  |  | 4.0 |
| 09112017 | 2017-09-11T16:16:24+00:00 |  | 000091992-01 | Dennis | Dawson | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 10122017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09082017 | 10072017 | Standard |  |  | 2017-09-08 | Per Diem: $200.00/day x 29 days = $5800.00 Nafcillin (per invoice) = $2833.60 TOTAL PAYMENT = $8633.60 | 0 | 2017-10-07 |  | 2017-10-10 | 2017-10-12 | 29 | 29 | 8633.6 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912046 | T8189XD, T8459XD | Infect/inflm reaction due to oth internal joint prosth, subs | ICD10 | 10122017 | 09082017 | 10072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8633 | 8633 | Approved | 30 | Revenue | RV |  |  |  | 1.0 |
| 09292017 | 2017-09-29T12:16:19+00:00 |  | 000081785-01 | Cora | Stevens | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 10122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09272017 | 10042017 | Standard |  |  | 2017-09-27 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-10-04 |  | 2017-10-12 | 2017-10-12 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929036 | D070 | Carcinoma in situ of endometrium | ICD10 | 10122017 | 09272017 | 10042017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10022017 | 2017-10-02T13:55:44+00:00 |  | 000075956-01 | Jessie | Abram | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 10122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 09292017 | 10062017 | Standard |  |  | 2017-09-29 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-10-06 |  | 2017-10-10 | 2017-10-12 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002135 | Z4733, Z96651 | Presence of right artificial knee joint | ICD10 | 10122017 | 09292017 | 10062017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 10022017 | 2017-10-02T14:33:11+00:00 |  | 000023960-01 | JOHANNES | FABER | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 10122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09292017 | 10052017 | Standard |  |  | 2017-09-25 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-10-05 |  | 2017-10-06 | 2017-10-12 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002145 | Z4732, T84028D | Dislocation of other internal joint prosthesis, subs encntr | ICD10 | 10122017 | 09292017 | 10052017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
