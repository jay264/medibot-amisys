Feature: Process Essette Extract SNF_Inpatient_New_Adds_04142018
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: SNF_Inpatient_New_Adds_04142018
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
|03022018|2018-03-02T13:28:31+00:00||000010994-01|CAROLYN|BAILEY|CEN OHIO GERIATRICS LLC|935024      0003|JOHN M|WEIGAND|1780624965|KENDAL AT GRANVILLE|904333      0003|1003974023|KENDAL AT GRANVILLE|1003974023|Skilled Nursing Facility|SNF|Concurrent Review|CONC||KENDAL AT GRANVILLE|04132018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|03012018|04142018|Standard|||03012018|16/RUB01= $4429.71 14 DAYS @ $200.00= $2800.00 TOTAL: $7229.71|0|04142018||04122018|04122018|44|44|$7229.71||||||||||Concurrent Review|Approved|A180302052|N390|Urinary tract infection, site not specified|ICD10|04132018|03012018|04142018|R0022|Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG)|Revenue|7229|7229|Approved|45|Revenue|RV||||10|
|03092018|2018-03-09T10:43:51+00:00||000113478-01|Mendelynn|Fisher|ARTHUR H WIN MD LLC|905083      0001|ARTHUR H|WIN|1780667444|GOOD SHEPHERD VILLAGE|920229      0003|1396862314|GOOD SHEPHERD VILLAGE|1396862314|Skilled Nursing Facility|SNF|Concurrent Review|CONC||GOOD SHEPHERD VILLAGE|04132018|Approved|MediGold Essential Care|Fax|SNF|Inpatient|03072018|03292018|Standard|||03072018|Contract/RUG: 16/RVA (Per MDS) = $2,689.71|0|03292018||03302018||19|19|||||||||||Concurrent Review|Approved|A180309056|M6281, R296|Repeated falls|ICD10|04132018|03072018|03292018|RVA01|VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|23|RUGS,HHRG|HP||||7|
|03142018|2018-03-14T14:27:57+00:00||000099386-01|Doris|Moore|TO, NHA T|916638      0001|NHA T|TO|1700997558|OAKWOOD VILLAGE|916907      0003|1326004409|OAKWOOD VILLAGE|1326004409|Skilled Nursing Facility|SNF|Concurrent Review|CONC||OAKWOOD VILLAGE|04132018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|03132018|04042018|Standard|||03132018|Contract/RUG: 17/RVB (Per MDS) = $5,411.86|0|04042018||04122018|04042018|22|22|||||||||||Concurrent Review|Approved|A180314057|S92031A|Displaced avulsion fx tuberosity of r calcaneus, init|ICD10|04132018|03132018|04042018|RVB01|VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|23|RUGS,HHRG|HP||||2|
|03192018|2018-03-19T14:24:40+00:00||000054194-01|NORMA|TOWT|COLS INPATIENT CARE INC|906074      0001|THOMAS F|BRADY|1316980741|ALTERCARE OF CANAL WINCH|907307      0003|1184894248|ALTERCARE OF CANAL WINCHESTER|1184894248|Skilled Nursing Facility|SNF|Concurrent Review|CONC||ALTERCARE OF CANAL WINCHESTER|04132018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|03172018|04132018|Standard|||03172018|Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $200.00/day x 7 SNF Days = $1,400.00 Total Payment: $7,449.81|0|04132018||04132018|04132018|27|27|$7,449.81||||||||||Concurrent Review|Approved|A180320044|S72002D|Fx unsp part of nk of l femr, subs for clos fx w routn heal|ICD10|04132018|03172018|04132018|RUC01|ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|28|RUGS,HHRG|HP||||7|
|03232018|2018-03-23T13:45:18+00:00||000078887-01|Barbara|Tilton|COLS INPATIENT CARE INC|914484      0001|KANAN AKHIL|PATEL|1205096195|MONTEREY CARE CENTER|936519      0003|1245239862|MONTEREY CARE CENTER|1245239862|Skilled Nursing Facility|SNF|Concurrent Review|CONC||MONTEREY CARE CENTER|04132018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|03222018|04112018|Standard|||03222018|17/RVC01=$6,306.19|0|04112018||04122018|04122018|20|20|||||||||||Concurrent Review|Approved|A180323058|I69854, Z96652|Presence of left artificial knee joint|ICD10|04132018|03222018|04112018|RVC01|VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved Skilled|21|RUGS,HHRG|HP||||14|
|03272018|2018-03-27T11:45:59+00:00||000051626-01|TWILA|WILLIAMSON|CHU, VINCENT K|936119      0007|VINCENT K|CHU|1366481822|MORNING VIEW DELAWARE, I|936546      0005|1720080997|MORNING VIEW DELAWARE INC|1720080997|Skilled Nursing Facility|SNF|Concurrent Review|CONC||MORNING VIEW DELAWARE INC|04132018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|03232018|04122018|Standard|||03232018|16RVB01=$3,350.20|0|04122018||04122018|04122018|20|20|||||||||||Concurrent Review|Approved|A180328003|S82001D|Unsp fx right patella, subs for clos fx w routn heal|ICD10|04132018|03232018|04122018|RVB01|VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved Skilled|21|RUGS,HHRG|HP||||8|
|03312018|2018-03-31T11:36:20+00:00||000107787-01|Opal|Wacker|VARNEY, LEROY B|936105      0002|LEROY B|VARNEY|1790756740|LANFAIR CTR FOR REHAB &|939399      0004|1710959267|LANFAIR CTR FOR REHAB & NURSING CARE|1710959267|Skilled Nursing Facility|SNF|Concurrent Review|CONC||LANFAIR CTR FOR REHAB & NURSING CARE|04132018|Approved|Flexible Choice PPO|Fax|SNF|Inpatient|03292018|04102018|Standard|||03292018|Per MDS: 17/RVA01 = $3586.28|0|04102018||04132018|04092018|12|12|||||||||||Concurrent Review|Approved|A180402006|E0789, E782, F411, I10, I2510, I481, J189, J9691, K219, M150, R0789, Z950|Presence of cardiac pacemaker|ICD10|04132018|03292018|04102018|RVA01|VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|13|RUGS,HHRG|HP||||12|
|04032018|2018-04-03T12:26:44+00:00||000121987-01|Donald|Beaudoin|KATULA, DOUGLAS A|936993      0001|DOUGLAS A|KATULA|1982680567|MOTHER ANGELINE MCCRORY|916665      0003|1730243932|MOTHER ANGELINE MCCRORY MANOR|1730243932|Skilled Nursing Facility|SNF|Concurrent Review|CONC||MOTHER ANGELINE MCCRORY MANOR|04132018|Approved|MediGold Essential Care|Fax|SNF|Inpatient|04022018|04122018|Standard|||04022018|Per MDS: 17/RVB01 = $5411.86|0|04122018||04102018|04122018|10|10|||||||||||Concurrent Review|Approved|A180403059|A419, E1311, I229, J9690, N179|Acute kidney failure, unspecified|ICD10|04132018|04022018|04122018|RVB01|VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|11|RUGS,HHRG|HP||||10|
|04052018|2018-04-05T12:51:41+00:00||000006477-01|GAROLD|MEADOWS|RHEE, CHOO Y|937376      0001|CHOO Y|RHEE|1336218510|SHG WHITEHALL HOLDINGS L|900250      0007|1841551488|THE MANOR AT WHITEHALL|1871693846|Skilled Nursing Facility|SNF|Concurrent Review|CONC||THE MANOR AT WHITEHALL|04132018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|04032018|04102018|Standard|||04032018|17/HB101=$3,448.45|0|04102018||04122018||7|7|||||||||||Concurrent Review|Approved|A180405041|I5032, J1008, J9602|Acute respiratory failure with hypercapnia|ICD10|04132018|04032018|04102018|HB101|SPECIAL CARE HIGH , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved Skilled|8|RUGS,HHRG|HP||||7|
|04062018|2018-04-06T09:13:36+00:00||000029943-01|ILA|LAUSA|GENERAL MEDICAL CNSLT|936993      0003|DOUGLAS A|KATULA|1982680567|MOTHER ANGELINE MCCRORY|916665      0003|1730243932|MOTHER ANGELINE MCCRORY MANOR|1730243932|Skilled Nursing Facility|SNF|Concurrent Review|CONC||MOTHER ANGELINE MCCRORY MANOR|04132018|Approved|TRINITY HEALTH|Fax|SNF|Inpatient|04042018|04122018|Standard|||04042018|Per MDS: 17/RVC01 = $6306.19|0|04122018||04112018|04122018|8|8|||||||||||Concurrent Review|Approved|A180406005|F0390, I2510, I4891, R296, S2241XS|Multiple fractures of ribs, right side, sequela|ICD10|04132018|04042018|04122018|RVC01|VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|9|RUGS,HHRG|HP||||8|
|04122018|2018-04-12T09:29:37+00:00||000079214-01|Shirley|Williams|CENTERBURG POINTE|915833      0003||CENTERBURG POINTE|1033410295|CENTERBURG POINTE|915833      0003|1033410295|CENTERBURG POINTE|1033410295|Skilled Nursing Facility|SNF|Concurrent Review|CONC||CENTERBURG POINTE|04132018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|04102018|04122018|Standard|||04102018|2 DAYS @ $200.00= $400.00|0|04122018||||2|2|$400.00||||||||||Concurrent Review|Approved|A180412044|I213|ST elevation (STEMI) myocardial infarction of unsp site|ICD10|04132018|04102018|04122018|R0022|Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG)|Revenue|400|400|Approved|3|Revenue|RV||||2|
