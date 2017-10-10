Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-06_thru_2017-10-08_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-06_thru_2017-10-08_SNF
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
| 08162017 | 2017-08-16T14:18:43+00:00 |  | 000007313-01 | JEAN | PURCELL | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08142017 | 10052017 | Standard |  |  | 2017-08-14 | 17/RHC01=$4,132.02 PER DIEM RATE OF $200.00/DAY X 32 DAYS=$6,400.00 TOTAL PAYMENT TO FACILITY=$10,532.02 | 18 | 2017-10-05 |  | 2017-10-05 | 2017-10-05 | 52 | 70 | 10532.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816074 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10062017 | 08142017 | 10052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 53 | Revenue | RV |  |  |  | 10.0 |
| 08182017 | 2017-08-18T13:34:20+00:00 |  | 000107707-01 | Donna | Kaufman | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 10062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08162017 | 09132017 | Standard |  |  | 2017-08-16 | PER DIEM RATE OF $200.00/DAY X 28 DAYS=$5,600.00 CARVE OUT FOR WOUND VAC PER INVOICE=$1,700.00 TOTAL PAYMENT TO FACILITY=$7,300.85 | 20 | 2017-09-13 |  | 2017-10-05 | 2017-10-05 | 28 | 48 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821070 | T8131XD | Disruption of external operation (surgical) wound, NEC, subs | ICD10 | 10062017 | 08162017 | 09132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 29 | Revenue | RV |  |  |  | 4.0 |
| 09252017 | 2017-09-25T17:07:04+00:00 |  | 000116781-01 | Judith | Pauley | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 10062017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 09212017 | 10052017 | Standard |  |  | 2017-09-21 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-10-05 |  | 2017-10-05 | 2017-10-05 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926040 | I639 | Cerebral infarction, unspecified | ICD10 | 10062017 | 09212017 | 10052017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 09052017 | 2017-09-05T16:06:51+00:00 |  | 000070943-01 | Gary | Binegar | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09022017 | 09232017 | Standard |  |  | 2017-09-02 | 17/RVB01=$5,411.86 | 0 | 2017-09-23 |  | 2017-10-03 | 2017-10-03 | 20 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906055 | G9341, N183, N390 | Urinary tract infection, site not specified | ICD10 | 10062017 | 09022017 | 09232017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 09262017 | 2017-09-26T12:31:29+00:00 |  | 000071747-01 | Constance | Bethel | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09252017 | 10042017 | Standard |  |  | 2017-09-25 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-10-04 |  | 2017-10-05 | 2017-10-05 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926081 | N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 10062017 | 09252017 | 10042017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 09182017 | 2017-09-18T15:40:18+00:00 |  | 000070695-01 | Carol | Fulks | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09152017 | 10052017 | Standard |  |  | 2017-09-15 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-10-05 |  | 2017-10-05 | 2017-10-05 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919029 | I951, M4806, R296, R52, S40019S, S7000XS, Z950 | Presence of cardiac pacemaker | ICD10 | 10062017 | 09152017 | 10052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09152017 | 2017-09-15T08:32:43+00:00 |  | 000048384-01 | THEODORE | TAYLOR | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09132017 | 10022017 | Standard |  |  | 2017-09-13 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-10-02 |  | 2017-10-05 | 2017-10-05 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915061 | A419, J189, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 10062017 | 09132017 | 10022017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 09252017 | 2017-09-25T14:38:28+00:00 |  | 000078456-01 | Mary | Hume | PICKAWAY HEALTH SERVICES | 913727 | KEVIN M | SELLERS | 1306085220 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09202017 | 10042017 | Standard |  |  | 2017-09-20 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-10-04 |  | 2017-10-05 | 2017-10-05 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925108 | F0390, M6281, R2681, R4182, Z9181 | History of falling | ICD10 | 10062017 | 09202017 | 10042017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 09222017 | 2017-09-22T15:48:10+00:00 |  | 000011321-01 | BARBARA | EDWARDS | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09202017 | 10052017 | Standard |  |  | 2017-09-20 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-10-05 | 2017-10-03 | 2017-09-28 | 2017-10-03 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922072 | I232, I420, I472 | Ventricular tachycardia | ICD10 | 10062017 | 09202017 | 10052017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 10022017 | 2017-10-02T11:14:06+00:00 |  | 000065562-01 | KATHERINE | MILES | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09292017 | 09302017 | Standard |  |  | 2017-09-29 | 1 day @ $200.00 | 14 | 2017-09-30 |  |  |  | 1 | 15 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002110 | M6281, N390 | Urinary tract infection, site not specified | ICD10 | 10062017 | 09292017 | 09302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 08162017 | 2017-08-16T13:26:51+00:00 |  | 000028732-01 | MARION | MORGAN | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08142017 | 10022017 | Standard |  |  | 2017-08-14 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 3 days = $750.00 Per Diem: $200.00/day x 26 days = $5200.00 TOTAL PAYMENT = $12,256.19 | 0 | 2017-10-02 |  | 2017-10-04 |  | 49 | 49 | 12256.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816066 | G9340, M6281, R2681, R7881 | Bacteremia | ICD10 | 10062017 | 08142017 | 10022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 50 | Revenue | RV |  |  |  | 7.0 |
| 08212017 | 2017-08-21T09:16:50+00:00 |  | 000008364-01 | RICHARD | PHILLIPS | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08182017 | 09292017 | Standard |  |  | 2017-08-18 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 22 days = $5500.00 TOTAL PAYMENT = $11,549.81 | 0 | 2017-09-29 | 2017-09-26 | 2017-09-28 | 2017-09-26 | 42 | 42 | 11549.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821119 | S2242XA, S27301A, S32312A, S32810A, T2141XA | Corrosion of unspecified degree of chest wall, init encntr | ICD10 | 10062017 | 08182017 | 09292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 43 | Revenue | RV |  |  |  | 7.0 |
| 09112017 | 2017-09-11T15:13:29+00:00 |  | 000000705-01 | Gloria | Ross | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09092017 | 09272017 | Standard |  |  | 2017-09-09 | Per MDS: 17/RVA01 = $3586.28 | 21 | 2017-09-27 |  | 2017-10-06 | 2017-10-05 | 18 | 39 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912038 | G309 | Alzheimer's disease, unspecified | ICD10 | 10062017 | 09092017 | 09272017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 09182017 | 2017-09-18T14:24:35+00:00 |  | 000015496-01 | ELMO | CURRY | TIMOTHY J BRIGHT DO INC | 935342 | TIMOTHY J | BRIGHT | 1760405393 | CENTERBURG POINTE | 915833 | 1033410295 | CENTERBURG POINTE | 1033410295 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG POINTE | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09152017 | 10052017 | Standard |  |  | 2017-09-15 | 17/RVB01= $5411.86 | 0 | 2017-10-05 | 2017-10-06 | 2017-10-06 | 2017-10-06 | 20 | 20 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919006 | J159 | Unspecified bacterial pneumonia | ICD10 | 10062017 | 09152017 | 10052017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09292017 | 2017-09-29T12:52:30+00:00 |  | 000057027-01 | KENNETH | MILAM | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09282017 | 10052017 | Standard |  |  | 2017-09-28 | 17/RUC01=$6,049.81 | 0 | 2017-10-05 |  | 2017-10-06 |  | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929038 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 10062017 | 09282017 | 10052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 09292017 | 2017-09-29T08:51:21+00:00 |  | 000058138-01 | CAROL | YODER | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 10062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09272017 | 10062017 | Standard |  |  | 2017-09-27 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-10-06 |  | 2017-10-06 | 2017-10-06 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929015 | E039, I10, M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 10062017 | 09272017 | 10062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
