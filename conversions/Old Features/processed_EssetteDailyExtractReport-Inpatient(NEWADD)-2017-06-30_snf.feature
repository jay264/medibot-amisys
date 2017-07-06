Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-30_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-30_SNF
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
| 03092017 | 2017-03-09T08:41:11+00:00 |  | 000036857-01 | JO | MCMAHON | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03062017 | 06082017 | Standard |  |  | 2017-03-06 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 75 days = $15,000.00 TOTAL PAYMENT = $22,333.11 | 0 | 2017-06-09 | 2017-06-06 | 2017-06-08 | 2017-06-08 | 95 | 95 | 22333.11 | 170310089110.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170309009 | E119, I4891, R52, S42211D, S72141S, W1830XS | Fall on same level, unspecified, sequela | ICD10 | 06302017 | 03062017 | 06092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 95 | Revenue | RV |  |  |  | 7.0 |
| 04272017 | 2017-04-27T10:24:42+00:00 |  | 000023694-01 | BETTY | COOPER | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04252017 | 06222017 | Standard |  |  | 2017-04-25 | 16/RVB01=$3350.20 39 DAYS @ $200.00= $7800.00 TOTAL: $11150.20 | 0 | 2017-06-23 |  | 2017-05-15 | 2017-06-29 | 59 | 59 | 11150.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427065 | C4920 | Malig neoplm of conn and soft tiss of unsp low limb, inc hip | ICD10 | 06302017 | 04252017 | 06232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 59 | Revenue | RV |  |  |  | 3.0 |
| 05012017 | 2017-05-01T12:51:01+00:00 |  | 000039711-01 | BETTY | MUSE | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04282017 | 06272017 | Standard |  |  | 2017-04-28 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 Per Diem: $200.00/day x 41 SNF Days = $8,200.00 Total Payment: $12,629.71 | 0 | 2017-06-28 |  | 2017-06-29 | 2017-06-29 | 61 | 61 | 12629.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502065 | Z471 | Aftercare following joint replacement surgery | ICD10 | 06302017 | 04282017 | 06282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 61 | Revenue | RV |  |  |  | 5.0 |
| 05052017 | 2017-05-05T13:38:14+00:00 |  | 000108250-01 | Ruth | Bristley | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | FOUR SEASONS OF WASHINGTON LLC | 933668 | 1538593629 | FOUR SEASONS OF WASHINGTON LLC | 1538593629 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FOUR SEASONS OF WASHINGTON LLC | 06302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05032017 | 06102017 | Standard |  |  | 2017-05-03 | Contract/RUG: 16/RVC (Per MDS) =$3,539.19 Per Diem: $250.00/day x 19 SNF Days = $4,750.00 Doxycycline IV $44.88/dose x 6 doses = $269.28 Total Payment:$8,558.47 | 3 | 2017-06-11 | 2017-06-08 | 2017-06-16 | 2017-06-08 | 39 | 42 | 8558.47 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505075 | Z4801 | Encounter for change or removal of surgical wound dressing | ICD10 | 06302017 | 05032017 | 06112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8558 | 8558 | Approved | 39 | Revenue | RV |  |  |  | 2.0 |
| 05092017 | 2017-05-09T15:00:47+00:00 |  | 000053829-01 | ANNA | DANGELO | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05052017 | 05122017 | Standard |  |  | 2017-05-05 | 17/RVA01=$3586.28 | 0 | 2017-05-13 |  | 2017-05-30 | 2017-05-30 | 8 | 8 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510060 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06302017 | 05052017 | 05132017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 05162017 | 2017-05-16T17:12:57+00:00 |  | 000071356-01 | Charles | Padrutt | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06302017 | 07072017 | Standard |  |  | 2017-06-13 | 17/RVC01=$6306.19 | 11 | 2017-06-23 |  | 2017-06-26 |  | 10 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517042 | M4850XD | Collapsed vertebra, NEC, site unsp, subs for fx w routn heal | ICD10 | 06302017 | 05132017 | 06232017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 05192017 | 2017-05-19T10:59:31+00:00 |  | 000010670-01 | RICHARD | HERRON | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05172017 | 06202017 | Standard |  |  | 2017-05-17 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 11 days = $2750.00 Per Diem: $200.00/day x 4 days = $800.00 TOTAL PAYMENT = $9856.19 | 0 | 2017-06-21 |  | 2017-06-26 |  | 35 | 35 | 9856.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519053 | Z4789, Z5189 | Encounter for other specified aftercare | ICD10 | 06302017 | 05172017 | 06212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9856 | 9856 | Approved | 35 | Revenue | RV |  |  |  | 5.0 |
| 05232017 | 2017-05-23T16:26:45+00:00 |  | 000078023-01 | Marianne | Walther | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05192017 | 06242017 | Standard |  |  | 2017-05-19 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 17 SNF Days = $3,400.00 Total Payment: $9,706.19 | 0 | 2017-06-25 | 2017-06-29 | 2017-06-29 |  | 37 | 37 | 9706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524023 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06302017 | 05192017 | 06252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9706 | 9706 | Approved | 37 | Revenue | RV |  |  |  | 10.0 |
| 05242017 | 2017-05-24T12:51:57+00:00 |  | 000032992-01 | GEORGE | DAVIS | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05222017 | 06142017 | Standard |  |  | 2017-05-22 | Per MDS: 16/RHC01 = $3133.29 Per Diem: $200.00/day x4 days = $800.00 TOTAL PAYMENT = $3933.29 | 24 | 2017-06-15 |  | 2017-06-29 |  | 24 | 48 | 3933.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524064 | A419, J441, J9601, J9602, M6281, R0602, Z741 | Need for assistance with personal care | ICD10 | 06302017 | 05222017 | 06152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3933 | 3933 | Approved | 24 | Revenue | RV |  |  |  | 4.0 |
| 05242017 | 2017-05-24T14:36:51+00:00 |  | 000078909-01 | Rose | Mcfarland | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05222017 | 06182017 | Standard |  |  | 2017-05-22 | Contract/RUG: 16/RVA (Per MDS) = $2,689.71 Per Diem: $200.00/day x 7 SNF Days = $1,400.00 Total Payment: $4,089.71 | 12 | 2017-06-19 |  | 2017-06-30 | 2017-06-30 | 27 | 39 | 4089.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525028 | C180, C3490, K6389, K922, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 06302017 | 05222017 | 06192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4089 | 4089 | Approved | 28 | Revenue | RV |  |  |  | 7.0 |
| 06012017 | 2017-06-01T14:56:15+00:00 |  | 000073723-01 | Barbara | Posey | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 06302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05312017 | 06212017 | Standard |  |  | 2017-05-31 | Per MDS: 17/RUB01 = $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-06-22 | 2017-06-19 | 2017-06-29 | 2017-06-22 | 22 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602007 | D62, N390, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 06302017 | 05312017 | 06222017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 06012017 | 2017-06-01T16:29:27+00:00 |  | 000026269-01 | Bertha | Goldfarb | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06012017 | 06222017 | Standard |  |  | 2017-06-01 | Per MDS: 17/RUB01 = $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-06-23 | 2017-06-20 | 2017-06-27 | 2017-06-21 | 22 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602042 | J441, S32038D | Oth fracture of third lum vertebra, subs for fx w routn heal | ICD10 | 06302017 | 06012017 | 06232017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 06062017 | 2017-06-06T16:40:34+00:00 |  | 000055270-01 | DANIEL | KOKENGE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06032017 | 06082017 | Standard |  |  | 2017-06-03 | 17/RVA01=$3586.28 | 0 | 2017-06-09 |  | 2017-06-30 | 2017-06-30 | 6 | 6 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607010 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06302017 | 06032017 | 06092017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 06072017 | 2017-06-07T16:56:20+00:00 |  | 000107951-01 | Janet | Etienne | RCHP WILMINGTON LLC | 933583 | CHRISTINE E | HENRY | 1659364842 | OHIO LIVING CAPE MAY | 946695 | 1285801233 | OHIO LIVING CAPE MAY | 1285801233 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING CAPE MAY | 06302017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 06052017 | 06212017 | Standard |  |  | 2017-06-05 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-06-22 |  | 2017-06-29 | 2017-06-26 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608012 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06302017 | 06052017 | 06222017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 06092017 | 2017-06-09T15:05:33+00:00 |  | 000117135-01 | Deidre | Legg | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 06302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06072017 | 06172017 | Standard |  |  | 2017-06-07 | 17/RVC01=$6306.19 | 0 | 2017-06-18 |  | 2017-06-29 | 2017-06-29 | 11 | 11 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609068 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 06302017 | 06072017 | 06182017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06092017 | 2017-06-09T15:58:58+00:00 |  | 000030085-01 | JOHN | GERMAINE | OSU FAMILY PRACTICE SVCS | 917486 | DONALD O | MACK | 1316980311 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 06302017 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 06072017 | 06262017 | Standard |  |  | 2017-06-07 | 17/RVB01= $5411.86 | 0 | 2017-06-27 |  | 2017-06-29 | 2017-06-29 | 20 | 20 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609074 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06302017 | 06072017 | 06272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 06122017 | 2017-06-12T08:54:36+00:00 |  | 000000049-01 | OREN | HARRIS | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 06302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06082017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612060 | I482, I5030 | Unspecified diastolic (congestive) heart failure | ICD10 | 06302017 | 06082017 | 06162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved | 8 | Revenue | RV |  |  |  | 8.0 |
| 06122017 | 2017-06-12T12:24:35+00:00 |  | 000044626-01 | KATHERINE | RINEHART | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06082017 | 06272017 | Standard |  |  | 2017-06-08 | Per MDS: 16/RVA01 = $2689.71 TOTAL PAYMENT = $2689.71 | 0 | 2017-06-28 |  | 2017-06-29 | 2017-06-29 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612100 | M6281, N390, R252, W19XXXA | Unspecified fall, initial encounter | ICD10 | 06302017 | 06082017 | 06282017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06122017 | 2017-06-12T13:46:24+00:00 |  | 000010580-01 | FRED | THOMAS | CENTRAL OH HSPISTS INC | 937256 | LYLE T | OLSON | 1053373217 | COUNTRY CLUB RETIREMENT CENTER V LLC | 930468 | 1881021830 | COUNTRY CLUB RETIREMENT CENTER V LLC | 1881021830 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY CLUB RETIREMENT CENTER V LLC | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06092017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612109 | I69998 | Other sequelae following unspecified cerebrovascular disease | ICD10 | 06302017 | 06092017 | 06162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved | 7 | Revenue | RV |  |  |  | 7.0 |
| 06132017 | 2017-06-13T10:55:37+00:00 |  | 000065929-01 | NANCY | GRIMM | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 06302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06102017 | 06232017 | Standard |  |  | 2017-06-10 | Contract/RUG: 16/RVA (Per MDS) = $2,689.71 | 0 | 2017-06-24 |  | 2017-06-29 | 2017-06-29 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613042 | Z96651 | Presence of right artificial knee joint | ICD10 | 06302017 | 06102017 | 06242017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 06152017 | 2017-06-15T11:54:27+00:00 |  | 000078742-01 | Ruth | Swinehart | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06132017 | 06172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615058 | E8342, E871, E876, N179, R4182 | Altered mental status, unspecified | ICD10 | 06302017 | 06132017 | 06182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
| 06152017 | 2017-06-15T14:31:51+00:00 |  | 000004269-01 | ROSEMARY | KIMMET | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06302017 | 07072017 | Standard |  |  | 2017-06-12 | 17/RUC01=$6,049.81 | 0 | 2017-06-26 |  | 2017-06-27 | 2017-06-27 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615077 | S72142D | Displ intertroch fx l femur, subs for clos fx w routn heal | ICD10 | 06302017 | 06122017 | 06262017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 06192017 | 2017-06-19T15:21:03+00:00 |  | 000007770-01 | RUTH | BARTHOLOMEW | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06152017 | 06162017 | Standard |  |  | 2017-06-15 | Per Diem: $250.00/day x 2 days = $500.00 TOTAL PAYMENT = $500.00 | 0 | 2017-06-17 |  |  |  | 2 | 2 | 500.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619130 | S52501D, S52691D, S72141D | Displ intertroch fx r femur, subs for clos fx w routn heal | ICD10 | 06302017 | 06152017 | 06172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 500 | 500 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
| 06202017 | 2017-06-20T11:17:50+00:00 |  | 000039518-01 | THELMA | BOESIGER | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 06302017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06162017 | 06262017 | Standard |  |  | 2017-06-16 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-06-27 |  | 2017-06-28 | 2017-06-28 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620090 | S72102D, Z9181 | History of falling | ICD10 | 06302017 | 06162017 | 06272017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06262017 | 2017-06-26T15:38:01+00:00 |  | 000083865-01 | Mary | Kinser | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 06302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06232017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626134 | N189, N390, R531 | Weakness | ICD10 | 06302017 | 06232017 | 06302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved | 7 | Revenue | RV |  |  |  | 7.0 |
| 06292017 | 2017-06-29T15:39:15+00:00 |  | 000077017-01 | Carolyn | Logsdon | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 06302017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06282017 | 06292017 | Standard |  |  | 2017-06-28 | 2 DAYS @ $200.00= $400.00 | 0 | 2017-06-30 |  |  | 2017-06-29 | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629089 | I10, I341, I639 | Cerebral infarction, unspecified | ICD10 | 06302017 | 06282017 | 06302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
| 06232017 | 2017-06-23T10:20:01+00:00 |  | 000053741-01 | WILLIAM | SHULL | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 06302017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 06212017 | 06282017 | Standard |  |  | 2017-06-21 | Admission Denial Unskilled Per Diem: $200.00/day x8 days = $1600.00 TOTAL PAYMENT = $1600.00 | 0 | 2017-06-29 |  |  |  | 0 | 0 | 1600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170623035 | J441, M6281, Z5189 | Encounter for other specified aftercare | ICD10 | 06302017 | 06212017 | 06292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved | 8 | Revenue | RV |  |  |  | 8.0 |
