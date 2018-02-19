Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-15_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-15_SNF
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
| 01182018 | 2018-01-18T08:45:42+00:00 |  | 000049842-01 | JAMES | OGURCHOCK | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 02152018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 01162018 | 02142018 | Standard |  |  | 2018-01-16 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 9 days = $2250.00 TOTAL PAYMENT = $7661.86 | 0 | 2018-02-14 | 2018-02-05 | 2018-02-24 | 2018-02-14 | 29 | 29 | 7661.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118018 | I10, I4891, J9612, J9801, N189, R040, Z950 | Presence of cardiac pacemaker | ICD10 | 02152018 | 01162018 | 02142018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7661 | 7661 | Approved | 30 | Revenue | RV |  |  |  | 6.0 |
| 11292017 | 2017-11-29T12:51:03+00:00 |  | 000082386-01 | William | Stewart | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11252017 | 12192017 | Standard |  |  | 2017-11-25 | PER DIEM RATE OF $250.00/DAY X 12 DAYS=$3,000.00 PER DIEM RATE OF $200.00/DAY X 12 DAYS= $2,400.00 IV ROCEPHIN PER PHARMACY/DOSE=$8.62 X 24 DOSES=$206.88 TOTAL PAYMENT TO FACILITY=$5,606.88 | 0 | 2017-12-19 |  | 2018-02-07 | 2018-02-07 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129117 | I4891, R030, S12100A | Unsp disp fx of second cervical vertebra, init for clos fx | ICD10 | 02152018 | 11252017 | 12192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5606 | 5606 | Approved Skilled | 25 | Revenue | RV |  |  |  | 10.0 |
| 01102018 | 2018-01-10T08:35:36+00:00 |  | 000008209-01 | MARY | SWARMER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01082018 | 02022018 | Standard |  |  | 2018-01-08 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 Per Diem: $250.00/day x 2 SNF Days = $500.00 Total Payment: $4,086.28 | 0 | 2018-02-02 |  | 2018-02-14 |  | 22 | 22 | 4086.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110065 | B963, M6281, N179, N19, R262, R41841, Z932 | Ileostomy status | ICD10 | 02152018 | 01082018 | 02022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4086 | 4086 | Approved | 26 | Revenue | RV |  |  |  | 2.0 |
| 01042018 | 2018-01-04T16:12:43+00:00 |  | 000059078-01 | AGNES | NEUVIRTH | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01022018 | 02052018 | Standard |  |  | 2018-01-02 | 17/RHA01= $2812.08 14 DAYS @ $200.00= $2800.00 TOTAL: $5612.08 | 0 | 2018-02-05 |  | 2018-02-14 | 2018-02-14 | 34 | 34 | 5612.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104115 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 02152018 | 01022018 | 02052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5612 | 5612 | Approved | 35 | Revenue | RV |  |  |  | 6.0 |
| 01302018 | 2018-01-30T16:30:06+00:00 |  | 000000473-01 | SUZANNE | CARR | HEARTLAND OF UPTOWN WEST | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01272018 | 02022018 | Standard |  |  | 2018-01-27 | 17/RVC01= $6306.19 | 24 | 2018-02-02 |  | 2018-02-14 |  | 6 | 30 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131056 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 02152018 | 01272018 | 02022018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 02012018 | 2018-02-01T15:54:46+00:00 |  | 000077972-01 | Sandy | Daniels | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 02152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01312018 | 02042018 | Standard |  |  | 2018-01-31 | PER DIEM RATE OF $200.00/day x 4 days=$800.00 CARVE OUT FOR WOUND VAC PER INVOICE=$713.09 TOTAL PAYMENT TO FACILITY=$1,513.09 | 13 | 2018-02-04 |  | 2018-02-13 |  | 4 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202010 | M84359D, R531 | Weakness | ICD10 | 02152018 | 01312018 | 02042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1513 | 1513 | Approved Skilled | 5 | Revenue | RV |  |  |  | 4.0 |
| 02092018 | 2018-02-09T16:14:37+00:00 |  | 000095539-01 | Sharon | Thabat Mohamed | FAYETTE COUNTY MEM HSP 1 | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02092018 | 02142018 | Standard |  |  | 2018-02-09 | Swing Bed Daily Rate x 5 Days | 0 | 2018-02-14 |  |  | 2018-02-13 | 5 | 5 | Swing Bed Daily Rate x 5 Days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209085 | Z5189 | Encounter for other specified aftercare | ICD10 | 02152018 | 02092018 | 02142018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 6 | Revenue | RV |  |  |  | 5.0 |
| 01082018 | 2018-01-08T12:23:20+00:00 |  | 000023356-01 | ELVA | JACONETTE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 02052018 | Standard |  |  | 2018-01-04 | 17/RVC01= $6306.19 12 DAYS @ $200.00= $2400.00 TOTAL: $8706.19 | 2 | 2018-02-05 |  | 2018-02-15 | 2018-02-15 | 32 | 34 | 8706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108120 | J189 | Pneumonia, unspecified organism | ICD10 | 02152018 | 01042018 | 02052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8706 | 8706 | Approved | 33 | Revenue | RV |  |  |  | 5.0 |
| 01082018 | 2018-01-08T14:45:18+00:00 |  | 000012700-01 | BRENDA | BELL | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01292018 | Standard |  |  | 2018-01-04 | 17/RVC01= $6306.19 | 0 | 2018-01-29 |  | 2018-02-15 | 2018-02-15 | 25 | 25 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108137 | E440 | Moderate protein-calorie malnutrition | ICD10 | 02152018 | 01042018 | 01292018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 01092018 | 2018-01-09T16:05:50+00:00 |  | 000051874-01 | STANLEY | ABRAMS | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01072018 | 01282018 | Standard |  |  | 2018-02-07 | 17/RVC01= $6306.19 | 0 | 2018-01-28 |  | 2018-02-15 | 2018-02-15 | 21 | 21 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110028 | A4901 | Methicillin suscep staph infection, unsp site | ICD10 | 02152018 | 01072018 | 01282018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 01252018 | 2018-01-25T14:17:41+00:00 |  | 000119377-01 | Wilbert | Bailey JR | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 02152018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 01232018 | 02142018 | Standard |  |  | 2018-01-23 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2018-02-14 | 2018-02-15 | 2018-02-15 | 2018-02-15 | 22 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125089 | G9340, Z5189 | Encounter for other specified aftercare | ICD10 | 02152018 | 01232018 | 02142018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 01262018 | 2018-01-26T16:00:05+00:00 |  | 000093290-01 | Gary | Allen | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01252018 | 02072018 | Standard |  |  | 2018-01-25 | Contract/RUG: 16/RHC (Per MDS) = $3,133.29 | 0 | 2018-02-07 |  | 2018-02-15 | 2018-02-15 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129026 | A4902 | Methicillin resis staph infection, unsp site | ICD10 | 02152018 | 01252018 | 02072018 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 09282017 | 2017-09-28T09:27:40+00:00 |  | 000110200-01 | CECIL | JORDAN | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | HIGHLAND OAKS HEALTH CENTER | 934015 | 1083929186 | HIGHLAND OAKS HEALTH CENTER | 1083929186 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HIGHLAND OAKS HEALTH CENTER | 02152018 | Denied Skilled - Pay Unskilled | MediGold Southeast OH Essential Care | Fax |  | Inpatient | 09262017 | 09282017 | Standard |  |  | 2017-09-26 | Admission Denial: Non-skilled Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $400.00 | 0 | 2017-09-28 |  |  |  | 0 | 0 | 400.0 | 171013134465.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170928039 | R001 | Bradycardia, unspecified | ICD10 | 02152018 | 09262017 | 09282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 12052017 | 2017-12-05T12:38:17+00:00 |  | 000048277-01 | RONALD | BEACH | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12022017 | 01122018 | Standard |  |  | 2017-12-02 | 17/RUC01=$6,049.81 PER DIEM RATE OF $250.00/DAY X 14 DAYS=$3,500.00 PER DIEM RATE OF $200.00/DAY X 7 DAYS (NO ST CONTINUED ON UPDATE FOR 1/5/18) =$1,400.00 TOTAL PAYMENT=$10,949.81 | 0 | 2018-01-12 |  | 2018-01-31 | 2018-01-31 | 41 | 41 | 10949.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205086 | S52501A, S83106A | Unspecified dislocation of unspecified knee, init encntr | ICD10 | 02152018 | 12022017 | 01122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 42 | Revenue | RV |  |  |  | 7.0 |
| 01222018 | 2018-01-22T15:31:28+00:00 |  | 000085969-01 | Brynton | Gibson | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 02072018 | Standard |  |  | 2018-01-19 | Contract/RUG: 17/RHL (Per MDS) = $4,862.85 | 0 | 2018-02-07 |  | 2018-02-15 | 2018-02-15 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122149 | J129, S7292XD, Z96651 | Presence of right artificial knee joint | ICD10 | 02152018 | 01192018 | 02072018 | RHL01 | HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01232018 | 2018-01-23T12:44:23+00:00 |  | 000116066-01 | DONNA | SIDNER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 02152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01222018 | 01302018 | Standard |  |  | 2018-01-22 | 16/RUA01=$3,214.76 | 0 | 2018-01-30 |  | 2018-02-14 | 2018-02-14 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123064 | I480, R2689, R531 | Weakness | ICD10 | 02152018 | 01222018 | 01302018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01252018 | 2018-01-25T17:36:57+00:00 |  | 000099587-01 | Rudolf | Sperger | SENIORS FIRST INC | 931142 | AMAN | AHMED | 1316046188 | OTTERBEIN HOSPICE | 952522 | 1992797328 | OTTERBEIN LEBANON | 1992797328 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN LEBANON | 02152018 | Denied | MediGold Southwest OH Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 02152018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A180126018 | N390, S22080A | Wedge compression fracture of T11-T12 vertebra, init | ICD10 | 02152018 | 01092018 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 01292018 | 2018-01-29T18:37:31+00:00 |  | 000071517-01 | Carol | Schiff | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 02152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01252018 | 02112018 | Standard |  |  | 2018-01-25 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-02-11 |  | 2018-02-14 | 2018-02-15 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130055 | N390, R1310, R296 | Repeated falls | ICD10 | 02152018 | 01252018 | 02112018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 01302018 | 2018-01-30T12:04:05+00:00 |  | 000006394-01 | BILLIE | FINEGAN | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | GARDEN REHAB AND HEALTH | 949780 | 1245785310 | CAPITAL CITY GARDENS REHABILITATION | 1245785310 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CAPITAL CITY GARDENS REHABILITATION | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 01312018 | Standard |  |  | 2018-02-26 | 6 DAYS AT THE NONSKILLED RATE $200.00= $1200.00 | 0 | 2018-02-01 |  |  |  | 6 | 0 | 1200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130098 | F0391 | Unspecified dementia with behavioral disturbance | ICD10 | 02152018 | 01262018 | 02012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved | 6 | Revenue | RV |  |  |  | 6.0 |
| 02052018 | 2018-02-05T14:44:59+00:00 |  | 000023103-01 | LEWIS | LOMAGLIO | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02132018 | Standard |  |  | 2018-02-02 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-02-13 |  | 2018-02-14 | 2018-02-15 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205104 | I213, I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 02152018 | 02022018 | 02132018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
