Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-07_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-07_SNF
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
| 10262017 | 2017-10-26T15:28:54+00:00 |  | 000107435-01 | Dolores | Pummill | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 12072017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10242017 | 11252017 | Standard |  |  | 2017-10-24 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 12 SNF Days = $2,400.00 Total Payment: $8,706.19 | 0 | 2017-11-25 | 2017-12-03 | 2017-12-06 | 2017-12-03 | 32 | 32 | 8706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026073 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 12072017 | 10242017 | 11252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8706 | 8706 | Approved | 33 | Revenue | RV |  |  |  | 2.0 |
| 11152017 | 2017-11-15T14:04:00+00:00 |  | 000039318-01 | GERALDINE | REYNOLDS | DEEPAK SARWAL MD LLC | 902805 | DEEPAK | SARWAL | 1235159559 | KINGSTON OF MIAMISBURG | 927958 | 1972590115 | KINGSTON OF MIAMISBURG | 1972590115 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINGSTON OF MIAMISBURG | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11142017 | 11222017 | Standard |  |  | 2017-11-14 | Contract/RUG: 17/RUA (per MDS) = $3,214.76 | 0 | 2017-11-22 |  | 2017-12-06 | 2017-11-27 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115067 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12072017 | 11142017 | 11222017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 11162017 | 2017-11-16T08:46:04+00:00 |  | 000095657-01 | Reva | Wood | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 12072017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11142017 | 12052017 | Standard |  |  | 2017-11-14 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 | 0 | 2017-12-05 |  | 2017-12-06 | 2017-12-06 | 20 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116050 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 12072017 | 11142017 | 12052017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 11162017 | 2017-11-16T13:12:25+00:00 |  | 000005739-01 | Vicki | Pritchard | PAUL E HARRIS JR DO INC | 905253 | PAUL E | HARRIS III | 1467679365 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11152017 | 12052017 | Standard |  |  | 2017-11-15 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-12-05 | 2017-12-05 | 2017-12-05 | 2017-12-06 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116092 | L89153 | Pressure ulcer of sacral region, stage 3 | ICD10 | 12072017 | 11152017 | 12052017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10162017 | 2017-10-16T14:03:42+00:00 |  | 000108231-01 | Sally | Barailloux | EMERGENCY SERVICES INC | 935070 | MARTIN J | WOODARD | 1033197611 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 12072017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10122017 | 12012017 | Standard |  |  | 2017-10-12 | 17/RVB01=$5,411.86 PER DIEM RATE OF $250.00/DAY X 4=$1,000.00 PER DIEM RATE OF $200.00/DAY X 44=$8,800.00 TOTAL PAYMENT TO FACILITY=$15,211.86 | 0 | 2017-12-01 |  | 2017-12-04 | 2017-12-04 | 48 | 48 | 15211.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017054 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12072017 | 10122017 | 12012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 51 | Revenue | RV |  |  |  | 4.0 |
| 11222017 | 2017-11-22T12:17:31+00:00 |  | 000006724-01 | LOIS | SEWARD | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11212017 | 12052017 | Standard |  |  | 2017-11-21 | 16/RUB01=$4,429.71 | 0 | 2017-12-05 |  | 2017-12-06 | 2017-12-06 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122066 | L0390 | Cellulitis, unspecified | ICD10 | 12072017 | 11212017 | 12052017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11212017 | 2017-11-21T15:55:16+00:00 |  | 000106123-01 | SAMUEL | RIEL | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 12072017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 11192017 | 12012017 | Standard |  |  | 2017-11-19 | 17/RVC01= $6306.19 | 0 | 2017-12-01 |  | 2017-12-07 | 2017-12-07 | 12 | 12 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122002 | I6340 | Cerebral infarction due to embolism of unsp cerebral artery | ICD10 | 12072017 | 11192017 | 12012017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 11162017 | 2017-11-16T15:03:38+00:00 |  | 000066296-01 | BETTY | ENGLAND | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 12072017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11142017 | 12042017 | Standard |  |  | 2017-11-14 | Per MDS: 17/PC101 = $2465.35 | 0 | 2017-12-04 |  | 2017-12-04 | 2017-12-04 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117007 | C763, Z5189 | Encounter for other specified aftercare | ICD10 | 12072017 | 11142017 | 12042017 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11142017 | 2017-11-14T08:55:21+00:00 |  | 000083380-01 | Rose | Lee | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 12072017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 11112017 | 12042017 | Standard |  |  | 2017-11-11 | Per MDS: 17/RHB01 = $3699.42 | 0 | 2017-12-04 | 2017-12-01 | 2017-12-04 | 2017-12-04 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114076 | G8191, I259, I639, M6281 | Muscle weakness (generalized) | ICD10 | 12072017 | 11112017 | 12042017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 11222017 | 2017-11-22T15:09:34+00:00 |  | 000073550-01 | Leota | Shook | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD GARDENS REHABI | 949221 | 1235684309 | COUNTRY LANE GARDENS REHABILITATION | 1235684309 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY LANE GARDENS REHABILITATION | 12072017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11212017 | 12022017 | Standard |  |  | 2017-11-21 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-12-02 |  | 2017-12-05 | 2017-12-01 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122083 | I6350 | Cereb infrc due to unsp occls or stenos of unsp cereb artery | ICD10 | 12072017 | 11212017 | 12022017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 11152017 | 2017-11-15T09:06:13+00:00 |  | 000079203-01 | Helen | Dixon | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11112017 | 12012017 | Standard |  |  | 2017-11-11 | Per MDS: 17/RHC01 = $4132.02 | 0 | 2017-12-01 |  | 2017-12-05 | 2017-12-05 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115059 | G9340, J189 | Pneumonia, unspecified organism | ICD10 | 12072017 | 11112017 | 12012017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 09252017 | 2017-09-25T14:56:11+00:00 |  | 000032692-01 | CARL | EVANS | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09222017 | 11282017 | Standard |  |  | 2017-09-22 | Per Diem: $250.00/day x 67 days = $16,750.00 Unasyn (per invoice) = $2918.35 TOTAL PAYMENT = $19,668.35 | 0 | 2017-11-28 |  | 2017-11-28 | 2017-11-28 | 67 | 67 | 19668.35 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926045 | E118, G9341, I82409, N182, R6889, R7881 | Bacteremia | ICD10 | 12072017 | 09222017 | 11282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 68 | Revenue | RV |  |  |  | 12.0 |
| 11282017 | 2017-11-28T08:45:28+00:00 |  | 000062898-01 | PAMELA | SKEESE | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11262017 | 12062017 | Standard |  |  | 2017-11-26 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-12-06 |  | 2017-12-06 | 2017-12-06 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128070 | I4891, J189, J438, J9612 | Chronic respiratory failure with hypercapnia | ICD10 | 12072017 | 11262017 | 12062017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 11292017 | 2017-11-29T15:42:28+00:00 |  | 000107486-01 | Patricia | Kluesener | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 12072017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11282017 | 12062017 | Standard |  |  | 2017-11-28 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-12-06 |  | 2017-12-06 | 2017-12-06 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130078 | E119, I10, I2510, J45909 | Unspecified asthma, uncomplicated | ICD10 | 12072017 | 11282017 | 12062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 11272017 | 2017-11-27T12:07:24+00:00 |  | 000011135-01 | SALLIE | JORDAN | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11232017 | 11292017 | Standard |  |  | 2017-11-23 | Per MDS: 17/PC101 = $2465.35 | 0 | 2017-11-29 |  | 2017-12-06 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127132 | E871, M6281 | Muscle weakness (generalized) | ICD10 | 12072017 | 11232017 | 11292017 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 11252017 | 2017-11-25T08:54:37+00:00 |  | 000040105-01 | VIOLA | MCNICHOLS | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11222017 | 12062017 | Standard |  |  | 2017-11-22 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-12-06 |  | 2017-12-06 | 2017-12-06 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127104 | Z96641 | Presence of right artificial hip joint | ICD10 | 12072017 | 11222017 | 12062017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11272017 | 2017-11-27T12:10:22+00:00 |  | 000057054-01 | DAVID | REESE | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11222017 | 12022017 | Standard |  |  | 2017-11-22 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-12-02 |  | 2017-12-07 | 2017-12-07 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127136 | S2241XD | Multiple fx of ribs, right side, subs for fx w routn heal | ICD10 | 12072017 | 11222017 | 12022017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 11292017 | 2017-11-29T10:21:41+00:00 |  | 000077036-01 | Irene | Matson | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11272017 | 12052017 | Standard |  |  | 2017-11-27 | 17/RVA01= $3586.28 | 0 | 2017-12-05 |  | 2017-12-07 | 2017-12-07 | 8 | 8 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129113 | T8131XA | Disruption of external operation (surgical) wound, NEC, init | ICD10 | 12072017 | 11272017 | 12052017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 11082017 | 2017-11-08T14:45:11+00:00 |  | 000005922-01 | VERA | TAYLOR | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11072017 | 12052017 | Standard |  |  | 2017-11-07 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $200.00/day x 8 days = $1600.00 TOTAL PAYMENT = $7011.86 | 0 | 2017-12-05 |  | 2017-12-07 | 2017-11-29 | 28 | 28 | 7011.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108062 | D591, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 12072017 | 11072017 | 12052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7011 | 7011 | Approved | 29 | Revenue | RV |  |  |  | 8.0 |
| 11042017 | 2017-11-04T08:14:17+00:00 |  | 000011988-01 | ELNORA | BELL | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 12072017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11012017 | 11292017 | Standard |  |  | 2017-11-01 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 8 days = $2000.00 TOTAL PAYMENT = $7813.99 | 4 | 2017-12-29 |  | 2017-12-07 |  | 28 | 32 | 7813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106078 | N186 | End stage renal disease | ICD10 | 12072017 | 11012017 | 11292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7813 | 7813 | Approved | 29 | Revenue | RV |  |  |  | 7.0 |
