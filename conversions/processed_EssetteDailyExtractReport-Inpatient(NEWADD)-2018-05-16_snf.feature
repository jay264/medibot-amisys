Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-16_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-16_SNF
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
| 03282018 | 2018-03-28T12:55:49+00:00 |  | 000039594-01 | ELEANOR | ST CLAIR | ALI M SAIFI | 953446 | ALI M | SAIFI | 1376530303 | MORTON PLANT HOSPITAL | 934673 | 1376529743 | MORTON PLANT HOSPITAL | 1376529743 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORTON PLANT HOSPITAL | 05162018 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 05162018 | 05172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A180328064 | S32501D, S72144D | Nondisp intertroch fx r femur, subs for clos fx w routn heal | ICD10 | 05162018 | 04042018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04162018 | 2018-04-16T08:24:59+00:00 |  | 000045068-01 | ICEL | CRANK | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04122018 | 05162018 | Standard |  |  | 2018-04-12 | 16/RUC01= $7333.11 14 DAYS @ $200.00= $2800.00 TOTAL: $10133.11 | 0 | 2018-05-16 |  | 2018-05-15 | 2018-05-15 | 34 | 34 | 10133.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416028 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 05162018 | 04122018 | 05162018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 35 | Revenue | RV |  |  | No child records to display. |  |
| 04032018 | 2018-04-03T09:10:46+00:00 |  | 000044525-01 | WILLIAM | GILLETTE | SENIOR CARE ADVANTAGE LL | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03312018 | 04272018 | Standard |  |  | 2018-03-31 | 17/RUC01=$6,049.81 PER DIEM RATE OF $200.00/DAY X 7 DAYS=$1,400.00 TOTAL PAYMENT TO FACILITY=$7,449.81 | 0 | 2018-04-27 |  | 2018-05-14 |  | 27 | 27 | 7449.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403031 | R4182 | Altered mental status, unspecified | ICD10 | 05162018 | 03312018 | 04272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7449 | 7449 | Approved Skilled | 28 | Revenue | RV |  |  | No child records to display. |  |
| 04052018 | 2018-04-05T18:53:42+00:00 |  | 000044592-01 | GERALDINE | JUNK | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04032018 | 04302018 | Standard |  |  | 2018-04-03 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 | 0 | 2018-04-30 |  | 2018-05-10 |  | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406002 | E871, R269 | Unspecified abnormalities of gait and mobility | ICD10 | 05162018 | 04032018 | 04302018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 28 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04232018 | 2018-04-23T16:09:35+00:00 |  | 000008170-01 | JAMES | HENDERSON | CHU, VINCENT K | 936119 | VINCENT K | CHU | 1366481822 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04202018 | 04252018 | Standard |  |  | 2018-04-20 | 17/RMC01=$3,027.33 | 19 | 2018-04-25 |  | 2018-05-03 |  | 5 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424010 | F0280 | Dementia in oth diseases classd elswhr w/o behavrl disturb | ICD10 | 05162018 | 04202018 | 04252018 | RMC01 | MEDIUM REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 6 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04242018 | 2018-04-24T13:27:24+00:00 |  | 000074096-01 | Linda | Ellinger | HOSPITALIST MEDICINE PHY | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04232018 | 05132018 | Standard |  |  | 2018-04-23 | 17/RUC01=$6,049.81 | 0 | 2018-05-13 |  | 2018-05-14 | 2018-05-14 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424073 | R5381 | Other malaise | ICD10 | 05162018 | 04232018 | 05132018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04162018 | 2018-04-16T15:07:57+00:00 |  | 000108984-01 | Penelope Sue | Rogers | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 05162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04132018 | 04282018 | Standard |  |  | 2018-04-13 | Contract/RUG: 16/RVC (Per MDS) = $3,539.19 | 31 | 2018-04-28 |  | 2018-05-10 | 2018-05-10 | 15 | 46 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417009 | E46, G231, J189 | Pneumonia, unspecified organism | ICD10 | 05162018 | 04132018 | 04282018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04232018 | 2018-04-23T14:42:11+00:00 |  | 000096771-01 | GARY | ANDERSON | INTL MED ASSOC OF CLINTO | 920031 | BRUCE E | STALEY | 1841283033 | OHIO LIVING CAPE MAY | 946695 | 1285801233 | OHIO LIVING CAPE MAY | 1285801233 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING CAPE MAY | 05162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04222018 | 04282018 | Standard |  |  | 2018-04-22 | Contract/RUG: 16/RUA (Per MDS) = $3,214.76 | 0 | 2018-04-28 |  | 2018-05-10 | 2018-05-10 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423091 | Z471 | Aftercare following joint replacement surgery | ICD10 | 05162018 | 04222018 | 04282018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04242018 | 2018-04-24T14:57:33+00:00 |  | 000019577-01 | DAVID | DEBOLT | MORNING VIEW DELAWARE, I | 936546 |  | MORNING VIEW DELAWARE INC | 1720080997 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04192018 | 05132018 | Standard |  |  | 2018-04-19 | 16/RUC01=$7,333.11 PER DIEM RATE OF $200.00/DAY X 5 DAYS=$1,000.00 TOTAL PAYMENT TO FACILITY=$8,333.11 | 0 | 2018-05-13 |  | 2018-05-14 | 2018-05-11 | 25 | 25 | 8333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424094 | S72092D | Oth fx head/neck of l femur, subs for clos fx w routn heal | ICD10 | 05162018 | 04192018 | 05132018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8333 | 8333 | Approved Skilled | 25 | Revenue | RV |  |  | No child records to display. |  |
| 04252018 | 2018-04-25T11:49:23+00:00 |  | 000006245-01 | HELEN | HANEY | AMERICAN HLTH NETWORK OF | 924337 | RAJNISH K | GUPTA | 1063466795 | EDGEWOOD MANOR OF WESTER | 952373 | 1518485820 | BUCKEYE TERRACE REHABILITATION & NUR | 1518485820 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BUCKEYE TERRACE REHABILITATION & NUR | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04232018 | 04282018 | Standard |  |  | 2018-04-23 | PER DIEM RATE OF $200.00/DAY X 5 DAYS=$1000.00 CARVE OUT FOR WOUND VAC RENTAL PER INVOICE AT $60.09/DAY X 5 DAYS=$300.45 WOUND VAC SUPPLIES PER INVOICE=$1,201.75 TOTAL PAYMENT TO FACILITY=$2,502.20 | 0 | 2018-04-28 |  | 2018-05-15 |  | 5 | 5 | 2502.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425071 | L97822 | Non-prs chronic ulcer oth prt l low leg w fat layer exposed | ICD10 | 05162018 | 04232018 | 04282018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2502 | 2502 | Approved Skilled | 6 | Revenue | RV |  |  | No child records to display. |  |
| 04272018 | 2018-04-27T14:01:55+00:00 |  | 000000497-01 | RITA | CRISSINGER | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04252018 | 05092018 | Standard |  |  | 2018-04-25 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 | 0 | 2018-05-09 |  | 2018-05-15 | 2018-05-15 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427071 | S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 05162018 | 04252018 | 05092018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05032018 | 2018-05-03T11:10:09+00:00 |  | 000070583-01 | Earl | Benner Jr | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRANKLIN WOODS LEASING L | 951360 | 1497295497 | WOODVIEW CARE & REHABILITATION | 1497295497 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WOODVIEW CARE & REHABILITATION | 05162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05022018 | 05062018 | Standard |  |  | 2018-05-02 | Contract/RUG:17/PC1 (Per MDS) = $2,465.35 | 0 | 2018-05-06 |  | 2018-05-15 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503039 | N390, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 05162018 | 05022018 | 05062018 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05072018 | 2018-05-07T10:45:16+00:00 |  | 000094207-01 | Jack | Briggs | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05032018 | 05112018 | Standard |  |  | 2018-05-03 | 8 DAYS @ $200.00= $1600.00 | 0 | 2018-05-11 |  | 2018-05-16 | 2018-05-16 | 8 | 8 | 1600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507050 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05162018 | 05032018 | 05112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved | 9 | Revenue | RV |  |  | No child records to display. |  |
| 05072018 | 2018-05-07T12:14:44+00:00 |  | 000109262-01 | JUDY | PIERCE | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 05162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05052018 | 05122018 | Standard |  |  | 2018-05-05 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-05-12 |  | 2018-05-14 | 2018-05-14 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507068 | G9341, M6281, R2689, R4182, R531, Z5189 | Encounter for other specified aftercare | ICD10 | 05162018 | 05052018 | 05122018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05092018 | 2018-05-09T10:11:43+00:00 |  | 000073842-01 | Celia | Weir | INPATIENT CNSLT OF OH IN | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF MIAMISBURG OH LLC | 905914 | 1184666406 | HEARTLAND OF MIAMISBURG OH LLC | 1184666406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MIAMISBURG OH LLC | 05162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05072018 | 05132018 | Standard |  |  | 2018-05-07 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-05-13 |  | 2018-05-15 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509050 | N390 | Urinary tract infection, site not specified | ICD10 | 05162018 | 05072018 | 05132018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 03162018 | 2018-03-16T13:42:53+00:00 |  | 000054393-01 | MARGARET | PARKER | COLS INPATIENT CARE INC | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03152018 | 05142018 | Standard |  |  | 2018-03-15 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 40 SNF Days = $8,000.00 Total Payment: $14,049.81 | 40 | 2018-05-14 |  | 2018-03-28 |  | 60 | 100 | $14, 049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316053 | R5381 | Other malaise | ICD10 | 05162018 | 03152018 | 05142018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 61 | Revenue | RV |  |  | No child records to display. |  |
| 03292018 | 2018-03-29T10:55:26+00:00 |  | 000016400-01 | SANDRA | JOYCE | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03272018 | 05132018 | Standard |  |  | 2018-03-27 | 17/RHC01=$4132.02 PER DIEM RATE OF $200.00/DAY X 27 DAYS=$5,400.00 TOTAL PAYMENT TO FACILITY=$9,532.02 | 0 | 2018-05-13 |  | 2018-05-15 | 2018-05-11 | 47 | 47 | 9532.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329049 | R200, R29898 | Oth symptoms and signs involving the musculoskeletal system | ICD10 | 05162018 | 03272018 | 05132018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9532 | 9532 | Approved Skilled | 48 | Revenue | RV |  |  | No child records to display. |  |
| 04032018 | 2018-04-03T15:12:23+00:00 |  | 000083465-01 | Judy | Tarrence | ARTHUR H WIN MD LLC | 905083 | ARTHUR H | WIN | 1780667444 | ARBORS AT SPRINGFIELD | 943322 | 1467850305 | ARBORS AT SPRINGFIELD | 1467850305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT SPRINGFIELD | 05162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04012018 | 04192018 | Standard |  |  | 2018-04-01 | Per Diem: Vent $520.00/day x 18 SNF Days = $9,360.00 Carve Out: IV Ceftriaxone  $372.01 (Per Invoices) IV Cefepime $271.86 (Per Invoices) Total Payment: $10,003.87 | 16 | 2018-04-19 |  | 2018-05-15 | 2018-05-15 | 18 | 34 | 10003.87 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403087 | Z9911, Z930 | Tracheostomy status | ICD10 | 05162018 | 04012018 | 04192018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 19 | Revenue | RV |  |  | No child records to display. |  |
| 04102018 | 2018-04-10T08:52:29+00:00 |  | 000106970-01 | Mary | Beverly | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 05162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04072018 | 04272018 | Standard |  |  | 2018-04-07 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-04-27 |  | 2018-05-16 | 2018-05-10 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410103 | Z952 | Presence of prosthetic heart valve | ICD10 | 05162018 | 04072018 | 04272018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04162018 | 2018-04-16T15:03:30+00:00 |  | 000033931-01 | STANLEY | MELVIN | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04132018 | 04292018 | Standard |  |  | 2018-04-13 | Contract/RUG: 16/RUC (Per MDS) = $7,333.11 | 0 | 2018-04-29 |  | 2018-05-16 |  | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417008 | M6282 | Rhabdomyolysis | ICD10 | 05162018 | 04132018 | 04292018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04182018 | 2018-04-18T15:00:37+00:00 |  | 000038521-01 | LAHOMA | GRAY | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04162018 | 04262018 | Standard |  |  | 2018-04-16 | 17/RUB01=$5,813.99 | 0 | 2018-04-26 |  | 2018-05-14 | 2018-05-14 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418070 | Z96652 | Presence of left artificial knee joint | ICD10 | 05162018 | 04162018 | 04262018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04242018 | 2018-04-24T11:49:14+00:00 |  | 000069839-01 | Dennis | Wright | MONTEREY CARE CENTER | 936519 |  | MONTEREY CARE CENTER | 1245239862 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05162018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04202018 | 05052018 | Standard |  |  | 2018-04-20 | 17/RUB01=$5,813.99 | 0 | 2018-05-05 |  | 2018-05-10 | 2018-05-10 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424059 | J939 | Pneumothorax, unspecified | ICD10 | 05162018 | 04202018 | 05052018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05042018 | 2018-05-04T14:31:24+00:00 |  | 000029726-01 | Bernard | Edwards | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05022018 | 05102018 | Standard |  |  | 2018-05-02 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2018-05-10 |  | 2018-05-15 | 2018-05-15 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504060 | C61 | Malignant neoplasm of prostate | ICD10 | 05162018 | 05022018 | 05102018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04242018 | 2018-04-24T16:03:23+00:00 |  | 000031425-01 | JOYCE | LUTZ | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 05162018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 04232018 | 05152018 | Standard |  |  | 2018-04-23 | Contract/RUG: 16/RVC (Per MDS) = $3,539.19 | 79 | 2018-05-15 |  | 2018-05-16 |  | 21 | 100 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425005 | R262 | Difficulty in walking, not elsewhere classified | ICD10 | 05162018 | 04232018 | 05152018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 04272018 | 2018-04-27T13:31:23+00:00 |  | 000030909-01 | NORA | CAUDILL | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04252018 | 05082018 | Standard |  |  | 2018-04-25 | 17/RUB01=$5,813.99 | 0 | 2018-05-08 |  | 2018-05-10 | 2018-05-10 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427044 | I639, Z5189 | Encounter for other specified aftercare | ICD10 | 05162018 | 04252018 | 05082018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05042018 | 2018-05-04T15:41:56+00:00 |  | 000104081-01 | Thelma | Nutter | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05042018 | 05112018 | Standard |  |  | 2018-05-04 | NON-SKILLED RATE OF $200.00/DAY X 7 DAYS=$1,400.00 | 0 | 2018-05-11 |  | 2018-05-15 | 2018-05-15 | 7 | 7 | 1400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504076 | J209 | Acute bronchitis, unspecified | ICD10 | 05162018 | 05042018 | 05112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved Skilled | 8 | Revenue | RV |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T07:59:21+00:00 |  | 000040377-01 | LEWIS | HAMLER | AUSTIN HEART PA | 909221 | DAVID | KESSLER | 1447251178 | WAVERLY CARE CENTER INC | 928699 | 1962508069 | WAVERLY CARE CENTER INC | 1962508069 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WAVERLY CARE CENTER INC | 05162018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05092018 | 05102018 | Standard |  |  | 2018-05-09 | Per Diem: $200.00/day x 1 SNF Day = $200.00 | 0 | 2018-05-10 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511048 | R6889 | Other general symptoms and signs | ICD10 | 05162018 | 05092018 | 05102018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  | No child records to display. |  |
