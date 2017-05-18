Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-17_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-17_SNF
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

	#And in the "hospital_services" page I enter the total SNF days into the "auth_days" image
	And in the "hospital_services" page I enter "365" into the "auth_days" image

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
	And in the "authorized_services" page I enter the first SNF date into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_requested" image
	And the test pauses for "2" seconds
  And in the "authorized_services" page I enter the first SNF date into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_authorized" image
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
	And in the "authorized_services" page I enter the first SNF date into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_requested" image
	And the test pauses for "2" seconds
  And in the "authorized_services" page I enter the first SNF date into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_authorized" image
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
| 02212017 | 2017-02-21T11:57:24+00:00 |  | 000110772-01 | Betty | Greenwood | AMERICAN HLTH NETWORK OF | 904794 | JAMES G | FITKIN | 1295846673 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 05172017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02172017 | 05122017 | Standard |  |  | 2017-02-17 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 65 days = $16,250.00 TOTAL PAYMENT = $22,556.19 | 0 | 2017-05-13 | 2017-05-10 | 2017-03-16 | 2017-05-10 | 85 | 85 | 22556.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170222003 | I469 | Cardiac arrest, cause unspecified | ICD10 | 05172017 | 02172017 | 05132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 85 | Revenue | RV |  |  |  | 4.0 |
| 04032017 | 2017-04-03T14:56:50+00:00 |  | 000040700-01 | ANETTA | SUBLETT | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 05172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03302017 | 04122017 | Standard |  |  | 2017-03-30 | Contract/RUG: 17/RVB (per MDS) = $ 5,411.86 | 0 | 2017-04-13 |  | 2017-05-16 | 2017-05-16 | 14 | 14 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170404061 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05172017 | 03302017 | 04132017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04052017 | 2017-04-05T14:54:32+00:00 |  | 000013047-01 | EFFIE | PARKER | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 05172017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 04032017 | 05062017 | Standard |  |  | 2017-04-03 | 16/RUC01=$7333.11 14 DAYS @ $200.00=$2800.00 TOTAL: $10133.11 | 0 | 2017-05-07 | 2017-05-08 | 2017-05-17 | 2017-05-17 | 34 | 34 | 9933.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170406013 | I82413, J9600, S301XXD | Contusion of abdominal wall, subsequent encounter | ICD10 | 05172017 | 04032017 | 05072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 34 | Revenue | RV |  |  |  | 34.0 |
| 04142017 | 2017-04-14T15:40:16+00:00 |  | 000075485-01 | Edward | Seibert | KAHLON, GURJEET S | 914096 | GURJEET S | KAHLON | 1649209644 | LAURELS OF HUBER HEIGHTS | 934199 | 1871938555 | LAURELS OF HUBER HEIGHTS | 1871938555 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HUBER HEIGHTS | 05172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04132017 | 04252017 | Standard |  |  | 2017-04-13 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-04-26 |  | 2017-05-16 |  | 13 | 13 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417011 | M4316 | Spondylolisthesis, lumbar region | ICD10 | 05172017 | 04132017 | 04262017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 04172017 | 2017-04-17T12:56:26+00:00 |  | 000059043-01 | THOMAS | TYLER | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 05172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04162017 | 05122017 | Standard |  |  | 2017-04-16 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $200.00/day x 7 days = $1400.00 TOTAL PAYMENT = $7213.99 | 0 | 2017-05-13 | 2017-05-11 | 2017-05-15 | 2017-05-11 | 27 | 27 | 7213.99 | 170418096436.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417050 | I7389, Z95820 | Peripheral vascular angioplasty status w implants and grafts | ICD10 | 05172017 | 04162017 | 05132017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7213 | 7213 | Approved | 27 | Revenue | RV |  |  |  | 1.0 |
| 04212017 | 2017-04-21T15:06:41+00:00 |  | 000036587-01 | WANDA JUNE | BRALLEY | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 05172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04192017 | 05062017 | Standard |  |  | 2017-04-19 | Per MDS: 17/RUB01 = $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-05-07 |  | 2017-05-15 | 2017-05-07 | 18 | 18 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424026 | I483, I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 05172017 | 04192017 | 05072017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 04272017 | 2017-04-27T15:51:46+00:00 |  | 000033870-01 | W SHELDON | JACKSON | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04252017 | 05142017 | Standard |  |  | 2017-04-25 | Per MDS: 17/RVC01 = $6306.19 TOTAL PAYMENT = $6306.19 | 0 | 2017-05-15 |  | 2017-05-16 | 2017-05-16 | 20 | 20 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428030 | I2510, Z5189 | Encounter for other specified aftercare | ICD10 | 05172017 | 04252017 | 05152017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05022017 | 2017-05-02T15:01:46+00:00 |  | 000107828-01 | Odessa | Lacy | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 05172017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Inpatient | 05012017 | 05122017 | Standard |  |  | 2017-05-01 | 17/RUA01=$3214.76 | 0 | 2017-05-13 |  | 2017-05-17 | 2017-05-17 | 12 | 12 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503043 | M4326 | Fusion of spine, lumbar region | ICD10 | 05172017 | 05012017 | 05132017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 05082017 | 2017-05-08T12:43:08+00:00 |  | 000090661-01 | Steven | Shipley | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | NEW LEXINGTON CENTER | 939703 | 1699722181 | NEW LEXINGTON CENTER | 1699722181 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEXINGTON CENTER | 05172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 05042017 | 05142017 | Standard |  |  | 2017-05-04 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-05-15 |  | 2017-05-16 |  | 11 | 11 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508099 | I429, I509, J449, J984, Z5189, V892XXD | Person injured in unsp motor-vehicle accident, traffic, subs | ICD10 | 05172017 | 05042017 | 05152017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05112017 | 2017-05-11T15:51:18+00:00 |  | 000088962-01 | Dorothy | Grant | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 05172017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Inpatient | 05102017 | 05142017 | Standard |  |  | 2017-05-10 | 17/RVB01=$5411.86 | 0 | 2017-05-15 |  | 2017-05-17 | 2017-05-17 | 5 | 5 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512005 | I69320, I69331 | Monoplg upr lmb fol cerebral infrc aff right dominant side | ICD10 | 05172017 | 05102017 | 05152017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 05042017 | 2017-05-04T14:47:29+00:00 |  | 000003286-01 | DORIS | BELL | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 05172017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 05032017 | 05102017 | Standard |  |  | 2017-05-03 | Non Skilled Per Diem: $200.00/day x 8 days = $1600.00 TOTAL PAYMENT = $1600.00 | 0 | 2017-05-11 |  |  |  | 0 | 0 | 1600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170505073 | K5669, N186 | End stage renal disease | ICD10 | 05172017 | 05032017 | 05112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1600 | 1600 | Approved Unskilled | 8 | Revenue | RV |  |  |  | 8.0 |
| 05102017 | 2017-05-10T14:16:53+00:00 |  | 000022358-01 | CHARLES | SCHMELZER | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05172017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 05052017 | 05132017 | Standard |  |  | 2017-05-05 | Non skilled per diem $200.00/day x9 days = $1800.00 Total payment = $1800.00 | 28 | 2017-05-14 |  |  |  | 0 | 28 | 1800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A170510070 | I10, I2510, I4891, I499, I509, R55 | Syncope and collapse | ICD10 | 05172017 | 05052017 | 05142017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1800 | 1800 | Approved | 9 | Revenue | RV |  |  |  | 9.0 |
