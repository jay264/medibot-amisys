Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-30_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-30_SNF
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
| 01032018 | 2018-01-03T14:48:40+00:00 |  | 000012979-01 | WAID | NELSON | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 01302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12292017 | 01262018 | Standard |  |  | 2017-12-29 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2018-01-26 | 2018-01-29 | 2018-01-29 | 2018-01-29 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103124 | J9600, Z5189 | Encounter for other specified aftercare | ICD10 | 01302018 | 12292017 | 01262018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 29 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 12292017 | 2017-12-29T16:08:17+00:00 |  | 000012312-01 | CLYDE | RANNEBARGER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ARBORS AT DELAWARE | 943309 | 1033517891 | ARBORS AT DELAWARE | 1033517891 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT DELAWARE | 01302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12292017 | 01262018 | Standard |  |  | 2017-12-29 | 17/RVC01= $6306.19 8 DAYS @ $200.00= $1600.00 TOTAL: $7906.19 | 17 | 2018-01-26 |  | 2018-01-29 | 2018-01-29 | 28 | 45 | 7906.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229084 | C44629, I5030 | Unspecified diastolic (congestive) heart failure | ICD10 | 01302018 | 12292017 | 01262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7906 | 7906 | Approved | 29 | Revenue | RV |  |  |  | 1.0 |
| 01052018 | 2018-01-05T14:51:09+00:00 |  | 000109701-01 | Louise | Moore | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 01302018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 01042018 | 01232018 | Standard |  |  | 2018-01-04 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-01-23 |  | 2018-01-24 | 2018-01-24 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105087 | G0431 | Postinfectious acute necrotizing hemorrhagic encephalopathy | ICD10 | 01302018 | 01042018 | 01232018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 01122018 | 2018-01-12T11:07:33+00:00 |  | 000105059-01 | Robert | Huffman | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 01302018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01242018 | Standard |  |  | 2018-01-04 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-01-24 |  | 2018-01-26 |  | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112053 | J189 | Pneumonia, unspecified organism | ICD10 | 01302018 | 01042018 | 01242018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 10032017 | 2017-10-03T10:36:26+00:00 |  | 000037616-01 | MARY | BENSON | TIMOTHY J BRIGHT DO INC | 935342 | TIMOTHY J | BRIGHT | 1760405393 | CENTERBURG POINTE | 915833 | 1033410295 | CENTERBURG POINTE | 1033410295 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CENTERBURG POINTE | 01302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01302018 | 02062018 | Standard |  |  | 2017-09-29 | 17/RVB01= $5411.86 (Corrected closing, SNF adm. form had admit date as 9/26/17 should be 9/29/17)  | 0 | 2017-10-11 |  | 2017-10-18 | 2017-10-18 | 12 | 12 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003051 | M179, Z96652 | Presence of left artificial knee joint | ICD10 | 01302018 | 09292017 | 10112017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01022018 | 2018-01-02T13:01:04+00:00 |  | 000095593-01 | Larry | Fisher | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ZANESVILLE HEALTH AND REHABILITATION | 01302018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12292017 | 01012018 | Standard |  |  | 2017-12-29 | Per Diem: $200.00/day x 3 SNF Days = $600.00 Carve Out: IV Cefazolin $5.24/dose x 7 doses = $36.68 Total Payment: $636.68 | 2 | 2018-01-01 |  |  |  | 3 | 5 | 636.68 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102107 | B9561 | Methicillin suscep staph infct causing dis classd elswhr | ICD10 | 01302018 | 12292017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 636 | 636 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 01092018 | 2018-01-09T10:24:48+00:00 |  | 000082913-01 | Howard | Pratt | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 01302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01082018 | 01192018 | Standard |  |  | 2018-01-08 | 16/RUB01=$4,429.71 | 0 | 2018-01-19 |  | 2018-01-30 | 2018-01-30 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109129 | R531 | Weakness | ICD10 | 01302018 | 01082018 | 01192018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 01092018 | 2018-01-09T11:39:14+00:00 |  | 000045839-01 | MARY | WHYTE | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 01302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01042018 | 01102018 | Standard |  |  | 2018-01-04 | 17/RMA01= $2477.40 | 0 | 2018-01-10 |  | 2018-01-29 | 2018-01-29 | 6 | 6 | 2477.4 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109143 | Z96651 | Presence of right artificial knee joint | ICD10 | 01302018 | 01042018 | 01102018 | RMA01 | MEDIUM REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 01152018 | 2018-01-15T12:27:35+00:00 |  | 000001055-01 | MARY | JONES | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 01302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01122018 | 01182018 | Standard |  |  | 2018-01-12 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2018-01-18 |  | 2018-01-30 | 2018-01-29 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115131 | M4326, M545 | Low back pain | ICD10 | 01302018 | 01122018 | 01182018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 12292017 | 2017-12-29T16:56:20+00:00 |  | 000108387-01 | Gerald | Wallace | FCMH MED & SURG ASSOC | 906134 | DAVID J | GUNDERMAN | 1508861246 | THE LAURELS OF HILLSBORO | 952248 | 1255387221 | THE LAURELS OF HILLSBORO | 1255387221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE LAURELS OF HILLSBORO | 01302018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12282017 | 01172018 | Standard |  |  | 2017-12-28 | 17/RVB01=$5,411.86 | 0 | 2018-01-17 |  | 2018-01-29 | 2018-01-24 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102038 | I10 | Essential (primary) hypertension | ICD10 | 01302018 | 12282017 | 01172018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01102018 | 2018-01-10T13:56:26+00:00 |  | 000031902-01 | AVALENE | LEE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 01302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01092018 | 01232018 | Standard |  |  | 2018-01-09 | 16/RUB01=$4,429.71 | 0 | 2018-01-23 |  | 2018-01-30 |  | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110093 | I5032 | Chronic diastolic (congestive) heart failure | ICD10 | 01302018 | 01092018 | 01232018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 01122018 | 2018-01-12T12:17:35+00:00 |  | 000048499-01 | SARA | MCCONNELL | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 01302018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01112018 | 01272018 | Standard |  |  | 2018-01-11 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-01-27 |  | 2018-01-30 | 2018-01-30 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112069 | S32502S | Unspecified fracture of left pubis, sequela | ICD10 | 01302018 | 01112018 | 01272018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 01152018 | 2018-01-15T15:58:24+00:00 |  | 000099322-01 | Elmer | Boshears | FAYETTE COUNTY MEM HSP R | 906134 | DAVID J | GUNDERMAN | 1508861246 | THE LAURELS OF HILLSBORO | 952248 | 1255387221 | THE LAURELS OF HILLSBORO | 1255387221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE LAURELS OF HILLSBORO | 01302018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 01092018 | 01282018 | Standard |  |  | 2018-01-09 | 17/RVC01=$6306.19 | 0 | 2018-01-28 |  | 2018-01-29 | 2018-01-29 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115159 | R4182 | Altered mental status, unspecified | ICD10 | 01302018 | 01092018 | 01282018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
