Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-13_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-13_SNF
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
| 03132017 | 2017-03-13T15:47:56+00:00 |  | 000054283-01 | GENE | ALTHOFF | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03102017 | 06092017 | Standard |  |  | 2017-03-10 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 71 days = $14,200.00 TOTAL PAYMENT = $21,533.11 | 8 | 2017-06-10 |  | 2017-06-13 |  | 92 | 100 | 21533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170314031 | E162, I10, I2510, I4891, R400, R531 | Weakness | ICD10 | 06132017 | 03102017 | 06102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 92 | Revenue | RV |  |  |  | 9.0 |
| 04112017 | 2017-04-11T09:44:59+00:00 |  | 000065422-01 | Nina | Mcpherson | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 06132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04072017 | 05242017 | Standard |  |  | 2017-04-07 | 17/RVC01=$6306.19 25 DAYS @ $200.00=$5000.00 TOTAL: $11306.19 | 0 | 2017-05-25 |  | 2017-06-05 | 2017-06-05 | 45 | 45 | 11306.19 | 170412095405.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170411113 | S42202A | Unsp fracture of upper end of left humerus, init for clos fx | ICD10 | 06132017 | 04072017 | 05252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 48 | Revenue | RV |  |  |  | 5.0 |
| 04182017 | 2017-04-18T16:38:58+00:00 |  | 000047938-01 | PHYLLIS | MOREHART | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06132017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 04172017 | 06112017 | Standard |  |  | 2017-04-17 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 32 days = $6400.00 TOTAL PAYMENT = $13,733.11 | 48 | 2017-06-12 |  | 2017-06-13 |  | 52 | 100 | 13733.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419026 | I10, I4891, I5030, N390, R296, R52, Z471 | Aftercare following joint replacement surgery | ICD10 | 06132017 | 04172017 | 06122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 56 | Revenue | RV |  |  |  | 4.0 |
| 05022017 | 2017-05-02T08:52:38+00:00 |  | 000075168-01 | Iris | Roberts | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | CAMBRIDGE HEALTHCARE AND | 930700 | 1053662429 | ASTORIA PLACE OF CAMBRIDGE | 1053662429 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF CAMBRIDGE | 06132017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 05062017 | 06092017 | Standard |  |  | 2017-05-06 | 16/RVA01=$2689.71 15 DAYS @ $200.00=$3000.00 TOTAL: $5689.71 | 0 | 2017-06-10 |  | 2017-06-12 | 2017-06-12 | 35 | 35 | 5689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503005 | I214, J9601 | Acute respiratory failure with hypoxia | ICD10 | 06132017 | 05062017 | 06102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5689 | 5689 | Approved | 35 | Revenue | RV |  |  |  | 3.0 |
| 05042017 | 2017-05-04T13:40:22+00:00 |  | 000060397-01 | MARGIE | CLARK | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05022017 | 06112017 | Standard |  |  | 2017-05-02 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 21 days = $4200.00 TOTAL PAYMENT = $10,506.19 | 0 | 2017-06-12 |  | 2017-06-13 | 2017-06-13 | 41 | 41 | 10506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505031 | Z4789, Z5189 | Encounter for other specified aftercare | ICD10 | 06132017 | 05022017 | 06122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 41 | Revenue | RV |  |  |  | 11.0 |
| 05292017 | 2017-05-29T19:25:43+00:00 |  | 000029265-01 | MYRIAM | PLACE | CENTRAL OH HSPISTS INC | 937256 | LYLE T | OLSON | 1053373217 | COUNTRY CLUB RETIREMENT CENTER V LLC | 930468 | 1881021830 | COUNTRY CLUB RETIREMENT CENTER V LLC | 1881021830 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY CLUB RETIREMENT CENTER V LLC | 06132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05242017 | 06092017 | Standard |  |  | 2017-05-24 | 17/RVB01=$5411.86 | 0 | 2017-06-10 |  | 2017-06-13 | 2017-06-13 | 17 | 17 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530112 | S52501A | Unsp fracture of the lower end of right radius, init | ICD10 | 06132017 | 05242017 | 06102017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 05302017 | 2017-05-30T13:30:51+00:00 |  | 000022475-01 | RICHARD | STOCKERT | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 06132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05292017 | 06092017 | Standard |  |  | 2017-05-29 | Per MDS: 16/RUB01 = $4429.71 TOTAL PAYMENT = $4429.71 | 0 | 2017-06-10 |  | 2017-06-08 | 2017-06-12 | 12 | 12 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530195 | I10, J449, M84351D, Z96641 | Presence of right artificial hip joint | ICD10 | 06132017 | 05292017 | 06102017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 06012017 | 2017-06-01T16:46:47+00:00 |  | 000051330-01 | WILLIAM | MYERS | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05312017 | 06082017 | Standard |  |  | 2017-05-31 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 67 | 2017-06-09 |  | 2017-06-13 |  | 9 | 76 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602049 | E119, F0390, G20, I10, I4891, I509, R52, Z471 | Aftercare following joint replacement surgery | ICD10 | 06132017 | 05312017 | 06092017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 06052017 | 2017-06-05T11:01:32+00:00 |  | 000024843-01 | JANEEN | HUFF | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 06132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06022017 | 06042017 | Standard |  |  | 2017-06-02 | Per MDS: 16/RVC01 = $3539.19 TOTAL PAYMENT = $3539.19 | 0 | 2017-06-05 |  | 2017-06-12 |  | 3 | 3 | 3539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605101 | E039, E782, I8311, M8000XA, S32020A | Wedge compression fracture of second lumbar vertebra, init | ICD10 | 06132017 | 06022017 | 06052017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 3 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 06062017 | 2017-06-06T15:34:26+00:00 |  | 000077002-01 | Stephen | Saxton | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 06132017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06052017 | 06112017 | Standard |  |  | 2017-06-05 | Per MDS: 17/RHC01 = $4132.02 TOTAL PAYMENT = $4132.02 | 0 | 2017-06-12 |  | 2017-06-13 | 2017-06-13 | 7 | 7 | 4132.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606082 | Z951 | Presence of aortocoronary bypass graft | ICD10 | 06132017 | 06052017 | 06122017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
