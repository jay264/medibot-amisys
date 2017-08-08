Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-05_thry_2017_08_07_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-05_thry_2017_08_07_SNF
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
| 07242017 | 2017-07-24T13:43:39+00:00 |  | 000006282-01 | NORMA | LYDAY | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 08072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07212017 | 07262017 | Standard |  |  | 2017-07-21 | 16/RVB01=$3350.20 | 0 | 2017-07-27 |  | 2017-08-04 | 2017-08-04 | 6 | 6 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724100 | E119, I10, N183, S72041D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 08072017 | 07212017 | 07272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 07262017 | 2017-07-26T08:35:22+00:00 |  | 000066729-01 | JUDITH | BLAIR | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 08072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07222017 | 08032017 | Standard |  |  | 2017-07-22 | 16/RHA01=$2045.15 | 0 | 2017-08-04 |  | 2017-08-04 | 2017-08-04 | 13 | 13 | 2045.15 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726028 | M6281 | Muscle weakness (generalized) | ICD10 | 08072017 | 07222017 | 08042017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 07242017 | 2017-07-24T14:46:24+00:00 |  | 000113186-01 | Donald | Lane | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 08072017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07232017 | 08032017 | Standard |  |  | 2017-07-23 | 16/RVB01=$3350.20 | 0 | 2017-08-04 |  | 2017-08-04 | 2017-08-04 | 12 | 12 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724113 | R0602, R296, R4182 | Altered mental status, unspecified | ICD10 | 08072017 | 07232017 | 08042017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 07172017 | 2017-07-17T13:13:04+00:00 |  | 000115529-01 | Dennis | Martin | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 08072017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07132017 | 07282017 | Standard |  |  | 2017-07-13 | 17/RVA01=$3586.28 | 0 | 2017-07-29 |  | 2017-08-04 | 2017-08-04 | 16 | 16 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717074 | S42202D | Unsp fx upper end of l humerus, subs for fx w routn heal | ICD10 | 08072017 | 07132017 | 07292017 | RVA17 | VERY HIGH REHAB , ADL INDEX 0-5/5-DAY OR READMISSION RETURN AND MEDICARE | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 07252017 | 2017-07-25T11:21:38+00:00 |  | 000075387-01 | Vernon | Prouty | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | WILLOW HAVEN CARE CENTER | 924194 | 1306834148 | WILLOW HAVEN CARE CENTER | 1306834148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WILLOW HAVEN CARE CENTER | 08072017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07142017 | 07182017 | Standard |  |  | 2017-07-14 | 5 NON-SKILLED DAYS @ $200.00= $1000.00 | 0 | 2017-08-19 |  |  |  | 5 | 5 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725114 | M4800, M6281 | Muscle weakness (generalized) | ICD10 | 08072017 | 07142017 | 07192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
| 08032017 | 2017-08-03T13:22:17+00:00 |  | 000112374-01 | Joseph | Sarbell | UNIVERSITY OF CINCINNATI | 928210 | FERHAN A | ASGHAR | 1831157007 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 08072017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 08072017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170803058 | S72042A | Disp fx of base of neck of left femur, init for clos fx | ICD10 | 08072017 | 08032017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07202017 | 2017-07-20T11:54:44+00:00 |  | 000000143-01 | LELAND | GORDON JR | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 08072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07192017 | 07312017 | Standard |  |  | 2017-07-19 | 16/RVA01=$ 2689.71 | 27 | 2017-08-01 |  | 2017-08-07 | 2017-08-07 | 13 | 40 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720059 | A4181, M6281, N390 | Urinary tract infection, site not specified | ICD10 | 08072017 | 07192017 | 08012017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 07072017 | 2017-07-07T13:57:14+00:00 |  | 000067111-01 | LESTER | HULSE | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 08072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07062017 | 08012017 | Standard |  |  | 2017-07-06 | 16/RVA01=$2689.71 | 0 | 2017-08-02 |  | 2017-08-07 | 2017-08-07 | 27 | 27 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707062 | J189, M6281 | Muscle weakness (generalized) | ICD10 | 08072017 | 07062017 | 08022017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 27 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 07172017 | 2017-07-17T11:29:52+00:00 |  | 000105734-01 | Viola | Milligan | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 08072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07132017 | 08012017 | Standard |  |  | 2017-07-13 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-08-02 |  | 2017-08-04 | 2017-08-04 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717036 | Z5189, Z9181 | History of falling | ICD10 | 08072017 | 07132017 | 08022017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07202017 | 2017-07-20T13:59:39+00:00 |  | 000048383-01 | Fred | Ray Jr | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 08072017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08072017 | 08142017 | Standard |  |  | 2017-07-18 | 16/RVC01=$3,539.19 | 0 | 2017-07-29 |  | 2017-08-04 | 2017-08-04 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720060 | B9562 | Methicillin resis staph infct causing diseases classd elswhr | ICD10 | 08072017 | 07182017 | 07292017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 07102017 | 2017-07-10T15:05:27+00:00 |  | 000087819-01 | Carol | Wenstadt | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 08072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07182017 | Standard |  |  | 2017-07-07 | 17/RVA01=$3,586.28 | 14 | 2017-07-18 |  | 2017-08-04 | 2017-08-04 | 11 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710133 | I352 | Nonrheumatic aortic (valve) stenosis with insufficiency | ICD10 | 08072017 | 07072017 | 07182017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 07242017 | 2017-07-24T14:21:07+00:00 |  | 000051094-01 | JUDITH | BARBER | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 08072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07212017 | 08022017 | Standard |  |  | 2017-07-21 | 16/RUB01=$4,429.71 | 0 | 2017-08-02 |  | 2017-08-04 | 2017-08-04 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724111 | M4806 | Spinal stenosis, lumbar region | ICD10 | 08072017 | 07212017 | 08022017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 06122017 | 2017-06-12T12:34:24+00:00 |  | 000100164-01 | Lonnie | Hubbard | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 08072017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 06092017 | 07302017 | Standard |  |  | 2017-06-09 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 30 SNF Days = $6,000.00 Total $11,411.86 | 0 | 2017-07-31 |  | 2017-08-03 | 2017-08-03 | 50 | 50 | 11411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612102 | M25562, R296 | Repeated falls | ICD10 | 08072017 | 06092017 | 07312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 52 | Revenue | RV |  |  |  | 3.0 |
| 07182017 | 2017-07-18T16:26:22+00:00 |  | 000034424-01 | LARRY | FALL | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 08072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07162017 | 07282017 | Standard |  |  | 2017-07-16 | 17/RVB01=$5411.86 | 0 | 2017-07-29 |  | 2017-08-07 |  | 13 | 13 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719043 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 08072017 | 07162017 | 07292017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06302017 | 2017-06-30T13:52:59+00:00 |  | 000060690-01 | ROBERT | MEADE | L M GUIRNALDA MD LLC | 939630 | LEONARDO M | GUIRNALDA | 1659452498 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 08072017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 06292017 | 08032017 | Standard |  |  | 2017-06-29 | Contract/RUG: 17/RUB (Per MDS) = 5,813.99 Per Diem: $250.00/day x 14 SNF Days = 3,500.00 Per Diem: $200.00/day x 2 SNF Days = $400.00 Total $9,713.99 | 0 | 2017-08-04 |  | 2017-08-03 | 2017-08-02 | 36 | 36 | 9713.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630050 | N179 | Acute kidney failure, unspecified | ICD10 | 08072017 | 06292017 | 08042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9713 | 9713 | Approved | 36 | Revenue | RV |  |  |  | 9.0 |
| 07182017 | 2017-07-18T12:58:16+00:00 |  | 000105666-01 | Susan | Huggins | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 08072017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07152017 | 08032017 | Standard |  |  | 2017-07-15 | 17/RUC01=$6049.81 | 0 | 2017-08-04 |  | 2017-08-07 | 2017-08-07 | 20 | 20 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718127 | I639 | Cerebral infarction, unspecified | ICD10 | 08072017 | 07152017 | 08042017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07262017 | 2017-07-26T08:56:16+00:00 |  | 000116286-01 | Timothy | Synan | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 08072017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07242017 | 08032017 | Standard |  |  | 2017-07-24 | 17/RUB01=$5813.99 | 0 | 2017-08-04 |  | 2017-08-07 | 2017-08-07 | 11 | 11 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726031 | Z96652 | Presence of left artificial knee joint | ICD10 | 08072017 | 07242017 | 08042017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 07272017 | 2017-07-27T08:54:10+00:00 |  | 000092088-01 | Paul | Krause | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 08072017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07252017 | 08032017 | Standard |  |  | 2017-07-25 | 17/RUB01=$5813.99 | 0 | 2017-08-04 |  | 2017-08-07 | 2017-08-07 | 10 | 10 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727047 | N390 | Urinary tract infection, site not specified | ICD10 | 08072017 | 07252017 | 08042017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 07312017 | 2017-07-31T18:21:26+00:00 |  | 000032467-01 | WILLIAM | CONWAY | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 08072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07272017 | 07312017 | Standard |  |  | 2017-07-27 | PER DIEM RATE OR $200.00/DAY X 4 DAYS=$800.00 | 96 | 2017-07-31 |  |  |  | 4 | 100 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801082 | B9562, T8463XD | Infect/inflm reaction due to int fix of spine, subs | ICD10 | 08072017 | 07272017 | 07312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved Skilled | 5 | Revenue | RV |  |  |  | 4.0 |
| 07242017 | 2017-07-24T14:40:35+00:00 |  | 000038808-01 | LARRY | MITTMAN | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 08072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07222017 | 08012017 | Standard |  |  | 2017-07-22 | 16/RVB01=$3,350.20 | 0 | 2017-08-01 |  | 2017-08-04 | 2017-08-04 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724112 | N186 | End stage renal disease | ICD10 | 08072017 | 07222017 | 08012017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
