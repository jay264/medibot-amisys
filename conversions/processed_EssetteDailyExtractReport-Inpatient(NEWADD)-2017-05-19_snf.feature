Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-19_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-19_SNF
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
| 02272017 | 2017-02-27T07:22:06+00:00 |  | 000034021-01 | BRYAN | RIFFLE | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 05182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02232017 | 05142017 | Standard |  |  | 2017-02-23 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 61 days = $15,250.00 TOTAL PAYMENT = $21,299.81 | 0 | 2017-05-15 |  | 2017-05-17 |  | 81 | 81 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170227071 | I639 | Cerebral infarction, unspecified | ICD10 | 05182017 |  |  | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 81 | Revenue | RV | Mbr out to hospital 5/15/17  rcvd notification that he will not be returning, expired at hospital, NOMNC and MDS with RUG RUC10 received. |  |  |  |  | 0 |  |  | 4.0 |
| 03072017 | 2017-03-07T12:06:08+00:00 |  | 000028811-01 | SHIRLEY | JOSSELYN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 05182017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 03042017 | 05042017 | Standard |  |  | 2017-03-04 | 17/RVC01=$6306.19 18 DAYS @ $250.00=$4500.00 20 DAYS @ $200.00=$4000.00 total: $14806.19 | 0 | 2017-05-05 |  | 2017-05-18 | 2017-05-18 | 62 | 62 | 170309088890.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170307083 | M6281, N390, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 05182017 |  |  | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 62 | Revenue | RV | admit date 3.4.17 per face sheet, NOMNC received, KEPRO fax for records received., NOMNC received, KEPRO fax for records received., DC info NOMNC and MDS with RUG RVC60 received. |  |  |  |  | 0 |  |  | 4.0 |
| 03082017 | 2017-03-08T12:03:21+00:00 |  | 000099629-01 | Jayne | Drenning-Brown | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 03072017 | 05152017 | Standard |  |  | 2017-03-07 | 70 DAYS @ $520.00=$36400.00 | 30 | 2017-05-16 |  | 2017-05-17 |  | 70 | 100 | 170310089098.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170308091 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05182017 |  |  | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 70 | Revenue | RV | per Trina  member has not been evaluated for therapies at this time; will send in evals if she will be picked up, Check list received, DENC received, MDS received |  |  |  |  | 0 |  |  | 70.0 |
| 03242017 | 2017-03-24T11:48:47+00:00 |  | 000044436-01 | HOMER | BEACHY | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05182017 | 05252017 | Standard |  |  | 2017-03-22 | 17/RUC01=$6,049.81 | 0 | 2017-03-31 |  | 2017-04-18 | 2017-05-17 | 9 | 9 | 170328092401.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170327054 | J189 | Pneumonia, unspecified organism | ICD10 | 05182017 |  |  | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP | Spoke with Kathryn to request discharge checklist  NOMNC and MDS to close auth, DC info MDS with RUG RUC10 received, Request for remainder of discharge information made at this time via use of letter and faxed to facility. Request made for NOMNC and d/c checklist., Request for D/C checklist and NOMNC made again at this time., Final request for NOMNC and discharge checklist, NOMNC received, DC Checklist received |  |  |  |  | 0 |  |  | 9.0 |
| 04192017 | 2017-04-19T14:09:34+00:00 |  | 000105971-01 | Forrest | Arnold | COMPREHENSIVE HSPIST SRV | 917715 | RICHARD DANIEL | POTTS | 1790987147 | CARLTON SHORES HEALTH AN | 950593 | 1588986368 | CARLTON SHORES HEALTH AND REHABILITA | 1588986368 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CARLTON SHORES HEALTH AND REHABILITA | 05182017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05182017 | 05252017 | Standard |  |  | 2017-04-21 | OON single case agreement/RUB01=$5,813.99 | 0 | 2017-05-11 |  | 2017-05-17 | 2017-05-17 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419071 | S72002S | Fracture of unspecified part of neck of left femur, sequela | ICD10 | 05182017 |  |  | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP | DC info NOMNC and MDS RUG RUB20 |  |  |  |  | 0 |  |  | 14.0 |
| 04212017 | 2017-04-21T13:58:16+00:00 |  | 000083667-01 | Vernon | Schoeppner | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 05182017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Inpatient | 04192017 | 05042017 | Standard |  |  | 2017-04-19 | 17/RVC01=$6306.19 | 0 | 2017-05-05 |  | 2017-05-18 | 2017-05-18 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421076 | C61, C641, C7951, C7989 | Secondary malignant neoplasm of other specified sites | ICD10 | 05182017 |  |  | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP | DC info NOMNC and MDS with RUG RVC10 received. |  |  |  |  | 0 |  |  | 16.0 |
| 04212017 | 2017-04-21T17:38:02+00:00 |  | 000008757-01 | ALLAN | BAUSCH | WEST JEFFERSON FAM PRCT | 936655 | MARK W | GARWOOD | 1275595274 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 05182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04192017 | 05052017 | Standard |  |  | 2017-04-19 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-05-06 |  | 2017-05-16 |  | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424032 | E119, I213, I5033, Z950 | Presence of cardiac pacemaker | ICD10 | 05182017 |  |  | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP | Called Debbie Council  no answer  left voice mail message requesting the DC checklist  5 day MDS and NOMNC to close out case with direct number to call with any questions., DC info and MDS with RUG RVC10 received. |  |  |  |  | 0 |  |  | 17.0 |
| 04262017 | 2017-04-26T15:06:50+00:00 |  | 000111896-01 | Janice Elaine | Karlak | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 05182017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05182017 | 05252017 | Standard |  |  | 2017-04-25 | 16/RUB01=$4,429.71 | 0 | 2017-05-10 |  | 2017-05-17 | 2017-05-17 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427042 | A047, M1711, R41841 | Cognitive communication deficit | ICD10 | 05182017 |  |  | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP | Request for update/closing info made at this time., DC info NOMNC and MDS with RUG RUB10 received. |  |  |  |  | 0 |  |  | 15.0 |
| 04282017 | 2017-04-28T12:09:28+00:00 |  | 000024520-01 | RONALD | NEMISH | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05182017 | 05252017 | Standard |  |  | 2017-04-26 | RUC01=$6,306.19 | 0 | 2017-05-16 |  | 2017-05-17 | 2017-05-17 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501061 | L02413, Z48817 | Encntr for surgical aftcr fol surgery on the skin, subcu | ICD10 | 05182017 |  |  | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP | NOMNC received, MDS received, DC Checklist received |  |  |  |  | 0 |  |  | 20.0 |
| 04282017 | 2017-04-28T16:04:58+00:00 |  | 000050874-01 | JOHN | STREITENBERGER | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272017 | 05152017 | Standard |  |  | 2017-04-27 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-05-16 |  | 2017-05-18 | 2017-05-18 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501133 | E119, I951, N3281, R296, R52, Z950 | Presence of cardiac pacemaker | ICD10 | 05182017 |  |  | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP | NOMNC received, Rcvd NOMNC  MDS with RUG score of RUC and SC checklist |  |  |  |  | 0 |  |  | 19.0 |
| 04282017 | 2017-04-28T16:26:29+00:00 |  | 000079146-01 | Bonadene | Bandy | PICKAWAY HEALTH SERVICES | 913727 | KEVIN M | SELLERS | 1306085220 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 05182017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04272017 | 05152017 | Standard |  |  | 2017-04-27 | Per MDS: 17/RUB01 = $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-05-16 |  | 2017-05-17 | 2017-05-17 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501136 | F0390, F339, R296 | Repeated falls | ICD10 | 05182017 |  |  | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP | NOMNC and MDS with RUG RUB10 received., rcvd signed NOMNC |  |  |  |  | 0 |  |  | 19.0 |
| 05032017 | 2017-05-03T10:12:55+00:00 |  | 000074223-01 | Alice | Shaw | CNP OPERATING CO LLC | 913181 | JEROLD A | MEYER | 1821093881 | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF COSHOCTON | 05182017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Inpatient | 05022017 | 05162017 | Standard |  |  | 2017-05-02 | 17/RUA01=$3214.76 | 0 | 2017-05-17 |  | 2017-05-17 | 2017-05-17 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504013 | S82301D | Unsp fx lower end of r tibia, subs for clos fx w routn heal | ICD10 | 05182017 |  |  | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP | no 2nd page of the notification was received  sent a request for pg 2., DC Checklist received, MDS received, NOMNC received - non complient |  |  |  |  | 0 |  |  | 15.0 |
| 05042017 | 2017-05-04T15:02:56+00:00 |  | 000010155-01 | JANE | PEASE | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 05182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05182017 | 05252017 | Standard |  |  | 2017-05-03 | 17/RUB01=$5,813.99 | 0 | 2017-05-12 |  | 2017-05-17 | 2017-05-17 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505037 | S73004D | Unspecified dislocation of right hip, subsequent encounter | ICD10 | 05182017 |  |  | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP | NOMNC and MDS with RUG RUB10 received. |  |  |  |  | 0 |  |  | 9.0 |
| 05082017 | 2017-05-08T13:01:48+00:00 |  | 000091986-01 | F Howard | Houldsworth | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 05182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05052017 | 05162017 | Standard |  |  | 2017-05-05 | Per MDS: 17/RUC01 = $6049.81 TOTAL PAYMENT = $6049.81 | 0 | 2017-05-17 |  | 2017-05-17 | 2017-05-17 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509066 | J189 | Pneumonia, unspecified organism | ICD10 | 05182017 |  |  | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP | DC info NOMNC and MDS with RUG RUC10 received. |  |  |  |  | 0 |  |  | 12.0 |
| 05082017 | 2017-05-08T13:47:05+00:00 |  | 000016003-01 | CHARLES | HICKS | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 05182017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05182017 | 05252017 | Standard |  |  | 2017-04-28 | 16/RUC01=$7,333.11 | 0 | 2017-05-11 |  | 2017-05-16 | 2017-05-16 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509068 | N390 | Urinary tract infection, site not specified | ICD10 | 05182017 |  |  | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP | Letter is written in appropriate language with no abbreviations and is therefore approved., DC info NOMNC and MDS with RUG RUC10 received., DC info NOMNC and MDS with RUG RUC10 received. |  |  |  |  | 0 |  |  | 14.0 |
| 05102017 | 2017-05-10T11:15:51+00:00 |  | 000079001-01 | John | Brembeck | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 05182017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05082017 | 05162017 | Standard |  |  | 2017-05-08 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-05-17 |  | 2017-05-15 | 2017-05-17 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511007 | F329, F419, M064, M1990, M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 05182017 |  |  | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP | MDS with RUG RUC10 received., DC info and NOMNC received. |  |  |  |  | 0 |  |  | 9.0 |
| 05162017 | 2017-05-16T16:07:13+00:00 |  | 000038623-01 | MARGARET | LOWERY | AFFILIATED INTERNISTS LL | 928070 | ARUNA K | PRATTIPATI | 1609828367 | HARBORSIDE TROY LLC | 927604 | 1487761565 | HARBORSIDE TROY LLC | 1487761565 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HARBORSIDE TROY LLC | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170517031 | S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  | Called Christina at SNF  no answer  left voice mail message requesting the second page of the notification form to be able to complete the admit process. Also  left phone number to call with any questions., Received the second page of the notification form as requested., Face Sheet received. |  |  |  |  | 0 |  |  | 20.0 |
| 05162017 | 2017-05-16T17:12:57+00:00 |  | 000071356-01 | Charles | Padrutt | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170517042 | M4850XD | Collapsed vertebra, NEC, site unsp, subs for fx w routn heal | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  | Mbr admitted to facility while in the middle of an approved case rate at another facility. After review of case it was found that mbr left previous facility via 911  called by daughter. Multiple care/quality issues at previous facility., Mbr is approved for new 20 day case rate per Molly Barr. |  |  |  |  | 0 |  |  | 20.0 |
| 05172017 | 2017-05-17T12:06:18+00:00 |  | 000000766-01 | NORMA JEAN | FETTY | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170517050 | L0390 | Cellulitis, unspecified | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05172017 | 2017-05-17T12:41:21+00:00 |  | 000030095-01 | VERNA | SIMMONS | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170517059 | E119, I10, Z96641 | Presence of right artificial hip joint | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05172017 | 2017-05-17T14:21:07+00:00 |  | 000080513-01 | Vivien | Johnson | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | WILLOW HAVEN CARE CENTER | 924194 | 1306834148 | WILLOW HAVEN CARE CENTER | 1306834148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WILLOW HAVEN CARE CENTER | 05182017 | Interim Approval | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170517091 | R531, R5381 | Other malaise | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 14.0 |
| 05172017 | 2017-05-17T14:51:03+00:00 |  | 000074247-01 | Dale | Knight | MARIETTA MEM HSP | 906929 | FREDERIC A | HUMPHREY | 1366438848 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 05182017 | Interim Approval | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170517095 | A419 | Sepsis, unspecified organism | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 14.0 |
| 05172017 | 2017-05-17T15:29:36+00:00 |  | 000046755-01 | JANET | WARD | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170517096 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05172017 | 2017-05-17T15:39:42+00:00 |  | 000008455-01 | MARY | BARRY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518017 | G809, R531 | Weakness | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05172017 | 2017-05-17T15:46:03+00:00 |  | 000019260-01 | MARJORIE | MOYER | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518018 | R627 | Adult failure to thrive | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05172017 | 2017-05-17T16:12:50+00:00 |  | 000109073-01 | Claude | Keim Jr | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 05182017 | Interim Approval | MediGold Essential Care | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518022 | C259, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05172017 | 2017-05-17T16:51:34+00:00 |  | 000016867-01 | ELLEN | HOLTON | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518024 | S82821A | Torus fracture of lower end of right fibula, init | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05172017 | 2017-05-17T16:59:49+00:00 |  | 000041649-01 | Milene | Arbaugh | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518025 | K5669 | Other intestinal obstruction | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05182017 | 2017-05-18T07:43:33+00:00 |  | 000034782-01 | MARY | BROWNING | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518026 | S89001S | Unsp physeal fracture of upper end of right tibia, sequela | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05172017 | 2017-05-17T16:11:53+00:00 |  | 000033321-01 | MARY | MORGAN | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518041 | I10, I4891, M25552, M545, R52, Z9981 | Dependence on supplemental oxygen | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05182017 | 2017-05-18T13:40:09+00:00 |  | 000031469-01 | JOHN | MOORE | WESTLAND FAMILY CARE LLC | 912885 | FAOZAN A | NARVEL | 1215901020 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518054 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05182017 | 2017-05-18T13:41:57+00:00 |  | 000017501-01 | WAVALENE | WOOLEVER | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518055 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05182017 | 2017-05-18T15:33:01+00:00 |  | 000064629-01 | Eleanor | Burris | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518070 | S92351D | Disp fx of 5th metatarsal bone, r ft, 7thD | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05182017 | 2017-05-18T15:16:14+00:00 |  | 000070169-01 | Robert | Schreiber | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518073 | F1020, R296 | Repeated falls | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
| 05182017 | 2017-05-18T15:44:29+00:00 |  | 000005057-01 | DOROTHY | SCHLAFLY | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 05182017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170518074 | R55, S0093XA, Z9181 | History of falling | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |  |  | 20.0 |
