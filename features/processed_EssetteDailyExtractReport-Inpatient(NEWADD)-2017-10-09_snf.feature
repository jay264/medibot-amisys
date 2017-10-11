Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-09_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-09_SNF
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
| 09202017 | 2017-09-20T17:20:44+00:00 |  | 000051581-01 | KANWARD | FAULK | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 10092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09192017 | 10082017 | Standard |  |  | 2017-09-19 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-10-08 |  | 2017-10-09 | 2017-10-09 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921067 | A419, G9349, J449, L03113, N179, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 10092017 | 09192017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 09222017 | 2017-09-22T15:16:05+00:00 |  | 000111263-01 | Thomas | Holtz | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 10092017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09202017 | 10022017 | Standard |  |  | 2017-09-20 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-10-02 |  | 2017-10-06 | 2017-10-06 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922070 | S0990XD | Unspecified injury of head, subsequent encounter | ICD10 | 10092017 | 09202017 | 10022017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 06292017 | 2017-06-29T14:42:19+00:00 |  | 000033073-01 | MARGARET | FATHBRUCKNER | CEN OHIO GERIATRICS LLC | 942662 | JAYNINE D | VADO | 1073808408 | SARAH MOORE HLTH CARE CT | 902427 | 0 | SARAH MOORE HEALTH CARE CTR | 0 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SARAH MOORE HEALTH CARE CTR | 10092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06282017 | 07172017 | Standard |  |  | 2017-06-28 | 9 DAYS @ $250.00= $2250.00 6 DAYS @ $200.00= $1200.00 IV MEROPENEM per invoices=$213.52 TOTAL : $3663.52 | 26 | 2017-07-17 |  | 2017-07-20 | 2017-07-20 | 16 | 42 | 3663.52 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629085 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 10092017 | 06282017 | 07172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3663 | 3663 | Approved | 20 | Revenue | RV |  |  |  | 15.0 |
| 10032017 | 2017-10-03T14:35:21+00:00 |  | 000089339-01 | Margaret | Nichols | JS AESTHETICS | 906812 | JODI I | SPERBER | 1770569741 | PATRIOT RIDGE COMMUNITY | 913103 | 1528041647 | PATRIOT RIDGE COMMUNITY | 1528041647 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATRIOT RIDGE COMMUNITY | 10092017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 09052017 | 09072017 | Standard |  |  | 2017-09-05 | $200.00/day x 2 Non-Skilled Days = $400.00 | 0 | 2017-09-07 |  |  |  | 0 | 0 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A171003079 | N179 | Acute kidney failure, unspecified | ICD10 | 10092017 | 09052017 | 09072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved Unskilled | 3 | Revenue | RV |  |  |  | 2.0 |
| 09202017 | 2017-09-20T09:53:03+00:00 |  | 000085831-01 | Virginia | Bowman | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | GREYSTONE HEALTH & REHABILITATION CE | 942955 | 1326438128 | GREYSTONE HEALTH & REHABILITATION CE | 1326438128 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREYSTONE HEALTH & REHABILITATION CE | 10092017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 09182017 | 10072017 | Standard |  |  | 2017-09-18 | 17/RUB01= $5813.99 | 0 | 2017-10-07 |  | 2017-10-09 | 2017-10-09 | 19 | 19 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920086 | Z48813 | Encntr for surgical aftcr following surgery on the resp sys | ICD10 | 10092017 | 09182017 | 10072017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 09262017 | 2017-09-26T09:39:31+00:00 |  | 000082795-01 | LAWRENCE | RIESTENBERG | MERCY HEALTH PHYSICIANS | 921387 | JOHN J | LEISGANG | 1407802754 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 10092017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 09222017 | 10072017 | Standard |  |  | 2017-09-22 | Contract/RUG: 16/RUA (Per MDS) = $3,214.76 | 0 | 2017-10-07 |  | 2017-10-09 | 2017-10-09 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926058 | M1711, Z96652 | Presence of left artificial knee joint | ICD10 | 10092017 | 09222017 | 10072017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 07252017 | 2017-07-25T08:59:02+00:00 |  | 000091622-01 | Ida | Barks | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | CEDAR HILL CARE CENTER | 924191 | 1326035130 | CEDAR HILL CARE CENTER | 1326035130 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CEDAR HILL CARE CENTER | 10092017 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 07222017 | 09182017 | Standard |  |  | 2017-07-22 | 17/RVB01= $5411.86 38 DAYS @ $200.00= $7600.00 TOTAL: $13011.86 | 29 | 2017-09-18 |  | 2017-09-15 | 2017-10-09 | 58 | 87 | 13011.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725029 | S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 10092017 | 07222017 | 09182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 59 | Revenue | RV |  |  |  | 2.0 |
| 09142017 | 2017-09-14T14:00:43+00:00 |  | 000111051-01 | Elizabeth | Swank | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 10092017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 09132017 | 10072017 | Standard |  |  | 2017-09-13 | Contract/RUG: 16/RVC (Per MDS) = $3,539.19 | 0 | 2017-10-07 |  | 2017-10-09 | 2017-10-09 | 20 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915009 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10092017 | 09132017 | 10072017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 08302017 | 2017-08-30T15:18:18+00:00 |  | 000095777-01 | Charles | Kramer | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | CEDAR HILL CARE CENTER | 924191 | 1326035130 | CEDAR HILL CARE CENTER | 1326035130 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CEDAR HILL CARE CENTER | 10092017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08282017 | 09302017 | Standard |  |  | 2017-08-28 | 17/RUA01= $321.76 2 DAYS @ $250.00= $500.00 11 DAYS @ @00.00= $2200.00 TOTAL: $5914.76 | 45 | 2017-09-30 |  | 2017-09-22 | 2017-10-09 | 33 | 78 | 5914.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830081 | S98132A | Complete traumatic amputation of one left lesser toe, init | ICD10 | 10092017 | 08282017 | 09302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5914 | 5914 | Approved | 34 | Revenue | RV |  |  |  | 6.0 |
| 09112017 | 2017-09-11T10:08:54+00:00 |  | 000084321-01 | Paul | Thomas | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | CEDAR HILL CARE CENTER | 924191 | 1326035130 | CEDAR HILL CARE CENTER | 1326035130 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CEDAR HILL CARE CENTER | 10092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 09082017 | 09162017 | Standard |  |  | 2017-09-08 | 17/RUB01= $5813.99 | 0 | 2017-09-16 |  | 2017-10-09 | 2017-10-09 | 8 | 8 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911068 | Z952 | Presence of prosthetic heart valve | ICD10 | 10092017 | 09082017 | 09162017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
