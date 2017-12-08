Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-06_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-06_SNF
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
| 11272017 | 2017-11-27T14:25:50+00:00 |  | 000009402-01 | Jack | Hayner | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11252017 | 12052017 | Standard |  |  | 2017-11-25 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2017-12-05 |  | 2017-12-05 | 2017-12-05 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128019 | I951 | Orthostatic hypotension | ICD10 | 12062017 | 11252017 | 12052017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 10252017 | 2017-10-25T15:41:38+00:00 |  | 000046249-01 | NORMA | HUMMELL | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10242017 | 11272017 | Standard |  |  | 2017-10-24 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.00/DAY X 14=$2,800.00 TOTAL PAYMENT=$9,106.19 | 0 | 2017-11-27 |  | 2017-12-04 | 2017-12-04 | 34 | 34 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026007 | T84020D, Z4732 | Aftercare following explantation of hip joint prosthesis | ICD10 | 12062017 | 10242017 | 11272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9106 | 9106 | Approved Skilled | 35 | Revenue | RV |  |  |  | 4.0 |
| 11132017 | 2017-11-13T11:08:03+00:00 |  | 000044491-01 | CONNIE | FRABOTT | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11092017 | 11252017 | Standard |  |  | 2017-11-09 | 17/RUB01= $5813.99 | 0 | 2017-11-25 |  | 2017-12-05 | 2017-12-05 | 16 | 16 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113058 | S42202D | Unsp fx upper end of l humerus, subs for fx w routn heal | ICD10 | 12062017 | 11092017 | 11252017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 11142017 | 2017-11-14T10:48:59+00:00 |  | 000020670-01 | ALSTINE | HYDE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11112017 | 11222017 | Standard |  |  | 2017-11-11 | 17/RVB01= $5411.86 | 0 | 2017-11-22 |  | 2017-12-05 | 2017-12-05 | 11 | 11 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114093 | N390 | Urinary tract infection, site not specified | ICD10 | 12062017 | 11112017 | 11222017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 11282017 | 2017-11-28T11:17:22+00:00 |  | 000067295-01 | JAMES | WILSON | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 12062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11212017 | 12022017 | Standard |  |  | 2017-11-21 | 16/RHC01= $3133.29 | 0 | 2017-12-02 |  | 2017-12-04 | 2017-12-04 | 11 | 11 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128093 | D649 | Anemia, unspecified | ICD10 | 12062017 | 11212017 | 12022017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 11022017 | 2017-11-02T14:24:51+00:00 |  | 000033486-01 | GEORGE | SYKES | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11012017 | 11262017 | Standard |  |  | 2017-11-01 | Contract/RUG: 17/RUC (per MDS) = $6,049.81 Per Diem: $200.00/day x 2 SNF Days = $400.00 Total Payment: $6,449.81 | 21 | 2017-11-26 |  | 2017-11-14 |  | 22 | 43 | 6449.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102057 | S76119D | Strain of unsp quadriceps muscle, fascia and tendon, subs | ICD10 | 12062017 | 11012017 | 11262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6449 | 6449 | Approved | 26 | Revenue | RV |  |  |  | 2.0 |
| 10062017 | 2017-10-06T10:09:21+00:00 |  | 000086609-01 | Virginia | Coss | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10042017 | 11302017 | Standard |  |  | 2017-10-04 | 17/RUB01= $5813.99 25 DAYS @ $250.00= $6250.00 12 DAYS @ $200.00= $2400.00 TOTAL: $14463.99 | 0 | 2017-11-30 |  | 2017-12-06 | 2017-12-06 | 57 | 57 | 14463.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006044 | S3210XD | Unsp fracture of sacrum, subs for fx w routn heal | ICD10 | 12062017 | 10042017 | 11302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 58 | Revenue | RV |  |  |  | 13.0 |
| 11162017 | 2017-11-16T17:42:05+00:00 |  | 000051208-01 | DIANE | PRICE | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11142017 | 11242017 | Standard |  |  | 2017-11-14 | Contract/RUG: 17/RHA (Per MDS) = $2,812.08 | 0 | 2017-11-24 |  | 2017-12-05 | 2017-12-05 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117036 | R531 | Weakness | ICD10 | 12062017 | 11142017 | 11242017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 11172017 | 2017-11-17T12:17:04+00:00 |  | 000073293-01 | Sue | Flack | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11152017 | 12012017 | Standard |  |  | 2017-11-15 | 17/RUC01= $6049.81 | 0 | 2017-12-01 |  | 2017-12-06 |  | 16 | 16 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117056 | G20, Z9181 | History of falling | ICD10 | 12062017 | 11152017 | 12012017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 09112017 | 2017-09-11T14:33:25+00:00 |  | 000010851-01 | PAULINE | BALDWIN | NANCY LYNN ALKIRE LLC | 901854 | NANCY | ALKIRE | 1710924659 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09082017 | 09202017 | Standard |  |  | 2017-09-08 | Per Diem: $200.00/day x 12 days = $2400.00 IV Vancomycin (per invoice) = $130.46 TOTAL PAYMENT = $2530.46 | 0 | 2017-09-20 |  |  | 2017-09-20 | 12 | 12 | 2530.46 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911122 | I639, L03116 | Cellulitis of left lower limb | ICD10 | 12062017 | 09082017 | 09202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2530 | 2530 | Approved | 13 | Revenue | RV |  |  |  | 12.0 |
| 08182017 | 2017-08-18T11:16:00+00:00 |  | 000040310-01 | MARGARET | BECHIE | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08162017 | 11252017 | Standard |  |  | 2017-08-16 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 78 days = $19,500.00 Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $25,949.81 | 0 | 2017-11-25 |  | 2017-12-05 |  | 100 | 100 | 25949.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818065 | M6281, R2681, T07 | Unspecified multiple injuries | ICD10 | 12062017 | 08162017 | 11252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 102 | Revenue | RV |  |  |  | 14.0 |
| 08292017 | 2017-08-29T13:42:59+00:00 |  | 000055368-01 | GEORGE | ECHARD | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08252017 | 12042017 | Standard |  |  | 2017-08-25 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $200.00/day x 80 days = $16,000.00 TOTAL PAYMENT = $22,049.81 | 0 | 2017-12-04 |  | 2017-12-05 |  | 100 | 100 | 22049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829074 | M4806, M6281 | Muscle weakness (generalized) | ICD10 | 12062017 | 08252017 | 12042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 102 | Revenue | RV |  |  |  | 7.0 |
| 08182017 | 2017-08-18T14:33:18+00:00 |  | 000066148-01 | ROBERT | BOST | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08162017 | 11252017 | Standard |  |  | 2017-08-16 | Per Diem: $200.00/day x 100 days = $20,000.00 IV Cefipime (per invoice) = $324.87 Wound VAC (per invoice) = $1576.05 TOTAL PAYMENT = $21,900.92 | 0 | 2017-11-25 |  | 2017-12-05 |  | 100 | 100 | 21900.92 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821087 | I96 | Gangrene, not elsewhere classified | ICD10 | 12062017 | 08162017 | 11252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 102 | Revenue | RV |  |  |  | 9.0 |
| 10302017 | 2017-10-30T13:54:30+00:00 |  | 000095750-01 | Charles | Vandyne | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 12062017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 10272017 | 11272017 | Standard |  |  | 2017-10-27 | 31 DAYS @ $520.00/DAY VENT= $16120.00 | 0 | 2017-11-27 |  | 2017-12-06 |  | 31 | 31 | 16120.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030119 | I509, J9692 | Respiratory failure, unspecified with hypercapnia | ICD10 | 12062017 | 10272017 | 11272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 32 | Revenue | RV |  |  |  | 7.0 |
| 11282017 | 2017-11-28T10:02:55+00:00 |  | 000116215-01 | GLEN | SIDWELL JR | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 12062017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 11252017 | 12042017 | Standard |  |  | 2017-11-25 | 17/RVA01= $3586.28 | 0 | 2017-12-04 |  | 2017-12-06 | 2017-12-06 | 9 | 9 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128076 | C250, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 12062017 | 11252017 | 12042017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 10092017 | 2017-10-09T16:22:17+00:00 |  | 000085530-01 | John | Park | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10052017 | 11152017 | Standard |  |  | 2017-10-05 | Per Diem: $200.00/day x 41 days = $8200.00 IV Zosyn (per Invoice) = $15,479.36 TOTAL PAYMENT = $23,679.36 | 3 | 2017-11-15 |  | 2017-12-06 | 2017-12-06 | 41 | 44 | 23679.36 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010005 | A310 | Pulmonary mycobacterial infection | ICD10 | 12062017 | 10052017 | 11152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 42 | Revenue | RV |  |  |  | 2.0 |
| 11272017 | 2017-11-27T13:48:52+00:00 |  | 000026612-01 | NORMA | MILLER | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11242017 | 12012017 | Standard |  |  | 2017-11-24 | 16/RVB01=$3,350.20 | 0 | 2017-12-01 |  | 2017-12-05 | 2017-12-05 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127156 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 12062017 | 11242017 | 12012017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 11142017 | 2017-11-14T10:06:56+00:00 |  | 000010566-01 | FREDA | FARLEY | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 12062017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11132017 | 11282017 | Standard |  |  | 2017-11-13 | 17/RVC01=$6,306.19 | 0 | 2017-11-28 |  | 2017-12-06 |  | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114084 | E039, F3130, I509 | Heart failure, unspecified | ICD10 | 12062017 | 11132017 | 11282017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11102017 | 2017-11-10T15:37:07+00:00 |  | 000057013-01 | DOROTHY | SWAYNE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 12062017 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 11092017 | 11292017 | Standard |  |  | 2017-11-09 | 17/RVB01=$5,411.86 | 0 | 2017-11-29 |  | 2017-12-12 | 2017-12-12 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110078 | N390 | Urinary tract infection, site not specified | ICD10 | 12062017 | 11092017 | 11292017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11142017 | 2017-11-14T09:39:33+00:00 |  | 000104773-01 | Estella | Sandusky | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 12062017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11092017 | 11282017 | Standard |  |  | 2017-11-09 | 17/RVB01=$5,411.86 | 0 | 2017-11-28 |  | 2017-11-30 | 2017-11-30 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114079 | E039, I10, S42201A | Unsp fracture of upper end of right humerus, init | ICD10 | 12062017 | 11092017 | 11282017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
