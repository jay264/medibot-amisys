Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-12_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-12_SNF
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
| 03052018 | 2018-03-05T17:20:05+00:00 |  | 000008757-01 | ALLAN | BAUSCH | WEST JEFFERSON FAM PRCT | 936655 | MARK W | GARWOOD | 1275595274 | ARBORS WEST | 943328 | 1558769448 | ARBORS WEST | 1558769448 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS WEST | 04122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03012018 | 04052018 | Standard |  |  | 2018-03-01 | Per Diem: $200.00/day x 35 SNF Days = $7,000.00 Carve Out: Procrit $266.02/dose x 13 doses = $3,458.26 Total Payment: $10,458.26 | 0 | 2018-04-05 | 2018-04-10 | 2018-04-10 | 2018-04-10 | 35 | 35 | 10458.26 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306031 | Z89511 | Acquired absence of right leg below knee | ICD10 | 04122018 | 03012018 | 04052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 36 | Revenue | RV |  |  |  | 7.0 |
| 04022018 | 2018-04-02T14:08:33+00:00 |  | 000024531-01 | MARY | GILLIAM | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 04122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03302018 | 04082018 | Standard |  |  | 2018-03-30 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-04-08 |  | 2018-04-11 | 2018-04-11 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402113 | I4891 | Unspecified atrial fibrillation | ICD10 | 04122018 | 03302018 | 04082018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 03022018 | 2018-03-02T15:23:44+00:00 |  | 000060397-01 | MARGIE | CLARK | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02282018 | 04112018 | Standard |  |  | 2018-02-28 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $200.00/day x 22 days = $4400.00 TOTAL PAYMENT = $10,213.99 | 0 | 2018-04-11 |  | 2018-04-12 | 2018-04-12 | 42 | 42 | 10213.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302073 | Z4789, Z5189 | Encounter for other specified aftercare | ICD10 | 04122018 | 02282018 | 04112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 43 | Revenue | RV |  |  |  | 1.0 |
| 03162018 | 2018-03-16T15:05:45+00:00 |  | 000090618-01 | Velda | Brannick | CLYO INTERNAL MEDICINE | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 04122018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03152018 | 04022018 | Standard |  |  | 2018-03-15 | Contract/RUG: 17/RVL (Per MDS) = $4,874.23 | 0 | 2018-04-02 |  | 2018-04-11 |  | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316064 | J9602 | Acute respiratory failure with hypercapnia | ICD10 | 04122018 | 03152018 | 04022018 | RVL01 | VERY HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA OR | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03192018 | 2018-03-19T14:56:51+00:00 |  | 000064873-01 | DEBRA | DEBOLT- REYNOLDS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03152018 | 04112018 | Standard |  |  | 2018-03-15 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 7 days = $1750.00 TOTAL PAYMENT = $7563.99 | 23 | 2018-04-11 |  | 2018-04-12 | 2018-04-12 | 27 | 50 | 7563.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320047 | I5189, N179 | Acute kidney failure, unspecified | ICD10 | 04122018 | 03152018 | 04112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7563 | 7563 | Approved | 28 | Revenue | RV |  |  |  | 7.0 |
| 03222018 | 2018-03-22T10:37:20+00:00 |  | 000003399-01 | HELEN | GRIFFITH | COLS INPATIENT CARE INC | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03202018 | 04092018 | Standard |  |  | 2018-03-20 | 17/RUB01=$5,813.99 | 0 | 2018-04-09 |  | 2018-04-11 | 2018-04-11 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322029 | K219, M109, M6281, N390 | Urinary tract infection, site not specified | ICD10 | 04122018 | 03202018 | 04092018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 03262018 | 2018-03-26T14:19:41+00:00 |  | 000021461-01 | JOHN | AUER | CEN OHIO GERIATRICS LLC | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 04122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03242018 | 04072018 | Standard |  |  | 2018-03-24 | 17/RUB01=$5,813.99 | 0 | 2018-04-07 |  | 2018-04-11 | 2018-04-11 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327006 | A419 | Sepsis, unspecified organism | ICD10 | 04122018 | 03242018 | 04072018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 03272018 | 2018-03-27T06:28:35+00:00 |  | 000054262-01 | BOYD | ARLEDGE | HEARTLAND OF UPTOWN WEST | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 04122018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03232018 | 03272018 | Standard |  |  | 2018-03-23 | PER DIEM RATE OF $200.00/DAY X 4 DAYS=$800.00 | 0 | 2018-03-27 |  | 2018-04-11 |  | 4 | 4 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327083 | R4182 | Altered mental status, unspecified | ICD10 | 04122018 | 03232018 | 03272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved Skilled | 5 | Revenue | RV |  |  |  | 4.0 |
| 03272018 | 2018-03-27T09:11:53+00:00 |  | 000085546-01 | Helena | Anthony | MARIETTA MEM HSP | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 04122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 03242018 | 03302018 | Standard |  |  | 2018-03-24 | 17/RVC01= $6306.19 | 0 | 2018-03-30 |  | 2018-04-12 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327089 | J189 | Pneumonia, unspecified organism | ICD10 | 04122018 | 03242018 | 03302018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 03272018 | 2018-03-27T14:32:44+00:00 |  | 000076808-01 | Elmer | Blankenship | DAVID CRAIG STACHEL MD | 951218 | DAVID C | STACHEL | 1861408957 | LAFAYETTE POINT NURSING & REHAB | 924216 | 1770770984 | LAFAYETTE POINT NURSING & REHAB | 1770770984 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAFAYETTE POINT NURSING & REHAB | 04122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 03262018 | 04012018 | Standard |  |  | 2018-03-26 | 16/CC101= $3231.84 | 35 | 2018-04-01 |  | 2018-04-12 |  | 6 | 41 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328010 | L02414, L03114 | Cellulitis of left upper limb | ICD10 | 04122018 | 03262018 | 04012018 | CC101 | CLINICALLY COMPLEX , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 03282018 | 2018-03-28T08:35:44+00:00 |  | 000030595-01 | MARY | BROWN | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 04122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03262018 | 04112018 | Standard |  |  | 2018-03-26 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2018-04-11 |  | 2018-04-03 | 2018-04-11 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328039 | N179, R296 | Repeated falls | ICD10 | 04122018 | 03262018 | 04112018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 03282018 | 2018-03-28T11:12:20+00:00 |  | 000073064-01 | Charles | Bush | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | THE MANOR AT WHITEHALL | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE MANOR AT WHITEHALL | 04122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03252018 | 04072018 | Standard |  |  | 2018-03-25 | 17/RUA01=$3,214.76 | 0 | 2018-04-08 |  | 2018-04-09 | 2018-04-09 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328051 | M8600 | Acute hematogenous osteomyelitis, unspecified site | ICD10 | 04122018 | 03252018 | 04072018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 03292018 | 2018-03-29T10:54:41+00:00 |  | 000066428-01 | Venita | Howard | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 04122018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03272018 | 04022018 | Standard |  |  | 2018-03-27 | Per Diem: $200.00/day x 6 SNF Days = $1,200.00 Carve Out: IV TPN  $80.00/each bag x 6 bags (per invoice) = $480.00 Wound Vac/Supplies $396.29 (per invoice) Total Payment: $2,076.29 | 0 | 2018-04-02 |  |  |  | 6 | 6 | 2076.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329048 | K668 | Other specified disorders of peritoneum | ICD10 | 04122018 | 03272018 | 04022018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2076 | 2076 | Approved | 7 | Revenue | RV |  |  |  | 6.0 |
| 04022018 | 2018-04-02T10:21:35+00:00 |  | 000052540-01 | CHARLES | UHRIG JR | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 04122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03302018 | 04042018 | Standard |  |  | 2018-03-30 | Per MDS: 17/RMC01 = $3027.33 | 0 | 2018-04-04 |  | 2018-04-12 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402033 | I482 | Chronic atrial fibrillation | ICD10 | 04122018 | 03302018 | 04042018 | RMC01 | MEDIUM REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 04042018 | 2018-04-04T14:01:53+00:00 |  | 000046513-01 | GINGER | LONG | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 04122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04032018 | 04112018 | Standard |  |  | 2018-04-03 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-04-11 |  | 2018-04-12 | 2018-04-12 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404077 | M5432 | Sciatica, left side | ICD10 | 04122018 | 04032018 | 04112018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 04052018 | 2018-04-05T11:07:05+00:00 |  | 000115793-01 | Edith | Reese | CEN OHIO GERIATRICS LLC | 907151 | JEROME M | KONG | 1598711657 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 04122018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04032018 | 04062018 | Standard |  |  | 2018-04-03 | NON-SKILLED RATE OF $200.00/DAY X 3 DAYS=$600.00 | 0 | 2018-04-06 |  | 2018-04-09 | 2018-04-09 | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405031 | I63342 | Cerebral infarction due to thrombosis of left cereblr artery | ICD10 | 04122018 | 04032018 | 04062018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved Skilled | 4 | Revenue | RV |  |  |  | 3.0 |
| 04112018 | 2018-04-11T15:30:42+00:00 |  | 000070079-01 | James | Weaver | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 04122018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04072018 | 04082018 | Standard |  |  | 2018-04-07 | Per Diem: $200.00/day x1 day = $200.00 TOTAL PAYMENT = $200.00 | 0 | 2018-04-08 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411103 | D61818, K5732 | Dvtrcli of lg int w/o perforation or abscess w/o bleeding | ICD10 | 04122018 | 04072018 | 04082018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
