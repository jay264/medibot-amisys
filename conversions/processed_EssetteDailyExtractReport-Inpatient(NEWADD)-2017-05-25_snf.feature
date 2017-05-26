Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-25_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-25_SNF
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
| 03142017 | 2017-03-14T08:53:57+00:00 |  | 000050703-01 | HAZEL | HOPPER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-03-11 | 17/RVC01=$6,306.19 | 0 | 2017-05-15 |  | 2017-05-19 | 2017-05-19 | 65 | 65 | 6306.19 | 170316090435.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170314057 | Z96651 | Presence of right artificial knee joint | ICD10 | 05252017 | 03112017 | 05152017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 04032017 | 2017-04-03T10:26:41+00:00 |  | 000091265-01 | Mary | Weber | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 05252017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 04022017 | 05102017 | Standard |  |  | 2017-04-02 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 Per Diem: $200.00/day x 16 approved days = $3,200.00 Total Payment = $6,786.28 | 0 | 2017-05-11 | 2017-05-05 | 2017-05-24 | 2017-05-24 | 39 | 39 | 6786.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170404015 | I509, N390 | Urinary tract infection, site not specified | ICD10 | 05252017 | 04022017 | 05112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6786 | 6786 | Approved | 39 | Revenue | RV |  |  |  | 3.0 |
| 04102017 | 2017-04-10T15:53:52+00:00 |  | 000018451-01 | C | Armbrust | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-04-07 | 16/RVB01=$3350.20 PER DIEM RATE OF $250.00/DAY X 19 DAYS=$4,750.00 TOTAL PAYMENT=$8,100.20 | 0 | 2017-05-19 |  | 2017-05-23 | 2017-05-23 | 39 | 39 | 8100.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170411019 | M86141 | Other acute osteomyelitis, right hand | ICD10 | 05252017 | 04072017 | 05192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8100 | 8100 | Approved Skilled | 8 | Revenue | RV |  |  |  | 5.0 |
| 04172017 | 2017-04-17T11:04:09+00:00 |  | 000057265-01 | BARBARA | MEGAHEY | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-04-15 | 17/RVX01=$6,171.24 | 0 | 2017-05-22 |  | 2017-05-23 | 2017-05-23 | 7 | 7 | 6171.24 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417037 | J189, J449, Z22322 | Carrier or suspected carrier of methicillin resis staph | ICD10 | 05252017 | 04152017 | 05222017 | RVX01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 11-16/STAND-ALONE OBRA SCSA O | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 04182017 | 2017-04-18T08:26:02+00:00 |  | 000113202-01 | Martha | Moore | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-04-13 | 17/RUC01=$6049.81 PER DIEM RATE OF $200.00/DAY X 10 DAYS =$2,500.00 TOTAL PAYMENT=$8,549.81 | 1 | 2017-05-13 |  | 2017-05-22 | 2017-05-22 | 30 | 31 | 8549.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418020 | R296, R4701, S0292XD, S066X0D | Traum subrac hem w/o loss of consciousness, subs | ICD10 | 05252017 | 04132017 | 05132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8549 | 8549 | Approved Skilled | 8 | Revenue | RV |  |  |  | 30.0 |
| 04202017 | 2017-04-20T15:33:45+00:00 |  | 000075917-01 | Betty | Cox | THE CHRIST HSP MED ASSOC | 944232 | JAMES G | BINGHAM | 1063413821 | HEARTLAND OF MADEIRA OH LLC | 920759 | 1871534834 | HEARTLAND OF MADEIRA OH LLC | 1871534834 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MADEIRA OH LLC | 05252017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04182017 | 05222017 | Standard |  |  | 2017-04-18 | Contract/RUG: 17/ RUC (Per MDS) = $6,049.81 Per Diem: $250.00/day x 15 SNF Days = $3,750.00 Total Payment:$9,799.81 | 52 | 2017-05-23 |  | 2017-05-24 | 2017-05-24 | 35 | 87 | 9799.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421011 | N390 | Urinary tract infection, site not specified | ICD10 | 05252017 | 04182017 | 05232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9799 | 9799 | Approved | 35 | Revenue | RV |  |  |  | 5.0 |
| 04212017 | 2017-04-21T12:44:41+00:00 |  | 000028620-01 | RAYMOND | BARRETT | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-04-20 | 17/RUC01=$6,049.81 PER DIEM RATE DENIED PAYMENT OF CASE RATE ONLY | 0 | 2017-05-12 |  | 2017-05-24 | 2017-05-22 | 22 | 22 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421075 | S065X9A | Traum subdr hem w LOC of unsp duration, init | ICD10 | 05252017 | 04202017 | 05122017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 04212017 | 2017-04-21T17:18:09+00:00 |  | 000087819-01 | Carol | Wenstadt | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-04-20 | 17/RVA01=$3,586.28 | 0 | 2017-05-04 |  | 2017-05-23 | 2017-05-23 | 14 | 14 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424031 | A419 | Sepsis, unspecified organism | ICD10 | 05252017 | 04202017 | 05042017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04282017 | 2017-04-28T16:05:49+00:00 |  | 000015587-01 | HELEN | DEAL | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-04-27 | 16/RVC01=$3,539.19 PER DIEM RATE OF $250.00/DAY X 2 DAYS=$500.00 TOTAL PAYMENT=$4,039.19 | 20 | 2017-05-19 |  | 2017-05-23 | 2017-05-23 | 22 | 42 | 4039.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501129 | G9341 | Metabolic encephalopathy | ICD10 | 05252017 | 04272017 | 05192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4039 | 4039 | Approved Skilled | 8 | Revenue | RV |  |  |  | 2.0 |
| 05022017 | 2017-05-02T14:07:18+00:00 |  | 000112251-01 | Donna | Morgan | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 05252017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05012017 | 05162017 | Standard |  |  | 2017-05-01 | Contract/RUG: 16/RMB (Per MDS) = $2,232.29 | 48 | 2017-05-17 |  | 2017-05-24 |  | 16 | 64 | 2232.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503041 | J9611 | Chronic respiratory failure with hypoxia | ICD10 | 05252017 | 05012017 | 05172017 | RMB01 | MEDIUM REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 05032017 | 2017-05-03T08:43:51+00:00 |  | 000083662-01 | Dorothy | Holcomb | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-04-29 | 17/RUC01=$6049.81 | 0 | 2017-05-19 |  | 2017-05-22 | 2017-05-22 | 20 | 20 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504005 | Z96642 | Presence of left artificial hip joint | ICD10 | 05252017 | 04292017 | 05192017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05032017 | 2017-05-03T10:03:14+00:00 |  | 000084059-01 | Carl | Cathel | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05252017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-04-29 | 17/RVC01=$6,306.19 | 0 | 2017-05-12 |  | 2017-05-19 |  | 13 | 13 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504012 | D72829, J40, K5900, R195 | Other fecal abnormalities | ICD10 | 05252017 | 04292017 | 05122017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 05042017 | 2017-05-04T09:40:07+00:00 |  | 000108941-01 | Robert | Riley | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | RIVERSIDE NURSING & REHAB | 910253 | 1114918836 | RIVERSIDE NURSING & REHAB | 1114918836 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | RIVERSIDE NURSING & REHAB | 05252017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05032017 | 05232017 | Standard |  |  | 2017-05-03 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $200.00/day x 1 SNF Day = $200.00 Total Payment: $3,550.20 | 0 | 2017-05-24 |  | 2017-05-25 | 2017-05-25 | 21 | 21 | 3550.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504068 | S91332A | Puncture wound without foreign body, left foot, init encntr | ICD10 | 05252017 | 05032017 | 05242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3550 | 3550 | Approved | 21 | Revenue | RV |  |  |  | 1.0 |
| 05052017 | 2017-05-05T11:23:48+00:00 |  | 000005381-01 | GIUSEPPE | CORDI | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-05-03 | 17/LD101=$3,448.45 | 0 | 2017-05-07 |  | 2017-05-23 |  | 4 | 4 | 3448.45 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505057 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05252017 | 05032017 | 05072017 | LD101 | SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 05082017 | 2017-05-08T18:24:14+00:00 |  | 000003339-01 | CHARLES | COWGILL | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05252017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-05-06 | 17/RUC01=$6,049.81 | 0 | 2017-05-17 |  | 2017-05-24 | 2017-05-24 | 11 | 11 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509097 | M8468XG | Path fx in oth disease, oth site, subs for fx w delay heal | ICD10 | 05252017 | 05062017 | 05172017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05092017 | 2017-05-09T08:48:43+00:00 |  | 000087538-01 | Anne | Wilson | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-05-04 | 17/RUC01=$6,049.81 | 0 | 2017-05-19 |  | 2017-05-22 | 2017-05-22 | 15 | 15 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510010 | F329, F419, Z96651 | Presence of right artificial knee joint | ICD10 | 05252017 | 05042017 | 05192017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  | No child records to display. |  |
| 05102017 | 2017-05-10T12:44:33+00:00 |  | 000109069-01 | Linda | Murphy | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 05252017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-05-07 | 17/RVB01=$5,411.86 | 0 | 2017-05-10 |  | 2017-05-23 |  | 3 | 3 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511008 | M6289 | Other specified disorders of muscle | ICD10 | 05252017 | 05072017 | 05102017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 05102017 | 2017-05-10T13:08:37+00:00 |  | 000106674-01 | Barbara | Davis | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05252017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-05-08 | 17/RVA01=$3,586.28 | 0 | 2017-05-19 |  | 2017-05-24 | 2017-05-24 | 11 | 11 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511010 | K750 | Abscess of liver | ICD10 | 05252017 | 05082017 | 05192017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05112017 | 2017-05-11T07:43:51+00:00 |  | 000065717-01 | MARTHA | SELLERS | CATHERINE LARUFFA MD INC | 939724 | CATHERINE | LARUFFA | 1972502789 | THE LAURELS OF BLANCHEST | 948218 | 1992032148 | LAURELS OF BLANCHESTER | 1992032148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF BLANCHESTER | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05092017 | 05222017 | Standard |  |  | 2017-05-09 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-05-23 |  | 2017-05-23 | 2017-05-23 | 14 | 14 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511017 | J189, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 05252017 | 05092017 | 05232017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 05102017 | 2017-05-10T18:21:39+00:00 |  | 000099598-01 | Samuel | Baker | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 05252017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 05082017 | 05172017 | Standard |  |  | 2017-05-08 | Contract /RUG: 17/RUC (Per MDS) = $6,049.81 | 11 | 2017-05-18 |  | 2017-05-23 |  | 10 | 21 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511023 | G062 | Extradural and subdural abscess, unspecified | ICD10 | 05252017 | 05082017 | 05182017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 05182017 | 2017-05-18T15:33:01+00:00 |  | 000064629-01 | Eleanor | Burris | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06012017 | Standard |  |  | 2017-05-17 | 17/RVA01=$3,586.28 | 9 | 2017-05-23 |  | 2017-05-23 | 2017-05-23 | 6 | 15 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518070 | S92351D | Disp fx of 5th metatarsal bone, r ft, 7thD | ICD10 | 05252017 | 05172017 | 05232017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 6.0 |
