Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-10_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-10_SNF
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
| 06222017 | 2017-06-22T14:01:04+00:00 |  | 000084931-01 | Arthur | Byrd Jr | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 10102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06212017 | 07122017 | Standard |  |  | 2017-06-21 | 16/RVB01=$3350.20 | 15 | 2017-07-12 |  | 2017-07-06 |  | 15 | 30 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622071 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 10102017 | 06212017 | 07122017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 09112017 | 2017-09-11T14:32:13+00:00 |  | 000099023-01 | Joyce | Moore | CLYO INTERNAL MEDICINE | 904122 | CHERISH J | PRUTZMAN | 1811907603 | HEARTLAND OF BEAVERCREEK | 905912 | 1104861962 | HEARTLAND OF BEAVERCREEK DAYTON OH L | 1104861962 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF BEAVERCREEK DAYTON OH L | 10102017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09072017 | 10032017 | Standard |  |  | 2017-09-07 | Contract/RUG: 17/RUX (Per MDS) = $7,339.86 Per Diem: $250.00/day x 6 SNF Days = $1,500.00 Total: $8,839.86 | 0 | 2017-10-03 |  | 2017-09-26 |  | 26 | 26 | 8839.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911121 | I639 | Cerebral infarction, unspecified | ICD10 | 10102017 | 09072017 | 10032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8839 | 8839 | Approved | 27 | Revenue | RV |  |  |  | 1.0 |
| 09132017 | 2017-09-13T13:14:54+00:00 |  | 000063542-01 | SHARON | FITZPATRICK | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 10102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09122017 | 10092017 | Standard |  |  | 2017-09-12 | 17/RUB01=$5,813.99 PER DIEM RATE OF $250.00/DAY X 7 DAYS=$1,750.00 TOTAL FACILITY PAYMENT=$7,563.99 | 0 | 2017-10-09 |  | 2017-10-09 | 2017-10-09 | 27 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914062 | I6990 | Unspecified sequelae of unspecified cerebrovascular disease | ICD10 | 10102017 | 09122017 | 10092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7563 | 7563 | Approved Skilled | 28 | Revenue | RV |  |  |  | 7.0 |
| 09052017 | 2017-09-05T14:25:19+00:00 |  | 000065745-01 | PAUL | BICE | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 10102017 | Approved | THE TIMKEN COMPANY | Fax | SNF | Inpatient | 08312017 | 09082017 | Standard |  |  | 2017-08-31 | 17/RVA01=$3,586.28 | 0 | 2017-09-08 |  | 2017-10-09 | 2017-10-09 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906016 | R1010 | Upper abdominal pain, unspecified | ICD10 | 10102017 | 08312017 | 09082017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 08292017 | 2017-08-29T16:11:20+00:00 |  | 000074105-01 | Thaida | Santavicca | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 10102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08242017 | 10072017 | Standard |  |  | 2017-08-24 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 24 days = $6000.00 TOTAL PAYMENT = $11,411.86 | 0 | 2017-10-07 | 2017-10-05 | 2017-10-09 | 2017-10-09 | 44 | 44 | 11411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830011 | I639 | Cerebral infarction, unspecified | ICD10 | 10102017 | 08242017 | 10072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 45 | Revenue | RV |  |  |  | 3.0 |
| 09192017 | 2017-09-19T15:11:42+00:00 |  | 000030469-01 | IONA | WEST | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 10102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09172017 | 10012017 | Standard |  |  | 2017-09-17 | Per MDS: 17/RVB01 = $5411.86 | 54 | 2017-10-01 |  | 2017-10-09 |  | 14 | 68 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920067 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10102017 | 09172017 | 10012017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 09142017 | 2017-09-14T13:03:24+00:00 |  | 000027354-01 | RUTH | CHAPMAN | AMERICAN HLTH NETWORK OF | 904794 | JAMES G | FITKIN | 1295846673 | GUARDIAN ELDER CARE OF COLS | 923938 | 1386994671 | GUARDIAN ELDER CARE OF COLS | 1386994671 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GUARDIAN ELDER CARE OF COLS | 10102017 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 09152017 | 10022017 | Standard |  |  | 2017-09-15 | 17/RUB01=$5,813.99 | 0 | 2017-10-02 |  | 2017-10-10 | 2017-10-09 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914079 | K5900 | Constipation, unspecified | ICD10 | 10102017 | 09152017 | 10022017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 09272017 | 2017-09-27T10:41:50+00:00 |  | 000098618-01 | Laura | Cook | DR HAROLD ALLEN FURGUSON | 911551 | H A | FERGUSON JR | 1659312205 | NEW LEBANON CARE & REHAB | 907212 | 1699881441 | NEW LEBANON CARE & REHAB CENTER | 1699881441 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEW LEBANON CARE & REHAB CENTER | 10102017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09262017 | 10092017 | Standard |  |  | 2017-09-26 | 17/RVA01=$3,586.28 | 0 | 2017-10-09 |  | 2017-10-10 | 2017-10-10 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927047 | D649, I10, I4891, I639, R040 | Epistaxis | ICD10 | 10102017 | 09262017 | 10092017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 10102017 | 2017-10-10T13:39:22+00:00 |  | 000092916-01 | Vicki | Williams | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 10102017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10072017 | 10082017 | Standard |  |  | 2017-10-07 | Per Diem: $200.00/day x 1 day = $200.00 TOTAL PAYMENT = $200.00 | 0 | 2017-10-08 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010054 | G40919, G4751 | Confusional arousals | ICD10 | 10102017 | 10072017 | 10082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
| 09262017 | 2017-09-26T10:00:01+00:00 |  | 000095420-01 | Robert | Nungester | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 10102017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09232017 | 10032017 | Standard |  |  | 2017-09-23 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-10-03 |  | 2017-10-10 | 2017-10-10 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926064 | F0391, G309, I639, I82409, R5381 | Other malaise | ICD10 | 10102017 | 09232017 | 10032017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 09222017 | 2017-09-22T14:53:23+00:00 |  | 000019463-01 | ROSEMARY | HUNTER | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 10102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 09212017 | 09272017 | Standard |  |  | 2017-09-21 | 17/RVB01= $5411.86 | 0 | 2017-09-27 |  | 2017-10-10 |  | 6 | 6 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922065 | Z4733 | Aftercare following explantation of knee joint prosthesis | ICD10 | 10102017 | 09212017 | 09272017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 08152017 | 2017-08-15T17:08:59+00:00 |  | 000102088-01 | CECILIA | MILLER | WESTLAND FAMILY CARE LLC | 912885 | FAOZAN A | NARVEL | 1215901020 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 10102017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08132017 | 10062017 | Standard |  |  | 2017-08-13 | 16RVB01= $3350.20 33 DAYS @ $200.00= $6600.00 TOTAL" $9950.20 | 0 | 2017-10-06 |  | 2017-10-03 | 2017-10-10 | 54 | 54 | 9950.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816023 | I959, N390 | Urinary tract infection, site not specified | ICD10 | 10102017 | 08132017 | 10062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9950 | 9950 | Approved | 55 | Revenue | RV |  |  |  | 3.0 |
| 03162017 | 2017-03-16T14:55:03+00:00 |  | 000070087-01 | Dorothy | Skeens | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 10102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10102017 | 10172017 | Standard |  |  | 2017-03-15 | 16/RVC01=$3,539.19 $200.00/DAY FOR 2 THERAPIES X 12 DAYS=$2,400.00 TOTAL PAYMENT=$5,939.19 | 0 | 2017-04-16 |  | 2017-04-14 | 2017-04-14 | 32 | 32 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170317003 | N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 10102017 | 03152017 | 04162017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 09252017 | 2017-09-25T17:27:13+00:00 |  | 000077114-01 | BARBARA | DUFFY | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 10102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 09222017 | 10072017 | Standard |  |  | 2017-09-22 | 17/RVB01= $5411.86 | 0 | 2017-10-07 |  | 2017-10-10 | 2017-10-10 | 15 | 15 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926041 | S72122D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 10102017 | 09222017 | 10072017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 07202017 | 2017-07-20T19:01:52+00:00 |  | 000008757-01 | ALLAN | BAUSCH | WEST JEFFERSON FAM PRCT | 936655 | MARK W | GARWOOD | 1275595274 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 10102017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07182017 | 09112017 | Standard |  |  | 2017-07-18 | Per Diem: $250.00/day x 8 SNF Days = $2,000.00 Per Diem: $200.00/day x47 SNF Days = $9,400.00 Wound Vac: $30.00/day x 53 SNF Days = $1,590.00 Canisters/Supplies $555.00 Procrit: $505.54/dose x 2 doses = $1,011.08 Total Payment: $14,556.08 | 42 | 2017-09-11 |  |  | 2017-10-06 | 55 | 97 | 14556.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721042 | E119, E875, I509, N189 | Chronic kidney disease, unspecified | ICD10 | 10102017 | 07182017 | 09112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 56 | Revenue | RV |  |  |  | 5.0 |
| 09142017 | 2017-09-14T16:01:16+00:00 |  | 000111506-01 | Virginia | Strong | STARR FAMILY PRCT LLC | 923381 | TONY | STARR | 1609866698 | CAMBRIDGE CARE & REHAB | 951200 | 1578003570 | CAMBRIDGE CARE & REHAB | 1578003570 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CAMBRIDGE CARE & REHAB | 10102017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 09132017 | 10062017 | Standard |  |  | 2017-09-13 | 17/RVB01= $5411.86 | 0 | 2017-10-06 |  | 2017-10-10 | 2017-10-10 | 23 | 23 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915032 | L0390, R609, R627 | Adult failure to thrive | ICD10 | 10102017 | 09132017 | 10062017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 08042017 | 2017-08-04T10:10:00+00:00 |  | 000075795-01 | Maxine | Thomas | MONTGOMERY, DAVID | 901409 | DAVID | MONTGOMERY | 0 | HIGHLAND OAKS HEALTH CENTER | 934015 | 1083929186 | HIGHLAND OAKS HEALTH CENTER | 1083929186 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HIGHLAND OAKS HEALTH CENTER | 10102017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 08022017 | 09202017 | Standard |  |  | 2017-08-02 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $200.00/day x 29 days = $5800.00 Invanz (per invoice) = $1,404.80 TOTAL PAYMENT = $12,616.66 | 0 | 2017-09-20 |  | 2017-09-21 |  | 49 | 49 | 12616.66 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804026 | E878, I509, N390, R0902 | Hypoxemia | ICD10 | 10102017 | 08022017 | 09202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 50 | Revenue | RV |  |  |  | 10.0 |
| 09062017 | 2017-09-06T16:35:23+00:00 |  | 000098540-01 | Marie | Abmayr | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | ST LEONARD HEALTH CARE CENTER | 915994 | 1851387047 | ST LEONARD HEALTH CARE CENTER | 1851387047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST LEONARD HEALTH CARE CENTER | 10102017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09062017 | 10052017 | Standard |  |  | 2017-09-06 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $200.00/day x 9 SNF Days = $1,800.00 Total: $7,613.99 | 23 | 2017-10-05 |  | 2017-10-10 | 2017-10-10 | 29 | 52 | 7613.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907100 | S72141D | Displ intertroch fx r femur, subs for clos fx w routn heal | ICD10 | 10102017 | 09062017 | 10052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7613 | 7613 | Approved | 30 | Revenue | RV |  |  |  | 9.0 |
