Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-09_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-09_SNF
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
| 04102018 | 2018-04-10T12:28:38+00:00 |  | 000085038-01 | Dick | McCoy | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 05092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04092018 | 05112018 | Standard |  |  | 2018-04-09 | 16/RVC01= $3539.19 12 DAYS @ $200.00= $2400.00 TOTAL: $5939.19 | 0 | 2018-05-11 |  | 2018-05-04 | 2018-05-10 | 32 | 32 | 5939.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411004 | E11621, L03115, L89899, R000 | Tachycardia, unspecified | ICD10 | 05092018 | 04092018 | 05112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5939 | 5939 | Approved | 33 | Revenue | RV |  |  |  | 5.0 |
| 04132018 | 2018-04-13T16:07:10+00:00 |  | 000064750-01 | CAROLYN | ELMORE | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 05092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04112018 | 04252018 | Standard |  |  | 2018-04-11 | 17/RUB01= $5813.99 | 0 | 2018-04-25 |  | 2018-05-09 | 2018-05-09 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416001 | G9340 | Encephalopathy, unspecified | ICD10 | 05092018 | 04112018 | 04252018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04232018 | 2018-04-23T10:55:25+00:00 |  | 000086285-01 | June | Bruker-Elder | MARIETTA MEM HSP | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 05092018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 04212018 | 04282018 | Standard |  |  | 2018-04-21 | 17/RVB01= $5411.86 | 0 | 2018-04-28 |  | 2018-05-08 | 2018-05-09 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423045 | G939 | Disorder of brain, unspecified | ICD10 | 05092018 | 04212018 | 04282018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 04252018 | 2018-04-25T13:39:39+00:00 |  | 000057664-01 | BARRY | CHENEY | MEDICAL & SURG ASSOC INC | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 05092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04242018 | 05072018 | Standard |  |  | 2018-04-24 | 3 DAYS @ $520/VENT= $1560.00 5 DAYS @ $200.00= 1000.00 5 DAYS @ $250.00= $1250.00 TOTAL: $ 3810.00 | 0 | 2018-05-07 |  | 2018-05-08 |  | 13 | 13 | 3810.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425077 | J9601, Z9911 | Dependence on respirator [ventilator] status | ICD10 | 05092018 | 04242018 | 05072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3810 | 3810 | Approved | 14 | Revenue | RV |  |  |  | 13.0 |
| 02122018 | 2018-02-12T17:06:43+00:00 |  | 000022211-01 | MARLENE | HOOVER | COLONNADE MED GRP INC | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 05072018 | Standard |  |  | 2018-02-09 | Contract/RUG: 16/RUC (Per MDS) = $7,333.11 Per Diem: $200.00/day x 67 SNF Days = $13,400.00 Total Payment: $20,733.11 | 0 | 2018-05-07 | 2018-05-04 | 2018-05-08 | 2018-05-08 | 87 | 87 | 20733.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213048 | I5020, J208, J449, M6281, N186, R0602, Z992 | Dependence on renal dialysis | ICD10 | 05092018 | 02092018 | 05072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 88 | Revenue | RV |  |  |  | 7.0 |
| 03062018 | 2018-03-06T11:55:23+00:00 |  | 000046106-01 | ANNE | RORAPAUGH | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 05092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03042018 | 04282018 | Standard |  |  | 2018-03-04 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X 35 DAYS=$7,000.00 TOTAL PAYMENT=$12,411.86 | 0 | 2018-04-28 |  | 2018-05-04 | 2018-05-04 | 55 | 55 | 12411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306064 | M25551 | Pain in right hip | ICD10 | 05092018 | 03042018 | 04282018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 56 | Revenue | RV |  |  |  | 1.0 |
| 03122018 | 2018-03-12T08:13:06+00:00 |  | 000087773-01 | Dorothy | Taylor | DAN F BAUTISTA MD LLC | 901878 | DAN F | BAUTISTA | 1629006903 | WRIGHT NURSING & REHABILITATION CTR | 916108 | 1205966371 | WRIGHT NURSING & REHABILITATION CTR | 1205966371 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WRIGHT NURSING & REHABILITATION CTR | 05092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03092018 | 04302018 | Standard |  |  | 2018-03-09 | Contract/RUG: 16/RVC (Per MDS) = $3,539.19 Per Diem: $200.00/day x 32 SNF Days =$6,400.00 Total Payment: $9,939.19 | 0 | 2018-04-30 |  | 2018-05-08 | 2018-05-08 | 52 | 52 | 9939.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312004 | R262, S82202D | Unsp fx shaft of left tibia, subs for clos fx w routn heal | ICD10 | 05092018 | 03092018 | 04302018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9939 | 9939 | Approved | 53 | Revenue | RV |  |  |  | 4.0 |
| 03292018 | 2018-03-29T15:33:24+00:00 |  | 000033748-01 | LEO | SHAW | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 05092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03272018 | 04202018 | Standard |  |  | 2018-03-27 | 17/RVB01=$5,411.86 | 0 | 2018-04-20 | 2018-05-03 | 2018-05-03 | 2018-05-03 | 20 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329078 | I2510, Z5189 | Encounter for other specified aftercare | ICD10 | 05092018 | 03272018 | 04202018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 04182018 | 2018-04-18T08:49:33+00:00 |  | 000097440-01 | James | Wilt | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 05092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04162018 | 05042018 | Standard |  |  | 2018-04-16 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-05-04 |  | 2018-05-08 | 2018-05-08 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418024 | I2699, M6281, R269 | Unspecified abnormalities of gait and mobility | ICD10 | 05092018 | 04162018 | 05042018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 04252018 | 2018-04-25T11:16:44+00:00 |  | 000065929-01 | NANCY | GRIMM | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 05092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04232018 | 05052018 | Standard |  |  | 2018-04-23 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-05-05 |  | 2018-05-08 | 2018-05-08 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425054 | Z96641 | Presence of right artificial hip joint | ICD10 | 05102018 | 04232018 | 05052018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 04262018 | 2018-04-26T10:41:06+00:00 |  | 000119028-01 | Gary | Rife | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 05092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04242018 | 05072018 | Standard |  |  | 2018-04-24 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-05-07 | 2018-05-08 | 2018-05-08 | 2018-05-08 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426017 | D496 | Neoplasm of unspecified behavior of brain | ICD10 | 05092018 | 04242018 | 05072018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 03232018 | 2018-03-23T11:44:53+00:00 |  | 000078640-01 | Reba | Stanley | THE CHRIST HSP MED ASSOC | 944399 | ORSON J | AUSTIN | 1053395855 | MAPLE KNOLLS COMMUNITY | 953033 | 1194726588 | MAPLE KNOLL VILLAGE | 1194726588 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAPLE KNOLL VILLAGE | 05092018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03212018 | 05052018 | Standard |  |  | 2018-03-21 | 17/RVB01= $5411.86 18 DAYS @ $200.00= $3600.00 TOTAL: $9011.86 Per NOMNC LCD for payment was 4/27/18 with 38 days used, mbr did not dc until 5/5/18 with 45 days used. Pays 38 days with 45 used. | 0 | 2018-05-05 |  | 2018-05-09 | 2018-04-25 | 45 | 45 | 9011.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323037 | Z96698 | Presence of other orthopedic joint implants | ICD10 | 05092018 | 03212018 | 05052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9011 | 9011 | Approved | 46 | Revenue | RV |  |  |  | 11.0 |
| 04112018 | 2018-04-11T16:59:33+00:00 |  | 000121522-01 | Elmer | Reed | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 05092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04092018 | 05032018 | Standard |  |  | 2018-04-09 | 17/RUA01= $3214.76 | 0 | 2018-05-03 |  | 2018-05-09 | 2018-05-01 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412015 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05092018 | 04092018 | 05032018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 04302018 | 2018-04-30T10:06:28+00:00 |  | 000066731-01 | JAMES | MARTIN | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 05092018 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 04262018 | 04282018 | Standard |  |  | 2018-04-26 | PER DIEM RATE OF $200.00/DAY X 2 DAYS=$400.00 CARVE OUT PER INVOICE OF IV DAPTO X 1 DOSE=$268.36 TOTAL PAYMENT TO FACILITY=$668.36 | 0 | 2018-04-28 |  |  |  | 2 | 2 | 668.36 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430034 | A4189, N390 | Urinary tract infection, site not specified | ICD10 | 05092018 | 04262018 | 04282018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 668 | 668 | Approved Skilled | 3 | Revenue | RV |  |  |  | 2.0 |
| 05012018 | 2018-05-01T12:48:43+00:00 |  | 000028256-01 | SHIRLEY | FRALEY | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 05092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04302018 | 05032018 | Standard |  |  | 2018-04-30 | Contract/RUG: 17/RHC (Per MDS) = $4,132.02 | 0 | 2018-05-03 |  | 2018-05-04 |  | 3 | 3 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501048 | G20, M6281, R262, R4182 | Altered mental status, unspecified | ICD10 | 05092018 | 04302018 | 05032018 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 4 | RUGS,HHRG | HP |  |  |  | 3.0 |
