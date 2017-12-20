Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-19_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-19_SNF
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
| 10302017 | 2017-10-30T11:34:39+00:00 |  | 000098540-01 | Marie | Abmayr | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | ST LEONARD HEALTH CARE CENTER | 915994 | 1851387047 | ST LEONARD HEALTH CARE CENTER | 1851387047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST LEONARD HEALTH CARE CENTER | 12192017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10302017 | 12012017 | Standard |  |  | 2017-10-30 | Contract/RUG: 17/RMC (per MDS) = $3,027.33 Per Diem: $200.00/day x 12 SNF Days = $2,400.00 Total Payment: $5,427.33 | 52 | 2017-12-01 |  | 2017-12-15 | 2017-12-15 | 32 | 84 | 5427.33 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030088 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 12192017 | 10302017 | 12012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5427 | 5427 | Approved | 33 | Revenue | RV |  |  |  | 12.0 |
| 12042017 | 2017-12-04T10:53:21+00:00 |  | 000011858-01 | MARY | HAMMOND | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 12192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 12092017 | Standard |  |  | 2017-12-01 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 10 | 2017-12-09 | 2017-12-11 | 2017-12-15 | 2017-12-11 | 8 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204112 | A047, R531 | Weakness | ICD10 | 12192017 | 12012017 | 12092017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 12082017 | 2017-12-08T14:05:47+00:00 |  | 000075695-01 | Patricia | Fries | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 12192017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12072017 | 12112017 | Standard |  |  | 2017-12-07 | 17/RHB01= $3699.42 | 0 | 2017-12-11 |  | 2017-12-14 |  | 4 | 4 | 3699.42 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208085 | I639 | Cerebral infarction, unspecified | ICD10 | 12192017 | 12072017 | 12112017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 12042017 | 2017-12-04T15:51:37+00:00 |  | 000099996-01 | Terry | Wagle | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 12192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12142017 | Standard |  |  | 2017-11-30 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-12-14 |  | 2017-12-15 | 2017-12-15 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205042 | N390 | Urinary tract infection, site not specified | ICD10 | 12192017 | 11302017 | 12142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 12082017 | 2017-12-08T11:48:28+00:00 |  | 000081504-01 | Sandra | Alloy | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 12192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12072017 | 12152017 | Standard |  |  | 2017-12-07 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-12-15 |  | 2017-12-18 | 2017-12-18 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208063 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 12192017 | 12072017 | 12152017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 11272017 | 2017-11-27T17:18:37+00:00 |  | 000076157-01 | Shirley | Ward | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 12192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11252017 | 12152017 | Standard |  |  | 2017-11-25 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-12-15 |  | 2017-12-19 | 2017-12-18 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128062 | D649, I2510, J449, R55, S42002D, Z9181 | History of falling | ICD10 | 12192017 | 11252017 | 12152017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11302017 | 2017-11-30T12:07:05+00:00 |  | 000083979-01 | Donald | Bennett | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 12192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11282017 | 12112017 | Standard |  |  | 2017-11-28 | 17/RUB01 = $5813.99 | 0 | 2017-12-11 |  | 2017-12-18 | 2017-12-18 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130099 | S2239XA, S0280XA, V892XXD | Person injured in unsp motor-vehicle accident, traffic, subs | ICD10 | 12192017 | 11282017 | 12112017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 11022017 | 2017-11-02T20:23:21+00:00 |  | 000115195-01 | JOANNE | LAUER | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 12192017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 10302017 | 12142017 | Standard |  |  | 2017-10-30 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 21 days = $4,200.00 Total Payment: $10,249.81 | 0 | 2017-12-14 |  | 2017-12-15 | 2017-12-15 | 41 | 41 | 10249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103028 | M9702XD | PERIPROSTH FRACTURE AROUND INTERNAL PROSTH L HIP JT, SUBS | ICD10 | 12192017 | 10302017 | 12142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 7.0 |
| 11282017 | 2017-11-28T09:35:35+00:00 |  | 000098542-01 | Richard | Bissantz | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 12192017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 11242017 | 12142017 | Standard |  |  | 2017-11-24 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-12-14 |  | 2017-12-14 | 2017-12-15 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128073 | M169 | Osteoarthritis of hip, unspecified | ICD10 | 12192017 | 11242017 | 12142017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11292017 | 2017-11-29T14:21:19+00:00 |  | 000035597-01 | FRIEDA | PIERSON | KAHLON, GURJEET S | 914096 | GURJEET S | KAHLON | 1649209644 | LAURELS OF HUBER HEIGHTS | 934199 | 1871938555 | LAURELS OF HUBER HEIGHTS | 1871938555 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HUBER HEIGHTS | 12192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11272017 | 12172017 | Standard |  |  | 2017-11-27 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-12-17 |  | 2017-12-18 | 2017-12-19 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130050 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 12192017 | 11272017 | 12172017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 12112017 | 2017-12-11T14:32:31+00:00 |  | 000028228-01 | RICHARD | SHAW | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 12192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12082017 | 12152017 | Standard |  |  | 2017-12-08 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-12-15 |  | 2017-12-18 | 2017-12-18 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211147 | Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 12192017 | 12082017 | 12152017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 12062017 | 2017-12-06T11:53:01+00:00 |  | 000016893-01 | EVELYN | SCHILLER | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 12192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12062017 | 12182017 | Standard |  |  | 2017-12-06 | Contract/RUG: 17/RUB  (Per MDS) = $5,813.99 | 0 | 2017-12-18 |  | 2017-12-19 | 2017-12-19 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206059 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 12192017 | 12062017 | 12182017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 11062017 | 2017-11-06T11:51:31+00:00 |  | 000045419-01 | EARL | WILLIAMS | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 12192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11032017 | 12162017 | Standard |  |  | 2017-11-03 | Contract/RUG: 16/RMC (Per MDS) = $2,476.91 Per Diem: $200.00/day x 21 SNF Days = $4,200.00 Total Payment: $6,676.91 | 0 | 2017-12-16 |  | 2017-12-19 |  | 41 | 43 | 6676.91 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106102 | M6281, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 12192017 | 11032017 | 12162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6676 | 6676 | Approved | 44 | Revenue | RV |  |  |  | 2.0 |
| 11152017 | 2017-11-15T08:54:43+00:00 |  | 000092361-01 | Mary | Haggard | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 12192017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11122017 | 12122017 | Standard |  |  | 2017-11-12 | Contract/RUG: 16/RVC (Per MDS) = $3,539.19 Per Diem: $200.00/day x 5 SNF Days = $1,000.00 Total Payment: $ 4,539.19 | 0 | 2017-12-12 |  | 2017-12-19 | 2017-12-14 | 25 | 25 | 4539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115057 | S72401D | Unsp fx lower end of r femur, subs for clos fx w routn heal | ICD10 | 12192017 | 11122017 | 12122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4539 | 4539 | Approved | 31 | Revenue | RV |  |  |  | 5.0 |
