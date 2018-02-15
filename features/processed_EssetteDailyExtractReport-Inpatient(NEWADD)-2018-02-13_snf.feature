Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-13_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-13_SNF
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
| 01262018 | 2018-01-26T15:27:39+00:00 |  | 000044239-01 | ANNA | HARRIS | CLINICAL CARE CONSULTANT | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01242018 | 02072018 | Standard |  |  | 2018-01-24 | 17/RUA01=$3,214.76 | 10 | 2018-02-07 | 2018-02-07 | 2018-02-07 | 2018-02-07 | 15 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126078 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02132018 | 01242018 | 02072018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 01092018 | 2018-01-09T13:34:47+00:00 |  | 000085218-01 | Ronald | Talbot | VALLEY MED PRIMARY CARE | 917780 | CHRISTINE B | WELLER | 1811953318 | SPRINGFIELD MASONIC COMM | 939421 | 1962510305 | SPRINGFIELD MASONIC COMMUNITY | 1962510305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SPRINGFIELD MASONIC COMMUNITY | 02132018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01102018 | 02122018 | Standard |  |  | 2018-01-10 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 10 SNF days = $2,000.00 Total Payment: $7,411.86 | 0 | 2018-02-12 |  | 2018-02-09 | 2018-02-09 | 30 | 30 | 7411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109148 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02132018 | 01102018 | 02122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7411 | 7411 | Approved | 34 | Revenue | RV |  |  |  | 3.0 |
| 01092018 | 2018-01-09T14:31:01+00:00 |  | 000042000-01 | BETTY | ARMSTRONG | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 02012018 | Standard |  |  | 2018-01-05 | 17/RUC01= $6049.81 7 DAYS @ $250.00= $1750.00 TOTAL: $7799.81 | 0 | 2018-02-01 |  | 2018-02-13 | 2018-02-13 | 27 | 27 | 7799.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110007 | A419, E878, G9341, I10, J181 | Lobar pneumonia, unspecified organism | ICD10 | 02132018 | 01052018 | 02012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7799 | 7799 | Approved | 28 | Revenue | RV |  |  |  | 1.0 |
| 01122018 | 2018-01-12T14:30:04+00:00 |  | 000114311-01 | Manuel | Pabon | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | SUMMITS TRACE HLTHCARE C | 908932 | 1588803985 | SUMMITS TRACE HEALTHCARE CENTER | 1588803985 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SUMMITS TRACE HEALTHCARE CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01282018 | Standard |  |  | 2018-01-11 | 16/RUC01=$7,333.11 | 0 | 2018-01-28 |  | 2018-02-09 | 2018-02-09 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112089 | G9349 | Other encephalopathy | ICD10 | 02132018 | 01112018 | 01282018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 01172018 | 2018-01-17T13:45:26+00:00 |  | 000026327-01 | LOIS | REED | CEN OHIO GERIATRICS LLC | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01152018 | 01252018 | Standard |  |  | 2018-01-15 | 17/RUB01=$5,813.99 | 0 | 2018-01-25 |  | 2018-02-08 |  | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117055 | M4326 | Fusion of spine, lumbar region | ICD10 | 02132018 | 01152018 | 01252018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01192018 | 2018-01-19T14:15:37+00:00 |  | 000052913-01 | CHARLES | ULRICH | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01172018 | 01312018 | Standard |  |  | 2018-01-17 | 17/RUA01= $3214.76 | 0 | 2018-01-31 |  | 2018-02-12 |  | 14 | 14 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119070 | I480, I739, I998, T8744, Z4781 | Encounter for orthopedic aftercare following surgical amp | ICD10 | 02132018 | 01172018 | 01312018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01082018 | 2018-01-08T10:04:00+00:00 |  | 000093046-01 | Thomas | Gardner | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01102018 | Standard |  |  | 2018-01-04 | 17/RMX01=$5,832.54 | 0 | 2018-01-10 |  | 2018-02-01 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108083 | I2510, A0472 | A0472 | ICD10 | 02132018 | 01042018 | 01102018 | RMX01 | MEDIUM REHAB PLUS EXTENSIVE, ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SC | RUGS,HHRG | 1 | 1 | Approved Skilled | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 01082018 | 2018-01-08T12:02:16+00:00 |  | 000109913-01 | Jacquelyn R | Redick | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02132018 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 01052018 | 01112018 | Standard |  |  | 2018-01-05 | ADMISSION DENIAL: Non skilled Per Diem: $200.00/day x 5 days = $1000.00 TOTAL PAYMENT = $1000.00 | 0 | 2018-01-11 |  |  |  | 5 | 0 | 1000.0 | 180112150934.0 |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A180108114 | Z4733 | Aftercare following explantation of knee joint prosthesis | ICD10 | 02132018 | 01052018 | 01112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 7 | Revenue | RV |  |  |  | 5.0 |
| 01242018 | 2018-01-24T14:17:26+00:00 |  | 000023510-01 | LYLE | DOLL | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02132018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01222018 | 01292018 | Standard |  |  | 2018-01-22 | 17/RUA01= $3214.76 | 0 | 2018-01-29 |  | 2018-02-13 |  | 7 | 7 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124070 | I10, I6521, N183, R339, Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 02132018 | 01222018 | 01292018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 02122018 | 2018-02-12T11:48:25+00:00 |  | 000042374-01 | Harold | Sanford | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | THE VINEYARDS AT CONCORD | 928631 | 1104905173 | THE VINEYARDS AT CONCORD | 1104905173 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE VINEYARDS AT CONCORD | 02132018 | Denied | MediGold Classic Preferred | Fax | Skilled Criteria Not Met (SNF Only) | Inpatient | 02132018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A180212081 | F0390, G9341, N390, R05, R4182, R7881 | Bacteremia | ICD10 | 02132018 | 02092018 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11202017 | 2017-11-20T15:35:08+00:00 |  | 000115484-01 | EMILY | GETTYS | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02132018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11172017 | 01042018 | Standard |  |  | 2017-11-17 | Per Diem: $200.00/day x 48 days = $9600.00 Vancomyin (per invoice) = $444.80 Meropenum (per invoice) = $1981.05 TOTAL PAYMENT = $12,025.85 | 100 | 2018-01-04 |  | 2018-01-12 |  | 48 | 52 | 12025.85 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121002 | T814XXD, T8181XD | Complication of inhalation therapy, subsequent encounter | ICD10 | 02132018 | 11172017 | 01042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 49 | Revenue | RV |  |  |  | 7.0 |
| 01082018 | 2018-01-08T17:19:09+00:00 |  | 000052365-01 | NOVA | SMITH | INPATIENT CNSLT OF OH IN | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF MIAMISBURG OH LLC | 905914 | 1184666406 | HEARTLAND OF MIAMISBURG OH LLC | 1184666406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MIAMISBURG OH LLC | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01062018 | 02122018 | Standard |  |  | 2018-01-06 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 17 SNF Days = $3,400.00 Total Payment: $8,811.86 | 0 | 2018-02-12 | 2018-02-09 | 2018-02-13 | 2018-02-13 | 37 | 37 | 8811.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109090 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 02132018 | 01062018 | 02122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8811 | 8811 | Approved | 38 | Revenue | RV |  |  |  | 4.0 |
| 01182018 | 2018-01-18T16:12:13+00:00 |  | 000105882-01 | Shirley | Bickel | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01132018 | 02052018 | Standard |  |  | 2018-01-13 | 16/RUA01= $3214.76 | 0 | 2018-02-05 |  | 2018-02-13 | 2018-02-02 | 23 | 23 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118090 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 02132018 | 01132018 | 02052018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 01192018 | 2018-01-19T12:15:57+00:00 |  | 000063148-01 | ALVYDAS | BICIUNAS | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01182018 | 02112018 | Standard |  |  | 2018-01-18 | 16/RUA01= $3214.76 | 0 | 2018-02-11 |  | 2018-02-13 | 2018-02-13 | 24 | 24 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119053 | Z951 | Presence of aortocoronary bypass graft | ICD10 | 02132018 | 01182018 | 02112018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 01192018 | 2018-01-19T16:51:42+00:00 |  | 000110954-01 | Ruth | Mault | L M GUIRNALDA MD LLC | 939630 | LEONARDO M | GUIRNALDA | 1659452498 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 02132018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01172018 | 02092018 | Standard |  |  | 2018-01-17 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 55 | 2018-02-09 | 2018-02-06 | 2018-02-13 | 2018-02-06 | 20 | 78 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122012 | N179 | Acute kidney failure, unspecified | ICD10 | 02132018 | 01172018 | 02092018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 01252018 | 2018-01-25T13:20:29+00:00 |  | 000002907-01 | ALDA | POTTEIGER | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01232018 | 02092018 | Standard |  |  | 2018-01-23 | 16/RHB01= $2690.49 | 0 | 2018-02-09 |  | 2018-02-13 | 2018-02-08 | 17 | 17 | 2690.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125079 | I6340 | Cerebral infarction due to embolism of unsp cerebral artery | ICD10 | 02132018 | 01232018 | 02092018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 02052018 | 2018-02-05T10:42:43+00:00 |  | 000037957-01 | GLADYS | GEANEKOPULOS | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02112018 | Standard |  |  | 2018-02-02 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-02-11 |  | 2018-02-13 | 2018-02-13 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205039 | S329XXD | Fx unsp parts of lumbosacr spin & pelv, 7thD | ICD10 | 02132018 | 02022018 | 02112018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 02132018 | 2018-02-13T09:19:44+00:00 |  | 000001411-01 | RUSSELL | INTERRANTE | RHEE, CHOO Y | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 02132018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02102018 | Standard |  |  | 2018-02-09 | PER DIEM RATE OF $200.00/DAY X 1 DAY= $200.00 | 0 | 2018-02-10 |  | 2018-02-13 |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213057 | I5030, N401, R1909 | Other intra-abdominal and pelvic swelling, mass and lump | ICD10 | 02132018 | 02092018 | 02102018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved Skilled | 2 | Revenue | RV |  |  |  | 1.0 |
