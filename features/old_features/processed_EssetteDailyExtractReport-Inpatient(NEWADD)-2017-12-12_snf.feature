Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-12_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-12_SNF
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
| 12042017 | 2017-12-04T16:08:37+00:00 |  | 000116016-01 | JAMES | SOUTH | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 12122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 12022017 | Standard |  |  | 2017-12-01 | Per Diem: $200.00/day x 1 SNF Day = $200.00 | 0 | 2017-12-02 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205047 | M1712, Z471, Z96652 | Presence of left artificial knee joint | ICD10 | 12122017 | 12012017 | 12022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 11292017 | 2017-11-29T13:17:54+00:00 |  | 000060998-01 | JUDITH | JONES | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF KETTERING OH LLC | 905920 | 1093756405 | HEARTLAND OF KETTERING OH LLC | 1093756405 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF KETTERING OH LLC | 12122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11272017 | 12082017 | Standard |  |  | 2017-11-27 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-12-08 |  | 2017-12-11 | 2017-12-11 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130011 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 12122017 | 11272017 | 12082017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 12072017 | 2017-12-07T15:17:15+00:00 |  | 000104064-01 | Anna | Weakley | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 12122017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12062017 | 12092017 | Standard |  |  | 2017-12-06 | 3 NONSKILLED DAYS @ $200.00= $600.00 | 0 | 2017-12-09 |  |  |  | 3 | 0 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207077 | I482, I5031, L03115, L03116 | Cellulitis of left lower limb | ICD10 | 12122017 | 12062017 | 12092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 11272017 | 2017-11-27T15:12:14+00:00 |  | 000039549-01 | BERTHA | SELBY | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 12122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11172017 | 12102017 | Standard |  |  | 2017-11-17 | 17/RVB01= $5411.86 | 44 | 2017-12-10 | 2017-12-11 | 2017-12-11 | 2017-12-11 | 23 | 67 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128026 | I639 | Cerebral infarction, unspecified | ICD10 | 12122017 | 11172017 | 12102017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 11172017 | 2017-11-17T12:32:31+00:00 |  | 000080246-01 | Carol | Newlon | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 12122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 11162017 | 11222017 | Standard |  |  | 2017-11-16 | 17/CC101= $3231.84 | 0 | 2017-12-22 |  | 2017-12-12 | 2017-12-12 | 6 | 6 | 3231.84 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117068 | M1710 | Unilateral primary osteoarthritis, unspecified knee | ICD10 | 12122017 | 11162017 | 11222017 | CC101 | CLINICALLY COMPLEX , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 11022017 | 2017-11-02T11:59:43+00:00 |  | 000031425-01 | JOYCE | LUTZ | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 12122017 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 10312017 | 11292017 | Standard |  |  | 2017-10-31 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 Per Diem: $200.00/day x 9 SNF Days = $1,800.00 Total Payment: $5,150.20 | 0 | 2017-11-29 |  | 2017-12-06 |  | 29 | 29 | 5150.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102037 | L03119, N390, R531 | Weakness | ICD10 | 12122017 | 10312017 | 11292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5150 | 5150 | Approved | 30 | Revenue | RV |  |  |  | 1.0 |
| 10302017 | 2017-10-30T17:23:40+00:00 |  | 000080513-01 | Vivien | Johnson | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 12122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 10272017 | 12012017 | Standard |  |  | 2017-10-27 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 15 days = $3750.00 TOTAL PAYMENT = $10,056.19 | 20 | 2017-12-01 | 2017-12-28 | 2017-12-11 | 2017-12-11 | 35 | 55 | 10056.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031034 | I69354, Z931 | Gastrostomy status | ICD10 | 12122017 | 10272017 | 12012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 36 | Revenue | RV |  |  |  | 4.0 |
| 09052017 | 2017-09-05T11:22:59+00:00 |  | 000091190-01 | Earl | Stauffer | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 12122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09012017 | 12102017 | Standard |  |  | 2017-09-01 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $250.00/day x 53 days = $13,250.00 Per Diem: $200.00/day x 22 days = $4400.00 TOTAL PAYMENT = $24,983.11 | 0 | 2017-12-10 | 2017-12-07 | 2017-12-11 | 2017-12-11 | 95 | 95 | 24983.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905103 | I4891, I509, J449, M1000, R52, S32009D, S32009S | Unspecified fracture of unspecified lumbar vertebra, sequela | ICD10 | 12122017 | 09012017 | 12102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 101 | Revenue | RV |  |  |  | 5.0 |
| 10242017 | 2017-10-24T09:42:25+00:00 |  | 000002524-01 | JOHN | DYE | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 12122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10212017 | 12102017 | Standard |  |  | 2017-10-21 | Per MDS: 16/RUB01 = $4429.71 Per Diem: $250.00/day x 24 days = $6000.00 Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $10,829.71 | 0 | 2017-12-10 | 2017-12-07 | 2017-12-11 | 2017-12-11 | 46 | 46 | 10829.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024054 | G8191, I2510, I639, I69354, K222, R4701, Z950 | Presence of cardiac pacemaker | ICD10 | 12122017 | 10212017 | 12102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 51 | Revenue | RV |  |  |  | 5.0 |
| 11082017 | 2017-11-08T11:15:24+00:00 |  | 000119214-01 | Ruth | Gillfillan | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 12122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11032017 | 11222017 | Standard |  |  | 2017-11-03 | 17/RUB01= $5813.19 | 0 | 2017-11-22 |  | 2017-12-12 | 2017-12-12 | 19 | 19 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108046 | J449, R0600 | Dyspnea, unspecified | ICD10 | 12122017 | 11032017 | 11222017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 11202017 | 2017-11-20T11:19:20+00:00 |  | 000027587-01 | THERESA | JUNCEWICZ | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | EDINBURG CARE RESOURCES | 906345 | 1518141902 | EDINBURG CARE RESOURCES LLC | 1518141902 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDINBURG CARE RESOURCES LLC | 12122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11182017 | 12012017 | Standard |  |  | 2017-11-18 | 16/RUB01=$4,429.71 | 0 | 2017-12-01 |  | 2017-12-12 | 2017-12-12 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120069 | S065X0S | Traum subdr hem w/o loss of consciousness, sequela | ICD10 | 12122017 | 11182017 | 12012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 11222017 | 2017-11-22T14:19:45+00:00 |  | 000065032-01 | WILLIE | SCALF | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 12122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11202017 | 12052017 | Standard |  |  | 2017-11-20 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2017-12-05 |  | 2017-12-11 | 2017-12-11 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122080 | M5127 | Other intervertebral disc displacement, lumbosacral region | ICD10 | 12122017 | 11202017 | 12052017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 12042017 | 2017-12-04T16:32:38+00:00 |  | 000116570-01 | Sylvia | Baker | MERCY HEALTH PHYSICIANS | 920930 | CHARLES | MILLER | 1417956202 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 928906 | 1811988009 | ADAMS COUNTY REGIONAL MEDICAL CENTER | 1811988009 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ADAMS COUNTY REGIONAL MEDICAL CENTER | 12122017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12052017 | 12112017 | Standard |  |  | 2017-12-05 | Swing Bed Daily Rate $200.00/day x 6 SNF Days = $1,200.00 | 0 | 2017-12-11 |  |  |  | 6 | 6 | 1200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205007 | Z96651 | Presence of right artificial knee joint | ICD10 | 12122017 | 12052017 | 12112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved | 7 | Revenue | RV |  |  |  | 6.0 |
| 11092017 | 2017-11-09T15:24:58+00:00 |  | 000064531-01 | PAUL | DICUS | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 12122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11082017 | 12102017 | Standard |  |  | 2017-11-08 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $200.00/day x 10 days = $2000.00 TOTAL PAYMENT = $8049.81 | 22 | 2017-12-10 |  | 2017-12-12 | 2017-12-12 | 30 | 52 | 8049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109084 | Z96651 | Presence of right artificial knee joint | ICD10 | 12122017 | 11082017 | 12102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8049 | 8049 | Approved | 33 | Revenue | RV |  |  |  | 3.0 |
| 12082017 | 2017-12-08T11:19:22+00:00 |  | 000073723-01 | Barbara | Posey | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 12122017 | Denied Skilled - Pay Unskilled | MediGold Essential Care | Fax |  | Inpatient | 12072017 | 12122017 | Standard |  |  | 2017-12-07 | ADMISSION DENIAL: Non skilled Per Diem: $200.00/day x 5 days = $1000.00 TOTAL PAYMENT = $1000.00 | 0 | 2017-12-12 |  |  |  | 0 | 0 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A171208060 | I10, I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 12122017 | 12072017 | 12122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 6 | Revenue | RV |  |  |  | 5.0 |
| 12052017 | 2017-12-05T13:06:59+00:00 |  | 000076412-01 | Paul | Malone Jr | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 12122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12042017 | 12102017 | Standard |  |  | 2017-12-04 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2017-12-10 |  | 2017-12-12 | 2017-12-12 | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205088 | I83212 | Varicos vn of r low extrem w ulc of calf and inflammation | ICD10 | 12122017 | 12042017 | 12102017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 10162017 | 2017-10-16T08:43:15+00:00 |  | 000056326-01 | BECKY | CHILCOTE | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 12122017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10132017 | 11022017 | Standard |  |  | 2017-10-13 | PER DIEM RATE OF $200.00/DAY X 20 DAYS =$4,000.00 CARVE OUT FOR WOUND VAC PER INVOICE=$1,292.11 TOTAL PAYMENT=$5,292.11 | 0 | 2017-11-02 |  | 2017-11-17 | 2017-11-17 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016029 | M86171 | Other acute osteomyelitis, right ankle and foot | ICD10 | 12122017 | 10132017 | 11022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5292 | 5292 | Approved Skilled | 21 | Revenue | RV |  |  |  | 6.0 |
| 11222017 | 2017-11-22T16:23:21+00:00 |  | 000084606-01 | Ethel | Grimm | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ZANESVILLE HEALTH AND REHABILITATION | 12122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 11212017 | 12062017 | Standard |  |  | 2017-11-21 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 9 | 2017-12-06 |  | 2017-12-12 | 2017-12-12 | 15 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127004 | I10, M6281, N186, R1312, R262, R41841 | Cognitive communication deficit | ICD10 | 12122017 | 11212017 | 12062017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 11242017 | 2017-11-24T09:36:44+00:00 |  | 000079647-01 | Cynthia | Roof | TEAGUE, PHILLIP C | 944173 | PHILLIP C | TEAGUE | 1770571069 | COSHOCTON SPRINGS HEALTH & REHABILIT | 939939 | 1144610940 | COSHOCTON SPRINGS HEALTH & REHABILIT | 1144610940 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COSHOCTON SPRINGS HEALTH & REHABILIT | 12122017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 11222017 | 12092017 | Standard |  |  | 2017-11-22 | 17/RUB01= $5813.99 | 0 | 2017-12-09 |  | 2017-12-12 | 2017-12-12 | 17 | 17 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127043 | I6350 | Cereb infrc due to unsp occls or stenos of unsp cereb artery | ICD10 | 12122017 | 11222017 | 12092017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
