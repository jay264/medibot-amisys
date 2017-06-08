Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-07_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-07_SNF
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
| 02162017 | 2017-02-16T13:34:33+00:00 |  | 000052063-01 | DONALD | GOURLEY | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06072017 | 06142017 | Standard |  |  | 2017-02-13 | 17/RVC01=$6306.19 40 DAYS @ $200.00=$8000.00 TOTAL=$14306.19 | 0 | 2017-04-20 | 2017-05-01 | 2017-05-01 | 2017-05-01 | 60 | 60 | 14306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170217022 | J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 06072017 | 02132017 | 04202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 8 | Revenue | RV |  |  |  | 13.0 |
| 03082017 | 2017-03-08T14:19:38+00:00 |  | 000024687-01 | GARLAND | TATTERSON JR | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03062017 | 05312017 | Standard |  |  | 2017-03-06 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 29 days = $7250.00 Per Diem: $200.00/day x 32 days = 6400.00 TOTAL PAYMENT = $19,061.86TOTAL PAYMENT = $19,061.86 | 19 | 2017-06-01 |  | 2017-06-07 |  | 81 | 100 | 190661.86 | 170310089124.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170309017 | N390 | Urinary tract infection, site not specified | ICD10 | 06072017 | 03062017 | 06012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 87 | Revenue | RV |  |  |  | 13.0 |
| 03242017 | 2017-03-24T11:16:45+00:00 |  | 000042272-01 | LARRY | BOND | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03222017 | 04042017 | Standard |  |  | 2017-03-22 | Per Diem: $200.00/day x 14 days = $2800.00 TOTAL PAYMENT = $2800.00 | 0 | 2017-04-05 |  | 2017-05-18 | 2017-05-18 | 14 | 14 | 2800.0 | 170329092548.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170327049 | G9009 | Other idiopathic peripheral autonomic neuropathy | ICD10 | 06072017 | 03222017 | 04052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2800 | 2800 | Approved | 14 | Revenue | RV |  |  |  | 14.0 |
| 04072017 | 2017-04-07T16:36:54+00:00 |  | 000035000-01 | GEORGE | GEANEKOPULOS | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04062017 | 04212017 | Standard |  |  | 2017-04-06 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 11 | 2017-04-22 | 2017-04-23 | 2017-04-19 | 2017-04-23 | 16 | 27 | 7333.11 | 170413080839.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170410009 | E876, J910, N179 | Acute kidney failure, unspecified | ICD10 | 06072017 | 04062017 | 04222017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 04172017 | 2017-04-17T11:06:39+00:00 |  | 000056074-01 | LISA | LITTLE | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | CENTERBURG RESPIRATORY A | 949066 | 1083157747 | CENTERBURG RESPIRATORY AND SPECIALTY | 1083157747 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG RESPIRATORY AND SPECIALTY | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04182017 | 06032017 | Standard |  |  | 2017-04-18 | 47 DAYS @ $520.00=$24440.00 | 0 | 2017-06-04 |  | 2017-06-07 | 2017-06-07 | 47 | 47 | 24440.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417039 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 06072017 | 04182017 | 06042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 47 | Revenue | RV |  |  |  | 8.0 |
| 04172017 | 2017-04-17T09:42:14+00:00 |  | 000083623-01 | Paul | Dailey | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04142017 | 06012017 | Standard |  |  | 2017-04-14 | 17/RVB01=$5411.86 29 DAYS @ $200.00=$5800.00 TOTAL: $11211.86 | 0 | 2017-06-02 |  | 2017-06-06 | 2017-06-06 | 49 | 49 | 11211.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417120 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 06072017 | 04142017 | 06022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 49 | Revenue | RV |  |  |  | 7.0 |
| 04192017 | 2017-04-19T16:39:18+00:00 |  | 000032992-01 | GEORGE | DAVIS | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04172017 | 05142017 | Standard |  |  | 2017-04-17 | Per MDS: 16/RVC01 = $3539.19 Per Diem: $200.00/day x 4 days = $800.00 TOTAL PAYMENT = $4339.19 | 0 | 2017-05-15 |  | 2017-06-06 |  | 24 | 24 | 4339.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420011 | Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 06072017 | 04172017 | 05152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4339 | 4339 | Approved | 28 | Revenue | RV |  |  |  | 4.0 |
| 04262017 | 2017-04-26T12:34:43+00:00 |  | 000088586-01 | Clarence | Cottrill | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04242017 | 05242017 | Standard |  |  | 2017-04-24 | Per Diem: $200.00/day x 31 days = $6200.00 Wound VAC (per invoice) = $598.50 Rocephin (per invoice) = $322.03 TOTAL PAYMENT = $7120.53 | 0 | 2017-05-25 |  | 2017-06-06 | 2017-06-06 | 31 | 31 | 7120.53 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427027 | T8453XD | Infect/inflm reaction due to internal r knee prosth, subs | ICD10 | 06072017 | 04242017 | 05252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7120 | 7120 | Approved | 31 | Revenue | RV |  |  |  | 3.0 |
| 05012017 | 2017-05-01T09:20:33+00:00 |  | 000063606-01 | KENNETH | HOWARD | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272017 | 06042017 | Standard |  |  | 2017-04-27 | Swing Bed Daily Rate x 39 days | 0 | 2017-06-05 | 2017-06-02 |  | 2017-06-05 | 39 | 39 | Swing Bed Daily Rate |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502019 | Z5189 | Encounter for other specified aftercare | ICD10 | 06072017 | 04272017 | 06052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 39 | Revenue | RV |  |  |  | 4.0 |
| 05012017 | 2017-05-01T16:32:22+00:00 |  | 000024123-01 | JEANNINE | GREEN | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04282017 | 06052017 | Standard |  |  | 2017-04-28 | 17/RVC01=$6306.19 19 DAYS @ $200.00=$3800.00 TOTAL: $10106.19 | 0 | 2017-06-06 |  | 2017-06-07 | 2017-06-07 | 39 | 39 | 10106.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502095 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 06072017 | 04282017 | 06062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 39 | Revenue | RV |  |  |  | 3.0 |
| 05022017 | 2017-05-02T09:53:46+00:00 |  | 000052063-01 | DONALD | GOURLEY | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06072017 | 06142017 | Standard |  |  | 2017-04-29 | 16/RHC01=$3133.29 | 0 | 2017-05-15 |  | 2017-05-22 |  | 16 | 16 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503025 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06072017 | 04292017 | 05142017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05042017 | 2017-05-04T13:29:51+00:00 |  | 000000029-01 | Joyce | Messenger | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 06072017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05032017 | 05192017 | Standard |  |  | 2017-05-03 | Per MDS: 17/RUB01 = $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-05-20 |  | 2017-05-25 | 2017-06-07 | 17 | 17 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505028 | M4806, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 06072017 | 05032017 | 05202017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 05082017 | 2017-05-08T15:31:03+00:00 |  | 000038137-01 | LLOYD | SHUTTLEWORTH | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05072017 | 05262017 | Standard |  |  | 2017-05-07 | Per MDS: 17/RUB01 -= $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-05-27 |  | 2017-06-02 | 2017-06-07 | 20 | 20 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509073 | Z4789, T8189XD | Oth complications of procedures, NEC, subs | ICD10 | 06072017 | 05072017 | 05272017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05092017 | 2017-05-09T09:55:15+00:00 |  | 000030235-01 | DOUGLAS | THOMPSON | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05052017 | 05182017 | Standard |  |  | 2017-05-05 | 17/RUC01=$6049.81 | 0 | 2017-05-19 |  | 2017-06-06 | 2017-06-06 | 14 | 14 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510028 | E042, G309 | Alzheimer's disease, unspecified | ICD10 | 06072017 | 05052017 | 05192017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 05112017 | 2017-05-11T13:54:55+00:00 |  | 000025683-01 | PAULINE | BARCH | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05092017 | 05222017 | Standard |  |  | 2017-05-09 | 17/RUA=$3214.76 | 0 | 2017-05-23 |  | 2017-06-06 | 2017-06-06 | 14 | 14 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511072 | I4891 | Unspecified atrial fibrillation | ICD10 | 06072017 | 05092017 | 05232017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 05152017 | 2017-05-15T15:26:27+00:00 |  | 000000143-01 | LELAND | GORDON JR | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05142017 | 05302017 | Standard |  |  | 2017-05-14 | 16/RUA01=$3214.76 | 0 | 2017-05-31 |  | 2017-06-07 | 2017-06-07 | 17 | 17 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515141 | N390 | Urinary tract infection, site not specified | ICD10 | 06072017 | 05142017 | 05312017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 05162017 | 2017-05-16T11:15:34+00:00 |  | 000117251-01 | Barbara | Willeford | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 06072017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05142017 | 06052017 | Standard |  |  | 2017-05-14 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 3 SNF Days = $600.00 Total Payment: $6,906.19 | 0 | 2017-06-06 |  | 2017-06-02 | 2017-06-02 | 23 | 23 | 6906.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516100 | F0390, F0789, M6281, S72002S, W19XXXS | Unspecified fall, sequela | ICD10 | 06072017 | 05142017 | 06062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6906 | 6906 | Approved | 23 | Revenue | RV |  |  |  | 3.0 |
| 05162017 | 2017-05-16T14:33:50+00:00 |  | 000030017-01 | DANIEL | EVANS | FCMH MED & SURG ASSOC | 912379 | JEANNETTE M | MORGAN | 1386662682 | MAPLE VIEW MANOR | 901811 | 1073700431 | MAPLE VIEW MANOR | 1073700431 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAPLE VIEW MANOR | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05122017 | 05242017 | Standard |  |  | 2017-05-12 | Per MDS: 16/RHC01 = $3133.29 TOTAL PAYMENT = $3133.29 | 4 | 2017-05-25 |  | 2017-06-06 |  | 13 | 17 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517014 | I639 | Cerebral infarction, unspecified | ICD10 | 06072017 | 05122017 | 05252017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 05182017 | 2017-05-18T13:41:57+00:00 |  | 000017501-01 | WAVALENE | WOOLEVER | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05162017 | 06052017 | Standard |  |  | 2017-05-16 | 16/RVB01=$3350.20 1 DAY @ $200.00= $200.00 TOTAL: 3350.20 | 0 | 2017-06-06 |  | 2017-06-07 | 2017-06-07 | 21 | 21 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518055 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 06072017 | 05162017 | 06062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3550 | 3550 | Approved | 21 | Revenue | RV |  |  |  | 1.0 |
| 05222017 | 2017-05-22T15:21:40+00:00 |  | 000087152-01 | June | Lobono | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 06072017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 05212017 | 06072017 | Standard |  |  | 2017-05-21 | Contract/RUG: 16/RVA (Per MDS) = $2,689.71 | 0 | 2017-06-08 |  | 2017-06-07 | 2017-06-07 | 18 | 18 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522123 | Z471, Z96652 | Presence of left artificial knee joint | ICD10 | 06072017 | 05212017 | 06082017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 05222017 | 2017-05-22T15:26:50+00:00 |  | 000058103-01 | FERN | SMITH | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05212017 | 06012017 | Standard |  |  | 2017-05-21 | Per MDS: 17/RUB01 = $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-06-02 |  | 2017-06-06 | 2017-06-06 | 12 | 12 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522124 | I129, N183, N3281, S72142D, Z9181 | History of falling | ICD10 | 06072017 | 05212017 | 06022017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 05232017 | 2017-05-23T17:01:24+00:00 |  | 000048556-01 | DORIS | WRIGHT | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05222017 | 06042017 | Standard |  |  | 2017-05-22 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = 7333.11 | 0 | 2017-06-05 |  | 2017-05-30 | 2017-06-07 | 14 | 14 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524030 | G309, I10, I2510, I6350, I739 | Peripheral vascular disease, unspecified | ICD10 | 06072017 | 05222017 | 06052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 05262017 | 2017-05-26T14:25:25+00:00 |  | 000076617-01 | Janice | Fye | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | WILLOW HAVEN CARE CENTER | 924194 | 1306834148 | WILLOW HAVEN CARE CENTER | 1306834148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WILLOW HAVEN CARE CENTER | 06072017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 05252017 | 05302017 | Standard |  |  | 2017-05-25 | 17/CD101=$3315.15 | 0 | 2017-05-31 |  | 2017-06-07 |  | 6 | 6 | 3315.15 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526075 | S72145D | Nondisp intertroch fx l femur, subs for clos fx w routn heal | ICD10 | 06072017 | 05252017 | 05312017 | CD101 | CLINICALLY COMPLEX , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CC | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 05302017 | 2017-05-30T10:01:51+00:00 |  | 000116637-01 | Janis | Stout | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 06072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05262017 | 06022017 | Standard |  |  | 2017-05-26 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-06-03 |  | 2017-06-06 | 2017-06-06 | 8 | 8 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530139 | Z4889 | Encounter for other specified surgical aftercare | ICD10 | 06072017 | 05262017 | 06032017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 05302017 | 2017-05-30T11:27:37+00:00 |  | 000086716-01 | Robert | Ryan | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 06072017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 05262017 | 06042017 | Standard |  |  | 2017-05-26 | 17/RUC01=$6049.81 | 0 | 2017-06-05 |  | 2017-06-07 | 2017-06-07 | 10 | 10 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530143 | N390 | Urinary tract infection, site not specified | ICD10 | 06072017 | 05262017 | 06052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
