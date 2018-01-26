Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-25_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-25_SNF
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
| 01082018 | 2018-01-08T11:32:37+00:00 |  | 000106801-01 | Richard | Birt | HEARTLAND OF SPRINGFIELD | 917780 | CHRISTINE B | WELLER | 1811953318 | VANCREST OF NEW CARLISLE LLC | 925244 | 1871839167 | VANCREST OF NEW CARLISLE LLC | 1871839167 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VANCREST OF NEW CARLISLE LLC | 01252018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 01232018 | Standard |  |  | 2018-01-05 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-23 |  | 2018-01-24 | 2018-01-24 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108108 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 01252018 | 01052018 | 01232018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 12222017 | 2017-12-22T11:37:00+00:00 |  | 000000473-01 | SUZANNE | CARR | CEN OHIO GERIATRICS LLC | 922619 | AMIT R | BHOJRAJ | 1942440276 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 01252018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12202017 | 01132018 | Standard |  |  | 2017-12-20 | 17/RVC01= $6306.19 4 DAYS @ $200.00= $800.00 TOTAL: $7106.19 | 0 | 2018-01-13 |  | 2018-01-25 |  | 24 | 24 | 7106.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222050 | K3580 | Unspecified acute appendicitis | ICD10 | 01252018 | 12202017 | 01132018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7106 | 7106 | Approved | 25 | Revenue | RV |  |  |  | 4.0 |
| 12292017 | 2017-12-29T13:22:59+00:00 |  | 000110605-01 | Albert | Shaffer | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 01252018 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 12282017 | 01012018 | Standard |  |  | 2017-12-28 | 4 DAYS @ $200.00= $800.00 | 0 | 2018-01-01 |  |  |  | 4 | 4 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229070 | E119, J111, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01252018 | 12282017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
| 01032018 | 2018-01-03T14:45:02+00:00 |  | 000072664-01 | Mary | Hill | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 01252018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12312017 | 02182018 | Standard |  |  | 2017-12-31 | 17/RUB01= $5813.99 | 0 | 2018-01-18 |  | 2018-01-24 |  | 18 | 18 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103123 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 01252018 | 12312017 | 01182018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 50 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 01152018 | 2018-01-15T15:54:31+00:00 |  | 000027515-01 | BOBBY | TODD | HOSPITALIST MEDICINE PHY | 914484 | KANAN AKHIL | PATEL | 1205096195 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 01252018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01132018 | 01212018 | Standard |  |  | 2018-01-13 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-01-21 |  | 2018-01-24 | 2018-01-19 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115157 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 01252018 | 01132018 | 01212018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 06262017 | 2017-06-26T15:28:18+00:00 |  | 000043637-01 | WENDLE | SMITH | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 01252018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06222017 | 06232017 | Standard |  |  | 2017-06-22 | PER DIEM RATE OF $200.00/DAY X 1 DAY | 0 | 2017-06-23 |  |  |  | 1 | 1 |  | 171103138464.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626130 | J189 | Pneumonia, unspecified organism | ICD10 | 01252018 | 06222017 | 06232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 2 | Revenue | RV |  |  |  | 1.0 |
| 12262017 | 2017-12-26T15:17:04+00:00 |  | 000087792-01 | Candace | Raisor | INPATIENT CNSLT OF OH IN | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF MIAMISBURG OH LLC | 905914 | 1184666406 | HEARTLAND OF MIAMISBURG OH LLC | 1184666406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MIAMISBURG OH LLC | 01252018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12222017 | 01172018 | Standard |  |  | 2017-12-22 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 6 SNF Days = $1,200.00 Total Payment: 7,506.19 | 17 | 2018-01-17 |  | 2018-01-24 | 2018-01-24 | 26 | 43 | 7506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226173 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 01252018 | 12222017 | 01172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7506 | 7506 | Approved | 27 | Revenue | RV |  |  |  | 6.0 |
| 01232018 | 2018-01-23T16:09:19+00:00 |  | 000096901-01 | Linda | Oharra | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 01252018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 01222018 | Standard |  |  | 2018-01-19 | Per Diem: $200.00/day = $600.00 TOTAL PAYMENT = $600.00 | 0 | 2018-01-22 |  |  |  | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123095 | I5181, Z5189 | Encounter for other specified aftercare | ICD10 | 01252018 | 01192018 | 01222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 01032018 | 2018-01-03T19:07:45+00:00 |  | 000108489-01 | Barbara | Mendenhall | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 01252018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 01022018 | 01232018 | Standard |  |  | 2018-01-02 | 17/RVA01= $3586.28 | 0 | 2018-01-23 |  | 2018-01-25 | 2018-01-25 | 20 | 20 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104065 | I482, R531 | Weakness | ICD10 | 01252018 | 01022018 | 01232018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 01092018 | 2018-01-09T16:37:47+00:00 |  | 000060383-01 | DORIS | KAZEE | HOSPITAL MEDICINE SERVIC | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 01252018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01012018 | 01242018 | Standard |  |  | 2018-01-01 | 16/CD201= $3615.08 4 DAYS @$200.00= $800.00 TOTAL: $4415.08 | 76 | 2018-01-25 |  | 2018-01-25 |  | 24 | 100 | 4415.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110032 | Z4789 | Encounter for other orthopedic aftercare | ICD10 | 01252018 | 01012018 | 01252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4415 | 4415 | Approved | 24 | Revenue | RV |  |  |  | 4.0 |
| 01102018 | 2018-01-10T08:34:05+00:00 |  | 000031567-01 | WILLIAM | IDEN | HOSPITAL MEDICINE SERVIC | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 01252018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01092018 | 01232018 | Standard |  |  | 2018-01-09 | 16/HE201= $4714.82 | 9 | 2018-01-23 |  | 2018-01-25 |  | 14 | 23 | 4714.82 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110060 | G4089 | Other seizures | ICD10 | 01252018 | 01092018 | 01232018 | HE201 | SPECIAL CARE HIGH , ADL INDEX 15-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01102018 | 2018-01-10T10:41:08+00:00 |  | 000098409-01 | Judith | Hunt | EVANS, MARK A | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 01252018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01082018 | 01162018 | Standard |  |  | 2018-01-08 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-01-16 | 2018-01-17 | 2018-01-25 | 2018-01-17 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110068 | M1712, Z96652 | Presence of left artificial knee joint | ICD10 | 01252018 | 01082018 | 01162018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 01122018 | 2018-01-12T13:33:03+00:00 |  | 000068705-01 | BARBARA | RODENISER | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 01252018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01202018 | Standard |  |  | 2018-01-11 | 17/RUA01= $3214.76 | 0 | 2018-01-20 |  | 2018-01-25 | 2018-01-25 | 9 | 9 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112081 | I110 | Hypertensive heart disease with heart failure | ICD10 | 01252018 | 01112018 | 01202018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01152018 | 2018-01-15T16:38:17+00:00 |  | 000052716-01 | MARILYN | SHONEBARGER | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 01252018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01252018 | Standard |  |  | 2018-01-04 | 16/RUA01= $3214.76 | 0 | 2018-01-25 |  | 2018-01-25 | 2018-01-25 | 21 | 21 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116008 | M4326 | Fusion of spine, lumbar region | ICD10 | 01252018 | 01142018 | 01252018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 01162018 | 2018-01-16T15:46:33+00:00 |  | 000043086-01 | JAMES | ROBERTS | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 01252018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01152018 | 01212018 | Standard |  |  | 2018-01-15 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-01-21 |  | 2018-01-25 | 2018-01-19 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116090 | R5381 | Other malaise | ICD10 | 01252018 | 01152018 | 01212018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
