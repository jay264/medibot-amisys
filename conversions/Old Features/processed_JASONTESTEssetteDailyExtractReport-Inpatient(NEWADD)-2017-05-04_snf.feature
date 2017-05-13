Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-04_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-04_SNF
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

	#And in the "hospital_services" page I enter the total SNF days into the "auth_days" image
	And in the "hospital_services" page I enter "365" into the "auth_days" image

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
	And in the "authorized_services" page I enter the first SNF date into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_requested" image
	And the test pauses for "2" seconds
  And in the "authorized_services" page I enter the first SNF date into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_authorized" image
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

	And I press "Control + N"
	And the test pauses for "5" seconds
	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter the first SNF date into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_requested" image
	And the test pauses for "2" seconds
  And in the "authorized_services" page I enter the first SNF date into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_authorized" image
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
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
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
| 02022017 | 2017-02-02T14:14:09+00:00 |  | 000077415-01 | DOROTHY | MARTIN | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 05042017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01312017 | 03162017 | Standard |  |  | 2017-01-31 | 20 DAY CASE RATE OF 16/RVC01=$4429.71 16 DAYS @ $200/DAY FOR 2 THERAPIES=$3200.00 TOTAL;$7629.71  FOR 36 TOTAL DAYS HOSP STAYS 2/8-2/9 2/17-2/22 3/8-3/9 3/10-3/12  (9DAYS OUTS) | 3 | 2017-03-17 |  | 2017-04-05 |  | 36 | 36 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170204006 | S42351D | Displ commnt fx shaft of humer, r arm, 7thD | ICD10 | 05042017 | 01312017 | 03172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7629 | 7629 | Approved | 45 | Revenue | RV |  |  |  | 36.0 |
| 02032017 | 2017-02-03T15:20:33+00:00 |  | 000090094-01 | David | Mccann | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 05042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022017 | 02082017 | Standard |  |  | 2017-02-02 | Contract/RUG: 16/RHB (Per MDS) = $2,690.49 | 0 | 2017-02-09 |  | 2017-04-21 |  | 7 | 7 | 2690.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170206021 | Z96651 | Presence of right artificial knee joint | ICD10 | 05042017 | 02022017 | 02092017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 02072017 | 2017-02-07T10:21:44+00:00 |  | 000051516-01 | JON | BEERY | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 05042017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02042017 | 02212017 | Standard |  |  | 2017-02-04 |  . Per Diem: $250.00/day X 12 SNF days = $3000.00 TOTAL PAYMENT: $3000.00 | 67 | 2017-02-22 |  |  |  | 12 | 79 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208038 | A419, J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 05042017 | 02042017 | 02222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3000 | 3000 | Approved | 18 | Revenue | RV |  |  |  | 12.0 |
| 02102017 | 2017-02-10T17:41:51+00:00 |  | 000032095-01 | Nancy | Looney | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 05042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082017 | 02192017 | Standard |  |  | 2017-02-08 | . Per Diem: $250.00/day x 12 SNF days = $3000.00 Ampicillin 29 doses (per invoice) = $387.20 TOTAL PAYMENT: $3387.20 | 0 | 2017-02-20 |  | 2017-03-27 |  | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213045 | L03115, L03116 | Cellulitis of left lower limb | ICD10 | 05042017 | 02082017 | 02202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3387 | 3387 | Approved | 12 | Revenue | RV |  |  |  | 12.0 |
| 02172017 | 2017-02-17T13:49:49+00:00 |  | 000043367-01 | FRANCIS | TSCHAKERT | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05042017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 02162017 | 02242017 | Standard |  |  | 2017-02-16 | Contract/RUG: 16/RVB01  (PER MDS) = $3,350.20 | 0 | 2017-02-25 |  | 2017-03-20 | 2017-02-23 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170220005 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 05042017 | 02162017 | 02252017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 03132017 | 2017-03-13T17:36:11+00:00 |  | 000092052-01 | DARLENE | ANDERSON | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 05042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03102017 | 03292017 | Standard |  |  | 2017-03-10 | 16/RUC01=$7333.11 (20 DAYS OF CASE RATE) TOTAL:$7333.11 | 0 | 2017-03-30 |  | 2017-04-04 | 2017-04-04 | 20 | 20 |  | 170315090296.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170314049 | J9610, R531, R6251 | Failure to thrive (child) | ICD10 | 05042017 | 03102017 | 03302017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 03162017 | 2017-03-16T13:39:25+00:00 |  | 000028640-01 | HELEN | LYKINS | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 05042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03122017 | 03192017 | Standard |  |  | 2017-03-12 | Non-skilled Per Diem: $200.00/day x 8 days = $1600.00 | 0 | 2017-03-20 |  |  |  | 0 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170316053 | N3001 | Acute cystitis with hematuria | ICD10 | 05042017 | 03122017 | 03202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved | 8 | Revenue | RV |  |  |  | 8.0 |
| 03292017 | 2017-03-29T11:36:07+00:00 |  | 000096751-01 | Delmer | Miller | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 05042017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 03272017 | 04232017 | Standard |  |  | 2017-03-27 | Per MDS 17/RVA01 = $3586.28 Per Diem: $250.00/day x 8 SNF days = $2000.00 TOTAL PAYMENT = $5586.28 | 18 | 2017-04-24 |  | 2017-05-02 |  | 28 | 46 | 5586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170329067 | E1169, J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 05042017 | 03272017 | 04242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5586 | 5586 | Approved | 28 | Revenue | RV |  |  |  | 28.0 |
| 04052017 | 2017-04-05T16:37:37+00:00 |  | 000084056-01 | Elvino | Dibartolomeo | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 05042017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04032017 | 04092017 | Standard |  |  | 2017-04-03 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-04-10 |  | 2017-04-30 |  | 7 | 7 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170406044 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05042017 | 04032017 | 04102017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 04062017 | 2017-04-06T15:05:41+00:00 |  | 000025732-01 | VALDO | BEEDY | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 05042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04052017 | 04242017 | Standard |  |  | 2017-04-05 | Per MDS: 17/RUC01 = $6049.81 TOTAL PAYMENT = $6049.81 | 0 | 2017-04-25 |  | 2017-05-02 | 2017-04-24 | 20 | 20 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170407001 | E11628, I7389 | Other specified peripheral vascular diseases | ICD10 | 05042017 | 04052017 | 04252017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04072017 | 2017-04-07T11:14:08+00:00 |  | 000117391-01 | Shirley | Wiggins | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 05042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04052017 | 04272017 | Standard |  |  | 2017-04-05 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 3 SNF days = $750.00 TOTAL PAYMENT = $8083.11 | 0 | 2017-04-28 |  | 2017-04-28 | 2017-04-28 | 23 | 23 | 8083.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170407057 | R109 | Unspecified abdominal pain | ICD10 | 05042017 | 04052017 | 04282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8083 | 8083 | Approved | 23 | Revenue | RV |  |  |  | 23.0 |
| 04072017 | 2017-04-07T14:04:52+00:00 |  | 000017240-01 | THOMAS | GAUS | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 05042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04062017 | 04202017 | Standard |  |  | 2017-04-06 | 17/RUC01=$6,049.81 | 0 | 2017-04-21 |  | 2017-04-21 | 2017-04-21 | 15 | 15 | 6049.81 | 170411095101.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170407087 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05042017 | 04062017 | 04212017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 04102017 | 2017-04-10T16:06:11+00:00 |  | 000037163-01 | JEANNE | TAYLOR | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04082017 | 04262017 | Standard |  |  | 2017-04-08 | Per MDS 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-04-27 |  | 2017-04-25 | 2017-04-25 | 19 | 19 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170411021 | D649, I10, R52, R531, T1490, W19XXXD, S0281XS | FRACTURE OF OTH SKULL AND FACIAL BONES, RIGHT SIDE, SEQUELA | ICD10 | 05042017 | 04082017 | 04272017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 04122017 | 2017-04-12T09:34:19+00:00 |  | 000013452-01 | JOSEPHINE | JOHNSON | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 05042017 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 04102017 | 04262017 | Standard |  |  | 2017-04-10 | Per MDS: 16RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-04-27 |  | 2017-04-21 | 2017-04-26 | 17 | 17 | 7333.11 | 170413095656.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170412049 | I2510, I4891, I714, Z950 | Presence of cardiac pacemaker | ICD10 | 05042017 | 04102017 | 04272017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 04172017 | 2017-04-17T14:54:24+00:00 |  | 000086147-01 | Cynthia | Hammond | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 05042017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04142017 | 04272017 | Standard |  |  | 2017-04-14 | Per MDS: 17/RUB01 = $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-04-28 |  | 2017-05-02 | 2017-04-28 | 14 | 14 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418001 | M4326, Z4782 | Encounter for orth aftercare following scoliosis surgery | ICD10 | 05042017 | 04142017 | 04282017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 04142017 | 2017-04-14T14:49:42+00:00 |  | 000027330-01 | JOSEPH | HESTER | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 05042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04132017 | 04282017 | Standard |  |  | 2017-04-13 | SWING BED daily rate x16 days | 0 | 2017-04-29 |  |  |  | 16 | 16 | SWING BED daily rate x16 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418027 | Z96649 | Presence of unspecified artificial hip joint | ICD10 | 05042017 | 04132017 | 04292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 16 | Revenue | RV |  |  |  | 16.0 |
| 04242017 | 2017-04-24T10:17:05+00:00 |  | 000049327-01 | PAMELA | BOSTWICK | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 05042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04212017 | 05012017 | Standard |  |  | 2017-04-21 | Per MDS: 17/RUA01 = $3214.76 TOTAL PAYMENT = $3214.76 | 0 | 2017-05-02 |  | 2017-05-02 | 2017-05-02 | 11 | 11 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424074 | D509, E1140, E785, I10, I2510, Z471, Z96651, Z794 | Long term (current) use of insulin | ICD10 | 05042017 | 04212017 | 05022017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05012017 | 2017-05-01T11:19:22+00:00 |  | 000103357-01 | Bertha | Hays | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 05042017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170502045 | C8580 | Oth types of non-Hodgkin lymphoma, unspecified site | ICD10 | 05042017 | 04272017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05012017 | 2017-05-01T13:50:18+00:00 |  | 000110767-01 | LORRAINE | CHAFFIN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 05042017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170502046 | M6281 | Muscle weakness (generalized) | ICD10 | 05042017 | 04272017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05012017 | 2017-05-01T13:59:10+00:00 |  | 000083870-01 | Grace | Wilson | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | ADAMS LANE CARE CENTER | 924190 | 1841288149 | ADAMS LANE CARE CENTER | 1841288149 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ADAMS LANE CARE CENTER | 05042017 | Interim Approval | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170502077 | I4430, Z89612 | Acquired absence of left leg above knee | ICD10 | 05042017 | 04292017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05012017 | 2017-05-01T14:10:51+00:00 |  | 000033269-01 | GILDA | BRUMFIELD | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 05042017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170502081 | R4182 | Altered mental status, unspecified | ICD10 | 05042017 | 04282017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05022017 | 2017-05-02T11:43:19+00:00 |  | 000002467-01 | PAUL | FISCHER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 05042017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503032 | J189, R269, R471 | Dysarthria and anarthria | ICD10 | 05042017 | 05012017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05022017 | 2017-05-02T14:07:18+00:00 |  | 000112251-01 | Donna | Morgan | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 05042017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503041 | J9611 | Chronic respiratory failure with hypoxia | ICD10 | 05042017 | 05012017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05022017 | 2017-05-02T15:02:00+00:00 |  | 000117250-01 | BENJAMIN | LEMASTER JR | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 05042017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503044 | Z9049 | Acquired absence of other specified parts of digestive tract | ICD10 | 05042017 | 04292017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 05022017 | 2017-05-02T15:07:38+00:00 |  | 000005785-01 | MIRIAM | GARVER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 05042017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503049 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 05042017 | 04292017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05022017 | 2017-05-02T15:09:37+00:00 |  | 000003864-01 | LEE | HANFORD | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 05042017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503052 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 05042017 | 04282017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05022017 | 2017-05-02T15:21:05+00:00 |  | 000001818-01 | PATRICIA | DARFUS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 05042017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503053 | I209, Z5189 | Encounter for other specified aftercare | ICD10 | 05042017 | 04282017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05022017 | 2017-05-02T15:27:38+00:00 |  | 000042603-01 | DONALD | RILEY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 05042017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503056 | R590 | Localized enlarged lymph nodes | ICD10 | 05042017 | 04302017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05022017 | 2017-05-02T17:21:51+00:00 |  | 000100080-01 | Dennis | Neumann | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | ARBORS AT SPRINGFIELD | 943322 | 1467850305 | ARBORS AT SPRINGFIELD | 1467850305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT SPRINGFIELD | 05042017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503061 | I421 | Obstructive hypertrophic cardiomyopathy | ICD10 | 05042017 | 04292017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05022017 | 2017-05-02T17:39:21+00:00 |  | 000045479-01 | BETTY | UNDERWOOD | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05042017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170503062 | E1142, I739, M1990, R296, R531, Z789 | Other specified health status | ICD10 | 05042017 | 05012017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05032017 | 2017-05-03T09:04:20+00:00 |  | 000030017-01 | DANIEL | EVANS | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 05042017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504007 | R5381 | Other malaise | ICD10 | 05042017 | 05012017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05032017 | 2017-05-03T09:12:18+00:00 |  | 000020190-01 | ALMA | BALL | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 05042017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504009 | K819 | Cholecystitis, unspecified | ICD10 | 05042017 | 05012017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05042017 | 2017-05-04T11:17:10+00:00 |  | 000099921-01 | Edith | Moore | MERCY HEALTH PHYSICIANS | 921405 | MICHAEL S | MCHENRY | 1447357769 | VILLA GEORGETOWN | 931679 | 1184612707 | VILLA GEORGETOWN | 1184612707 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA GEORGETOWN | 05042017 | Interim Approval | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170504036 | S72002A, Z96642 | Presence of left artificial hip joint | ICD10 | 05042017 | 05042017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
