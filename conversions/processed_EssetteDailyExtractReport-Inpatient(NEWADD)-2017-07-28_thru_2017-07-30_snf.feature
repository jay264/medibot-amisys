Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-28_thru_2017-07-30_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-28_thru_2017-07-30_SNF
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
| 02022017 | 2017-02-02T12:11:16+00:00 |  | 000101033-01 | Ella | Merritt | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01302017 | 03152017 | Standard |  |  | 2017-01-30 | Contract/RUG: 16/RVB (per MDS) = $3,350.20 Per Diem: $200.00/day x 21 SNF Days = $ 4,200.00 Total Payment: $ 7,550.20 | 0 | 2017-03-15 |  | 2017-03-17 | 2017-03-17 | 41 | 41 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170204003 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 07282017 | 01302017 | 03152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7550 | 7550 | Approved | 45 | Revenue | RV |  |  |  | 41.0 |
| 05252017 | 2017-05-25T16:52:01+00:00 |  | 000076896-01 | Richard | Sohrenssen | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 07282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05242017 | 07212017 | Standard |  |  | 2017-05-24 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 18 days = $4500.00 Per Diem: $200.00/day x 21 days = $4200.00 TOTAL PAYMENT = $16,033.11 | 0 | 2017-07-22 | 2017-07-17 | 2017-07-24 | 2017-07-24 | 59 | 59 | 16033.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526039 | G9340, I509, N189, R400, R569, Z8673, Z741 | Need for assistance with personal care | ICD10 | 07282017 | 05242017 | 07222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 59 | Revenue | RV |  |  |  | 8.0 |
| 05302017 | 2017-05-30T09:58:08+00:00 |  | 000052540-01 | CHARLES | UHRIG JR | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05262017 | 07162017 | Standard |  |  | 2017-05-26 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 32 days = $6400.00 TOTAL PAYMENT = $12,706.19 | 7 | 2017-07-17 | 2017-07-14 | 2017-07-25 | 2017-07-25 | 52 | 59 | 12706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530134 | S7291XD | Unsp fracture of right femur, subs for clos fx w routn heal | ICD10 | 07282017 | 05262017 | 07172017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 52 | Revenue | RV |  |  |  | 4.0 |
| 06052017 | 2017-06-05T16:22:01+00:00 |  | 000098144-01 | Paul | Lambert | MARIETTA HLTH CARE PHYS | 922033 | STEVEN W | HOWE | 1053388066 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 07282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 06032017 | 07132017 | Standard |  |  | 2017-06-03 | 17/rvc01=$630619 20 days @ $200.00=$4000.00 total: $10306.19 | 10 | 2017-07-14 | 2017-07-27 | 2017-07-25 | 2017-07-25 | 41 | 51 | 10306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606024 | M14679 | Charcot's joint, unspecified ankle and foot | ICD10 | 07282017 | 06032017 | 07142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 41 | Revenue | RV |  |  |  | 7.0 |
| 06202017 | 2017-06-20T10:12:24+00:00 |  | 000085504-01 | Elizabeth | Roark Ramsey | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06172017 | 07262017 | Standard |  |  | 2017-06-17 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 20 days = $4000.00 TOTAL PAYMENT = $10,306.19 | 0 | 2017-07-27 |  | 2017-07-27 | 2017-07-27 | 40 | 40 | 10306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620077 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 07282017 | 06172017 | 07272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 40 | Revenue | RV |  |  |  | 3.0 |
| 06212017 | 2017-06-21T14:18:57+00:00 |  | 000116419-01 | Cornelius | Schaub | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | CAMBRIDGE HEALTHCARE AND | 930700 | 1053662429 | ASTORIA PLACE OF CAMBRIDGE | 1053662429 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF CAMBRIDGE | 07282017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 06212017 | 06262017 | Standard |  |  | 2017-06-21 | 16/PB101=$2132.09 WOUND VAC (PER INVOICE) $330.00 TOTAL" $2462.09 | 51 | 2017-06-27 |  | 2017-07-14 |  | 6 | 57 | 2463.09 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621064 | L0231 | Cutaneous abscess of buttock | ICD10 | 07282017 | 06212017 | 06272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 6 | Revenue | RV |  |  |  | 6.0 |
| 06222017 | 2017-06-22T14:13:56+00:00 |  | 000053275-01 | MARGARET | SCHILLING | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06212017 | 07252017 | Standard |  |  | 2017-06-21 | Per MDS: 17/PD101 = $2581.99 | 0 | 2017-07-26 | 2017-07-25 | 2017-07-27 | 2017-07-25 | 24 | 24 |  | 170705114411.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622074 | I70209, R001, R55 | Syncope and collapse | ICD10 | 07282017 | 06212017 | 07262017 | PD101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCP | RUGS,HHRG | 1 | 1 | Approved | 35 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 06232017 | 2017-06-23T15:09:57+00:00 |  | 000083443-01 | Louise | Jones | PICKAWAY HEALTH SERVICES | 913727 | KEVIN M | SELLERS | 1306085220 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06222017 | 07202017 | Standard |  |  | 2017-06-22 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 9 skilled days = $2250.00 TOTAL PAYMENT = $8299.81 | 0 | 2017-07-21 | 2017-07-18 | 2017-07-24 | 2017-07-24 | 29 | 29 | 8299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623064 | Z96642 | Presence of left artificial hip joint | ICD10 | 07282017 | 06222017 | 07212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8299 | 8299 | Approved | 29 | Revenue | RV |  |  |  | 2.0 |
| 06262017 | 2017-06-26T11:50:59+00:00 |  | 000088528-01 | Dale | Strohm | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06222017 | 07142017 | Standard |  |  | 2017-06-22 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-07-15 | 2017-07-13 | 2017-07-17 | 2017-07-17 | 23 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626097 | J441, Z5189 | Encounter for other specified aftercare | ICD10 | 07282017 | 06222017 | 07152017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 06272017 | 2017-06-27T08:21:33+00:00 |  | 000044563-01 | HAROLD | JONES | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06252017 | 07072017 | Standard |  |  | 2017-06-25 | 16/RMC01=$2476.91 | 0 | 2017-07-07 |  | 2017-07-05 |  | 13 | 13 | 2476.91 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627042 | J189, J9601 | Acute respiratory failure with hypoxia | ICD10 | 07282017 | 06252017 | 07082017 | RMC01 | MEDIUM REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06302017 | 2017-06-30T11:32:27+00:00 |  | 000115914-01 | Patty | Davis | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06282017 | 07052017 | Standard |  |  | 2017-06-28 | Contact/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-07-06 | 2017-07-12 | 2017-07-12 | 2017-07-12 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630043 | A4902, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 07282017 | 06282017 | 07062017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07102017 | 2017-07-10T11:15:02+00:00 |  | 000114254-01 | Kathleen | Smith | NANCY LYNN ALKIRE LLC | 901854 | NANCY | ALKIRE | 1710924659 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07062017 | 07252017 | Standard |  |  | 2017-07-06 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-07-26 |  | 2017-07-24 | 2017-07-24 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710094 | S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 07282017 | 07062017 | 07262017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07102017 | 2017-07-10T14:09:36+00:00 |  | 000044488-01 | JAMES | WILLIAMS | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07082017 | 07142017 | Standard |  |  | 2017-07-08 | Per MDS: 17/RHB01 = $3699.42 | 0 | 2017-07-15 |  | 2017-07-26 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710122 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 07282017 | 07082017 | 07152017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 07112017 | 2017-07-11T13:41:45+00:00 |  | 000073913-01 | Evelina | Garner | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07262017 | Standard |  |  | 2017-07-07 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-07-27 |  | 2017-07-27 | 2017-07-27 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711072 | I639 | Cerebral infarction, unspecified | ICD10 | 07282017 | 07072017 | 07272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 07142017 | 2017-07-14T15:43:55+00:00 |  | 000070625-01 | Margaret | Mccoy | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07132017 | 07262017 | Standard |  |  | 2017-07-13 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2017-07-27 |  | 2017-07-27 | 2017-07-27 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717007 | D649, G9059, I10, M1990, R52, Z96659, W1830XS | Fall on same level, unspecified, sequela | ICD10 | 07282017 | 07132017 | 07272017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 07172017 | 2017-07-17T08:09:31+00:00 |  | 000086191-01 | Elizabeth | Briggs | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 916533 | 1215960901 | GREENFIELD AREA MEDICAL CENTER SNF | 1235155425 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER SNF | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07132017 | 07262017 | Standard |  |  | 2017-07-13 | Swing bed daily rate x 14 days | 0 | 2017-07-27 |  |  | 2017-07-26 | 14 | 14 | swing bed daily rate x 14 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717012 | S42201A | Unsp fracture of upper end of right humerus, init | ICD10 | 07282017 | 07132017 | 07272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 14 | Revenue | RV |  |  |  | 6.0 |
| 07172017 | 2017-07-17T08:24:49+00:00 |  | 000097674-01 | Rose | Hazelbaker | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 916533 | 1215960901 | GREENFIELD AREA MEDICAL CENTER SNF | 1235155425 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER SNF | 07282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07142017 | 07172017 | Standard |  |  | 2017-07-14 | SWING BED daily rate x 4 days | 0 | 2017-07-18 |  |  |  | 4 | 4 | swing bed daily rate x 4 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717013 | Z951 | Presence of aortocoronary bypass graft | ICD10 | 07282017 | 07142017 | 07182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 4 | Revenue | RV |  |  |  | 4.0 |
| 07172017 | 2017-07-17T11:59:15+00:00 |  | 000085011-01 | Anna | Holbrook | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07142017 | 07272017 | Standard |  |  | 2017-07-14 | Per MDS: 17/RVC01 = $6306.19 | 60 | 2017-07-28 |  | 2017-07-28 | 2017-07-28 | 14 | 74 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717044 | I480 | Paroxysmal atrial fibrillation | ICD10 | 07282017 | 07142017 | 07282017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 07212017 | 2017-07-21T11:25:31+00:00 |  | 000113036-01 | Judith | Arrington | KNOX COMMUNITY HSP PHYS | 919693 | AMBER L | DAUGHERTY | 1124273875 | WHISPERING HILLS FACILIT | 904761 | 1023024403 | WHISPERING HILLS FACILITY OPERATIONS | 1023024403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WHISPERING HILLS FACILITY OPERATIONS | 07282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07192017 | 08262017 | Standard |  |  | 2017-07-19 | 14/HB101=$3284.24 | 0 | 2017-07-27 |  | 2017-07-27 | 2017-07-27 | 8 | 8 | 3284.24 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721056 | Z96651 | Presence of right artificial knee joint | ICD10 | 07282017 | 07192017 | 07272017 | HB101 | SPECIAL CARE HIGH , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 39 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 07242017 | 2017-07-24T11:59:05+00:00 |  | 000057595-01 | BOBBY | SMITH | NANCY LYNN ALKIRE LLC | 901854 | NANCY | ALKIRE | 1710924659 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07072017 | 07112017 | Standard |  |  | 2017-07-07 | Per Diem: $250.00/day x5 days = $1250.00 TOTAL PAYMENT = $1250.00 | 0 | 2017-07-12 |  | 2017-07-24 |  | 5 | 5 | 1250.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724098 | D644, I4891, I509, K567 | Ileus, unspecified | ICD10 | 07282017 | 07072017 | 07122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1250 | 1250 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
| 07242017 | 2017-07-24T18:41:13+00:00 |  | 000107490-01 | Clarence | Barnhart | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07202017 | 07202017 | Standard |  |  | 2017-07-20 | Per Diem: $200.00/day x1 day = $200.00 TOTAL PAYMENT = $200.00 | 0 | 2017-07-21 |  |  | 2017-07-24 | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725015 | E119, M6281 | Muscle weakness (generalized) | ICD10 | 07282017 | 07202017 | 07212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
| 07242017 | 2017-07-24T18:42:42+00:00 |  | 000107134-01 | Phyllis | Barnhart | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 07282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07192017 | 07202017 | Standard |  |  | 2017-07-19 | Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $400.00 | 0 | 2017-07-21 |  |  | 2017-07-24 | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725020 | W19XXXD | Unspecified fall, subsequent encounter | ICD10 | 07282017 | 07192017 | 07212017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
| 07242017 | 2017-07-24T13:06:29+00:00 |  | 000046273-01 | SAUNDRA | CHANEY | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 07282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 07212017 | 07252017 | Standard |  |  | 2017-07-21 | Swing Bed daily rate x 5 days | 0 | 2017-07-26 |  |  | 2017-07-24 | 5 | 5 | Swing Bed daily rate x 5 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725056 | I6350 | Cereb infrc due to unsp occls or stenos of unsp cereb artery | ICD10 | 07282017 | 07212017 | 07262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 5 | Revenue | RV |  |  |  | 5.0 |
| 07052017 | 2017-07-05T15:36:36+00:00 |  | 000077898-01 | Willard | Hatfield | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | THE OAKS AT NORTHPOINTE | 931632 | 1609181700 | THE OAKS AT NORTHPOINTE | 1609181700 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE OAKS AT NORTHPOINTE | 07282017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07032017 | 07212017 | Standard |  |  | 2017-07-03 | 16/RVC01=$3539.19 | 1 | 2017-07-22 |  | 2017-07-27 | 2017-07-27 | 19 | 20 | 3539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727036 | L0390 | Cellulitis, unspecified | ICD10 | 07282017 | 07032017 | 07222017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
