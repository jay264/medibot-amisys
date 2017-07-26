Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-21_thru_2017-07-23_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-21_thru_2017-07-23_SNF
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
| 06082017 | 2017-06-08T12:12:15+00:00 |  | 000112903-01 | Hazel | Condon | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 07212017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 06062017 | 06222017 | Standard |  |  | 2017-06-06 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-06-23 |  | 2017-07-07 | 2017-07-07 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608053 | I10 | Essential (primary) hypertension | ICD10 | 07212017 | 06062017 | 06232017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 06152017 | 2017-06-15T16:42:24+00:00 |  | 000012728-01 | DORCAS | SWANGER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 07212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06132017 | 06172017 | Standard |  |  | 2017-06-13 | 5 DAYS @ $200.00= $1000.00 | 0 | 2017-06-18 |  | 2017-07-21 |  | 5 | 5 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616022 | M6281 | Muscle weakness (generalized) | ICD10 | 07212017 | 06132017 | 06182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
| 06192017 | 2017-06-19T11:22:45+00:00 |  | 000083496-01 | George | Neiswender | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 07212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06192017 | 07022017 | Standard |  |  | 2017-06-19 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-07-03 |  | 2017-07-11 | 2017-07-11 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619096 | G20, G9341, N390 | Urinary tract infection, site not specified | ICD10 | 07212017 | 06192017 | 07032017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 06202017 | 2017-06-20T11:47:53+00:00 |  | 000065432-01 | Krista | Overly | MILLER, BRUCE P | 903797 | BRUCE P | MILLER | 1336208313 | UTICA CARE CENTER | 941109 | 1386618494 | UTICA CARE CENTER | 1386618494 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | UTICA CARE CENTER | 07212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06192017 | 07062017 | Standard |  |  | 2017-06-19 | OUT OF NETWORK RVB01=$5411.86 | 0 | 2017-07-07 |  | 2017-07-20 | 2017-07-20 | 18 | 18 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620092 | M25562, M25662, M6281, R2689 | Other abnormalities of gait and mobility | ICD10 | 07212017 | 06192017 | 07072017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 06262017 | 2017-06-26T14:42:20+00:00 |  | 000113311-01 | Larry | Scott | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | VALLEY VIEW CARE CENTER | 909041 | 1972578045 | VALLEY VIEW CARE CENTER | 1972578045 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VALLEY VIEW CARE CENTER | 07212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06242017 | 07132017 | Standard |  |  | 2017-06-24 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2017-07-14 |  | 2017-07-14 | 2017-07-14 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626124 | Z96651 | Presence of right artificial knee joint | ICD10 | 07212017 | 06242017 | 07142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 06272017 | 2017-06-27T10:02:57+00:00 |  | 000110519-01 | BETTY | HERZOG | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 07212017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 06212017 | 07132017 | Standard |  |  | 2017-06-21 | Contract/RUG: 17/RUA (per MDS) = $3,214.76 | 0 | 2017-07-14 | 2017-07-17 | 2017-07-17 | 2017-07-17 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627069 | I495, Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 07212017 | 06212017 | 07142017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 07122017 | 2017-07-12T09:24:33+00:00 |  | 000007441-01 | FRANCES | PERRY | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 07212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07102017 | 07172017 | Standard |  |  | 2017-07-10 | 16/RVA01=$2689.71 | 0 | 2017-07-18 |  | 2017-07-20 | 2017-07-20 | 8 | 8 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712029 | J189, M6281 | Muscle weakness (generalized) | ICD10 | 07212017 | 07102017 | 07182017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07122017 | 2017-07-12T10:44:17+00:00 |  | 000102001-01 | E N | Babcock | CEN OHIO GERIATRICS LLC | 942662 | JAYNINE D | VADO | 1073808408 | SARAH MOORE HEALTH CARE CENTER | 946271 | 1063476802 | SARAH MOORE HEALTH CARE CENTER | 1063476802 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SARAH MOORE HEALTH CARE CENTER | 07212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07102017 | 07162017 | Standard |  |  | 2017-07-10 | 17/RUA01=$3214.76 | 0 | 2017-07-17 |  | 2017-07-20 | 2017-07-20 | 7 | 7 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712034 | M4326 | Fusion of spine, lumbar region | ICD10 | 07212017 | 07102017 | 07072017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 07132017 | 2017-07-13T12:01:41+00:00 |  | 000051145-01 | RICHARD | SOUTHWORTH | FCMH MED & SURG ASSOC | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 07212017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07122017 | 07192017 | Standard |  |  | 2017-07-12 | Swing Bed Daily Rate | 0 | 2017-07-20 |  |  | 2017-07-18 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713045 | Z5189 | Encounter for other specified aftercare | ICD10 | 07212017 | 07122017 | 07202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 8 | Revenue | RV |  |  |  | 3.0 |
| 07212017 | 2017-07-21T10:44:51+00:00 |  | 000085568-01 | Richard | Bruce | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 07212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07192017 | 07202017 | Standard |  |  | 2017-07-19 | 2 days @ $200.00=$400.00 | 0 | 2017-07-21 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721049 | A419 | Sepsis, unspecified organism | ICD10 | 07212017 | 07192017 | 07212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
| 07132017 | 2017-07-13T14:12:43+00:00 |  | 000116127-01 | Donna | Reynolds | LICKING MEM HEART CTR | 937200 | IMTIAZ | AHMED | 1407916505 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 07212017 | Denied Skilled - Pay Unskilled | MediGold Essential Care | Fax |  | Inpatient | 07122017 | 07162017 | Standard |  |  | 2017-07-12 | $200.00/day for 5 non-skilled days = $1,000.00 | 0 | 2017-07-17 |  |  |  | 0 | 0 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170713061 | M6281, Z471, Z96641 | Presence of right artificial hip joint | ICD10 | 07212017 | 07122017 | 07172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
