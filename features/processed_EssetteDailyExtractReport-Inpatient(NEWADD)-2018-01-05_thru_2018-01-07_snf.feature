Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-05_thru_2018-01-07_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-05_thru_2018-01-07_SNF
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
| 11132017 | 2017-11-13T15:59:24+00:00 |  | 000099409-01 | Barbara | Winter | ALAM, RUKHSANA | 931810 | RUKHSANA | ALAM | 1205826732 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 01052018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 11102017 | 11272017 | Standard |  |  | 2017-11-10 | Per Diem: $200.00/day x 17 = $3,400.00 Carve Out: IV Daptomycin $3,711.76 (Per Invoices) Total Payment: $ 7,111.76 | 18 | 2017-11-27 |  |  | 2018-01-04 | 17 | 35 | 7111.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114031 | S82001D | Unsp fx right patella, subs for clos fx w routn heal | ICD10 | 01052018 | 11102017 | 11272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7111 | 7111 | Approved | 18 | Revenue | RV |  |  |  | 3.0 |
| 11202017 | 2017-11-20T13:35:55+00:00 |  | 000074788-01 | Sonia | Hazlett | LONDON HEALTH & REHAB CENTER | 943587 |  | LONDON HEALTH & REHAB CENTER | 1912387879 | LONDON HEALTH & REHAB CENTER | 943587 | 1912387879 | LONDON HEALTH & REHAB CENTER | 1912387879 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LONDON HEALTH & REHAB CENTER | 01052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11182017 | 12302017 | Standard |  |  | 2017-11-18 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 Per Diem: $200.00/day x 21 SNF Days = $4,200.00 Total Payment: $7,786.28 | 0 | 2017-12-30 |  | 2017-12-20 | 2018-01-04 | 41 | 42 | 7786.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120119 | M84471D | Pathological fracture, right ankle, subs for fx w routn heal | ICD10 | 01052018 | 11182017 | 12302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7786 | 7786 | Approved | 43 | Revenue | RV |  |  |  | 1.0 |
| 11272017 | 2017-11-27T15:19:07+00:00 |  | 000079254-01 | William | Tharp | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 01052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11232017 | 11302017 | Standard |  |  | 2017-11-23 | 17/RMC01= $3027.33 | 0 | 2017-11-30 |  | 2018-01-04 | 2018-01-04 | 7 | 7 | 3027.33 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128032 | S2241XD | Multiple fx of ribs, right side, subs for fx w routn heal | ICD10 | 01052018 | 11232017 | 11302017 | RMC01 | MEDIUM REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 11292017 | 2017-11-29T17:09:05+00:00 |  | 000103955-01 | Rita | Farley | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 01052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11282017 | 12192017 | Standard |  |  | 2017-11-28 | 17/RVB01= $5411.86 | 0 | 2017-12-19 |  | 2018-01-04 | 2018-01-04 | 21 | 21 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130084 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 01052018 | 11282017 | 12192017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 12062017 | 2017-12-06T19:40:29+00:00 |  | 000054987-01 | SHARON | BAKER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 01052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12042017 | 12292017 | Standard |  |  | 2017-12-04 | Contract/RUG: 17/ RVB (Per MDS) = $5,411.86 | 20 | 2017-12-29 |  | 2018-01-04 | 2018-01-04 | 20 | 45 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207035 | M6281 | Muscle weakness (generalized) | ICD10 | 01052018 | 12042017 | 12292017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 12112017 | 2017-12-11T16:29:27+00:00 |  | 000106047-01 | Lyda | Burd | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 01052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12102017 | 01022018 | Standard |  |  | 2017-12-10 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2018-01-02 |  | 2018-01-04 | 2018-01-04 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212006 | I10, N390, R109, R296, R52, R531 | Weakness | ICD10 | 01052018 | 12102017 | 01022018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 12132017 | 2017-12-13T10:10:49+00:00 |  | 000109086-01 | Ruth | Ermlich | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | WHISPERING HILLS CARE CE | 952526 | 1245758333 | WHISPERING HILLS REHABILITATION & NU | 1245758333 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WHISPERING HILLS REHABILITATION & NU | 01052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12062017 | 12192017 | Standard |  |  | 2017-12-06 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 3 | 2017-12-19 |  | 2018-01-04 | 2018-01-04 | 13 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213070 | I5022, Z471, Z96651 | Presence of right artificial knee joint | ICD10 | 01052018 | 12062017 | 12192017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 12182017 | 2017-12-18T15:18:42+00:00 |  | 000098811-01 | Jewell | Morris | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 01052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12162017 | 12262017 | Standard |  |  | 2017-12-16 | 16/RUB01=$4,429.71 | 0 | 2017-12-26 |  | 2018-01-05 | 2018-01-05 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218157 | M6281 | Muscle weakness (generalized) | ICD10 | 01052018 | 12162017 | 12262017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 12262017 | 2017-12-26T11:03:24+00:00 |  | 000113220-01 | Michael | Stacey | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 01052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12232017 | 12252017 | Standard |  |  | 2017-12-23 | 2 DAYS @ $200.00= $400.00 | 0 | 2017-12-25 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226120 | I639 | Cerebral infarction, unspecified | ICD10 | 01052018 | 12232017 | 12252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 12292017 | 2017-12-29T14:07:23+00:00 |  | 000108488-01 | Rodger | Mendenhall | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 01052018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12282017 | 12292017 | Standard |  |  | 2017-12-28 | 1 NONSKILLED DAY @ $200.00 | 0 | 2017-12-29 |  |  |  | 1 | 0 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229078 | J09X2 | Flu due to ident novel influenza A virus w oth resp manifest | ICD10 | 01052018 | 12282017 | 12292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 01022018 | 2018-01-02T14:35:58+00:00 |  | 000022292-01 | JERRY | HOLLENBACK | PICKAWAY HEALTH SERVICES | 913727 | KEVIN M | SELLERS | 1306085220 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 01052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12132017 | 01022018 | Standard |  |  | 2017-12-13 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-01-02 |  | 2018-01-04 | 2018-01-04 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103032 | I214, J189 | Pneumonia, unspecified organism | ICD10 | 01052018 | 12132017 | 01022018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12042017 | 2017-12-04T17:52:58+00:00 |  | 000057766-01 | MARY | RAY | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 01052018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 11302017 | 12152017 | Standard |  |  | 2017-11-30 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 20 | 2017-12-15 |  | 2018-01-04 | 2018-01-04 | 15 | 35 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205065 | E8770 | Fluid overload, unspecified | ICD10 | 01052018 | 11302017 | 12152017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12072017 | 2017-12-07T16:20:02+00:00 |  | 000044912-01 | MARY | CULVER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 01052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12062017 | 12232017 | Standard |  |  | 2017-12-06 | 16/RUC01=$7,333.11 | 0 | 2017-12-23 |  | 2018-01-05 | 2018-01-05 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208009 | I209 | Angina pectoris, unspecified | ICD10 | 01052018 | 12062017 | 12232017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 12192017 | 2017-12-19T13:40:59+00:00 |  | 000014436-01 | DORIS | HILL | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 01052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12152017 | 12312017 | Standard |  |  | 2017-12-15 | 16/RUC01=$7,333.11 | 0 | 2017-12-31 |  | 2018-01-05 | 2018-01-05 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219119 | J189 | Pneumonia, unspecified organism | ICD10 | 01052018 | 12152017 | 12312017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 11012017 | 2017-11-01T14:07:14+00:00 |  | 000080453-01 | William | McCullen | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 01052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10312017 | 12232017 | Standard |  |  | 2017-10-31 | 17/RVC01= $6306.19 33 DAYS @ $200.00= $6600.00 TOTAL: $12906.19 | 0 | 2017-12-23 |  | 2018-01-04 | 2018-01-04 | 53 | 53 | 12906.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101055 | Z9181 | History of falling | ICD10 | 01052018 | 10312017 | 12232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 54 | Revenue | RV |  |  |  | 2.0 |
| 12262017 | 2017-12-26T16:14:12+00:00 |  | 000087849-01 | Paul | Dilliard | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 01052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12232017 | 12272017 | Standard |  |  | 2017-12-23 | Per Diem: $250.00/day x 4 days = $1000.00 TOTAL PAYMENT = $1000.00 | 0 | 2017-12-27 |  | 2018-01-04 |  | 4 | 4 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227066 | E11649, E119, G9340, I214, I2510, N183, Z931 | Gastrostomy status | ICD10 | 01052018 | 12232017 | 12272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
| 12042017 | 2017-12-04T17:50:40+00:00 |  | 000046920-01 | WILLIAM | RANDALL | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 01052018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12152017 | Standard |  |  | 2017-11-30 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 15 | 2017-12-15 |  | 2018-01-04 | 2018-01-04 | 15 | 30 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205064 | N390, R296 | Repeated falls | ICD10 | 01052018 | 11302017 | 12152017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12262017 | 2017-12-26T11:51:40+00:00 |  | 000106904-01 | Joseph | Johnson | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 01052018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12222017 | 12292017 | Standard |  |  | 2017-12-22 | 16/RVA01= $2689.71 | 0 | 2017-12-29 |  | 2018-01-04 | 2018-01-04 | 7 | 7 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226128 | J441, R4182 | Altered mental status, unspecified | ICD10 | 01052018 | 12222017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
