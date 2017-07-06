Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-03_thru_2017-0704_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-03_thru_2017-0704_SNF
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
| 05192017 | 2017-05-19T10:04:02+00:00 |  | 000009359-01 | YUVONNE | KNAPP | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | SCIOTO RETIREMENT COMMUNITY | 902185 | 1205823770 | SCIOTO RETIREMENT COMMUNITY | 1205823770 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 07032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05252017 | 06132017 | Standard |  |  | 2017-05-25 | Per MDS/SCA: RUC01 = $6049.81 TOTAL PAYMENT = $6049.81 | 0 | 2017-06-14 |  | 2017-06-19 | 2017-06-30 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519037 | S72021A | Disp fx of epiphysis (separation) (upper) of r femur, init | ICD10 | 07032017 | 05252017 | 06142017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05262017 | 2017-05-26T14:16:35+00:00 |  | 000111547-01 | KENNETH | GRESSIERER | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 07032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07032017 | 07102017 | Standard |  |  | 2017-05-25 | 17/RUB01=$5813.99 | 0 | 2017-06-17 |  | 2017-06-27 | 2017-06-27 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526074 | M4322, R1310 | Dysphagia, unspecified | ICD10 | 07032017 | 05252017 | 06172017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 05302017 | 2017-05-30T09:52:01+00:00 |  | 000032116-01 | LARRY | EDGINGTON | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 07032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05272017 | 06092017 | Standard |  |  | 2017-05-27 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-06-10 |  | 2017-06-30 | 2017-06-30 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530121 | I6789 | Other cerebrovascular disease | ICD10 | 07032017 | 05272017 | 06102017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 06072017 | 2017-06-07T11:29:05+00:00 |  | 000037207-01 | ESTHER | RAMEY | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 07032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06062017 | 06142017 | Standard |  |  | 2017-06-06 | Per MDS: 17/RUA01 = $3214.76 TOTAL PAYMENT = $3214.76 | 0 | 2017-06-15 |  | 2017-06-20 | 2017-07-03 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607047 | S72002G, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 07032017 | 06062017 | 06152017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 06072017 | 2017-06-07T13:36:17+00:00 |  | 000046946-01 | BEVERLY | SEYMOUR | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 07032017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06052017 | 06192017 | Standard |  |  | 2017-06-05 | Per MDS: 17/RVA01 = $6306.19 TOTAL PAYMENT = $6306.19 | 0 | 2017-06-20 |  | 2017-06-30 | 2017-06-30 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607065 | M4806 | Spinal stenosis, lumbar region | ICD10 | 07032017 | 06052017 | 06202017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06082017 | 2017-06-08T16:43:02+00:00 |  | 000088383-01 | Gail | McPherson | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | MARIETTA REHABILITATION AND NURSING | 931538 | 1184730913 | MARIETTA REHABILITATION AND NURSING | 1184730913 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MARIETTA REHABILITATION AND NURSING | 07032017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 06072017 | 06272017 | Standard |  |  | 2017-06-07 | 17/RHA01=$2812.08 | 0 | 2017-06-28 |  | 2017-07-03 | 2017-07-03 | 21 | 21 | 2812.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609021 | Z96651 | Presence of right artificial knee joint | ICD10 | 07032017 | 06072017 | 06282017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 06122017 | 2017-06-12T12:14:37+00:00 |  | 000108693-01 | Jane | Molter | GENNANTONIO, MARGRETTA E | 924402 | MARGRETTA E | GENNANTONIO | 1295735884 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 07032017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 06082017 | 06272017 | Standard |  |  | 2017-06-08 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-06-28 |  | 2017-06-30 |  | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612097 | M1612, Z471 | Aftercare following joint replacement surgery | ICD10 | 07032017 | 06082017 | 06282017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 06182017 | 2017-06-18T22:03:29+00:00 |  | 000116290-01 | THOMAS | JACOBS | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 07032017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06152017 | 06212017 | Standard |  |  | 2017-06-15 | Per MDS: 17/LB101 = $2915.24 TOTAL PAYMENT = $2915.24 | 0 | 2017-06-22 |  | 2017-06-30 | 2017-06-30 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619041 | M545 | Low back pain | ICD10 | 07032017 | 06152017 | 06222017 | LB101 | SPECIAL CARE LOW , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 06202017 | 2017-06-20T13:53:33+00:00 |  | 000003408-01 | RUTH | ANDERSON | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 07032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06162017 | 06212017 | Standard |  |  | 2017-06-16 | Per MDS: 17/LD101 = $3448.45 TOTAL PAYMENT = $3448.45 | 19 | 2017-06-22 |  | 2017-07-03 |  | 6 | 25 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620113 | N179, Z5189 | Encounter for other specified aftercare | ICD10 | 07032017 | 06162017 | 06222017 | LD101 | SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 06222017 | 2017-06-22T11:25:57+00:00 |  | 000022428-01 | FLORENCE | JONES | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 07032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06202017 | 06302017 | Standard |  |  | 2017-06-20 | 17/RUB01=$ 5813.99 | 0 | 2017-07-01 |  | 2017-07-03 | 2017-07-03 | 11 | 11 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622048 | S82851D | Displ trimalleol fx r low leg, subs for clos fx w routn heal | ICD10 | 07032017 | 06202017 | 07012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 06222017 | 2017-06-22T14:02:33+00:00 |  | 000009280-01 | THEOLA | WAFE | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 07032017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 06212017 | 06302017 | Standard |  |  | 2017-06-21 | 17/RUB01= $5813.99 | 0 | 2017-07-01 |  | 2017-07-03 | 2017-07-03 | 10 | 10 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622072 | I5022 | Chronic systolic (congestive) heart failure | ICD10 | 07032017 | 06212017 | 07012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 06222017 | 2017-06-22T14:13:56+00:00 |  | 000053275-01 | MARGARET | SCHILLING | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 07032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06212017 | 06232017 | Standard |  |  | 2017-06-21 | Per MDS: 17/PD101 = $2581.99 TOTAL PAYMENT = $2581.99 | 0 | 2017-06-24 |  | 2017-06-29 |  | 3 | 3 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622074 | I70209, R001, R55 | Syncope and collapse | ICD10 | 07032017 | 06212017 | 06242017 | PD101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCP | RUGS,HHRG | 1 | 1 | Approved | 3 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 06262017 | 2017-06-26T08:44:20+00:00 |  | 000045317-01 | JACQUELINE | GUNDLING | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 07032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06222017 | 06282017 | Standard |  |  | 2017-06-22 | Per MDS: 16/RHA01 = $2045.15 TOTAL PAYMENT = $2045.15 | 0 | 2017-06-29 |  | 2017-06-30 | 2017-06-30 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626007 | D469, F419, I10, R040 | Epistaxis | ICD10 | 07032017 | 06222017 | 06292017 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 06302017 | 2017-06-30T09:46:08+00:00 |  | 000003390-01 | CECILIA | GUZZO | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 07032017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06282017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630032 | M172 | Bilateral post-traumatic osteoarthritis of knee | ICD10 | 07032017 | 06282017 | 07032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
| 06302017 | 2017-06-30T12:30:00+00:00 |  | 000083667-01 | Vernon | Schoeppner | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 07032017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 06282017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630044 | C61, C641 | Malignant neoplasm of right kidney, except renal pelvis | ICD10 | 07032017 | 06262017 | 07032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
| 06272017 | 2017-06-27T11:52:24+00:00 |  | 000045873-01 | PAUL | YOAKUM | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 07032017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 06232017 | 06282017 | Standard |  |  | 2017-06-23 | Admission Denial - Non skilled rate Per Diem: $200.00/day x 6 days = $1200.00 TOTAL PAYMENT = $1200.00 | 0 | 2017-06-29 |  |  |  | 0 | 0 | 1200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170627079 | I482, I160 | HYPERTENSIVE URGENCY | ICD10 | 07032017 | 06232017 | 06292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved | 6 | Revenue | RV |  |  |  | 6.0 |
