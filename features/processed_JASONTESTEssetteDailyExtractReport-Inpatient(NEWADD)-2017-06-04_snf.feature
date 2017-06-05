Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-04_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-04_SNF
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
| 02062017 | 2017-02-06T15:36:43+00:00 |  | 000105019-01 | Martha | Secrest | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Post-Service | POST |  | CIRCLEVILLE CARE & REHAB CENTER | 06022017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02032017 | 02232017 | Standard |  |  | 2017-02-03 | Contract/RUG: 17/RVA01 (PER MDS) = $3586.28 | 0 | 2017-02-23 |  | 2017-02-16 | 2017-02-24 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A170207030 | M6281, N390 | Urinary tract infection, site not specified | ICD10 | 06022017 | 02032017 | 02232017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04072017 | 2017-04-07T11:14:08+00:00 |  | 000117391-01 | Shirley | Wiggins | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 06022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04052017 | 04282017 | Standard |  |  | 2017-04-05 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 3 SNF days = $750.00 TOTAL PAYMENT = $8083.11 | 0 | 2017-04-28 |  | 2017-04-28 | 2017-04-28 | 23 | 23 | 8083.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170407057 | R109 | Unspecified abdominal pain | ICD10 | 06022017 | 04052017 | 04282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8083 | 8083 | Approved | 24 | Revenue | RV |  |  |  | 23.0 |
| 04172017 | 2017-04-17T14:54:24+00:00 |  | 000086147-01 | Cynthia | Hammond | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 06022017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04142017 | 04282017 | Standard |  |  | 2017-04-14 | Per MDS: 17/RUB01 = $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-04-28 |  | 2017-05-02 | 2017-04-28 | 14 | 14 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418001 | M4326, Z4782 | Encounter for orth aftercare following scoliosis surgery | ICD10 | 06022017 | 04142017 | 04282017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 04212017 | 2017-04-21T14:36:33+00:00 |  | 000115828-01 | Joanne | Smith | SMITH, KIRK E | 940202 | KIRK E | SMITH | 1730199985 | KINGSTON OF MIAMISBURG | 927958 | 1972590115 | KINGSTON OF MIAMISBURG | 1972590115 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINGSTON OF MIAMISBURG | 06022017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04202017 | 05122017 | Standard |  |  | 2017-04-20 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 33 | 2017-05-12 |  | 2017-05-10 | 2017-05-10 | 20 | 53 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424016 | J189 | Pneumonia, unspecified organism | ICD10 | 06022017 | 04202017 | 05122017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 04242017 | 2017-04-24T09:58:55+00:00 |  | 000079604-01 | Patricia | Gram | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 06022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04212017 | 05212017 | Standard |  |  | 2017-04-21 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 Per Diem: $200.00/day x 7 SNF Days = $1,400.00 Total Payment: $4,614.76 | 20 | 2017-05-22 |  | 2017-06-02 |  | 27 | 47 | 4614.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424072 | J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 06022017 | 04212017 | 05222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4614 | 4614 | Approved | 31 | Revenue | RV |  |  |  | 6.0 |
| 04242017 | 2017-04-24T10:17:05+00:00 |  | 000049327-01 | PAMELA | BOSTWICK | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 06022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04212017 | 05022017 | Standard |  |  | 2017-04-21 | Per MDS: 17/RUA01 = $3214.76 TOTAL PAYMENT = $3214.76 | 0 | 2017-05-02 |  | 2017-05-02 | 2017-05-02 | 11 | 11 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424074 | D509, E1140, E785, I10, I2510, Z471, Z96651, Z794 | Long term (current) use of insulin | ICD10 | 06022017 | 04212017 | 05022017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 04242017 | 2017-04-24T14:04:13+00:00 |  | 000051676-01 | MAUD | SMYTH | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 06022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04212017 | 05012017 | Standard |  |  | 2017-04-21 | 17/RVC01=$6306.19 | 0 | 2017-05-01 |  | 2017-05-03 | 2017-05-03 | 10 | 10 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424125 | R296 | Repeated falls | ICD10 | 06022017 | 04212017 | 05012017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 04252017 | 2017-04-25T15:50:06+00:00 |  | 000076931-01 | Jean | Wilson | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 06022017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04232017 | 05022017 | Standard |  |  | 2017-04-23 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-05-02 |  | 2017-05-21 | 2017-05-21 | 9 | 9 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426017 | R531 | Weakness | ICD10 | 06022017 | 04232017 | 05022017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 04282017 | 2017-04-28T16:03:34+00:00 |  | 000031327-01 | TEX | STUMP | INTEGRATED FAM MED INC | 935664 | WINNIE N | MOAZAMPOUR | 1427006923 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 06022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04262017 | 05012017 | Standard |  |  | 2017-04-26 | 16/LD201=$4,114.96 | 0 | 2017-05-01 |  | 2017-05-10 |  | 5 | 5 | 4114.96 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501127 | G9340, K261 | Acute duodenal ulcer with perforation | ICD10 | 06022017 | 04262017 | 05012017 | LD201 | SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 05012017 | 2017-05-01T12:55:50+00:00 |  | 000023074-01 | Shirley | Keefe | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 06022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272017 | 05202017 | Standard |  |  | 2017-04-27 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $200.00 x 3 SNF Days = $600.00 Total Payment: $6,413.99 | 0 | 2017-05-20 | 2017-05-22 | 2017-05-22 | 2017-05-22 | 23 | 23 | 6413.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502069 | R296, S82842D | Displ bimalleol fx l low leg, subs for clos fx w routn heal | ICD10 | 06022017 | 04272017 | 05202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6413 | 6413 | Approved | 24 | Revenue | RV |  |  |  | 3.0 |
| 05012017 | 2017-05-01T16:32:20+00:00 |  | 000052139-01 | ELIZABETH | GLAZE | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04282017 | 05302017 | Standard |  |  | 2017-04-28 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 13 days = $2600.00 TOTAL PAYMENT = $9933.11 | 0 | 2017-05-31 |  | 2017-06-01 |  | 33 | 33 | 9933.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502092 | E870, I10, I480, I509, R262, R531, W010XXS | Fall same lev from slip/trip w/o strike agnst object, sqla | ICD10 | 06022017 | 04282017 | 05312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9933 | 9933 | Approved | 33 | Revenue | RV |  |  |  | 5.0 |
| 05022017 | 2017-05-02T11:43:19+00:00 |  | 000002467-01 | PAUL | FISCHER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 06022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05012017 | 05162017 | Standard |  |  | 2017-05-01 | 16/RUC01=$7,333.11 | 0 | 2017-05-16 |  | 2017-05-18 | 2017-05-18 | 15 | 15 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503032 | J189, R269, R471 | Dysarthria and anarthria | ICD10 | 06022017 | 05012017 | 05162017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05022017 | 2017-05-02T12:54:48+00:00 |  | 000028781-01 | AUDREY | ORR | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 06022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05012017 | 05302017 | Standard |  |  | 2017-05-01 | 16/RUA01=$3214.76 8 DAYS @ $200.00=$1600.00 TOTAL: $4814.76 | 0 | 2017-05-31 |  | 2017-06-02 | 2017-06-02 | 28 | 28 | 4814.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503040 | S42201D | Unsp fx upper end of r humerus, subs for fx w routn heal | ICD10 | 06022017 | 05012017 | 05312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4814 | 4814 | Approved | 30 | Revenue | RV |  |  |  | 8.0 |
| 05022017 | 2017-05-02T17:39:21+00:00 |  | 000045479-01 | BETTY | UNDERWOOD | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05012017 | 05312017 | Standard |  |  | 2017-05-01 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 11 days = $2200.00 TOTAL PAYMENT = $9533.11 | 0 | 2017-06-01 |  | 2017-06-01 | 2017-06-01 | 31 | 31 | 9533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503062 | E1142, I739, M1990, R296, R531, Z789 | Other specified health status | ICD10 | 06022017 | 05012017 | 06012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9533 | 9533 | Approved | 31 | Revenue | RV |  |  |  | 1.0 |
| 05122017 | 2017-05-12T09:22:59+00:00 |  | 000100761-01 | John | West | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 06022017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05102017 | 06012017 | Standard |  |  | 2017-05-10 | Contract/RUG: 17/CC1 (Per MDS) = $3,231.84 Per Diem: $200.00/day x 3 SNF Days = $600.00 Total Payment: $3,831.84 | 0 | 2017-06-02 |  | 2017-05-30 | 2017-05-30 | 23 | 23 | 3831.84 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512024 | , I69954, M6281 | Muscle weakness (generalized) | ICD10 | 06022017 | 05102017 | 06022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3831 | 3831 | Approved | 23 | Revenue | RV |  |  |  | 3.0 |
| 05122017 | 2017-05-12T09:24:20+00:00 |  | 000100869-01 | Suroba | West | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 06022017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05102017 | 06012017 | Standard |  |  | 2017-05-10 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Per Diem: $200.00/day x 3 SNF Days = $600.00 Total Payment: $6,011.86 | 0 | 2017-06-02 |  | 2017-05-30 | 2017-05-30 | 23 | 23 | 6011.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512026 | I209, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06022017 | 05102017 | 06022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6011 | 6011 | Approved | 23 | Revenue | RV |  |  |  | 3.0 |
| 05122017 | 2017-05-12T15:44:28+00:00 |  | 000099492-01 | Cheryl | Oelker | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06022017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 05112017 | 05302017 | Standard |  |  | 2017-05-11 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-05-31 |  | 2017-05-31 | 2017-05-31 | 20 | 20 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515076 | I10, I341, J449, M1732, M25562, Z96652 | Presence of left artificial knee joint | ICD10 | 06022017 | 05112017 | 05312017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05192017 | 2017-05-19T13:40:47+00:00 |  | 000064091-01 | MARGUERITE | CONLEY | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 06022017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05182017 | 05262017 | Standard |  |  | 2017-05-18 | Per MDS: 17/RVB01 = $5411.86 TOTAL PAYMENT = $5411.86 | 0 | 2017-05-27 |  | 2017-05-31 | 2017-05-31 | 9 | 9 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519065 | Z96651 | Presence of right artificial knee joint | ICD10 | 06022017 | 05182017 | 05272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 05232017 | 2017-05-23T10:11:41+00:00 |  | 000117471-01 | WAYNE | BAUER | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | SOMERSET HEALTH & REHABILITATION C | 942963 | 1952791758 | SOMERSET HEALTH & REHABILITATION C | 1952791758 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOMERSET HEALTH & REHABILITATION C | 06022017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 05202017 | 05262017 | Standard |  |  | 2017-05-20 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-05-27 |  | 2017-06-01 | 2017-06-01 | 7 | 7 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523052 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06022017 | 05202017 | 05272017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
