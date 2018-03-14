Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-13_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-13_SNF
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
| 11132017 | 2017-11-13T08:02:21+00:00 |  | 000016470-01 | MARY | EMMELHAINZ | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11102017 | 12282017 | Standard |  |  | 2017-11-10 | PER DIEM RATE OF $200.00/DAY=$8,200.00 | 47 | 2017-12-28 |  | 2018-01-10 | 2018-01-10 | 41 | 88 | 8200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113034 | G939, N390 | Urinary tract infection, site not specified | ICD10 | 03132018 | 11102017 | 12282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8200 | 8200 | Approved Skilled | 49 | Revenue | RV |  |  |  | 4.0 |
| 12222017 | 2017-12-22T16:55:56+00:00 |  | 000098112-01 | Marie | Mann | THE LAURELS OF HILLSBORO | 952248 |  | THE LAURELS OF HILLSBORO | 1255387221 | THE LAURELS OF HILLSBORO | 952248 | 1255387221 | THE LAURELS OF HILLSBORO | 1255387221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE LAURELS OF HILLSBORO | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12222017 | 01252018 | Standard |  |  | 2017-12-22 | PER DIEM RATE OF $200.00/DAY X 3 DAYS=$600.00 | 0 | 2017-12-25 |  | 2018-01-12 |  | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226006 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03132018 | 12222017 | 01252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved Skilled | 35 | Revenue | RV |  |  |  | 3.0 |
| 01022018 | 2018-01-02T11:38:53+00:00 |  | 000044885-01 | Bonnie | Neff | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 03132018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01012018 | 03112018 | Standard |  |  | 2018-01-01 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 40 days = $10,000.00 Per Diem: $200.00/day x 9 days = $1800.00 TOTAL PAYMENT = $17,211.86 | 4 | 2018-03-11 | 2018-03-08 | 2018-03-12 | 2018-03-12 | 69 | 73 | 17211.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102092 | J189, M84371D | Stress fracture, right ankle, subs for fx w routn heal | ICD10 | 03132018 | 01012018 | 03112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 70 | Revenue | RV |  |  |  | 3.0 |
| 01232018 | 2018-01-23T12:49:16+00:00 |  | 000009477-01 | KATHLEEN | NOICE | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 03072018 | Standard |  |  | 2018-01-19 | Per Diem: $250.00/day x 42 days = $10,500.00 Per Diem: $200.00/day x 5 days = $1000.00 IV Daptomycin (per invoice) = $2467.58 TOTAL PAYMENT = $13,967.58 | 0 | 2018-03-07 |  | 2018-03-12 | 2018-03-12 | 47 | 47 | 13967.58 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123065 | Z5189 | Encounter for other specified aftercare | ICD10 | 03132018 | 01192018 | 03072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 48 | Revenue | RV |  |  |  | 5.0 |
| 01292018 | 2018-01-29T16:48:14+00:00 |  | 000051997-01 | John | Swinehart | COLONNADE MED GRP INC | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 03132018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01262018 | 03122018 | Standard |  |  | 2018-01-26 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 4 days = $1000.00 Per Diem: $200.00/day x 21 days = $4200.00 TOTAL PAYMENT = $12,533.11 | 0 | 2018-03-12 | 2018-03-09 | 2018-03-12 | 2018-03-12 | 45 | 45 | 12533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130058 | I10, I639, M1990, M6281, R410 | Disorientation, unspecified | ICD10 | 03132018 | 01262018 | 03122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 4.0 |
| 02062018 | 2018-02-06T11:37:15+00:00 |  | 000015155-01 | DONALD | ANKROM | AEBI GINTY ROMAKER SPROU | 937397 | RALPH R | ROMAKER | 1952380727 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02032018 | 03092018 | Standard |  |  | 2018-02-03 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/dy x 14 days = $2800.00 TOTAL PAYMENT = $9106.19 | 0 | 2018-03-09 |  | 2018-03-12 | 2018-03-12 | 34 | 34 | 9106.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206064 | Z96641 | Presence of right artificial hip joint | ICD10 | 03132018 | 02032018 | 03092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9106 | 9106 | Approved | 35 | Revenue | RV |  |  |  | 7.0 |
| 02222018 | 2018-02-22T08:46:28+00:00 |  | 000026239-01 | M | BEAN | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02202018 | 03062018 | Standard |  |  | 2018-02-20 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-03-06 |  | 2018-03-12 |  | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222038 | S6291XA, S72001S | Fracture of unspecified part of neck of right femur, sequela | ICD10 | 03132018 | 02202018 | 03062018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12262017 | 2017-12-26T11:07:30+00:00 |  | 000041540-01 | C | TINCHER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12232017 | 01242018 | Standard |  |  | 2017-12-23 | PER DIEM RATE OF $250.00/DAY X 1 DAY= $250.00 CARVE OUT FOR WOUND VAC PER INVOICE X 1 DAY AT $50.00/DAY=$50.00 CARVE OUT FOR IV TEFLARO PER INVOICE X 1 DAY (2 DOSES)=$764.11 (TEFLARO PER INVOICE FOR 4 DOSES (2 DAYS)=$1529.22/2=$764.11) TOTAL PAYMENT TO FACILITY=$1064.11 | 0 | 2017-12-24 |  |  |  | 1 | 1 | 1064.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226121 | A419 | Sepsis, unspecified organism | ICD10 | 03132018 | 12232017 | 01242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1064 | 1064 | Approved Skilled | 33 | Revenue | RV |  |  |  | 1.0 |
| 02012018 | 2018-02-01T11:37:22+00:00 |  | 000040866-01 | BETTY | BRANHAM | CIRCLEVILLE CENTER | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01302018 | 03072018 | Standard |  |  | 2018-01-30 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 12 days = $3000.00 TOTAL PAYMENT = $9306.19 | 0 | 2018-03-07 |  | 2018-03-13 |  | 32 | 32 | 9306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201057 | F0391, S72002D, Z9181 | History of falling | ICD10 | 03132018 | 01302018 | 03072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9306 | 9306 | Approved | 37 | Revenue | RV |  |  |  | 7.0 |
| 02122018 | 2018-02-12T12:56:18+00:00 |  | 000074516-01 | Betty | Prosser | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082018 | 03012018 | Standard |  |  | 2018-02-08 | Contract/RUG: 17/RHB (Per MDS) = $3,699.42 | 0 | 2018-03-01 |  | 2018-03-13 | 2018-03-07 | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212104 | Z96652 | Presence of left artificial knee joint | ICD10 | 03132018 | 02082018 | 03012018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 02132018 | 2018-02-13T15:04:33+00:00 |  | 000064873-01 | DEBRA | DEBOLT- REYNOLDS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02102018 | 03052018 | Standard |  |  | 2018-02-10 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 3 days = $750.00 TOTAL PAYMENT = $6161.86 | 0 | 2018-03-05 |  | 2018-03-12 |  | 23 | 23 | 6161.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213113 | Z5189, Z4889 | Encounter for other specified surgical aftercare | ICD10 | 03132018 | 02102018 | 03052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6161 | 6161 | Approved | 24 | Revenue | RV |  |  |  | 3.0 |
| 02152018 | 2018-02-15T19:28:53+00:00 |  | 000115950-01 | Norma | Johnson | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02012018 | 03132018 | Standard |  |  | 2018-02-01 | Per MDS: 17/RHC01 = $4132.02 Per Diem: $200.00/day x 20 days = $4000.00 TOTAL PAYMENT = $8132.02 | 7 | 2018-03-13 |  | 2018-03-13 |  | 40 | 47 | 8132.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216013 | I96, J189 | Pneumonia, unspecified organism | ICD10 | 03132018 | 02012018 | 03132018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8132 | 8132 | Approved | 41 | Revenue | RV |  |  |  | 6.0 |
| 02162018 | 2018-02-16T09:24:19+00:00 |  | 000035137-01 | JOSEPH | HELBER | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | PLEASANT HILL LEASING LL | 948748 | 1558729806 | PLEASANT HILL MANOR | 1558729806 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PLEASANT HILL MANOR | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02142018 | 02252018 | Standard |  |  | 2018-02-14 | Per Diem: $200.00/day x 11 days = $2200.00 Wound VAC (per invoice) = $300.00 Tobramycin (per invoice) = $20.49 Invanz (per invoice) = $1302.53 TOTAL PAYMENT = $3823.02 | 0 | 2018-02-25 |  | 2018-02-28 |  | 11 | 11 | 3823.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216017 | J9600, N186 | End stage renal disease | ICD10 | 03132018 | 02142018 | 02252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3823 | 3823 | Approved | 12 | Revenue | RV |  |  |  | 11.0 |
| 02212018 | 2018-02-21T14:51:45+00:00 |  | 000032081-01 | JOSEPH | FRAZIER | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 03132018 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 02192018 | 02272018 | Standard |  |  | 2018-02-19 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-02-27 |  | 2018-03-13 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221094 | J9602 | Acute respiratory failure with hypercapnia | ICD10 | 03132018 | 02192018 | 02272018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 02212018 | 2018-02-21T14:56:19+00:00 |  | 000043722-01 | HAROLD | WHEELER | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02192018 | 03052018 | Standard |  |  | 2018-02-19 | Per MDS: 17/RHC01 = $4132.02 | 0 | 2018-03-05 | 2018-03-13 | 2018-03-13 | 2018-03-13 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221095 | N390 | Urinary tract infection, site not specified | ICD10 | 03132018 | 02192018 | 03052018 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 02232018 | 2018-02-23T17:15:54+00:00 |  | 000020142-01 | PATRICIA | CONRAD | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02222018 | 03122018 | Standard |  |  | 2018-02-22 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-03-12 |  | 2018-03-02 | 2018-03-12 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226033 | I4891, S72009A, S72141A | Displaced intertrochanteric fracture of right femur, init | ICD10 | 03132018 | 02222018 | 03122018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 03022018 | 2018-03-02T12:58:32+00:00 |  | 000116085-01 | Carolyn | Sheets | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 03132018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02192018 | 03122018 | Standard |  |  | 2018-02-19 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $200.00/day x 1 day = $200.00 TOTAL PAYMENT = $5611.86 | 0 | 2018-03-12 |  | 2018-03-13 | 2018-03-13 | 21 | 21 | 5611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302044 | S82401D | Unsp fx shaft of r fibula, subs for clos fx w routn heal | ICD10 | 03132018 | 02192018 | 03122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5611 | 5611 | Approved | 22 | Revenue | RV |  |  |  | 1.0 |
| 03022018 | 2018-03-02T10:54:31+00:00 |  | 000077671-01 | Daniel | Hicks | HEARTLAND OF CHILLICOTHE | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 03132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02282018 | 03122018 | Standard |  |  | 2018-02-28 | Per Diem: $200.00/day x 12 days = $2400.00 Zosyn (per invoice) = $993.18 TOTAL PAYMENT = $3393.18 | 0 | 2018-03-12 |  | 2018-03-13 | 2018-03-13 | 12 | 12 | 3393.18 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302022 | N390 | Urinary tract infection, site not specified | ICD10 | 03132018 | 02282018 | 03122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3393 | 3393 | Approved | 13 | Revenue | RV |  |  |  | 12.0 |
| 03052018 | 2018-03-05T11:52:37+00:00 |  | 000053167-01 | Robert | Bledsoe | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 03132018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03012018 | 03092018 | Standard |  |  | 2018-03-01 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-03-09 |  | 2018-03-13 | 2018-03-13 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305111 | Z4789, Z5189 | Encounter for other specified aftercare | ICD10 | 03132018 | 03012018 | 03092018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 03132018 | 2018-03-13T12:22:57+00:00 |  | 000093362-01 | William | Martin | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 03132018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03122018 | 03122018 | Standard |  |  | 2018-03-12 | Per Diem: $200.00/day x 1 day = $200.00 TOTAL PAYMENT = $200.00 | 0 | 2018-03-12 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313045 | M4326, Z4782 | Encounter for orth aftercare following scoliosis surgery | ICD10 | 03132018 | 03122018 | 03122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
