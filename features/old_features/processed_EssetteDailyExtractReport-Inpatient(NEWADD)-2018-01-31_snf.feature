Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-31_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-31_SNF
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
| 12292017 | 2017-12-29T16:33:17+00:00 |  | 000048411-01 | KITTY | WHALEY | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12292017 | 01242018 | Standard |  |  | 2017-12-29 | 16/RUB01= $4429.71 6 DAYS @ $200.00= $1200.00 TOTAL: $5629.71 | 0 | 2018-01-24 |  | 2018-01-16 |  | 26 | 26 | 5629.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102027 | S42016D | Post disp fx of sternal end unsp clavicle, 7thD | ICD10 | 01312018 | 12292017 | 01242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5629 | 5629 | Approved | 27 | Revenue | RV |  |  |  | 6.0 |
| 01112018 | 2018-01-11T15:15:53+00:00 |  | 000067226-01 | PATRICK | RADER | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 01312018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01102018 | 01282018 | Standard |  |  | 2018-01-10 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-01-28 |  | 2018-01-30 |  | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111086 | R5381 | Other malaise | ICD10 | 01312018 | 01102018 | 01282018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 01052018 | 2018-01-05T15:57:03+00:00 |  | 000099743-01 | Arthur | Moore | VASILIU, ANTON C | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 01312018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01042018 | 01192018 | Standard |  |  | 2018-01-04 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-01-19 |  | 2018-01-30 | 2018-01-30 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108003 | S72001A, S72011A | Unsp intracapsular fracture of right femur, init for clos fx | ICD10 | 01312018 | 01042018 | 01192018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 01062018 | 2018-01-06T18:19:27+00:00 |  | 000076381-01 | Larry | Adams | VASILIU, ANTON C | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 01252018 | Standard |  |  | 2018-01-05 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-01-25 |  | 2018-01-30 | 2018-01-30 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108058 | N179, R531, S0990XA, W19XXXA | Unspecified fall, initial encounter | ICD10 | 01312018 | 01052018 | 01252018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01152018 | 2018-01-15T13:13:23+00:00 |  | 000025244-01 | PAUL | ELKINS | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01252018 | Standard |  |  | 2018-01-11 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-25 |  | 2018-01-29 | 2018-01-30 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115152 | I4430, Z950 | Presence of cardiac pacemaker | ICD10 | 01312018 | 01112018 | 01252018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01182018 | 2018-01-18T16:08:19+00:00 |  | 000076516-01 | James | Boettcher | JS AESTHETICS | 906812 | JODI I | SPERBER | 1770569741 | PATRIOT RIDGE COMMUNITY | 913103 | 1528041647 | PATRIOT RIDGE COMMUNITY | 1528041647 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATRIOT RIDGE COMMUNITY | 01312018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01172018 | 01232018 | Standard |  |  | 2018-01-17 | Contract/RUG: 16/HE1 (Per MDS) = $3,915.01 | 1 | 2018-01-23 |  | 2018-01-30 |  | 6 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118088 | Z9181 | History of falling | ICD10 | 01312018 | 01172018 | 01232018 | HE101 | SPECIAL CARE HIGH , ADL INDEX 15-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 01192018 | 2018-01-19T13:44:41+00:00 |  | 000061059-01 | WANDA | EWELL | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01182018 | 01262018 | Standard |  |  | 2018-01-18 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-01-26 |  | 2018-01-30 | 2018-01-30 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119068 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 01312018 | 01182018 | 01262018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 01292018 | 2018-01-29T13:45:32+00:00 |  | 000081933-01 | Lora | Dement | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01272018 | 01292018 | Standard |  |  | 2018-01-27 | 2 DAYS @ $200.00= $400.00 | 0 | 2018-01-29 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129113 | M546 | Pain in thoracic spine | ICD10 | 01312018 | 01272018 | 01292018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 11212017 | 2017-11-21T12:04:17+00:00 |  | 000097505-01 | Robert | Haslett | NANCY LYNN ALKIRE LLC | 901854 | NANCY | ALKIRE | 1710924659 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11172017 | 01272018 | Standard |  |  | 2017-11-17 | Per MDS: 17/RHC01 = $4132.02 Per Diem: $200.00/day x 48 days = $9600.00 TOTAL PAYMENT = $13,732.02 | 16 | 2018-01-27 | 2018-01-24 | 2018-01-30 | 2018-01-30 | 68 | 84 | 13732.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121069 | E118, I120 | Hyp chr kidney disease w stage 5 chr kidney disease or ESRD | ICD10 | 01312018 | 11172017 | 01272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 72 | Revenue | RV |  |  |  | 4.0 |
| 11302017 | 2017-11-30T15:41:16+00:00 |  | 000090271-01 | Lena | Clarke | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 01312018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11282017 | 01222018 | Standard |  |  | 2017-11-28 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 35 days = $8750.00 TOTAL PAYMENT = $14,161.86 | 0 | 2018-01-22 | 2018-01-31 | 2018-01-31 | 2018-01-31 | 55 | 55 | 14161.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130118 | S72142D | Displ intertroch fx l femur, subs for clos fx w routn heal | ICD10 | 01312018 | 11282017 | 01222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 56 | Revenue | RV |  |  |  | 3.0 |
| 12132017 | 2017-12-13T11:35:29+00:00 |  | 000092360-01 | Sharon | Loeffler | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 01312018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12122017 | 01232018 | Standard |  |  | 2017-12-12 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem $200.00/day x 22 SNF Days = $4,400.00 Total Payment: $10,706.19 | 7 | 2018-01-23 |  | 2018-01-30 | 2018-01-30 | 42 | 49 | 10706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213086 | Z4789 | Encounter for other orthopedic aftercare | ICD10 | 01312018 | 12122017 | 01232018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 43 | Revenue | RV |  |  |  | 7.0 |
| 01052018 | 2018-01-05T11:03:40+00:00 |  | 000116632-01 | Alberta | Bishop | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 01312018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01242018 | Standard |  |  | 2018-01-04 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-24 |  | 2018-01-30 | 2018-01-30 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105054 | I5021, R0602 | Shortness of breath | ICD10 | 01312018 | 01042018 | 01242018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 01102018 | 2018-01-10T13:33:45+00:00 |  | 000013406-01 | MARILYN | ZWAYER | CIRCLEVILLE CENTER | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01092018 | 01262018 | Standard |  |  | 2018-01-09 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-01-26 |  | 2018-01-30 | 2018-01-30 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110088 | M549, R109, W19XXXA | Unspecified fall, initial encounter | ICD10 | 01312018 | 01092018 | 01262018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 01102018 | 2018-01-10T16:55:10+00:00 |  | 000111512-01 | Kisiah | Borders | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 01312018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 01092018 | 01292018 | Standard |  |  | 2018-01-09 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-01-29 |  | 2018-01-30 | 2018-01-30 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111021 | A419, G9340, J181, J189, R509 | Fever, unspecified | ICD10 | 01312018 | 01092018 | 01292018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01122018 | 2018-01-12T12:35:44+00:00 |  | 000068035-01 | LORENA | BANKSTON | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01312018 | Approved | THE TIMKEN COMPANY | Fax | SNF | Inpatient | 01112018 | 01312018 | Standard |  |  | 2018-01-11 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-01-31 |  | 2018-01-19 | 2018-01-31 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112072 | E039, I214, I471, N181 | Chronic kidney disease, stage 1 | ICD10 | 01312018 | 01112018 | 01312018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01152018 | 2018-01-15T09:23:53+00:00 |  | 000058380-01 | KAY | THOMPSON | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01292018 | Standard |  |  | 2018-01-11 | 16/RUC01=$7,333.11 | 0 | 2018-01-29 |  | 2018-01-31 | 2018-01-31 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115057 | Z96652 | Presence of left artificial knee joint | ICD10 | 01312018 | 01112018 | 01292018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 01152018 | 2018-01-15T11:55:45+00:00 |  | 000021709-01 | HELEN | HERBERT | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01142018 | 01272018 | Standard |  |  | 2018-01-14 | 16/RUC01=$7,333.11 | 0 | 2018-01-27 |  | 2018-01-30 | 2018-01-30 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115121 | R2689, R531, S72402D | Unsp fx lower end of l femur, subs for clos fx w routn heal | ICD10 | 01312018 | 01142018 | 01272018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01152018 | 2018-01-15T13:24:16+00:00 |  | 000094215-01 | Patricia | Foltz | WELLER HEALTH TRANSITION | 917780 | CHRISTINE B | WELLER | 1811953318 | SPRINGFIELD MASONIC COMM | 939421 | 1962510305 | SPRINGFIELD MASONIC COMMUNITY | 1962510305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SPRINGFIELD MASONIC COMMUNITY | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01122018 | 01222018 | Standard |  |  | 2018-01-12 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-22 |  | 2018-01-30 |  | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115154 | S8291XA | Unsp fracture of right lower leg, init for clos fx | ICD10 | 01312018 | 01122018 | 01222018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01082018 | 2018-01-08T14:33:01+00:00 |  | 000087849-01 | Paul | Dilliard | FAIRFIELD COMMUNITY HLTH | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 01312018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01042018 | 01292018 | Standard |  |  | 2018-01-04 | Per MDS: 17/RUC01 = $6049.81 | 4 | 2018-01-29 | 2018-01-31 | 2018-01-31 | 2018-01-31 | 25 | 29 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109015 | K650, Z5189 | Encounter for other specified aftercare | ICD10 | 01312018 | 01042018 | 01292018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 01092018 | 2018-01-09T08:48:34+00:00 |  | 000031425-01 | JOYCE | LUTZ | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 01312018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 01042018 | 01292018 | Standard |  |  | 2018-01-04 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $200.00/day x 5 SNF Days = $1,000.00 Total Payment: $4,350.20 | 29 | 2018-01-29 |  | 2018-01-31 |  | 25 | 54 | 4350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109098 | M6281 | Muscle weakness (generalized) | ICD10 | 01312018 | 01042018 | 01292018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4350 | 4350 | Approved | 26 | Revenue | RV |  |  |  | 5.0 |
| 01092018 | 2018-01-09T08:53:22+00:00 |  | 000034751-01 | ALBERT | DONAHUE | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01262018 | Standard |  |  | 2018-01-04 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $200.00/day x 2 SNF Days = $400.00 Total Payment: $3,750.20 | 0 | 2018-01-26 |  | 2018-01-31 |  | 22 | 22 | 3750.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109099 | J189 | Pneumonia, unspecified organism | ICD10 | 01312018 | 01042018 | 01262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3750 | 3750 | Approved | 23 | Revenue | RV |  |  |  | 2.0 |
| 01292018 | 2018-01-29T14:51:01+00:00 |  | 000003200-01 | MILTON | BRAASCH | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 01312018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 01262018 | Standard |  |  | 2018-01-26 | PER DIEM RATE OF $200.00/DAY X 1 DAY=$200.00 | 0 | 2018-01-26 |  |  |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129130 | D509, M6281 | Muscle weakness (generalized) | ICD10 | 01312018 | 01262018 | 01262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 1 | Revenue | RV |  |  |  | 1.0 |
