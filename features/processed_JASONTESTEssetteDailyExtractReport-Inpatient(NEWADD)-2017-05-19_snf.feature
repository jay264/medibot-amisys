Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-19_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-19_SNF
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
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
  And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
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
| 03202017 | 2017-03-20T13:01:56+00:00 |  | 000070243-01 | Linda | Manning | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03162017 | 05102017 | Standard |  |  | 2017-03-16 | Contract/RUG: 16/RVC (Per MDS) = $3,539.19 Per Diem: $200.00/day x 34 approved SNF Days = $6,800.00 (-2 SNF Days due to was not approved days) Total Payment = $10,339.19 | 0 | 2017-05-11 |  | 2017-05-18 | 2017-05-18 | 56 | 56 | 10339.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170320088 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 05192017 | 03162017 | 05112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 56 | Revenue | RV |  |  |  | 12.0 |
| 03302017 | 2017-03-30T14:37:19+00:00 |  | 000112741-01 | Debra | Snell | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 05192017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03282017 | 05162017 | Standard |  |  | 2017-03-28 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $200.00/day x 30 SNF Days = $6,000.00 Total Payment: $9,350.20 | 0 | 2017-05-17 |  | 2017-05-18 | 2017-05-18 | 50 | 50 | 9350.2 | 170404093522.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170331017 | S6291XA, S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 05192017 | 03282017 | 05172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 9350 |  | 50 | Revenue | RV |  |  |  | 1.0 |
| 04102017 | 2017-04-10T12:59:58+00:00 |  | 000091114-01 | Estel | Jenkins | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 05192017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04082017 | 05162017 | Standard |  |  | 2017-04-08 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $200.00/day x 11 SNF Days = $ 2,200.00 Total Payment: $5,550.20 | 0 | 2017-05-17 |  | 2017-05-18 | 2017-05-18 | 31 | 31 | 5550.2 | 170414095765.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170410055 | I4892 | Unspecified atrial flutter | ICD10 | 05192017 | 04082017 | 05172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5550 | 5550 | Approved | 39 | Revenue | RV |  |  |  | 11.0 |
| 04102017 | 2017-04-10T15:48:18+00:00 |  | 000050134-01 | SHERYL | MEADE | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04072017 | 05172017 | Standard |  |  | 2017-04-07 | Per MDS: 16/RVC01 = $3539.19 Per Diem: $200.00/day x 21 days = $4200.00 TOTAL PAYMENT = $7739.19 | 12 | 2017-05-18 | 2017-04-19 | 2017-04-19 | 2017-05-19 | 41 | 53 | 7739.19 | 170412095359.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170411017 | E119, I10, I82409, J45909, S82102A | Unsp fracture of upper end of left tibia, init for clos fx | ICD10 | 05192017 | 04072017 | 05182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7739 | 7739 | Approved | 41 | Revenue | RV |  |  |  | 3.0 |
| 04132017 | 2017-04-13T15:54:19+00:00 |  | 000005242-01 | WINONA | ROBERTS | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05192017 | 05262017 | Standard |  |  | 2017-04-12 | 17/RVC01=$6,306.19 | 0 | 2017-05-11 |  | 2017-05-18 |  | 20 | 20 | 6306.19 | 170417096094.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414022 | I6990 | Unspecified sequelae of unspecified cerebrovascular disease | ICD10 | 05192017 | 04122017 | 05112017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 04152017 | 2017-04-15T13:52:31+00:00 |  | 000032849-01 | BESSIE | RIEHLE | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | VALLEY VIEW CARE CENTER | 909041 | 1972578045 | VALLEY VIEW CARE CENTER | 1972578045 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VALLEY VIEW CARE CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04132017 | 05192017 | Standard |  |  | 2017-04-13 | Contract/RUG: 16/RUB (Per MDS) =$ 4,429.71 Per Diem: $250.00/day x 17 = $4,250.00 Total Payment: $8,679.71 | 12 | 2017-05-20 |  | 2017-05-17 | 2017-05-17 | 37 | 49 | 8679.71 | 170418096386.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417021 | A080, E876, M6281 | Muscle weakness (generalized) | ICD10 | 05192017 | 04132017 | 05202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8679 | 8679 | Approved | 37 | Revenue | RV |  |  |  | 3.0 |
| 04242017 | 2017-04-24T09:52:03+00:00 |  | 000071391-01 | Bette | Walden | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 05192017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04202017 | 05142017 | Standard |  |  | 2017-04-20 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 | 0 | 2017-05-15 |  | 2017-05-18 | 2017-05-18 | 25 | 25 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424069 | R4182, S37009D | Unspecified injury of unspecified kidney, subs encntr | ICD10 | 05192017 | 04202017 | 05152017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 04242017 | 2017-04-24T13:54:01+00:00 |  | 000015877-01 | SHIRLEY | ROSS | COPC CENTRAL OHIO PRIMAR | 937085 | PAUL C | LEIDHEISER JR | 1932183498 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05192017 | 05262017 | Standard |  |  | 2017-04-21 | 17/RUB01=$5,813.99 | 0 | 2017-05-11 |  | 2017-05-18 | 2017-05-18 | 20 | 20 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424121 | M6281 | Muscle weakness (generalized) | ICD10 | 05192017 | 04212017 | 05112017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05012017 | 2017-05-01T14:21:08+00:00 |  | 000104868-01 | MAMIE | PORTER | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 05192017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04272017 | 05162017 | Standard |  |  | 2017-04-27 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-05-17 |  | 2017-05-18 | 2017-05-18 | 20 | 20 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502052 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 05192017 | 04272017 | 05172017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05022017 | 2017-05-02T15:21:05+00:00 |  | 000001818-01 | PATRICIA | DARFUS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04282017 | 05172017 | Standard |  |  | 2017-04-28 | Per MDS: 17/RUB01 = $5813.99 TOTAL PAYMENT: $5813.99 | 0 | 2017-05-18 |  | 2017-05-19 | 2017-05-19 | 20 | 20 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503053 | I209, Z5189 | Encounter for other specified aftercare | ICD10 | 05192017 | 04282017 | 05182017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05082017 | 2017-05-08T09:23:58+00:00 |  | 000044745-01 | PATRICIA | HAAG | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05042017 | 05102017 | Standard |  |  | 2017-05-04 | Contract/RUG: 17/CA1 (Per MDS) = $2,698.63 | 0 | 2017-05-11 | 2017-05-18 | 2017-05-18 | 2017-05-18 | 7 | 7 | 2698.63 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508048 | I5043, M6281, Z739, Z736 | Limitation of activities due to disability | ICD10 | 05192017 | 05042017 | 05112017 | CA101 | CLINICALLY COMPLEX , ADL INDEX 0-1/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 05102017 | 2017-05-10T11:10:21+00:00 |  | 000030079-01 | MARGARET | KENEFICK | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05092017 | 05172017 | Standard |  |  | 2017-05-09 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-05-18 |  | 2017-05-17 | 2017-05-18 | 9 | 9 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510102 | F0390, M150, Z9181, Z96641 | Presence of right artificial hip joint | ICD10 | 05192017 | 05092017 | 05182017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 05102017 | 2017-05-10T14:40:08+00:00 |  | 000044061-01 | ROBERT | DRESSING | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD GARDENS REHABI | 949221 | 1235684309 | FAIRFIELD GARDENS REHAB AND CARE CTR | 1235684309 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAIRFIELD GARDENS REHAB AND CARE CTR | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05082017 | 05182017 | Standard |  |  | 2017-05-08 | Per MDS: 17/RUC01 = $6049.81 TOTAL PAYMENT = $6049.81 | 0 | 2017-05-19 |  | 2017-05-19 |  | 11 | 11 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511011 | S12101S | Unspecified nondisp fx of second cervical vertebra, sequela | ICD10 | 05192017 | 05082017 | 05192017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05112017 | 2017-05-11T15:03:20+00:00 |  | 000078552-01 | Charlene | Jefferson | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05092017 | 05092017 | Standard |  |  | 2017-05-09 | Per Diem: $200.00/day x 1 SNF day = $200.00 | 0 | 2017-05-10 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512002 | J189, J9601 | Acute respiratory failure with hypoxia | ICD10 | 05192017 | 05092017 | 05102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
| 05112017 | 2017-05-11T17:12:02+00:00 |  | 000026308-01 | DOROTHY | BAILEY | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05092017 | 05172017 | Standard |  |  | 2017-05-09 | Per MDS: 16/RUB01 = $4429.71 TOTAL PAYMENT = $4429.71 | 0 | 2017-05-18 |  | 2017-05-17 | 2017-05-18 | 9 | 9 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512014 | E1140, I10, M069, M25552, M6281, R262, Z9181 | History of falling | ICD10 | 05192017 | 05092017 | 05182017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 05152017 | 2017-05-15T10:06:14+00:00 |  | 000074442-01 | Carol | Fultz | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 05192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05112017 | 05172017 | Standard |  |  | 2017-05-11 | Per MDS: 16/RUB01 = $4429.71 TOTAL PAYMENT = $4429.71 | 0 | 2017-05-18 |  | 2017-05-18 | 2017-05-18 | 7 | 7 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515079 | I10, I6523, R55, S022XXS | Fracture of nasal bones, sequela | ICD10 | 05192017 | 05112017 | 05182017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
