Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-25-to-2017-08-27_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-25-to-2017-08-27_SNF
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
| 06212017 | 2017-06-21T15:45:06+00:00 |  | 000019563-01 | DORA | ZWEYDORFF | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06202017 | 06292017 | Standard |  |  | 2017-06-20 | 16/RUB01= $4429.71 | 0 | 2017-06-30 |  | 2017-07-07 | 2017-07-07 | 10 | 10 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621076 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 08252017 | 06202017 | 06302017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 08032017 | 2017-08-03T14:42:11+00:00 |  | 000117390-01 | Gloria | Hurt | MEDICAL & SURG ASSOC INC | 950991 | JEREMY | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08022017 | 08102017 | Standard |  |  | 2017-08-02 | 16/RUC01=$7,333.11 | 0 | 2017-08-11 |  | 2017-08-24 | 2017-08-24 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803067 | Z471, Z96651 | Presence of right artificial knee joint | ICD10 | 08252017 | 08022017 | 08112017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 07172017 | 2017-07-17T07:50:44+00:00 |  | 000004154-01 | YOSHIKO | VORHES | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07132017 | 08232017 | Standard |  |  | 2017-08-13 | 16/RUC01=7,333.11 3 THERAPIES @ $250.00/day X 8 DAYS=$2,000.00 2 THERAPIES @ $200.00/day  (OR LESS) X 14 DAYS=$2,800.00 TOTAL PAYMENT=$12,133.00 | 0 | 2017-08-24 |  | 2017-08-24 | 2017-08-24 | 42 | 42 | 12133.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717010 | M6281 | Muscle weakness (generalized) | ICD10 | 08252017 | 07132017 | 08242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 42 | Revenue | RV |  |  |  | 8.0 |
| 08182017 | 2017-08-18T11:00:09+00:00 |  | 000108108-01 | Judith | Trout | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 08252017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 08162017 | 08242017 | Standard |  |  | 2017-08-16 | 9 NONSKILLED DAYS @ $200.00=$1800.00 | 0 | 2017-08-25 |  |  |  | 9 | 9 | 1800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818061 | C180, C787, C7960, Z483 | Aftercare following surgery for neoplasm | ICD10 | 08252017 | 08162017 | 08252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1800 | 1800 | Approved | 9 | Revenue | RV |  |  |  | 9.0 |
| 08142017 | 2017-08-14T11:27:39+00:00 |  | 000067067-01 | JERRY | SAPP | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 08252017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08112017 | 08212017 | Standard |  |  | 2017-08-11 | 16/RUC01=$7333.11 | 0 | 2017-08-22 |  | 2017-08-24 | 2017-08-24 | 11 | 11 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814080 | M25462, M6281, N390 | Urinary tract infection, site not specified | ICD10 | 08252017 | 08112017 | 08222017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 08072017 | 2017-08-07T11:58:44+00:00 |  | 000034262-01 | CLIFFORD | MULLINS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08062017 | 09152017 | Standard |  |  | 2017-08-06 | 16/RUC01=$7,333.11 | 0 | 2017-08-16 |  | 2017-08-21 | 2017-08-21 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807094 | M7590 | Shoulder lesion, unspecified, unspecified shoulder | ICD10 | 08252017 | 08062017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08082017 | 2017-08-08T08:41:06+00:00 |  | 000080776-01 | John | Aldenderfer | NANCY LYNN ALKIRE LLC | 901854 | NANCY | ALKIRE | 1710924659 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08042017 | 08212017 | Standard |  |  | 2017-08-04 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-08-22 |  | 2017-08-17 | 2017-08-23 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808090 | I10, J189, J9600, R0902 | Hypoxemia | ICD10 | 08252017 | 08042017 | 08222017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 08102017 | 2017-08-10T12:53:45+00:00 |  | 000075469-01 | Harold | Shultz | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 08252017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08092017 | 08232017 | Standard |  |  | 2017-08-09 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-08-24 | 2017-08-25 | 2017-08-25 | 2017-08-25 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810059 | I4891, Z95810 | Presence of automatic (implantable) cardiac defibrillator | ICD10 | 08252017 | 08092017 | 08242017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 08082017 | 2017-08-08T11:25:07+00:00 |  | 000051573-01 | JIMMIE | HARRIS | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08052017 | 08172017 | Standard |  |  | 2017-08-05 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 9 | 2017-08-18 | 2017-08-23 | 2017-08-23 | 2017-08-23 | 13 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809018 | E870 | Hyperosmolality and hypernatremia | ICD10 | 08252017 | 08052017 | 08182017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 08042017 | 2017-08-04T13:45:23+00:00 |  | 000003305-01 | NANCE | EVANS | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08032017 | 08102017 | Standard |  |  | 2017-08-03 | 16/RUC01=$7,333.11 | 0 | 2017-08-11 |  | 2017-08-25 | 2017-08-25 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804053 | Z471, Z96652 | Presence of left artificial knee joint | ICD10 | 08252017 | 08032017 | 08112017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 05192017 | 2017-05-19T10:17:09+00:00 |  | 000017305-01 | JOHN | BALL | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 08252017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 08252017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170519018 | M2681, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 08252017 | 05172017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08172017 | 2017-08-17T07:59:07+00:00 |  | 000012390-01 | GOLDIE | PETERS | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08142017 | 08212017 | Standard |  |  | 2017-08-14 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-08-22 |  | 2017-08-25 | 2017-08-23 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817029 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 08252017 | 08142017 | 08222017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 08142017 | 2017-08-14T11:32:33+00:00 |  | 000089112-01 | Margaret | Morgan | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | SOMERSET HEALTH & REHABILITATION C | 942963 | 1952791758 | SOMERSET HEALTH & REHABILITATION C | 1952791758 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOMERSET HEALTH & REHABILITATION C | 08252017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 08102017 | 08242017 | Standard |  |  | 2017-08-10 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-08-25 |  | 2017-08-25 | 2017-08-25 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814082 | Z471 | Aftercare following joint replacement surgery | ICD10 | 08252017 | 08102017 | 08252017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 08152017 | 2017-08-15T13:45:11+00:00 |  | 000070684-01 | Catherine | Young | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08142017 | 08232017 | Standard |  |  | 2017-08-14 | Per MDS: 17/RUA01 = $3214.76 | 8 | 2017-08-24 |  | 2017-08-24 | 2017-08-25 | 10 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815081 | I5033, J189 | Pneumonia, unspecified organism | ICD10 | 08252017 | 08142017 | 08242017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 08112017 | 2017-08-11T10:08:52+00:00 |  | 000052070-01 | REBECCA | WELLS | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08102017 | 08202017 | Standard |  |  | 2017-08-10 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2017-08-21 |  | 2017-08-21 | 2017-08-25 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811028 | Z4733, Z96652 | Presence of left artificial knee joint | ICD10 | 08252017 | 08102017 | 08212017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 08212017 | 2017-08-21T15:12:30+00:00 |  | 000022011-01 | RAYMOND | DETTY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08172017 | 08202017 | Standard |  |  | 2017-08-17 | Per Diem: $200.00/day x 8 days = $1600.00 TOTAL PAYMENT = $1600.00 | 25 | 2017-08-25 |  |  | 2017-08-24 | 8 | 33 | 1600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822093 | A419, I2510, J189, R0602, R296, R5382, R918, Z9981 | Dependence on supplemental oxygen | ICD10 | 08252017 | 08172017 | 08212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved | 4 | Revenue | RV |  |  |  | 11.0 |
| 05312017 | 2017-05-31T12:01:39+00:00 |  | 000015060-01 | JOHN | DUDA | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 08252017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05262017 | 07292017 | Standard |  |  | 2017-05-26 | 16/RUX01=$7,339.86 PER DIEM RATE OF $250.00/DAY FOR 3 THERAPIES X8 DAYS=$2,000.00 PER DIEM RATE OF $200.00/DAY FOR 2 THERAPIES OR LESS X 36 DAYS=$7,200.00 TOTAL SNF PAYMENT=$16,539.86 | 0 | 2017-07-29 |  | 2017-08-17 | 2017-08-17 | 64 | 64 | 16539.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531067 | N390 | Urinary tract infection, site not specified | ICD10 | 08252017 | 05262017 | 07292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 65 | Revenue | RV |  |  |  | 3.0 |
