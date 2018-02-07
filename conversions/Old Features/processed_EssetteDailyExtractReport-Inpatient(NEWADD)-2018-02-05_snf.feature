Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-05_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-05_SNF
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
| 01152018 | 2018-01-15T12:37:01+00:00 |  | 000010355-01 | FRANCES | SHIELDS | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 02052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01312018 | Standard |  |  | 2018-01-11 | 16/RUB01=$4,429.71 | 0 | 2018-01-31 |  | 2018-02-02 | 2018-01-29 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115133 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 02052018 | 01112018 | 01312018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01152018 | 2018-01-15T16:39:58+00:00 |  | 000078610-01 | Thomas | Ellinger | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 02052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01122018 | 01282018 | Standard |  |  | 2018-01-12 | 16/RUC01= $7333.11 | 0 | 2018-01-28 |  | 2018-01-30 |  | 16 | 16 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116006 | I959, R001 | Bradycardia, unspecified | ICD10 | 02052018 | 01122018 | 01282018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 12112017 | 2017-12-11T15:50:03+00:00 |  | 000087866-01 | John | Cramblett | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | CAMBRIDGE CARE & REHAB | 951200 | 1578003570 | CAMBRIDGE CARE & REHAB | 1578003570 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CAMBRIDGE CARE & REHAB | 02052018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12292017 | 02012018 | Standard |  |  | 2017-12-09 | 17/RUB01= $5813.99 34 DAYS @ $250.00= $8500.00 TOTAL: $14313.99 | 0 | 2018-02-01 |  | 2018-01-04 |  | 54 | 54 | 14313.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211159 | N201, Z436, Z936 | Other artificial openings of urinary tract status | ICD10 | 02052018 | 12092017 | 02012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 35 | Revenue | RV |  |  |  | 6.0 |
| 01152018 | 2018-01-15T12:55:04+00:00 |  | 000070802-01 | Jane | Langdon | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 02052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01252018 | Standard |  |  | 2018-01-11 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 10 | 2018-01-25 |  | 2018-02-02 |  | 14 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115135 | A419 | Sepsis, unspecified organism | ICD10 | 02052018 | 01112018 | 01252018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01192018 | 2018-01-19T16:00:39+00:00 |  | 000090906-01 | Susan | Ream | SMITH, KIRK E | 940202 | KIRK E | SMITH | 1730199985 | KINGSTON OF MIAMISBURG | 927958 | 1972590115 | KINGSTON OF MIAMISBURG | 1972590115 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINGSTON OF MIAMISBURG | 02052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01182018 | 01312018 | Standard |  |  | 2018-01-18 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-31 |  | 2018-02-02 | 2018-02-02 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124051 | Z96652 | Presence of left artificial knee joint | ICD10 | 02052018 | 01182018 | 01312018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01262018 | 2018-01-26T15:56:22+00:00 |  | 000029203-01 | CHRISTA | COOPER | GREENFIELD AREA MED CTR | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 916533 | 1215960901 | GREENFIELD AREA MEDICAL CENTER SNF | 1235155425 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER SNF | 02052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01232018 | 02022018 | Standard |  |  | 2018-01-23 | Swing Bed Daily Rate x 10 days | 0 | 2018-02-02 |  |  | 2018-02-02 | 10 | 10 | Swing bed daily rate x 10 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129014 | S32599A | Oth fracture of unsp pubis, init encntr for closed fracture | ICD10 | 02052018 | 01232018 | 02022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 11 | Revenue | RV |  |  |  | 10.0 |
| 09192017 | 2017-09-19T16:45:48+00:00 |  | 000048916-01 | ROBERT | FOOS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02052018 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 09162017 | 01012018 | Standard |  |  | 2017-09-16 | 17/RUC01=$6,049.81 PER DIEM RATE OF $200.00/DAY X 80 DAYS=$16,000 TOTAL PAYMENT TO FACILITY=$22,049.81 | 0 | 2018-01-01 |  | 2018-02-01 |  | 100 | 100 | 22049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920078 | M4327 | Fusion of spine, lumbosacral region | ICD10 | 02052018 | 09162017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 108 | Revenue | RV |  |  |  | 14.0 |
| 01102018 | 2018-01-10T13:26:56+00:00 |  | 000096058-01 | Robert | Rice | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 02052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01082018 | 01282018 | Standard |  |  | 2018-01-08 | Contract/ RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-28 |  | 2018-02-02 | 2018-02-02 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110086 | N390 | Urinary tract infection, site not specified | ICD10 | 02052018 | 01082018 | 01282018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01152018 | 2018-01-15T15:25:19+00:00 |  | 000023102-01 | GEORGIA | DAVENPORT | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 02052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01132018 | 01232018 | Standard |  |  | 2018-01-13 | Contract/RUG: 16/RVL (Per MDS) = $4,874.23 | 0 | 2018-01-23 |  | 2018-02-05 |  | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115156 | J09X2 | Flu due to ident novel influenza A virus w oth resp manifest | ICD10 | 02052018 | 01132018 | 01232018 | RVL01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA OR | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01232018 | 2018-01-23T13:48:06+00:00 |  | 000062734-01 | JON | NOE | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 02052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 02022018 | Standard |  |  | 2018-01-19 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-02-02 | 2018-02-05 | 2018-02-05 | 2018-02-05 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123079 | I25119, Z95811 | Presence of heart assist device | ICD10 | 02052018 | 01192018 | 02022018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01292018 | 2018-01-29T09:08:55+00:00 |  | 000091986-01 | F Howard | Houldsworth | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 02052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02022018 | Standard |  |  | 2018-01-26 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2018-02-02 |  | 2018-02-05 | 2018-02-05 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129071 | I5032 | Chronic diastolic (congestive) heart failure | ICD10 | 02052018 | 01262018 | 02022018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 12202017 | 2017-12-20T16:56:05+00:00 |  | 000076034-01 | James | Griffith | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 02052018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12182017 | 01042018 | Standard |  |  | 2017-12-18 | 17 days @ $200.00= $3400.00  (IV INVOICES SHOW NO CHARGES FOR VANCOMYCIN AND IMIPENEM WAS NOT REQUESTED BUT THE INVOICE ONLY SHOWED ONE CHARGE FOR $30.97 ON 1/2/18 AND IT WAS CREDITED BACK. THERE WAS ANOTHER CREDIT ON 12/31/18 FOR $10.00) | 0 | 2018-01-04 |  | 2018-02-05 | 2018-02-05 | 17 | 17 | 3400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221028 | L03116 | Cellulitis of left lower limb | ICD10 | 02052018 | 12182017 | 01042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3400 | 3400 | Approved | 18 | Revenue | RV |  |  |  | 3.0 |
| 01092018 | 2018-01-09T12:24:34+00:00 |  | 000005820-01 | CLINTON | PERRY | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01062018 | 01262018 | Standard |  |  | 2018-01-06 | 17/RUC01=$6,049.81 | 0 | 2018-01-26 |  | 2018-02-05 | 2018-02-05 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109145 | I340, J8410, M6281 | Muscle weakness (generalized) | ICD10 | 02052018 | 01062018 | 01262018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01152018 | 2018-01-15T17:21:29+00:00 |  | 000092799-01 | Elnora | Welsh | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 02052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01142018 | 01272018 | Standard |  |  | 2018-01-14 | 16/RVB01= $3350.20 | 0 | 2018-01-27 |  | 2018-02-05 | 2018-01-25 | 13 | 13 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116010 | K9171 | Accidental pnctr & lac of a dgstv sys org dur dgstv sys proc | ICD10 | 02052018 | 01142018 | 01272018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01222018 | 2018-01-22T16:44:35+00:00 |  | 000116154-01 | Joan | Kunz | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 02052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01192018 | 02022018 | Standard |  |  | 2018-01-19 | Contract/RUG: 16/RUC (Per MDS) = $7,333.11 | 9 | 2018-02-02 |  | 2018-02-05 | 2018-02-05 | 14 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123003 | S42201D | Unsp fx upper end of r humerus, subs for fx w routn heal | ICD10 | 02052018 | 01192018 | 02022018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 02012018 | 2018-02-01T12:49:36+00:00 |  | 000024673-01 | WILMA | GRAY | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 02052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01312018 | 02012018 | Standard |  |  | 2018-01-31 | Per Diem: $200.00/day x 1 SNF Day = $200.00 | 0 | 2018-02-01 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201066 | I10, M6281 | Muscle weakness (generalized) | ICD10 | 02052018 | 01312018 | 02012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
