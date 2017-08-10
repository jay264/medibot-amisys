Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-08_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-08_SNF
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
| 07132017 | 2017-07-13T15:28:02+00:00 |  | 000076545-01 | Gloria | Carle | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | HEARTLAND OF MADEIRA OH LLC | 920759 | 1871534834 | HEARTLAND OF MADEIRA OH LLC | 1871534834 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MADEIRA OH LLC | 08082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 07112017 | 07242017 | Standard |  |  | 2017-07-11 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-07-25 |  | 2017-08-07 | 2017-08-07 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713072 | S32010D | Wedge comprsn fx first lum vert, subs for fx w routn heal | ICD10 | 08082017 | 07112017 | 07252017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 07072017 | 2017-07-07T13:22:03+00:00 |  | 000097536-01 | Waldon | Bruce Jr | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 08082017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07052017 | 08032017 | Standard |  |  | 2017-07-05 | 16/RVC01=$3539.19 10 DAYS @ $200.00=$2000.00 TOTAL: $5539.19 | 0 | 2017-08-04 |  | 2017-08-07 | 2017-08-07 | 30 | 30 | 5539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707058 | A419, B379, N319, N390, R39198 | OTHER DIFFICULTIES WITH MICTURITION | ICD10 | 08082017 | 07052017 | 08042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5539 | 5539 | Approved | 30 | Revenue | RV |  |  |  | 10.0 |
| 07182017 | 2017-07-18T17:19:03+00:00 |  | 000098026-01 | Gary | Lustgarten | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 08082017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 07162017 | 07212017 | Standard |  |  | 2017-07-16 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 45 | 2017-07-22 |  | 2017-08-07 | 2017-08-07 | 6 | 51 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719049 | M62838 | Other muscle spasm | ICD10 | 08082017 | 07162017 | 07222017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 07192017 | 2017-07-19T12:07:40+00:00 |  | 000078377-01 | Dennis | Miller | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 08082017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 07172017 | 08032017 | Standard |  |  | 2017-07-17 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-08-04 | 2017-08-04 | 2017-08-07 |  | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719079 | I214, Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 08082017 | 07172017 | 08042017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 07272017 | 2017-07-27T16:38:32+00:00 |  | 000070684-01 | Catherine | Young | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 08082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07262017 | 08022017 | Standard |  |  | 2017-07-26 | Per MDS: $5813.99 | 0 | 2017-08-03 |  | 2017-08-07 | 2017-08-04 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728006 | I10, I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 08082017 | 07262017 | 08032017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07192017 | 2017-07-19T16:11:02+00:00 |  | 000078210-01 | Katrina | Whitesed | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | LONDON HEALTH & REHAB CENTER | 943587 | 1912387879 | LONDON HEALTH & REHAB CENTER | 1912387879 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LONDON HEALTH & REHAB CENTER | 08082017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 07182017 | 07312017 | Standard |  |  | 2017-07-18 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-08-01 |  | 2017-08-07 | 2017-08-07 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720024 | A047, E871, J189, N390 | Urinary tract infection, site not specified | ICD10 | 08082017 | 07182017 | 08012017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 06202017 | 2017-06-20T10:05:33+00:00 |  | 000013081-01 | DOLORES | LYNCH | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 08082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06172017 | 07172017 | Standard |  |  | 2017-06-17 | PER DIEM OF $200.00/DAY X 30 DAYS=$6,000.00 CARVE OUT FOR IV NAFCILLIN X 30 DOSES PER INVOICE: JUNE IV COST=$1,096.22 JULY IV COST=$3,830.62 TOTAL FACILITY PAYMENT =$10,923.84 | 0 | 2017-07-17 |  | 2017-07-28 | 2017-07-28 | 30 | 30 | 10923.84 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620069 | G061 | Intraspinal abscess and granuloma | ICD10 | 08082017 | 06172017 | 07172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 31 | Revenue | RV |  |  |  | 9.0 |
| 06052017 | 2017-06-05T16:41:49+00:00 |  | 000086882-01 | Arnold | Strausbaugh | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 08082017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 06022017 | 07222017 | Standard |  |  | 2017-06-02 | Contract/RUG: 16/RVC (Per MDS) = $3,539.19 Per Diem: $200.00/day x 26 SNF Days = $5,200.00 Total $8,739.19 | 0 | 2017-07-23 |  | 2017-08-03 | 2017-08-03 | 46 | 46 | 8739.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606026 | S12601D | Unsp nondisp fx of 7th cervcal vert, 7thD | ICD10 | 08082017 | 06022017 | 07232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8739 | 8739 | Approved | 51 | Revenue | RV |  |  |  | 4.0 |
| 05222017 | 2017-05-22T13:20:27+00:00 |  | 000015593-01 | Kenneth | Adams | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 08082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05192017 | 08022017 | Standard |  |  | 2017-05-19 | 16/RUC01=$7333.11 56 DAYS @ $200.00=$11200.00 TOTAL :$18553.11 | 0 | 2017-08-03 |  | 2017-08-07 | 2017-08-07 | 76 | 76 | 18533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522109 | E1165, J449, S12500D, S7292XD, S82141D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 08082017 | 05192017 | 08032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 76 | Revenue | RV |  |  |  | 6.0 |
| 06082017 | 2017-06-08T12:13:29+00:00 |  | 000089370-01 | Dorothy | Durham | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 08082017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 06062017 | 07292017 | Standard |  |  | 2017-06-06 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $250.00/day x 9 SNF Days = $2,250.00 Per Diem: $200.00/day x 25 SNF Days = $5,000.00 Total: $13,063.99 | 0 | 2017-07-30 |  | 2017-08-03 | 2017-08-03 | 54 | 54 | 13063.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608054 | N390 | Urinary tract infection, site not specified | ICD10 | 08082017 | 06062017 | 07302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 54 | Revenue | RV |  |  |  | 5.0 |
| 07062017 | 2017-07-06T10:51:25+00:00 |  | 000044951-01 | JOANNE | JUENGER | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 08082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07042017 | 08012017 | Standard |  |  | 2017-07-04 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $250.00/day x 1 SNF Day = $250.00 Per Diem: $200.00/day x 8 SNF Days = $1,600.00 Total: $5,200.20 | 0 | 2017-08-02 |  | 2017-08-03 | 2017-08-03 | 29 | 29 | 5200.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706058 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08082017 | 07042017 | 08022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5200 | 5200 | Approved | 29 | Revenue | RV |  |  |  | 9.0 |
| 06282017 | 2017-06-28T16:53:21+00:00 |  | 000022489-01 | CHARLES | BRAHLER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 08082017 | Approved | THE TIMKEN COMPANY | Fax | SNF | Inpatient | 06262017 | 07142017 | Standard |  |  | 2017-06-26 | 17/RVC01=$6,306.81 | 0 | 2017-07-14 |  | 2017-08-04 | 2017-08-04 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629019 | R531 | Weakness | ICD10 | 08082017 | 06262017 | 07142017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 07172017 | 2017-07-17T11:57:53+00:00 |  | 000021635-01 | ANITA | HARRIS | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 08082017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07142017 | 07282017 | Standard |  |  | 2017-07-14 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-07-29 | 2017-08-03 | 2017-08-03 | 2017-08-03 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717041 | I509, J9601 | Acute respiratory failure with hypoxia | ICD10 | 08082017 | 07142017 | 07292017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 07102017 | 2017-07-10T15:24:35+00:00 |  | 000106587-01 | Christopher | Jarrells | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 08082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07062017 | 07252017 | Standard |  |  | 2017-07-06 | Contract/RUG: 17/RVB (per MDS) = $5,411.86 | 20 | 2017-07-26 |  | 2017-08-07 | 2017-08-07 | 20 | 40 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710134 | E1310 | Oth diabetes mellitus with ketoacidosis without coma | ICD10 | 08082017 | 07062017 | 07262017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07242017 | 2017-07-24T15:00:07+00:00 |  | 000099075-01 | Charles | Pettit | ALLIANCE PHYSICIANS INC | 900999 | DAVID S | PAGE | 1407834153 | KINGSTON OF MIAMISBURG | 927958 | 1972590115 | KINGSTON OF MIAMISBURG | 1972590115 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINGSTON OF MIAMISBURG | 08082017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07212017 | 08032017 | Standard |  |  | 2017-07-21 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-08-04 |  | 2017-08-08 |  | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724115 | Z471 | Aftercare following joint replacement surgery | ICD10 | 08082017 | 07212017 | 08042017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
