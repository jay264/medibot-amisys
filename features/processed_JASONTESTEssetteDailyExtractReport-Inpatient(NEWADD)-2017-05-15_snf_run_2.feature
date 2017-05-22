Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-15_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-15_SNF
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
| 02232017 | 2017-02-23T11:36:29+00:00 |  | 000015824-01 | RUTH | BROWN | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | SANTE OF SURPRISE | 949704 | 1992096101 | SANTE OF SURPRISE | 1992096101 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SANTE OF SURPRISE | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02242017 | 03162017 | Standard |  |  | 2017-02-24 | Per MDS and SCA: RUC01 = $6049.81 TOTAL PAYMENT = $6049.81 | 0 | 2017-03-17 |  | 2017-05-12 | 2017-05-15 | 21 | 21 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170224045 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 05152017 | 02242017 | 03172017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03172017 | 2017-03-17T14:38:29+00:00 |  | 000078210-01 | Katrina | Whitesed | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 05152017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-03-15 | 17/RVX01=$6,171.24 Per diem rate of $200.00/day x 31 days=$6,200.00 Total paymet=$12,371.24 | 26 | 2017-05-05 |  | 2017-05-10 | 2017-05-10 | 51 | 77 | 12371.24 | 170322091486.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170317038 | A047, J0410, J189 | Pneumonia, unspecified organism | ICD10 | 05152017 | 03152017 | 05052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 8 | Revenue | RV |  |  |  | 44.0 |
| 03312017 | 2017-03-31T16:39:41+00:00 |  | 000019967-01 | RUTH | STONE | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | WEXNER HERITAGE HOUSE | 939320 | 1932197704 | WEXNER HERITAGE HOUSE | 1932197704 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEXNER HERITAGE HOUSE | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-04 | OON/case rate only, RVB01=$5,411.86/CSA contract | 0 | 2017-05-01 |  | 2017-05-02 | 2017-05-02 | 28 | 28 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170403099 | N390, R4182 | Altered mental status, unspecified | ICD10 | 05152017 | 04032017 | 05012017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 03312017 | 2017-03-31T17:42:31+00:00 |  | 000012798-01 | GENE | BUSSEY | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-03-29 | 17/RVC01=$6,306.19 Per diem rate of $200.00/day x 3 days=$600.00 Total payment $6,906.19 | 0 | 2017-04-21 |  | 2017-04-23 | 2017-04-20 | 23 | 23 | 6906.19 | 170404093568.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170403103 | N179 | Acute kidney failure, unspecified | ICD10 | 05152017 | 03292017 | 04212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6906 | 6906 | Approved | 8 | Revenue | RV |  |  |  | 31.0 |
| 04102017 | 2017-04-10T12:10:29+00:00 |  | 000079099-01 | Kenneth | Dobbin | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 05152017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Inpatient | 04062017 | 05042017 | Standard |  |  | 2017-04-06 | 17/RVC01=$6306.19 9 DAYS @ $200.00=$1800.00 TOTAL: $8106.19 | 21 | 2017-05-05 |  | 2017-05-15 | 2017-05-15 | 29 | 50 | 81069.19 | 170412095336.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170410040 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05152017 | 04062017 | 05052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8106 | 8106 | Approved | 29 | Revenue | RV |  |  |  | 9.0 |
| 04102017 | 2017-04-10T15:51:44+00:00 |  | 000027081-01 | CARMELLA | ALBERTS | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-08 | 16/RHC01=$3,133.29 | 0 | 2017-04-17 |  | 2017-05-10 |  | 9 | 9 | 3133.29 | 170412095365.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170411018 | L03116 | Cellulitis of left lower limb | ICD10 | 05152017 | 04082017 | 04172017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 04132017 | 2017-04-13T09:45:38+00:00 |  | 000081840-01 | Betty | Meuser | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 05152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-03-24 | 17/RVB01=$5,411.86 Per diem rate of $250.00/day x 10 days=$2,500.00 Total payment=$7,911.86 | 0 | 2017-04-28 |  | 2017-04-12 | 2017-05-15 | 30 | 30 | 7911.86 | 170417096054.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413038 | R296 | Repeated falls | ICD10 | 05152017 | 03242017 | 04282017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 30.0 |
| 04132017 | 2017-04-13T12:06:24+00:00 |  | 000110134-01 | Alice | Greenlee | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | LP WASHINGTON CH LLC | 930093 | 1063846020 | LP WASHINGTON CH LLC | 1063846020 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LP WASHINGTON CH LLC | 05152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04122017 | 04252017 | Standard |  |  | 2017-04-12 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-04-26 |  | 2017-05-12 | 2017-05-12 | 14 | 14 | 5813.99 | 170417096064.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413061 | M6281, N390 | Urinary tract infection, site not specified | ICD10 | 05152017 | 04122017 | 04262017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04142017 | 2017-04-14T15:27:57+00:00 |  | 000115343-01 | JUNE | DAVIS | CNP OPERATING CO LLC | 913181 | JEROLD A | MEYER | 1821093881 | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF COSHOCTON | 05152017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Inpatient | 04132017 | 05112017 | Standard |  |  | 2017-04-13 | 17/RVC01=$8106.19 | 0 | 2017-05-12 |  | 2017-05-11 | 2017-05-11 | 29 | 29 | 8106.19 | 170418096354.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417009 | E441 | Mild protein-calorie malnutrition | ICD10 | 05152017 | 04132017 | 05122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8106 | 8106 | Approved | 29 | Revenue | RV |  |  |  | 29.0 |
| 04142017 | 2017-04-14T16:07:38+00:00 |  | 000074949-01 | Lutie | Slussar | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 05152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 04122017 | 04262017 | Standard |  |  | 2017-04-12 | 17/RVB01=$5411.86 | 25 | 2017-04-27 |  | 2017-05-15 | 2017-05-15 | 15 | 40 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417017 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 05152017 | 04122017 | 05272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 04172017 | 2017-04-17T10:27:16+00:00 |  | 000008455-01 | MARY | BARRY | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-14 | 16/RUB01=$4,429.71 | 14 | 2017-05-03 |  | 2017-05-10 | 2017-05-10 | 19 | 33 | 4429.71 | 170418096415.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417036 | J40 | Bronchitis, not specified as acute or chronic | ICD10 | 05152017 | 04142017 | 05032017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 04172017 | 2017-04-17T13:31:44+00:00 |  | 000023771-01 | Wilburt | Sills | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | CAMBRIDGE HEALTHCARE AND | 930700 | 1053662429 | ASTORIA PLACE OF CAMBRIDGE | 1053662429 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF CAMBRIDGE | 05152017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Inpatient | 04152017 | 04242017 | Standard |  |  | 2017-04-15 | 17/RVA01=$3586.28 | 0 | 2017-04-25 |  | 2017-05-15 | 2017-05-15 | 10 | 10 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417076 | M62271 | Nontraumatic ischemic infarction of muscle, right ank/ft | ICD10 | 05152017 | 04152017 | 04252017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 04192017 | 2017-04-19T14:44:28+00:00 |  | 000058907-01 | ANNIE | KING | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-18 | 16/RUA01=$3,214.76 | 0 | 2017-05-02 |  | 2017-05-10 | 2017-05-10 | 14 | 14 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419090 | M1990, M6281 | Muscle weakness (generalized) | ICD10 | 05152017 | 04182017 | 05022017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04202017 | 2017-04-20T11:56:27+00:00 |  | 000039675-01 | ROSE | VANDYKE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 05152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 04182017 | 05032017 | Standard |  |  | 2017-04-18 | 17/RUB01=$5813.99 | 0 | 2017-05-04 |  | 2017-05-15 | 2017-05-15 | 16 | 16 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420053 | R0789 | Other chest pain | ICD10 | 05152017 | 04182017 | 05042017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 04202017 | 2017-04-20T15:59:19+00:00 |  | 000021994-01 | BONNIE | SCHRILLS | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-19 | 16/RUB01=$4,429.71 | 0 | 2017-04-29 |  | 2017-05-11 | 2017-05-11 | 10 | 10 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421015 | I4891, M6281, R1311, R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 05152017 | 04192017 | 04292017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 04212017 | 2017-04-21T15:22:11+00:00 |  | 000014757-01 | RONALD | LATZ | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-20 | 16/RHB01=$2,690.49 | 0 | 2017-04-24 |  | 2017-05-10 |  | 4 | 4 | 2690.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424028 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05152017 | 04202017 | 04242017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 04222017 | 2017-04-22T11:03:24+00:00 |  | 000116841-01 | James | Klontz | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 05152017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 04202017 | 04272017 | Standard |  |  | 2017-04-20 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-04-28 |  | 2017-05-11 | 2017-05-11 | 8 | 8 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424036 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05152017 | 04202017 | 04282017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 04242017 | 2017-04-24T08:35:53+00:00 |  | 000038355-01 | EMMA | CROSTHWAITE | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04192017 | 05082017 | Standard |  |  | 2017-04-19 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-05-09 |  | 2017-05-11 | 2017-05-11 | 20 | 20 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424064 | M19019 | Primary osteoarthritis, unspecified shoulder | ICD10 | 05152017 | 04192017 | 05092017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04252017 | 2017-04-25T14:14:22+00:00 |  | 000003408-01 | RUTH | ANDERSON | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04232017 | 05112017 | Standard |  |  | 2017-04-23 | Per MDS: 17/RVC01 = $6306.19 TOTAL PAYMENT = $6306.19 | 0 | 2017-05-12 |  | 2017-05-15 | 2017-05-15 | 19 | 19 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425131 | I480, Z5189 | Encounter for other specified aftercare | ICD10 | 05152017 | 04232017 | 05122017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 04252017 | 2017-04-25T15:24:29+00:00 |  | 000021233-01 | DOROTHY | MINOR | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-24 | 16/RUC01=$7,333.11 | 26 | 2017-05-13 |  | 2017-05-15 | 2017-05-11 | 20 | 46 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426010 | J189 | Pneumonia, unspecified organism | ICD10 | 05152017 | 04242017 | 05132017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04252017 | 2017-04-25T16:22:02+00:00 |  | 000106587-01 | Christopher | Jarrells | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 05152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04212017 | 05102017 | Standard |  |  | 2017-04-21 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-05-11 |  | 2017-05-12 | 2017-05-12 | 20 | 20 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426034 | I951 | Orthostatic hypotension | ICD10 | 05152017 | 04212017 | 05112017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04272017 | 2017-04-27T12:40:36+00:00 |  | 000053568-01 | JUDITH | KELLER | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04252017 | 05102017 | Standard |  |  | 2017-04-25 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-05-11 | 2017-05-12 | 2017-05-12 | 2017-05-12 | 16 | 16 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428008 | S42202D | Unsp fx upper end of l humerus, subs for fx w routn heal | ICD10 | 05152017 | 04252017 | 05112017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 04282017 | 2017-04-28T15:10:07+00:00 |  | 000032580-01 | GERALD | HALL | INPATIENT CNSLT OF OH IN | 905607 | CHUKWUMA E | EZE | 1154419521 | HEARTLAND OF MIAMISBURG OH LLC | 905914 | 1184666406 | HEARTLAND OF MIAMISBURG OH LLC | 1184666406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MIAMISBURG OH LLC | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04252017 | 05062017 | Standard |  |  | 2017-04-25 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-05-07 | 2017-05-02 | 2017-05-11 | 2017-05-11 | 12 | 12 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501101 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 05152017 | 04252017 | 05072017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 04282017 | 2017-04-28T16:03:34+00:00 |  | 000031327-01 | TEX | STUMP | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-26 | 16/LD201=$4,114.96 | 0 | 2017-05-01 |  | 2017-05-10 |  | 5 | 5 | 4114.96 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501127 | G9340, K261 | Acute duodenal ulcer with perforation | ICD10 | 05152017 | 04262017 | 05012017 | LD201 | SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 05012017 | 2017-05-01T10:37:55+00:00 |  | 000017090-01 | SADIE | EAGLE | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-28 | 17/RUA01=$3,214.76 | 0 | 2017-05-08 |  | 2017-05-11 | 2017-05-11 | 10 | 10 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502024 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 05152017 | 04282017 | 05082017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 05012017 | 2017-05-01T11:11:37+00:00 |  | 000027330-01 | JOSEPH | HESTER | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04292017 | 05122017 | Standard |  |  | 2017-04-29 | Per MDS: 17/RVC01 = $6306.19 | 16 | 2017-05-13 |  | 2017-05-15 | 2017-05-15 | 14 | 30 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502042 | Z96641 | Presence of right artificial hip joint | ICD10 | 05152017 | 04292017 | 05132017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 05012017 | 2017-05-01T11:12:49+00:00 |  | 000084517-01 | Pearl | Nelson | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-28 | 17/RVC01=$6,306.19 | 0 | 2017-05-12 |  | 2017-05-11 | 2017-05-11 | 14 | 14 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502043 | J441, R0602 | Shortness of breath | ICD10 | 05152017 | 04282017 | 05122017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05012017 | 2017-05-01T14:10:51+00:00 |  | 000033269-01 | GILDA | BRUMFIELD | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 05152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 04282017 | 05072017 | Standard |  |  | 2017-04-28 | 17/RVB01=$5411.86 | 0 | 2017-05-08 |  | 2017-05-15 | 2017-05-15 | 10 | 10 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502081 | R4182 | Altered mental status, unspecified | ICD10 | 05152017 | 04282017 | 05082017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 05012017 | 2017-05-01T15:40:08+00:00 |  | 000032085-01 | JUDITH | HAWK | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-28 | 16/RUC01=$7,333.11 | 0 | 2017-05-13 |  | 2017-05-15 | 2017-05-11 | 15 | 15 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502089 | N19 | Unspecified kidney failure | ICD10 | 05152017 | 04282017 | 05132017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05022017 | 2017-05-02T07:12:55+00:00 |  | 000025378-01 | PHYLLIS | MAXWELL | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 05222017 | Standard |  |  | 2017-04-29 | 16/RUB01=$4,429.71 | 0 | 2017-05-09 | 2017-05-12 | 2017-05-12 | 2017-05-12 | 10 | 10 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502097 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 05152017 | 04292017 | 05092017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 05022017 | 2017-05-02T15:07:38+00:00 |  | 000005785-01 | MIRIAM | GARVER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 05152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 04292017 | 05092017 | Standard |  |  | 2017-04-29 | 17/RVC01=$6306.19 | 0 | 2017-05-10 |  | 2017-05-15 | 2017-05-15 | 11 | 11 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503049 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 05152017 | 04292017 | 05102017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05022017 | 2017-05-02T17:21:51+00:00 |  | 000100080-01 | Dennis | Neumann | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | ARBORS AT SPRINGFIELD | 943322 | 1467850305 | ARBORS AT SPRINGFIELD | 1467850305 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT SPRINGFIELD | 05152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04292017 | 05092017 | Standard |  |  | 2017-04-29 | Per Diem: $200.00/day x 11 days = $2,200.00 | 0 | 2017-05-10 |  | 2017-05-11 |  | 11 | 11 | 2200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503061 | I421 | Obstructive hypertrophic cardiomyopathy | ICD10 | 05152017 | 04292017 | 05102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2200 | 2200 | Approved | 11 | Revenue | RV |  |  |  | 11.0 |
| 05032017 | 2017-05-03T09:12:18+00:00 |  | 000020190-01 | ALMA | BALL | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 05152017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05012017 | 05112017 | Standard |  |  | 2017-05-01 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-05-12 | 2017-05-12 | 2017-05-12 | 2017-05-12 | 11 | 11 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504009 | K819 | Cholecystitis, unspecified | ICD10 | 05152017 | 05012017 | 05122017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05052017 | 2017-05-05T08:45:22+00:00 |  | 000033535-01 | NANCY | ABBITT | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 05152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 05032017 | 05112017 | Standard |  |  | 2017-05-03 | 17/RUB01=$5813.99 | 0 | 2017-05-11 |  | 2017-05-15 | 2017-05-15 | 9 | 9 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505045 | S7221XD | Displ subtrochnt fx r femur, subs for clos fx w routn heal | ICD10 | 05152017 | 05032017 | 05122017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 05112017 | 2017-05-11T10:30:41+00:00 |  | 000109925-01 | Betty | Adams | DR. RICHARD B DARR M.D. | 908667 | RICHARD B | DARR | 1477565133 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 05152017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05082017 | 05092017 | Standard |  |  | 2017-05-08 | Per Diem: $200.00/day x 2 SNF days = $400.00 | 0 | 2017-05-10 |  |  | 2017-05-11 | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511032 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 05152017 | 05082017 | 05102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
