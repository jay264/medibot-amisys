Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-26-thru-2017-05-29_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-26-thru-2017-05-29_SNF
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
| 03222017 | 2017-03-22T10:58:25+00:00 |  | 000115425-01 | MICHAEL | RAY | MEDICINE INPATIENT GROUP | 929488 | LOFTI F | MAMLOUK | 1013957216 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 05262017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03202017 | 05112017 | Standard |  |  | 2017-03-20 | Contract/RUG: 17/RUX (Per MDS) = $7,339.86 Per Diem: $250.00/day x 22 SNF Days =$5,500.00 Per Diem: $200.00/day x 4 SNF Days = $800.00 Wound Vac Supplies: 25 days (after case rate) $13.75/day x 25 days = $343.75 per invoice Total Payment: $13,983.61 | 5 | 2017-05-12 | 2017-05-09 | 2017-05-23 | 2017-05-23 | 46 | 51 | 13983.61 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170323003 | Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 05262017 | 03202017 | 05122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 53 | Revenue | RV |  |  |  | 2.0 |
| 04072017 | 2017-04-07T16:18:39+00:00 |  | 000035597-01 | FRIEDA | PIERSON | KAHLON, GURJEET S | 914096 | GURJEET S | KAHLON | 1649209644 | LAURELS OF HUBER HEIGHTS | 934199 | 1871938555 | LAURELS OF HUBER HEIGHTS | 1871938555 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HUBER HEIGHTS | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04062017 | 05232017 | Standard |  |  | 2017-04-06 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $250.00/day x 27 approved days = $6,750.00 Total Payment: $12,563.99 | 0 | 2017-05-24 |  | 2017-05-25 | 2017-05-25 | 48 | 48 | 12563.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170410006 | K920, R1013, R54 | Age-related physical debility | ICD10 | 05262017 | 04062017 | 05242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 48 | Revenue | RV |  |  |  | 1.0 |
| 04202017 | 2017-04-20T08:05:42+00:00 |  | 000017305-01 | JOHN | BALL | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05262017 | 06022017 | Standard |  |  | 2017-04-18 | 17/RVC01=$6,306.19 | 0 | 2017-04-30 |  | 2017-05-19 | 2017-05-19 | 12 | 12 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420014 | N390 | Urinary tract infection, site not specified | ICD10 | 05262017 | 04182017 | 04302017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 04202017 | 2017-04-20T11:21:54+00:00 |  | 000021907-01 | PATRICIA | KREAGER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04182017 | 05062017 | Standard |  |  | 2017-04-18 | 17/RUB01=$5813.99 | 0 | 2017-05-07 |  | 2017-05-26 | 2017-05-26 | 19 | 19 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420051 | I5031 | Acute diastolic (congestive) heart failure | ICD10 | 05262017 | 04182017 | 05072017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 04202017 | 2017-04-20T14:47:27+00:00 |  | 000033922-01 | VIRGINIA | WILLIARD | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 05262017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 05262017 | 06022017 | Standard |  |  | 2017-04-14 | UNSKILLED RATE OF $200.00/DAY X 14 DAYS=$2,800.00 | 0 | 2017-04-29 |  | 2017-05-25 | 2017-05-25 | 14 | 0 | 2800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420104 | Z96661 | Presence of right artificial ankle joint | ICD10 | 05262017 | 04142017 | 04292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2800 | 2800 | Approved Skilled | 8 | Revenue | RV |  |  |  | 14.0 |
| 04262017 | 2017-04-26T15:46:40+00:00 |  | 000006636-01 | LOLA | MORRIS | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05262017 | 06022017 | Standard |  |  | 2017-04-21 | 17/RVC01=$6,306.19 | 0 | 2017-05-11 |  | 2017-05-23 | 2017-05-23 | 20 | 20 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427046 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 05262017 | 04212017 | 05112017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05022017 | 2017-05-02T08:53:24+00:00 |  | 000015297-01 | JUDITH | TERRY | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04292017 | 05122017 | Standard |  |  | 2017-04-29 | 16/RUA01=$3214.76 | 0 | 2017-05-13 |  | 2017-05-15 | 2017-05-15 | 14 | 14 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502100 | J189 | Pneumonia, unspecified organism | ICD10 | 05262017 | 04292017 | 05132017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 05022017 | 2017-05-02T08:58:31+00:00 |  | 000057590-01 | GEORGE | GRIFFITH | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04282017 | 05232017 | Standard |  |  | 2017-04-28 | 16/RUC01=$7333.11 6 DAYS @ $200.00= $1200.00 TOTAL: $8533.11 | 37 | 2017-05-24 |  | 2017-05-26 | 2017-05-26 | 26 | 63 | 8533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502101 | K550, Z433 | Encounter for attention to colostomy | ICD10 | 05262017 | 04282017 | 05242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 8533 |  | 26 | Revenue | RV |  |  |  | 6.0 |
| 05032017 | 2017-05-03T09:17:14+00:00 |  | 000003244-01 | ELSIE | RITCHEY | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05262017 | 06022017 | Standard |  |  | 2017-04-28 | 17/RUC01=$6,049.81 | 0 | 2017-05-16 |  | 2017-05-22 | 2017-05-22 | 18 | 18 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504010 | E871, S32810A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 05262017 | 04282017 | 05162017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 05032017 | 2017-05-03T17:08:07+00:00 |  | 000062234-01 | JAMES | ULMER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05262017 | 06022017 | Standard |  |  | 2017-05-02 | NON-SKILLED RATE OF $200.00/DAY X 4 DAYS=$800.00 | 0 | 2017-05-06 |  | 2017-05-25 |  | 4 | 4 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504060 | M6281, R769, Z4889, Z952 | Presence of prosthetic heart valve | ICD10 | 05262017 | 05022017 | 05062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved Skilled | 8 | Revenue | RV |  |  |  | 4.0 |
| 05052017 | 2017-05-05T14:09:27+00:00 |  | 000038566-01 | IVAN | SAUNDERS | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05262017 | 06022017 | Standard |  |  | 2017-05-03 | 17/RUC01=$6049.81 | 0 | 2017-05-18 |  | 2017-05-22 | 2017-05-22 | 15 | 15 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508011 | M6281, R296, Z8673, Z8669 | Personal history of dis of the nervous sys and sense organs | ICD10 | 05262017 | 05032017 | 05182017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05092017 | 2017-05-09T11:07:31+00:00 |  | 000046787-01 | NORMA | BAILEY | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05052017 | 05192017 | Standard |  |  | 2017-05-05 | 16/RVA01=$2689.71 | 0 | 2017-05-20 |  | 2017-05-26 | 2017-05-26 | 15 | 15 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510049 | C44602 | Unsp malignant neoplasm skin/ right upper limb, inc shoulder | ICD10 | 05262017 | 05052017 | 05202017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05092017 | 2017-05-09T11:09:24+00:00 |  | 000025037-01 | VIRGINIA | LEITER | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05062017 | 05242017 | Standard |  |  | 2017-05-06 | 16/RVB01=$3350.20 | 0 | 2017-05-24 |  | 2017-05-26 | 2017-05-26 | 19 | 19 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510050 | S3210XD | Unsp fracture of sacrum, subs for fx w routn heal | ICD10 | 05262017 | 05062017 | 05252017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 05122017 | 2017-05-12T15:57:05+00:00 |  | 000008965-01 | RICHARD | WALTERS | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05262017 | 06022017 | Standard |  |  | 2017-05-11 | 16/RUB01=$4,429.71 | 9 | 2017-05-24 |  | 2017-05-23 | 2017-05-26 | 13 | 22 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512089 | J189 | Pneumonia, unspecified organism | ICD10 | 05262017 | 05112017 | 05242017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 05152017 | 2017-05-15T16:36:35+00:00 |  | 000084923-01 | Betty | Keller | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 05262017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05112017 | 05222017 | Standard |  |  | 2017-05-11 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-05-23 |  | 2017-05-25 | 2017-05-25 | 12 | 12 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516037 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 05262017 | 05112017 | 05232017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 05162017 | 2017-05-16T16:21:26+00:00 |  | 000014991-01 | VIOLA | MAHANEY | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05262017 | 06022017 | Standard |  |  | 2017-05-14 | 17/RUA01=$3,214.76 | 7 | 2017-05-19 |  | 2017-05-24 | 2017-05-24 | 5 | 12 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517038 | S3210XD | Unsp fracture of sacrum, subs for fx w routn heal | ICD10 | 05262017 | 05142017 | 05192017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 05182017 | 2017-05-18T15:15:39+00:00 |  | 000097216-01 | Thelma | Mills | FAYETTE COUNTY MEM HSP C | 905606 | WILLIAM C | STEVENSON | 1922181528 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05172017 | 05242017 | Standard |  |  | 2017-05-17 | Swing Bed Daily Rate x 8 days | 0 | 2017-05-25 |  |  | 2017-05-25 | 8 | 8 | Swing Bed Daily Rate |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518072 | Z5189 | Encounter for other specified aftercare | ICD10 | 05262017 | 05172017 | 05252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 8 | Revenue | RV |  |  |  | 1.0 |
| 05232017 | 2017-05-23T16:16:29+00:00 |  | 000108848-01 | Walter | Johnson | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 05262017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05212017 | 05232017 | Standard |  |  | 2017-05-21 | Per Diem: $200.00/day x 3 SNF Days = $ 600.00 | 0 | 2017-05-24 |  |  |  | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524021 | R4182 | Altered mental status, unspecified | ICD10 | 05262017 | 05212017 | 05242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 3 | Revenue | RV |  |  |  | 3.0 |
