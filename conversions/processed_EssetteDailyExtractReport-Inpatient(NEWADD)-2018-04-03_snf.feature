Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-03_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-03_SNF
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
| 03132018 | 2018-03-13T15:41:55+00:00 |  | 000105643-01 | Frederick | Regan | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03122018 | 03232018 | Standard |  |  | 2018-03-12 | 16/RUB01=$4,429.71 | 0 | 2018-03-23 |  | 2018-04-02 | 2018-04-02 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313083 | R2689, R531, R55 | Syncope and collapse | ICD10 | 04032018 | 03122018 | 03232018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 02012018 | 2018-02-01T12:20:23+00:00 |  | 000107779-01 | Lester | Melching | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 04032018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01262018 | 04032018 | Standard |  |  | 2018-01-26 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 45 days = $11,250.00 TOTAL PAYMENT = $17,556.19 | 0 | 2018-04-03 |  | 2018-04-02 | 2018-04-02 | 65 | 65 | 17556.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201060 | S82251D | Displ commnt fx shaft of r tibia, 7thD | ICD10 | 04032018 | 01262018 | 04032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 68 | Revenue | RV |  |  |  | 3.0 |
| 02052018 | 2018-02-05T16:57:23+00:00 |  | 000034686-01 | GEORGIA | HUFFER | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02032018 | 03242018 | Standard |  |  | 2018-02-03 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 14 days = $3500.00 Per Diem: $200.00/day x 15 days = $3000.00 TOTAL PAYMENT = $13,833.11 | 0 | 2018-03-24 |  | 2018-04-03 |  | 49 | 49 | 13833.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206032 | I10, J449, M25559, M797, M810, S32502D, S32502S, W1830XS | Fall on same level, unspecified, sequela | ICD10 | 04032018 | 02032018 | 03242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 50 | Revenue | RV |  |  |  | 1.0 |
| 03022018 | 2018-03-02T15:31:00+00:00 |  | 000111542-01 | DEBORAH | GATTS | CLINICAL CARE CONSULTANT | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02282018 | 03192018 | Standard |  |  | 2018-02-28 | 17/RUC01=$6,049.81 | 0 | 2018-03-19 |  | 2018-04-03 |  | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302074 | Z471 | Aftercare following joint replacement surgery | ICD10 | 04032018 | 02282018 | 03192018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 03052018 | 2018-03-05T17:13:34+00:00 |  | 000100362-01 | George | Maurer | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03032018 | 03222018 | Standard |  |  | 2018-03-03 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-03-22 |  | 2018-04-02 |  | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306030 | R338 | Other retention of urine | ICD10 | 04032018 | 03032018 | 03222018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 03092018 | 2018-03-09T13:23:25+00:00 |  | 000067018-01 | IRVING | BROMBERG | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03082018 | 03202018 | Standard |  |  | 2018-03-08 | 16/RUB01=$4,429.71 | 0 | 2018-03-20 |  | 2018-04-02 | 2018-04-02 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309060 | N390, R531 | Weakness | ICD10 | 04032018 | 03082018 | 03202018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 03092018 | 2018-03-09T14:48:43+00:00 |  | 000066524-01 | SUN | ADKINS | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03082018 | 03222018 | Standard |  |  | 2018-03-08 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2018-03-22 |  | 2018-03-28 | 2018-03-28 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309072 | M1712, Z471, Z96652 | Presence of left artificial knee joint | ICD10 | 04032018 | 03082018 | 03222018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 03142018 | 2018-03-14T12:36:52+00:00 |  | 000024577-01 | DONNA | PERRY | COLS INPATIENT CARE INC | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03132018 | 03252018 | Standard |  |  | 2018-03-13 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-03-25 | 2018-03-26 | 2018-03-26 | 2018-03-26 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314050 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 04032018 | 03132018 | 03252018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 03152018 | 2018-03-15T11:46:05+00:00 |  | 000077462-01 | David | Ashbery | CLYO INTERNAL MEDICINE | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 04032018 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 03142018 | 03282018 | Standard |  |  | 2018-03-14 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-03-28 |  | 2018-04-02 |  | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315036 | M6281 | Muscle weakness (generalized) | ICD10 | 04032018 | 03142018 | 03282018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 03152018 | 2018-03-15T14:46:52+00:00 |  | 000031281-01 | DARRELL | SPARKS | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03132018 | 03222018 | Standard |  |  | 2018-03-13 | Contract/RUG: 16/RVL (Per MDS) = $4,874.23 | 0 | 2018-03-22 |  | 2018-03-28 | 2018-03-28 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315043 | J09X2 | Flu due to ident novel influenza A virus w oth resp manifest | ICD10 | 04032018 | 03132018 | 03222018 | RVL01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA OR | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03222018 | 2018-03-22T10:16:00+00:00 |  | 000107626-01 | Sally | Kessler | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 04032018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 03062018 | 03222018 | Standard |  |  | 2018-03-06 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-03-22 |  | 2018-03-29 | 2018-03-29 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322021 | I629 | Nontraumatic intracranial hemorrhage, unspecified | ICD10 | 04032018 | 03062018 | 03222018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 01302018 | 2018-01-30T14:58:14+00:00 |  | 000023315-01 | ETTA | CHESROWN | HOSPICE OF CENTRAL OHIO | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01292018 | 01312018 | Standard |  |  | 2018-01-29 | 17/PA101= $2048.78 | 0 | 2018-01-31 |  | 2018-04-03 |  | 2 | 2 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131027 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 04032018 | 01292018 | 01312018 | PA101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 0-1/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 3 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 02212018 | 2018-02-21T16:00:02+00:00 |  | 000052365-01 | NOVA | SMITH | BIO-MEDICAL APPLICATIONS | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF MIAMISBURG OH LLC | 905914 | 1184666406 | HEARTLAND OF MIAMISBURG OH LLC | 1184666406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MIAMISBURG OH LLC | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02202018 | 03242018 | Standard |  |  | 2018-02-20 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $200.00/day x 12 SNF days = $2,400.00 Total Payment: $8,213.99 | 37 | 2018-03-24 | 2018-03-16 | 2018-04-02 | 2018-04-02 | 32 | 69 | 8213.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222015 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 04032018 | 02202018 | 03242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8213 | 8213 | Approved | 33 | Revenue | RV |  |  |  | 5.0 |
| 02222018 | 2018-02-22T16:15:16+00:00 |  | 000090307-01 | Sylvia | Flemings | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02202018 | 03102018 | Standard |  |  | 2018-02-20 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-03-10 |  | 2018-03-23 | 2018-03-23 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223007 | S6292XD | Unsp fracture of left wrs/hnd, subs for fx w routn heal | ICD10 | 04032018 | 02202018 | 03102018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 02262018 | 2018-02-26T16:49:15+00:00 |  | 000083547-01 | David | Brown | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02232018 | 03102018 | Standard |  |  | 2018-02-23 | Contract/RUG: 17/RVX (Per MDS) = $6,171.24 | 0 | 2018-03-10 |  | 2018-03-23 | 2018-03-23 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227013 | E785, M9701XD | PERIPROSTH FRACTURE AROUND INTERNAL PROSTH R HIP JT, SUBS | ICD10 | 04032018 | 02232018 | 03102018 | RVX01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 11-16/STAND-ALONE OBRA SCSA O | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 03022018 | 2018-03-02T12:10:52+00:00 |  | 000110954-01 | Ruth | Mault | L M GUIRNALDA MD LLC | 939630 | LEONARDO M | GUIRNALDA | 1659452498 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 04032018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02282018 | 03222018 | Standard |  |  | 2018-02-28 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 Per Diem: $200.00/day x 2 SNF Days = $400.00 Total Payment: $3,614.76 | 78 | 2018-03-22 |  | 2018-03-26 |  | 22 | 100 | 3614.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302032 | M6250, N179 | Acute kidney failure, unspecified | ICD10 | 04032018 | 02282018 | 03222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3614 | 3614 | Approved | 23 | Revenue | RV |  |  |  | 2.0 |
| 03022018 | 2018-03-02T14:36:56+00:00 |  | 000099409-01 | Barbara | Winter | HEARTLAND WOODRIDGE OF F | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 04032018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 02282018 | 03052018 | Standard |  |  | 2018-02-28 | Per Diem: $200.00/day x 5 SNF Days = $ 1,000.00 Carve Out: IV Daptomycin 5 doses/ $958.64 (per Invoice) Total Payment: $1,958.64 | 49 | 2018-03-05 |  |  | 2018-04-02 | 5 | 54 | 1958.64 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302063 | T8459XD | Infect/inflm reaction due to oth internal joint prosth, subs | ICD10 | 04032018 | 02282018 | 03052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1958 | 1958 | Approved | 6 | Revenue | RV |  |  |  | 5.0 |
| 03052018 | 2018-03-05T11:55:18+00:00 |  | 000091897-01 | Bert | Dluzen | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03012018 | 03252018 | Standard |  |  | 2018-03-01 | Per Diem: $250.00/day x 24 days = $6000.00 Ceftriaxone (per invoice) = $84.26 TOTAL PAYMENT = $6084.26 | 0 | 2018-03-25 | 2018-03-22 | 2018-04-03 | 2018-04-03 | 24 | 24 | 6084.26 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305113 | I350, J181 | Lobar pneumonia, unspecified organism | ICD10 | 04032018 | 03012018 | 03252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6084 | 6084 | Approved | 25 | Revenue | RV |  |  |  | 3.0 |
| 03142018 | 2018-03-14T10:17:29+00:00 |  | 000100258-01 | Gloria | Morgan | DEEPAK SARWAL MD LLC | 902805 | DEEPAK | SARWAL | 1235159559 | KINGSTON OF MIAMISBURG | 927958 | 1972590115 | KINGSTON OF MIAMISBURG | 1972590115 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINGSTON OF MIAMISBURG | 04032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03122018 | 03262018 | Standard |  |  | 2018-03-12 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-03-26 |  | 2018-03-28 | 2018-03-28 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314013 | S069X9D | Unsp intracranial injury w LOC of unsp duration, subs | ICD10 | 04032018 | 03122018 | 03262018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 03212018 | 2018-03-21T16:19:40+00:00 |  | 000016720-01 | Theodore | Swan | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 04032018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03202018 | 03312018 | Standard |  |  | 2018-03-20 | 17/RVA01=$3,586.28 | 0 | 2018-03-31 |  | 2018-04-03 | 2018-04-03 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322009 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 04032018 | 03202018 | 03312018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 03282018 | 2018-03-28T11:23:51+00:00 |  | 000116711-01 | DAVID | BRADFORD | HEARTLAND WOODRIDGE OF F | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 04032018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03262018 | 04012018 | Standard |  |  | 2018-03-26 | Per Diem: $200.00/day x 6 SNF Days = $1,200.00 | 0 | 2018-04-01 | 2018-03-29 |  | 2018-03-30 | 6 | 6 | 1200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328054 | I509 | Heart failure, unspecified | ICD10 | 04032018 | 03262018 | 04012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved | 7 | Revenue | RV |  |  |  | 1.0 |
