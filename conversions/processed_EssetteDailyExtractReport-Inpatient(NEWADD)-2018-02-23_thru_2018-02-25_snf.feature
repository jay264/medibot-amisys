Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-23_thru_2018-02-25_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-23_thru_2018-02-25_SNF
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
| 01232018 | 2018-01-23T13:35:38+00:00 |  | 000034228-01 | CRETA | MOREHEAD | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01222018 | 02172018 | Standard |  |  | 2018-01-22 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $200.00/day x 6 days = $1200.00 TOTAL PAYMENT = $6611.86 | 0 | 2018-02-17 |  | 2018-02-22 | 2018-02-16 | 26 | 26 | 6611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123078 | S22080G, S33141D | Dislocation of L4/L5 lumbar vertebra, subsequent encounter | ICD10 | 02232018 | 01222018 | 02172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6611 | 6611 | Approved | 27 | Revenue | RV |  |  |  | 6.0 |
| 01312018 | 2018-01-31T09:18:56+00:00 |  | 000081933-01 | Lora | Dement | HOSPICE OF CENTRAL OHIO | 935546 | THOMAS K | PETRYK | 1245210244 | THORNVILLE HEALTH & REHABILITATION C | 939903 | 1689064487 | THORNVILLE HEALTH & REHABILITATION C | 1689064487 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THORNVILLE HEALTH & REHABILITATION C | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01292018 | 02172018 | Standard |  |  | 2018-01-29 | Per MDS: 17/RUB01 = $5813.99 | 2 | 2018-02-17 |  | 2018-02-22 | 2018-02-22 | 19 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131088 | R52 | Pain, unspecified | ICD10 | 02232018 | 01292018 | 02172018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 12152017 | 2017-12-15T09:30:21+00:00 |  | 000050048-01 | DENNIE | HEMBREE | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12122017 | 02222018 | Standard |  |  | 2017-12-12 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 48 days = $12,000.00 TOTAL PAYMENT = $17,411.86 | 15 | 2018-02-22 | 2018-02-22 | 2018-02-22 | 2018-02-22 | 68 | 83 | 17411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215073 | J918 | Pleural effusion in other conditions classified elsewhere | ICD10 | 02232018 | 12122017 | 02222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 73 | Revenue | RV |  |  |  | 6.0 |
| 01292018 | 2018-01-29T10:37:49+00:00 |  | 000075919-01 | Mary | Gaffey | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ZANESVILLE HEALTH AND REHABILITATION | 02232018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 01282018 | 02172018 | Standard |  |  | 2018-01-28 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-02-17 |  | 2018-02-22 | 2018-02-22 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129078 | I509 | Heart failure, unspecified | ICD10 | 02232018 | 01282018 | 02172018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02062018 | 2018-02-06T15:46:29+00:00 |  | 000003864-01 | LEE | HANFORD | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01312018 | 02232018 | Standard |  |  | 2018-01-31 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-02-23 | 2018-02-22 | 2018-02-22 | 2018-02-22 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207013 | A419, E039, I509, J449, R262, R488 | Other symbolic dysfunctions | ICD10 | 02232018 | 01312018 | 02232018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 02162018 | 2018-02-16T10:03:20+00:00 |  | 000059203-01 | JANICE | COMPTON | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02152018 | 02222018 | Standard |  |  | 2018-02-15 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2018-02-22 |  | 2018-02-22 | 2018-02-22 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216028 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02232018 | 02152018 | 02222018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 01182018 | 2018-01-18T12:51:58+00:00 |  | 000006226-01 | SUE | MULLINS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01172018 | 02052018 | Standard |  |  | 2018-01-17 | 17/RVA01=$3,586.28 | 0 | 2018-02-05 |  | 2018-02-21 | 2018-02-21 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118065 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02232018 | 01172018 | 02052018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01182018 | 2018-01-18T15:42:01+00:00 |  | 000108361-01 | Mary | Salamay | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 02232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01172018 | 02062018 | Standard |  |  | 2018-01-17 | 17/RVC01=$6,306.19 | 0 | 2018-02-06 |  | 2018-02-21 | 2018-02-21 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118084 | S32040B | Wedge comprsn fx fourth lum vertebra, init for opn fx | ICD10 | 02232018 | 01172018 | 02062018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01292018 | 2018-01-29T12:25:40+00:00 |  | 000070827-01 | Carolyn | Farnsworth | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262018 | 02152018 | Standard |  |  | 2018-01-26 | 17/RVB01=$5,411.86 | 10 | 2018-02-15 |  | 2018-02-21 | 2018-02-21 | 20 | 30 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129108 | M25462, M25562, R296 | Repeated falls | ICD10 | 02232018 | 01262018 | 02152018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02012018 | 2018-02-01T15:11:23+00:00 |  | 000075408-01 | Charlotte | Estes | WELLER HEALTH TRANSITION | 917780 | CHRISTINE B | WELLER | 1811953318 | VANCREST OF NEW CARLISLE LLC | 925244 | 1871839167 | VANCREST OF NEW CARLISLE LLC | 1871839167 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VANCREST OF NEW CARLISLE LLC | 02232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01312018 | 02202018 | Standard |  |  | 2018-01-31 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-02-20 |  | 2018-02-22 | 2018-02-22 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201070 | N179 | Acute kidney failure, unspecified | ICD10 | 02232018 | 01312018 | 02202018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02022018 | 2018-02-02T10:04:07+00:00 |  | 000005514-01 | AUDREY | HOLDREN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02012018 | 02212018 | Standard |  |  | 2018-02-01 | 17/RVB01=$5,411.86 | 0 | 2018-02-21 |  | 2018-02-21 | 2018-02-21 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202039 | M25551 | Pain in right hip | ICD10 | 02232018 | 02012018 | 02212018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02052018 | 2018-02-05T14:39:50+00:00 |  | 000069474-01 | FRANK | WHISMAN | WELLER HEALTH TRANSITION | 917780 | CHRISTINE B | WELLER | 1811953318 | VANCREST OF NEW CARLISLE LLC | 925244 | 1871839167 | VANCREST OF NEW CARLISLE LLC | 1871839167 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VANCREST OF NEW CARLISLE LLC | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02222018 | Standard |  |  | 2018-02-02 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-02-22 |  | 2018-02-22 | 2018-02-22 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205096 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02232018 | 02022018 | 02222018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02062018 | 2018-02-06T14:29:07+00:00 |  | 000032984-01 | LAWRENCE | FATHBRUCKNER | CENTRAL OH HSPISTS INC | 937256 | LYLE T | OLSON | 1053373217 | COUNTRY CLUB RETIREMENT CENTER V LLC | 930468 | 1881021830 | COUNTRY CLUB RETIREMENT CENTER V LLC | 1881021830 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY CLUB RETIREMENT CENTER V LLC | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02052018 | 02122018 | Standard |  |  | 2018-02-05 | 17/RVB01= $5411.86 | 0 | 2018-02-12 |  | 2018-02-23 |  | 7 | 7 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206073 | G9341 | Metabolic encephalopathy | ICD10 | 02232018 | 02052018 | 02122018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 02082018 | 2018-02-08T16:37:21+00:00 |  | 000011076-01 | MARY | SMITH | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072018 | 03122018 | Standard |  |  | 2018-02-07 | 17/RMB01=$2,790.37 | 0 | 2018-02-12 |  | 2018-02-21 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209001 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02232018 | 02072018 | 02122018 | RMB01 | MEDIUM REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 34 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 02082018 | 2018-02-08T16:41:18+00:00 |  | 000037348-01 | DAVID | HEISERMAN | CONSOLIDATED RESOURCES H | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072018 | 02152018 | Standard |  |  | 2018-02-07 | 17/RVB01=$5,411.86 | 14 | 2018-02-15 |  | 2018-02-21 |  | 8 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209002 | J910 | Malignant pleural effusion | ICD10 | 02232018 | 02072018 | 02152018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 02132018 | 2018-02-13T13:23:33+00:00 |  | 000009402-01 | Jack | Hayner | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02122018 | 02222018 | Standard |  |  | 2018-02-12 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-02-22 |  | 2018-02-23 | 2018-02-23 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213098 | I2510, R2681, R296, R7881 | Bacteremia | ICD10 | 02232018 | 02122018 | 02222018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 02202018 | 2018-02-20T16:08:19+00:00 |  | 000075695-01 | Patricia | Fries | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | THE OAKS AT NORTHPOINTE | 931632 | 1609181700 | THE OAKS AT NORTHPOINTE | 1609181700 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE OAKS AT NORTHPOINTE | 02232018 | Denied | MediGold Southeast OH Essential Care | Fax | Requested Medical Documentation Not Received | Inpatient | 02232018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A180221034 | F339, I4891, K567 | Ileus, unspecified | ICD10 | 02232018 | 12152017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11272017 | 2017-11-27T12:13:21+00:00 |  | 000115372-01 | Kandy | Staten | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 02232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11212017 | 02192018 | Standard |  |  | 2017-11-21 | Per Diem: $250.00/day x 32 days = $8000.00 Per Diem: $200.00/day x 54 days = $10,800.00 Cefazolin (per invoice) = $5933.12 TOTAL PAYMENT = $24,733.12 | 0 | 2018-02-19 |  | 2018-02-23 | 2018-02-23 | 86 | 86 | 24733.12 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127143 | S22080D | Wedge comprsn fx T11-T12 vertebra, subs for fx w routn heal | ICD10 | 02232018 | 11212017 | 02192018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 91 | Revenue | RV |  |  |  | 4.0 |
| 12272017 | 2017-12-27T12:27:14+00:00 |  | 000012432-01 | BETTY | SNOOR | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12262017 | 02222018 | Standard |  |  | 2017-12-26 | 16/RUC01=$7,333.11 PER DIEM RATE OF $250.00/DAY X 22 DAYS=$5,500.00 PER DIEM RATE OF 200.00/DAY X16 DAYS=$3,200.00 TOTAL PAYMENT=$16,033.11 | 0 | 2018-02-22 |  | 2018-02-23 | 2018-02-23 | 58 | 58 | 16033.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227081 | I998 | Other disorder of circulatory system | ICD10 | 02232018 | 12262017 | 02222018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 59 | Revenue | RV |  |  |  | 7.0 |
| 12272017 | 2017-12-27T13:41:15+00:00 |  | 000118635-01 | Michael | Clemens | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 02232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12262017 | 02152018 | Standard |  |  | 2017-12-26 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 Per Diem: $250.00/day x 26 SNF Days = $6,500.00 Total Payment: $10,086.28 | 0 | 2018-02-15 |  | 2018-02-23 | 2018-02-17 | 46 | 48 | 10086.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227084 | G459, I10, I639 | Cerebral infarction, unspecified | ICD10 | 02232018 | 12262017 | 02152018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 52 | Revenue | RV |  |  |  | 2.0 |
| 12272017 | 2017-12-27T15:29:53+00:00 |  | 000005269-01 | EMERSON | WILLIAMS | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12212017 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228014 | M9712XD | PERIPROSTH FRACTURE AROUND INTERNAL PROSTH L KNEE JT, SUBS | ICD10 | 02232018 | 12212017 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01042018 | 2018-01-04T12:27:33+00:00 |  | 000095908-01 | Virginia | Place | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01012018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104097 | S12000A, S42201A | Unsp fracture of upper end of right humerus, init | ICD10 | 02232018 | 01022018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01082018 | 2018-01-08T16:29:43+00:00 |  | 000070770-01 | Jerrold | Leighty | JAMES NAGLE MD INC | 904477 | JAMES B | NAGLE | 1912960329 | GRAFTON ASSOCIATES LIMIT | 952941 | 1083656383 | GRAFTON ASSOCIATES LIMITED PARTNERSH | 1083656383 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GRAFTON ASSOCIATES LIMITED PARTNERSH | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109080 | R531 | Weakness | ICD10 | 02232018 | 01052018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01102018 | 2018-01-10T16:53:12+00:00 |  | 000015484-01 | ARTHUR | NEWMAN | AMERICAN HLTH NETWORK OF | 924337 | RAJNISH K | GUPTA | 1063466795 | EDGEWOOD MANOR OF WESTER | 952373 | 1518485820 | BUCKEYE TERRACE REHABILITATION & NUR | 1518485820 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BUCKEYE TERRACE REHABILITATION & NUR | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01092018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111012 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02232018 | 01092018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01162018 | 2018-01-16T16:29:33+00:00 |  | 000112215-01 | Gracie | Caldwell | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 02232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01152018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117020 | J189, M6281, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 02232018 | 01152018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 01192018 | 2018-01-19T08:26:02+00:00 |  | 000121197-01 | Marjorie | Stockwell | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 02232018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01172018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119044 | N390 | Urinary tract infection, site not specified | ICD10 | 02232018 | 01172018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01192018 | 2018-01-19T12:06:05+00:00 |  | 000054408-01 | CAROL | WALLAR | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01162018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119051 | M84350D | Stress fracture, pelvis, subs for fx w routn heal | ICD10 | 02232018 | 01162018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01192018 | 2018-01-19T18:58:00+00:00 |  | 000012182-01 | MARY | MCGINTY | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02232018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 01172018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122033 | I639 | Cerebral infarction, unspecified | ICD10 | 02232018 | 01172018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 01252018 | 2018-01-25T11:48:53+00:00 |  | 000082579-01 | Chuong | Luu | DR HAROLD ALLEN FURGUSON | 911551 | H A | FERGUSON JR | 1659312205 | CHS MIAMI VALLEY INC | 900871 | 1942284138 | CHS MIAMI VALLEY INC | 1942284138 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS MIAMI VALLEY INC | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01252018 | 02062018 | Standard |  |  | 2018-01-25 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 | 0 | 2018-02-06 |  | 2018-02-20 | 2018-02-20 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125065 | S92402A | Displaced unsp fracture of left great toe, init for clos fx | ICD10 | 02232018 | 01252018 | 02062018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01252018 | 2018-01-25T17:36:57+00:00 |  | 000099587-01 | Rudolf | Sperger | SENIORS FIRST INC | 931142 | AMAN | AHMED | 1316046188 | OTTERBEIN HOSPICE | 952522 | 1992797328 | OTTERBEIN LEBANON | 1992797328 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN LEBANON | 02232018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 01092018 | 01292018 | Standard |  |  | 2018-01-09 | 17/RVA01= $3586.28 | 19 | 2018-01-29 |  | 2018-02-16 | 2018-02-23 | 20 | 39 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126018 | N390, S22080A | Wedge compression fracture of T11-T12 vertebra, init | ICD10 | 02232018 | 01092018 | 01292018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01262018 | 2018-01-26T14:05:05+00:00 |  | 000003846-01 | LORETTA | BALLENGER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01232018 | 02162018 | Standard |  |  | 2018-01-23 | 17/RUC01= $6049.81 | 0 | 2018-02-16 |  | 2018-02-23 | 2018-02-23 | 24 | 24 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126075 | S2242XD | Multiple fx of ribs, left side, subs for fx w routn heal | ICD10 | 02232018 | 01232018 | 02162018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 02052018 | 2018-02-05T14:21:41+00:00 |  | 000110483-01 | John | Beedy | AHMED, IMTIAZ | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 02232018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 02032018 | 02052018 | Standard |  |  | 2018-02-03 | Per Diem: $200.00/day x 2 SNF Days = $400.00 | 6 | 2018-02-05 |  |  |  | 2 | 8 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205099 | N189 | Chronic kidney disease, unspecified | ICD10 | 02232018 | 02032018 | 02052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 02052018 | 2018-02-05T15:52:42+00:00 |  | 000096323-01 | Hanna | Brown | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02222018 | Standard |  |  | 2018-02-02 | 17/RVA01=$3,586.28 | 0 | 2018-02-22 |  | 2018-02-23 | 2018-02-23 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205117 | Z96652 | Presence of left artificial knee joint | ICD10 | 02232018 | 02022018 | 02222018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 02142018 | 2018-02-14T13:01:41+00:00 |  | 000062303-01 | MARY | LODRIGUE | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 02232018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02122018 | 02212018 | Standard |  |  | 2018-02-12 | Per MDS: 17/RVC01 = $6306.19 | 23 | 2018-02-21 |  | 2018-02-23 | 2018-02-23 | 9 | 32 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214044 | G40909 | Epilepsy, unsp, not intractable, without status epilepticus | ICD10 | 02232018 | 02122018 | 02212018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
