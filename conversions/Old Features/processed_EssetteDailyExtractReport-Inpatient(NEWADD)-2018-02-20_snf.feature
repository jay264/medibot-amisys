Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-20_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-20_SNF
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
| 01232018 | 2018-01-23T16:30:52+00:00 |  | 000077344-01 | Joyce | Gessel | ALTERCARE OF HARTVILLE C | 953067 |  | ALTERCARE OF HARTVILLE CTR FOR REHAB | 1750353363 | ALTERCARE OF HARTVILLE C | 953067 | 1750353363 | ALTERCARE OF HARTVILLE CTR FOR REHAB | 1750353363 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HARTVILLE CTR FOR REHAB | 02202018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 01312018 | 02092018 | Standard |  |  | 2018-01-31 | Per MDS/SCA: RVC01 = $6306.19 | 0 | 2018-02-09 |  | 2018-02-16 |  | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124003 | E161 | Other hypoglycemia | ICD10 | 02202018 | 01312018 | 02092018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01262018 | 2018-01-26T16:51:19+00:00 |  | 000053503-01 | PATRICIA | ANDERSON | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 02202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01252018 | 02182018 | Standard |  |  | 2018-01-25 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2018-02-18 | 2018-02-15 | 2018-02-19 | 2018-02-19 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129053 | E785, I619, I69320, R031, R4701 | Aphasia | ICD10 | 02202018 | 01252018 | 02182018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 01302018 | 2018-01-30T09:48:50+00:00 |  | 000078767-01 | Karen | Phillabaum | HEARTLAND WOODRIDGE OF F | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 02202018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02152018 | Standard |  |  | 2018-01-26 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-02-15 |  | 2018-02-18 | 2018-02-18 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130072 | M6281 | Muscle weakness (generalized) | ICD10 | 02202018 | 01262018 | 02152018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01302018 | 2018-01-30T11:29:19+00:00 |  | 000055168-01 | RAYMOND | HIEATT | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 02202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01282018 | 02172018 | Standard |  |  | 2018-01-28 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-02-17 |  | 2018-02-19 |  | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130096 | R918, Z5189 | Encounter for other specified aftercare | ICD10 | 02202018 | 01282018 | 02172018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01302018 | 2018-01-30T16:19:10+00:00 |  | 000039290-01 | MILDRED | BELLEW | DILEY MEDICAL GROUP LLC | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 02202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01282018 | 02192018 | Standard |  |  | 2018-01-28 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-02-19 | 2018-02-19 | 2018-02-19 | 2018-02-19 | 22 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131058 | Z9049 | Acquired absence of other specified parts of digestive tract | ICD10 | 02202018 | 01282018 | 02192018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 01302018 | 2018-01-30T16:19:10+00:00 |  | 000061427-01 | EDWARD | MUNYAN | DILEY MEDICAL GROUP LLC | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 02202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01272018 | 02162018 | Standard |  |  | 2018-01-27 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-02-16 |  | 2018-02-19 | 2018-02-19 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131062 | J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 02202018 | 01272018 | 02162018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01222018 | 2018-01-22T10:00:56+00:00 |  | 000095613-01 | Sammie | Cooper Jr | DAVID EUGENE RODDY | 906609 | DAVID E | RODDY | 1952355679 | PLEASANT HILL LEASING LL | 948748 | 1558729806 | PLEASANT HILL MANOR | 1558729806 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PLEASANT HILL MANOR | 02202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 02152018 | Standard |  |  | 2018-01-19 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 7 days = $1750.00 TOTAL PAYMENT = $7799.81 | 0 | 2018-02-15 |  | 2018-02-08 |  | 27 | 27 | 7799.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122071 | I639, J189 | Pneumonia, unspecified organism | ICD10 | 02202018 | 01192018 | 02152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7799 | 7799 | Approved | 28 | Revenue | RV |  |  |  | 7.0 |
| 01232018 | 2018-01-23T09:08:09+00:00 |  | 000053371-01 | NANCY | HALEY | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 02202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01192018 | 02052018 | Standard |  |  | 2018-01-19 | Contract/RUG: 17/HC1 (Per MDS) = $3,481.78 | 0 | 2018-02-05 |  | 2018-02-18 | 2018-02-18 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123018 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 02202018 | 01192018 | 02052018 | HC101 | SPECIAL CARE HIGH , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01262018 | 2018-01-26T16:23:04+00:00 |  | 000068310-01 | DONNA | RUSSELL | COLS INPATIENT CARE INC | 919184 | ASHITA | SINHA | 1821110693 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01252018 | 02142018 | Standard |  |  | 2018-01-25 | 17/RUC01=$6,049.81 | 0 | 2018-02-14 |  | 2018-02-16 | 2018-02-16 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129042 | L0390, S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 02202018 | 01252018 | 02142018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01292018 | 2018-01-29T15:32:16+00:00 |  | 000090450-01 | Miriam | Clements | HEARTLAND WOODRIDGE OF F | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 02202018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 01232018 | 02122018 | Standard |  |  | 2018-01-23 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-02-12 |  | 2018-02-18 | 2018-02-18 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130038 | N390 | Urinary tract infection, site not specified | ICD10 | 02202018 | 01232018 | 02122018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02012018 | 2018-02-01T14:48:03+00:00 |  | 000044382-01 | DOROTHY | STYERS | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LOGAN HEALTHCARE LEASING | 951357 | 1073053070 | LOGAN CARE & REHABILITATION | 1073053070 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LOGAN CARE & REHABILITATION | 02202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01312018 | 02172018 | Standard |  |  | 2018-01-31 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2018-02-17 |  | 2018-02-20 |  | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201069 | G936, H53453, I629, I680 | Cerebral amyloid angiopathy | ICD10 | 02202018 | 01312018 | 02172018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 02012018 | 2018-02-01T15:33:25+00:00 |  | 000030949-01 | RICHARD | CONRAD | BERGER HEALTH PARTNERS | 913727 | KEVIN M | SELLERS | 1306085220 | LOGAN ELM HLTH CARE CTR | 904042 | 1326022898 | LOGAN ELM HEALTH CARE CENTER | 1326022898 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LOGAN ELM HEALTH CARE CENTER | 02202018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02012018 | 02132018 | Standard |  |  | 2018-02-01 | Per MDS: 16/RVX01 = $5485.55 | 0 | 2018-02-13 |  | 2018-02-19 |  | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202008 | I2510, I4891, I509, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02202018 | 02012018 | 02132018 | RVX01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 11-16/STAND-ALONE OBRA SCSA O | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
