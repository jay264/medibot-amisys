Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-01-to-2017-12-03_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-01-to-2017-12-03_SNF
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
| 09252017 | 2017-09-25T16:53:10+00:00 |  | 000076017-01 | Vanessa | Powell | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ZANESVILLE HEALTH AND REHABILITATION | 12012017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 09212017 | 11282017 | Standard |  |  | 2017-09-21 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $250.00/day x 26 SNF Days = $6,500.00 Per Diem: $200.00/day x 22 SNF Days = $4,400.00 Total Payment: $16,949.81 | 32 | 2017-11-28 |  | 2017-11-29 | 2017-11-30 | 68 | 100 | 16949.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926038 | S06340D | Traum hemor right cerebrum w/o loss of consciousness, subs | ICD10 | 12012017 | 09212017 | 11282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 69 | Revenue | RV |  |  |  | 10.0 |
| 10112017 | 2017-10-11T07:59:34+00:00 |  | 000106016-01 | Michelle | Damon | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 12012017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10092017 | 10292017 | Standard |  |  | 2017-10-09 | 17/LD101=$3,448.45 | 55 | 2017-10-29 |  | 2017-10-30 | 2017-10-30 | 20 | 75 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011010 | N19 | Unspecified kidney failure | ICD10 | 12012017 | 10092017 | 10292017 | LD101 | SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11092017 | 2017-11-09T16:28:22+00:00 |  | 000002210-01 | SONYA | CHAFIN | WEST JEFFERSON FAM PRCT | 936655 | MARK W | GARWOOD | 1275595274 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 12012017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11082017 | 11282017 | Standard |  |  | 2017-11-08 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-11-28 |  | 2017-11-30 | 2017-11-30 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110008 | E119, I639, Z9181 | History of falling | ICD10 | 12012017 | 11082017 | 11282017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11132017 | 2017-11-13T12:26:33+00:00 |  | 000105063-01 | Laverne | Schoch | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 12012017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 11102017 | 11302017 | Standard |  |  | 2017-11-10 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 21 | 2017-11-30 |  | 2017-12-01 |  | 20 | 41 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113069 | S42202A, S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 12012017 | 11102017 | 11302017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11172017 | 2017-11-17T09:37:07+00:00 |  | 000101294-01 | Rosita | Bamba | PIKE COMMUNITY HOSPITAL | 906609 | DAVID E | RODDY | 1952355679 | WAVERLY CARE CENTER INC | 928699 | 1962508069 | WAVERLY CARE CENTER INC | 1962508069 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WAVERLY CARE CENTER INC | 12012017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11142017 | 11222017 | Standard |  |  | 2017-11-14 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-11-22 |  | 2017-12-01 | 2017-12-01 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117039 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12012017 | 11142017 | 11222017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 11172017 | 2017-11-17T13:31:37+00:00 |  | 000022389-01 | ROBERT | GRAY | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 12012017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11172017 | 12012017 | Standard |  |  | 2017-11-17 | 16/rhc01= $4132.02 | 19 | 2017-12-01 |  | 2017-12-01 |  | 14 | 33 | 4132.02 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117059 | S32049D | Unsp fx fourth lum vertebra, subs for fx w routn heal | ICD10 | 12012017 | 11172017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 11202017 | 2017-11-20T09:41:35+00:00 |  | 000091092-01 | Gertrude | Blanken | FAMILY PRACTICE ASSOC | 902127 | SALLY A | ABBOTT | 1891788626 | SPRINGFIELD NURSING & INDEPENDENT LI | 911709 | 1598905838 | SPRINGFIELD NURSING & INDEPENDENT LI | 1598905838 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SPRINGFIELD NURSING & INDEPENDENT LI | 12012017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11162017 | 11172017 | Standard |  |  | 2017-11-16 | Per Diem: $200.00/day x 1 SNF Day = $200.00 | 0 | 2017-11-17 |  | 2017-11-30 |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120040 | C50912, G9341, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 12012017 | 11162017 | 11172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 11272017 | 2017-11-27T15:17:49+00:00 |  | 000096612-01 | JUDY | MCKNIGHT | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 12012017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11222017 | 11282017 | Standard |  |  | 2017-11-22 | 6 nonskilled days @ $200.00= $1200.00 | 0 | 2017-11-28 |  |  |  | 6 | 0 | 1200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128031 | M6281, Z950 | Presence of cardiac pacemaker | ICD10 | 12012017 | 11222017 | 11282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved | 7 | Revenue | RV |  |  |  | 6.0 |
| 10312017 | 2017-10-31T16:20:28+00:00 |  | 000066817-01 | RALPH | MCNEAL | KAHLON, GURJEET S | 914096 | GURJEET S | KAHLON | 1649209644 | LAURELS OF HUBER HEIGHTS | 934199 | 1871938555 | LAURELS OF HUBER HEIGHTS | 1871938555 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HUBER HEIGHTS | 12012017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10282017 | 11242017 | Standard |  |  | 2017-10-28 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 7 SNF Days = $1,400.00 Total Payment: $6,811.86 | 0 | 2017-11-24 |  | 2017-11-24 | 2017-11-30 | 27 | 27 | 6811.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031101 | Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 12012017 | 10282017 | 11242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6811 | 6811 | Approved | 28 | Revenue | RV |  |  |  | 7.0 |
| 11022017 | 2017-11-02T16:33:41+00:00 |  | 000037463-01 | ERMALEE | SHUMATE | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 12012017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11012017 | 11282017 | Standard |  |  | 2017-11-01 | Contract/RUG: 16/RHC (Per MDS) = $3,133.29 Per Diem: $200.00/day x 7 SNF Days = $1,400.00 Total Payment: $4,533.29 | 0 | 2017-11-28 |  | 2017-11-30 |  | 27 | 27 | 4533.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103004 | E860, N390, R55 | Syncope and collapse | ICD10 | 12012017 | 11012017 | 11282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4533 | 4533 | Approved | 28 | Revenue | RV |  |  |  | 7.0 |
| 11302017 | 2017-11-30T12:28:35+00:00 |  | 000108054-01 | Janey | Mohler | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 12012017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11292017 | 11302017 | Standard |  |  | 2017-11-29 | Per Diem: $250.00/day x 1 SNF Day = $250.00 | 0 | 2017-11-30 |  |  |  | 1 | 1 | 250.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130101 | S2241XD | Multiple fx of ribs, right side, subs for fx w routn heal | ICD10 | 12012017 | 11292017 | 11302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 250 | 250 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 10172017 | 2017-10-17T16:19:55+00:00 |  | 000099409-01 | Barbara | Winter | ALAM, RUKHSANA | 931810 | RUKHSANA | ALAM | 1205826732 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 12012017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 10152017 | 11022017 | Standard |  |  | 2017-10-15 | Per Diem: $250.00/day x 18 days = $4,500.00 Carve Out: IV Daptomycin (17 doses) $2,348.69 (per Invoices) Total Payment: $6,848.69 | 0 | 2017-11-02 |  |  | 2017-12-10 | 18 | 18 | 6848.69 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018031 | M00061 | Staphylococcal arthritis, right knee | ICD10 | 12012017 | 10152017 | 11022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6848 | 6848 | Approved | 19 | Revenue | RV |  |  |  | 4.0 |
| 10182017 | 2017-10-18T18:07:38+00:00 |  | 000057679-01 | JAMES | PAGE | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 12012017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10162017 | 10282017 | Standard |  |  | 2017-10-16 | PER DIEM OF $200.00/DAY X 12 DAYS=$2,400.00 CARVE OUT FOR IV, PER PHARMACY INVOICE=$1,834.46 CARVE OUT FOR WOUND VAC, PER INVOICE=$450.00 TOTAL PAYMENT TO FACILITY=$4,685.46 | 88 | 2017-10-28 |  | 2017-11-28 | 2017-11-28 | 12 | 100 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019011 | L089 | Local infection of the skin and subcutaneous tissue, unsp | ICD10 | 12012017 | 10162017 | 10282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4685 | 4685 | Approved Skilled | 13 | Revenue | RV |  |  |  | 12.0 |
| 10202017 | 2017-10-20T16:15:36+00:00 |  | 000045479-01 | BETTY | UNDERWOOD | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 12012017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10192017 | 11302017 | Standard |  |  | 2017-10-19 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 22 days = $5500.00 TOTAL PAYMENT = $12,833.11 | 0 | 2017-11-30 |  | 2017-11-30 | 2017-11-30 | 42 | 42 | 12833.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023043 | E119, I10, I2510, I69351, K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 12012017 | 10192017 | 11302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 43 | Revenue | RV |  |  |  | 8.0 |
| 11172017 | 2017-11-17T17:22:13+00:00 |  | 000017256-01 | WILMA | JENKINS | RAMALINGAM SELVARAJAH MD | 935881 | RAMALINGAM | SELVARAJAH | 1104912773 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 12012017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11152017 | 11182017 | Standard |  |  | 2017-11-15 | Contract/RUG: 17/PD1 (Per MDS) = $2,581.99 | 8 | 2017-11-18 |  | 2017-11-30 |  | 3 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120013 | E119, I509, R7881 | Bacteremia | ICD10 | 12012017 | 11152017 | 11182017 | PD101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCP | RUGS,HHRG | 1 | 1 | Approved | 4 | RUGS,HHRG | HP |  |  |  | 3.0 |
