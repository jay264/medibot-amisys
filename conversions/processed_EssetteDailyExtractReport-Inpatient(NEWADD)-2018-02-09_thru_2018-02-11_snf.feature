Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-09_thru_2018-02-11_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-09_thru_2018-02-11_SNF
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
| 11282017 | 2017-11-28T13:14:49+00:00 |  | 000071935-01 | Richard | Showers | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11142017 | 01172018 | Standard |  |  | 2017-11-14 | 17/RUC01=$6,049.81 PER DIEM RATE OF $250.00/DAY X 44 DAYS=$11,000.00 TOTAL PAYMENT TO FACILITY=$17,049.81 | 36 | 2018-01-17 | 2018-02-08 | 2018-02-08 | 2018-02-08 | 64 | 100 | 17049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129011 | Z4789 | Encounter for other orthopedic aftercare | ICD10 | 02092018 | 11142017 | 01172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 65 | Revenue | RV |  |  |  | 11.0 |
| 01182018 | 2018-01-18T15:31:07+00:00 |  | 000120526-01 | Jimmy | Walker | FAMILY PRACTICE ASSOC | 902127 | SALLY A | ABBOTT | 1891788626 | SPRINGFIELD NURSING & INDEPENDENT LI | 911709 | 1598905838 | SPRINGFIELD NURSING & INDEPENDENT LI | 1598905838 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SPRINGFIELD NURSING & INDEPENDENT LI | 02092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01172018 | 02012018 | Standard |  |  | 2018-01-17 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-02-01 |  | 2018-02-07 |  | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118081 | J189 | Pneumonia, unspecified organism | ICD10 | 02092018 | 01172018 | 02012018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 01192018 | 2018-01-19T13:30:33+00:00 |  | 000008692-01 | EILEEN | PICKRELL | HEARTLAND OF UPTOWN WEST | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 02092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01172018 | 01282018 | Standard |  |  | 2018-01-17 | 17/RVB01= $5411.86 | 0 | 2018-01-28 |  | 2018-02-08 | 2018-02-08 | 11 | 11 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119065 | N390 | Urinary tract infection, site not specified | ICD10 | 02092018 | 01172018 | 01282018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 11162017 | 2017-11-16T11:01:17+00:00 |  | 000004789-01 | LAWRENCE | COLACCI | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11142017 | 01262018 | Standard |  |  | 2017-11-14 | 17/RVC01= $6306.19 7 DAYS @ $250.00= $1750.00 42 DAYS @ $200.00= $8400.00 TOTAL: $16456.19 | 0 | 2018-01-26 |  | 2018-02-09 | 2018-02-09 | 69 | 69 | 16456.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116065 | M84472A | Pathological fracture, left ankle, init encntr for fracture | ICD10 | 02092018 | 11142017 | 01262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 74 | Revenue | RV |  |  |  | 6.0 |
| 11282017 | 2017-11-28T11:22:04+00:00 |  | 000043506-01 | CAROLYN | EDSTROM | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11262017 | 01272018 | Standard |  |  | 2017-11-26 | 17/RVC01= $6306.19 42 DAYS @ $200.00= $8400.00 TOTAL: $14706.19 | 0 | 2018-01-27 |  | 2018-02-09 | 2018-02-09 | 62 | 62 | 14706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128094 | S82301D | Unsp fx lower end of r tibia, subs for clos fx w routn heal | ICD10 | 02092018 | 11262017 | 01272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 63 | Revenue | RV |  |  |  | 1.0 |
| 12202017 | 2017-12-20T14:58:57+00:00 |  | 000001839-01 | HELEN | YOUNG | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12182017 | 01262018 | Standard |  |  | 2017-12-18 | 17/RVC01= $6306.19 19 DAYS @ $200.00= $3800.00 TOTAL: $10106.19 | 0 | 2018-01-26 |  | 2018-02-09 | 2018-02-09 | 39 | 39 | 10106.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220081 | S82855D | Nondisp trimalleol fx l low leg, 7thD | ICD10 | 02092018 | 12182017 | 01262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 40 | Revenue | RV |  |  |  | 4.0 |
| 02012018 | 2018-02-01T17:42:09+00:00 |  | 000119827-01 | Hilda | Allen | SOUTHERN OHIO MED INC | 931426 | SABIR M | QURAISHI | 1427082841 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 928906 | 1811988009 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 1811988009 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ADAMS COUNTY REGIONAL MEDICAL CENTER | 02092018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 02012018 | 02082018 | Standard |  |  | 2018-02-01 | Swing Bed Daily Rate x 7 Days | 0 | 2018-02-08 |  |  | 2018-02-08 | 7 | 7 | Swing Bed Daily Rate x 7 Days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202028 | J189 | Pneumonia, unspecified organism | ICD10 | 02092018 | 02012018 | 02082018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 8 | Revenue | RV |  |  |  | 7.0 |
| 11222017 | 2017-11-22T13:56:21+00:00 |  | 000113280-01 | Joyce | Mills | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11212017 | 01252018 | Standard |  |  | 2017-11-21 | 17/RUC01=$6,049.81 PER DIEM RATE OF $200.00/DAY X 45 DAYS=$9,000.00 TOTAL PAYMENT TO FACILITY=$15,049.81 | 0 | 2018-01-25 | 2018-01-15 | 2018-02-08 | 2018-01-15 | 65 | 65 | 15049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122075 | S72402D | Unsp fx lower end of l femur, subs for clos fx w routn heal | ICD10 | 02092018 | 11212017 | 01252018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 66 | Revenue | RV |  |  |  | 1.0 |
| 12052017 | 2017-12-05T16:46:58+00:00 |  | 000072575-01 | RONALD | TUCKER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 01142018 | Standard |  |  | 2017-12-01 | PER DIEM RATE OF $200.00/DAY X 44 DAYS=$8800.00 CARVE OUT FOR 83 DOSES OF TEFLARO PER INVOICE=$15,366.57 TOTAL PAYMENT TO FACILITY=$24,166.57 | 0 | 2018-01-14 |  | 2018-02-08 | 2018-02-08 | 44 | 44 | 24166.57 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206012 | Z89512 | Acquired absence of left leg below knee | ICD10 | 02092018 | 12012017 | 01142018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 45 | Revenue | RV |  |  |  | 2.0 |
| 01032018 | 2018-01-03T11:35:22+00:00 |  | 000105509-01 | Mary | Pool | PAUL MD LLC | 921506 | PAWEL | SZCZYKUTOWICZ | 1831142439 | COTTINGHAM RETIREMENT CO | 949774 | 1245223007 | COTTINGHAM RETIREMENT COMMUNITY | 1245223007 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COTTINGHAM RETIREMENT COMMUNITY | 02092018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 01052018 | 02052018 | Standard |  |  | 2018-01-05 | Per MDS: RVB01 = $5411.86 Per Diem: $200.00/day x 11 days = $2200.00 TOTAL PAYMENT = $7611.86 | 45 | 2018-02-05 | 2018-02-02 | 2018-02-09 | 2018-02-08 | 31 | 76 | 7611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103118 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02092018 | 01052018 | 02052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7611 | 7611 | Approved | 32 | Revenue | RV |  |  |  | 4.0 |
| 01052018 | 2018-01-05T16:29:46+00:00 |  | 000011532-01 | DOLLY | JONES | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01032018 | 01152018 | Standard |  |  | 2018-01-03 | 17/RVB01=$5,813.99 | 13 | 2018-01-15 |  | 2018-02-08 | 2018-02-08 | 12 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108016 | L7622, Z48817 | Encntr for surgical aftcr fol surgery on the skin, subcu | ICD10 | 02092018 | 01032018 | 01152018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01082018 | 2018-01-08T13:56:31+00:00 |  | 000079197-01 | Elizabeth | Linley | TIMOTHY J BRIGHT DO INC | 935342 | TIMOTHY J | BRIGHT | 1760405393 | CENTERBURG POINTE | 915833 | 1033410295 | CENTERBURG POINTE | 1033410295 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG POINTE | 02092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01042018 | 02052018 | Standard |  |  | 2018-01-04 | 17/RUA01= $3214.76 | 0 | 2018-02-05 |  | 2018-02-08 | 2018-02-08 | 18 | 18 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108129 | M6281 | Muscle weakness (generalized) | ICD10 | 02092018 | 01042018 | 02052018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 0 | 1 |  | 33 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 01232018 | 2018-01-23T13:30:32+00:00 |  | 000120590-01 | Barbara | Pettitt | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01222018 | 02062018 | Standard |  |  | 2018-01-22 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-02-06 |  | 2018-02-09 | 2018-02-07 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123075 | M1711, Z4733 | Aftercare following explantation of knee joint prosthesis | ICD10 | 02092018 | 01222018 | 02062018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 01242018 | 2018-01-24T13:35:03+00:00 |  | 000016769-01 | ANDREW | BATCHELOR | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01232018 | 02052018 | Standard |  |  | 2018-01-23 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-02-05 |  | 2018-02-09 | 2018-02-07 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124069 | J208, R531 | Weakness | ICD10 | 02092018 | 01232018 | 02052018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 01252018 | 2018-01-25T12:08:10+00:00 |  | 000051040-01 | EMILY | AKERSTROM | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 02092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01242018 | 02072018 | Standard |  |  | 2018-01-24 | 16/RVA01= $2689.71 | 0 | 2018-02-07 |  | 2018-02-09 | 2018-02-09 | 14 | 14 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125068 | I480, J09X2, R296 | Repeated falls | ICD10 | 02092018 | 01242018 | 02072018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01262018 | 2018-01-26T14:36:45+00:00 |  | 000056696-01 | JULIA | RUSSELL | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 02092018 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 02092018 | 02162018 | Standard |  |  | 2018-01-24 | 17/RMA01=$2,477.40 | 0 | 2018-01-31 |  | 2018-01-31 | 2018-01-31 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126077 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02092018 | 01242018 | 01312018 | RMA01 | MEDIUM REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 02012018 | 2018-02-01T13:11:26+00:00 |  | 000114706-01 | David | Barry | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01312018 | 02092018 | Standard |  |  | 2018-01-31 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-02-09 |  | 2018-02-09 |  | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201068 | M87852 | Other osteonecrosis, left femur | ICD10 | 02092018 | 01312018 | 02092018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
