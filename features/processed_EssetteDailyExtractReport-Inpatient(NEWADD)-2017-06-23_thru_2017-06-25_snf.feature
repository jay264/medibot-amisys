Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-23_thru_2017-06-25_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-23_thru_2017-06-25_SNF
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
| 05012017 | 2017-05-01T13:59:25+00:00 |  | 000114495-01 | Jacquelene | Jones | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | MT. AIRY GARDENS REHABIL | 949963 | 1063967131 | MT. AIRY GARDENS REHABILITATION AND | 1063967131 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT. AIRY GARDENS REHABILITATION AND | 06232017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04282017 | 06152017 | Standard |  |  | 2017-04-28 | Contract/RUG: 17/RUA (Per MDS) =$3,214.76 Per Diem: $250.00/day x 29 SNF Days = $7,250.00 Total Payment: $10,464.76 | 0 | 2017-06-16 |  | 2017-06-23 | 2017-06-13 | 49 | 49 | 10464.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502049 | I639 | Cerebral infarction, unspecified | ICD10 | 06232017 | 04282017 | 06162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 49 | Revenue | RV |  |  |  | 7.0 |
| 05052017 | 2017-05-05T14:59:37+00:00 |  | 000079778-01 | Joseph | Karner | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 06232017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 05042017 | 06182017 | Standard |  |  | 2017-05-04 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $250.00/day x 23 SNF Days = $5,750.00 Per Diem: $200.00/day x 3 SNF Days = $600.00 Total Payment: $12,399.81 | 0 | 2017-06-19 |  | 2017-06-21 | 2017-06-21 | 46 | 46 | 12399.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508016 | J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06232017 | 05042017 | 06192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 3.0 |
| 05082017 | 2017-05-08T08:04:15+00:00 |  | 000090169-01 | Martha | Bliss | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 06232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05042017 | 06152017 | Standard |  |  | 2017-05-04 | Contract/RUG: 16/RUC (Per MDS) = $7,333.11 Per Diem: $200.00/day x 21 SNF Days: $4,200.00 Total Payment: $11,533.11 | 0 | 2017-06-16 |  | 2017-06-21 | 2017-06-21 | 43 | 43 | 11533.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508067 | S728X2D | Oth fracture of left femur, subs for clos fx w routn heal | ICD10 | 06232017 | 05042017 | 06162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 43 | Revenue | RV |  |  |  | 2.0 |
| 05102017 | 2017-05-10T08:52:55+00:00 |  | 000011080-01 | GLENN | PROHASKA | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 06232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05082017 | 06212017 | Standard |  |  | 2017-05-08 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x20 days = $5000.00 Per Diem: $200.00/day x 5 days = $1000.00 TOTAL PAYMENT = $11,411.86 | 0 | 2017-06-22 |  | 2017-05-19 | 2017-06-23 | 45 | 45 | 11411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510098 | F0390, S42211D | Unsp disp fx of surg nk of r humer, subs for fx w routn heal | ICD10 | 06232017 | 05082017 | 06222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 45 | Revenue | RV |  |  |  | 7.0 |
| 05152017 | 2017-05-15T13:29:02+00:00 |  | 000071934-01 | Lula | Peters | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 06232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05112017 | 05182017 | Standard |  |  | 2017-05-11 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-05-19 |  | 2017-06-23 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515119 | M4806 | Spinal stenosis, lumbar region | ICD10 | 06232017 | 05112017 | 05192017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 05162017 | 2017-05-16T16:53:14+00:00 |  | 000099940-01 | KATHLEEN | DURHAM | FAMILY PRACTICE ASSOC | 902127 | SALLY A | ABBOTT | 1891788626 | SPRINGFIELD NURSING & INDEPENDENT LI | 911709 | 1598905838 | SPRINGFIELD NURSING & INDEPENDENT LI | 1598905838 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SPRINGFIELD NURSING & INDEPENDENT LI | 06232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05122017 | 06142017 | Standard |  |  | 2017-05-12 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $250.00/day x 14 SNF Days = $3,500.00 Total Payment: $9,549.81 | 8 | 2017-06-15 |  | 2017-06-21 | 2017-06-21 | 34 | 42 | 9549.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517039 | I63412 | Cereb infrc due to embolism of left middle cerebral artery | ICD10 | 06232017 | 05122017 | 06152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9549 | 9549 | Approved | 34 | Revenue | RV |  |  |  | 7.0 |
| 05232017 | 2017-05-23T16:17:32+00:00 |  | 000069012-01 | Cheryl | Harshbarger | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 06232017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 05202017 | 06072017 | Standard |  |  | 2017-05-20 | Contract/RUG: 17/RUC (Per MDS) =$6,049.81 | 12 | 2017-06-08 |  | 2017-06-21 |  | 19 | 31 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524022 | J189 | Pneumonia, unspecified organism | ICD10 | 06232017 | 05202017 | 06082017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 05252017 | 2017-05-25T18:23:11+00:00 |  | 000099322-01 | Elmer | Boshears | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 06232017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 05232017 | 06142017 | Standard |  |  | 2017-05-23 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $250.00/day x 2 SNF Days = $500.00 Per Diem: $200.00/day x 1 SNF Day = $200.00 Total Payment: $6,749.81 | 0 | 2017-06-15 |  | 2017-06-23 |  | 23 | 23 | 6749.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526022 | M6250, M6281, T24231D | Burn of second degree of right lower leg, subs encntr | ICD10 | 06232017 | 05232017 | 06152017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6749 | 6749 | Approved | 23 | Revenue | RV |  |  |  | 3.0 |
| 05262017 | 2017-05-26T12:19:02+00:00 |  | 000102108-01 | Angla | Scarano | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 06232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05242017 | 06072017 | Standard |  |  | 2017-05-24 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 15 | 2017-06-08 |  | 2017-06-21 | 2017-06-21 | 15 | 30 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526063 | S0990XD | Unspecified injury of head, subsequent encounter | ICD10 | 06232017 | 05242017 | 06082017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06012017 | 2017-06-01T09:37:32+00:00 |  | 000116011-01 | HELEN | LAKATOS | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 06232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05292017 | 06142017 | Standard |  |  | 2017-05-29 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-06-15 |  | 2017-06-21 | 2017-06-21 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601037 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 06232017 | 05292017 | 06152017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 06022017 | 2017-06-02T15:39:29+00:00 |  | 000100866-01 | Jean | Alexander | HILLTOP PHYSICIANS INC | 923505 | JAMES I | FIDELHOLTZ | 1245449438 | OHIO LIVING LLANFAIR | 945092 | 1366438343 | OHIO LIVING LLANFAIR | 1366438343 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING LLANFAIR | 06232017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 06012017 | 06152017 | Standard |  |  | 2017-06-01 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-06-16 |  | 2017-06-22 | 2017-06-20 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602079 | S42295A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 06232017 | 06012017 | 06162017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06062017 | 2017-06-06T10:08:06+00:00 |  | 000096382-01 | Robert | Mount | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 06232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06042017 | 06192017 | Standard |  |  | 2017-06-04 | Contract/RUG: 16/RVA (Per MDS) = $2,689.71 | 0 | 2017-06-20 |  | 2017-06-22 | 2017-06-22 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606054 | D7589 | Other specified diseases of blood and blood-forming organs | ICD10 | 06232017 | 06042017 | 06202017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 06202017 | 2017-06-20T15:52:39+00:00 |  | 000072904-01 | Terri | Mcintosh | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 06232017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 06232017 | 06242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170622053 | R6889 | Other general symptoms and signs | ICD10 | 06232017 | 04062017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 06202017 | 2017-06-20T16:34:35+00:00 |  | 000028701-01 | RONALD | HUFFMAN | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 06232017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 06232017 | 06242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170622055 | R6889 | Other general symptoms and signs | ICD10 | 06232017 | 12082016 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 06202017 | 2017-06-20T16:36:07+00:00 |  | 000012804-01 | ARTHUR | CARTER | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 06232017 | Denied | MediGold Classic Preferred | Fax | Requested Medical Documentation Not Received | Inpatient | 06232017 | 06242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170622057 | R6889 | Other general symptoms and signs | ICD10 | 06232017 | 04072017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 06212017 | 2017-06-21T14:15:21+00:00 |  | 000077772-01 | Theresa | Tiberi | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 06232017 | Denied Skilled - Pay Unskilled | MediGold Essential Care | Fax |  | Inpatient | 06192017 | 06212017 | Standard |  |  | 2017-06-19 | Admission Denial Unskilled per diem: $200.00/day x3 days = $600.00 TOTAL PAYMENT = $600.00 | 0 | 2017-06-22 |  |  |  | 0 | 0 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170621059 | I313, N183, N390 | Urinary tract infection, site not specified | ICD10 | 06232017 | 06192017 | 06222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 3 | Revenue | RV |  |  |  | 3.0 |
