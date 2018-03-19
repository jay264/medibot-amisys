Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-15_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-15_SNF
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
| 06222017 | 2017-06-22T14:01:04+00:00 |  | 000084931-01 | Arthur | Byrd Jr | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 03152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06212017 | 07122017 | Standard |  |  | 2017-06-21 | 16/RVB01=$3350.20 Went to the hospital on 7/5/17 returned 7/11/17 expired on 7/12/17 | 0 | 2017-07-12 |  | 2017-07-06 |  | 15 | 15 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622071 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 03152018 | 06212017 | 07122017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 02082018 | 2018-02-08T16:45:51+00:00 |  | 000092052-01 | DARLENE | ANDERSON | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 03152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 03102018 | Standard |  |  | 2018-02-02 | 17/RUC01= $6049.81 16DAYS @ $200.00= $3200.00 TOTAL: $9249.81 | 0 | 2018-03-10 |  | 2018-03-13 | 2018-03-13 | 36 | 36 | 9249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209004 | E039, E6601, E662, G4733, I480, I5033, J189, J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 03152018 | 02022018 | 03102018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9649 | 9649 | Approved | 37 | Revenue | RV |  |  |  | 2.0 |
| 02092018 | 2018-02-09T16:21:03+00:00 |  | 000077972-01 | Sandy | Daniels | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 03152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02082018 | 03112018 | Standard |  |  | 2018-02-08 | 16/RHA01= $2045.15 | 17 | 2018-03-11 |  | 2018-03-14 | 2018-03-14 | 26 | 43 | 2045.15 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212004 | M86152 | Other acute osteomyelitis, left femur | ICD10 | 03152018 | 02082018 | 03112018 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 32 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 02122018 | 2018-02-12T16:25:06+00:00 |  | 000076148-01 | Mary Lou | Pinkerton | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 03152018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 02092018 | 03082018 | Standard |  |  | 2018-02-09 | 17/RVC01= $6306.19 7 DAYS @ $200.00= $1400.00 TOTAL: $7706.19 | 0 | 2018-03-08 |  | 2018-03-13 | 2018-03-13 | 27 | 27 | 7706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213004 | N321 | Vesicointestinal fistula | ICD10 | 03152018 | 02092018 | 03082018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7706 | 7706 | Approved | 28 | Revenue | RV |  |  |  | 1.0 |
| 02202018 | 2018-02-20T10:18:10+00:00 |  | 000078610-01 | Thomas | Ellinger | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 03152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02162018 | 03082018 | Standard |  |  | 2018-02-16 | RUB01= $4429.71 | 0 | 2018-03-08 |  | 2018-03-09 | 2018-03-09 | 20 | 20 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220065 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 03152018 | 02162018 | 03082018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02232018 | 2018-02-23T15:40:29+00:00 |  | 000076694-01 | David | Amos | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 03152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02212018 | 03092018 | Standard |  |  | 2018-02-21 | 17/RVB01=$5,411.86 | 30 | 2018-03-09 |  | 2018-03-13 | 2018-03-13 | 16 | 46 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223073 | M5441 | Lumbago with sciatica, right side | ICD10 | 03152018 | 02212018 | 03092018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 02272018 | 2018-02-27T12:52:57+00:00 |  | 000073895-01 | Arthur | Wharton | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 03152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02262018 | 03062018 | Standard |  |  | 2018-02-26 | 16/RUA01= $3214.76 | 0 | 2018-03-06 |  | 2018-03-13 | 2018-03-13 | 8 | 8 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227058 | J189, R6521 | Severe sepsis with septic shock | ICD10 | 03152018 | 02262018 | 03062018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 03012018 | 2018-03-01T10:26:58+00:00 |  | 000100065-01 | Furman | Tinon | HOSPITAL MEDICINE SERVIC | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 03152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02282018 | 03102018 | Standard |  |  | 2018-02-28 | 16/RVB01= $3350.20 | 0 | 2018-03-10 |  | 2018-03-12 | 2018-03-12 | 10 | 10 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301025 | S32009S | Unspecified fracture of unspecified lumbar vertebra, sequela | ICD10 | 03152018 | 02282018 | 03102018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 03012018 | 2018-03-01T16:01:58+00:00 |  | 000006028-01 | MARTHA | LACEY | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02282018 | 03142018 | Standard |  |  | 2018-02-28 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-03-14 |  | 2018-03-08 | 2018-03-14 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301065 | E780, I10, M4806 | Spinal stenosis, lumbar region | ICD10 | 03152018 | 02282018 | 03142018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01102018 | 2018-01-10T16:11:07+00:00 |  | 000076808-01 | Elmer | Blankenship | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 03152018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 01082018 | 01312018 | Standard |  |  | 2018-01-08 | 14 days @ $200.00= $2800.00 | 12 | 2018-01-31 |  | 2018-03-07 | 2018-03-07 | 23 | 35 | 2800.0 | 180221157818.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110108 | J189, M6250, Z452 | Encounter for adjustment and management of VAD | ICD10 | 03152018 | 01082018 | 01312018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2800 | 2800 | Approved | 24 | Revenue | RV |  |  |  | 9.0 |
| 02232018 | 2018-02-23T18:02:33+00:00 |  | 000067305-01 | JAMES | COOPER | GRANDVIEW HOSPITAL & SOU | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF MIAMISBURG OH LLC | 905914 | 1184666406 | HEARTLAND OF MIAMISBURG OH LLC | 1184666406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MIAMISBURG OH LLC | 03152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02222018 | 03122018 | Standard |  |  | 2018-02-22 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 62 | 2018-03-12 | 2018-03-09 | 2018-03-15 | 2018-03-09 | 18 | 80 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226045 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 03152018 | 02222018 | 03122018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 02282018 | 2018-02-28T13:30:13+00:00 |  | 000012745-01 | SALLY | SPEAKS | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 03152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02272018 | 03072018 | Standard |  |  | 2018-02-27 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-03-07 |  | 2018-03-08 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228061 | I5023, J810 | Acute pulmonary edema | ICD10 | 03152018 | 02272018 | 03072018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 03052018 | 2018-03-05T16:56:26+00:00 |  | 000100104-01 | Ruth | Brinkel | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 03152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03022018 | 03122018 | Standard |  |  | 2018-03-02 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-03-12 |  | 2018-03-15 | 2018-03-15 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306028 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 03152018 | 03022018 | 03122018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 03062018 | 2018-03-06T13:25:10+00:00 |  | 000045924-01 | STEVEN | HARTER | COLS INPATIENT CARE INC | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 03152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03052018 | 03122018 | Standard |  |  | 2018-03-05 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-03-12 |  | 2018-03-15 | 2018-03-15 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306072 | S72001G | Fx unsp part of nk of r femr, subs for clos fx w delay heal | ICD10 | 03152018 | 03052018 | 03122018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
