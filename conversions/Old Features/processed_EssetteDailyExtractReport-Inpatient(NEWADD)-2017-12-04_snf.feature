Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-04_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-04_SNF
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
| 11032017 | 2017-11-03T15:51:48+00:00 |  | 000108049-01 | Marjorie | Hill | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 12042017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11022017 | 11172017 | Standard |  |  | 2017-11-02 | 17/RUA01=$3,214.76 | 0 | 2017-11-17 |  | 2017-11-29 | 2017-11-29 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106067 | Z471, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 12042017 | 11022017 | 11172017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 11062017 | 2017-11-06T13:31:40+00:00 |  | 000009747-01 | SANDRA | ROSSIO | AMERICAN HLTH NETWORK OF | 924337 | RAJNISH K | GUPTA | 1063466795 | ARBORS EAST SUBACUTE & R | 943301 | 1205225166 | ARBORS EAST SUBACUTE & REHAB CENTER | 1205225166 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS EAST SUBACUTE & REHAB CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11022017 | 11142017 | Standard |  |  | 2017-11-02 | 17/RVA01=$3,586.28 | 0 | 2017-11-14 |  | 2017-11-29 |  | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106114 | I509 | Heart failure, unspecified | ICD10 | 12042017 | 11022017 | 11142017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 10182017 | 2017-10-18T09:03:26+00:00 |  | 000062668-01 | GAIL | LANDEFELD | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 12042017 | Approved | THE TIMKEN COMPANY | Fax | SNF | Inpatient | 10132017 | 11062017 | Standard |  |  | 2017-10-13 | 17/RUC01=$6,049.81 | 0 | 2017-11-06 |  | 2017-11-30 | 2017-11-30 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018054 | E876, I10, M25552, T814XXA | Infection following a procedure, initial encounter | ICD10 | 12042017 | 10132017 | 11062017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 25 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 09132017 | 2017-09-13T12:15:05+00:00 |  | 000118323-01 | Joseph | Klimonek | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | VILLA ANGELA CARE CENTER | 936528 | 1053315945 | VILLA ANGELA CARE CENTER | 1053315945 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA ANGELA CARE CENTER | 12042017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 09122017 | 11272017 | Standard |  |  | 2017-09-12 | 16/RUC01=$7,333.11 PER DIEM RATE OF $250.00/DAY X 32=$8,000.00 PER DIEM RATE OF $200.00/DAY X 24=$4,800.00 TOTAL PAYMENT=$20,133.11 | 0 | 2017-11-27 |  | 2017-12-01 | 2017-12-01 | 76 | 76 | 20133.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913062 | R4182 | Altered mental status, unspecified | ICD10 | 12042017 | 09122017 | 11272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 77 | Revenue | RV |  |  |  | 4.0 |
| 10252017 | 2017-10-25T16:09:10+00:00 |  | 000082388-01 | Nada | Risteska | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 12042017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10232017 | 11292017 | Standard |  |  | 2017-10-23 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/day x 17 days = $4250.00 TOTAL PAYMENT = $10,556.19 | 0 | 2017-11-29 | 2017-12-01 | 2017-12-01 | 2017-12-01 | 37 | 37 | 10556.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026018 | L03116 | Cellulitis of left lower limb | ICD10 | 12042017 | 10232017 | 11292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 38 | Revenue | RV |  |  |  | 7.0 |
| 11162017 | 2017-11-16T13:38:10+00:00 |  | 000006506-01 | Martha | Terry | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11152017 | 12012017 | Standard |  |  | 2017-11-15 | Per MDS; 17/RUB01 = $5813.99 | 10 | 2017-12-01 |  | 2017-11-24 | 2017-12-01 | 16 | 26 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116096 | E785, E871, I10, J449, R296 | Repeated falls | ICD10 | 12042017 | 11152017 | 12012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 10272017 | 2017-10-27T09:26:37+00:00 |  | 000095861-01 | Judith | Bame | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 12042017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10242017 | 11022017 | Standard |  |  | 2017-10-24 | 17/RVB01=$5,813.86 | 0 | 2017-11-02 |  | 2017-11-30 | 2017-11-30 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027034 | B0059, N110, N390 | Urinary tract infection, site not specified | ICD10 | 12042017 | 10242017 | 11022017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 11202017 | 2017-11-20T12:09:20+00:00 |  | 000110694-01 | Margaret | Good | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11172017 | 11302017 | Standard |  |  | 2017-11-17 | Per MDS: 17/RVC01 = $6306.19 | 0 | 2017-11-30 | 2017-11-30 | 2017-11-30 | 2017-11-30 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120082 | Z96651 | Presence of right artificial knee joint | ICD10 | 12042017 | 11172017 | 11302017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 11152017 | 2017-11-15T15:59:28+00:00 |  | 000088405-01 | Joan | Black | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11142017 | 11302017 | Standard |  |  | 2017-11-14 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2017-11-30 |  | 2017-12-01 | 2017-11-29 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115091 | Z4733, Z96652 | Presence of left artificial knee joint | ICD10 | 12042017 | 11142017 | 11302017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 11202017 | 2017-11-20T08:24:03+00:00 |  | 000107134-01 | Phyllis | Barnhart | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11162017 | 12012017 | Standard |  |  | 2017-11-16 |  | 0 | 2017-12-01 |  |  | 2017-11-30 | 15 | 15 | Swing Bed Daily Rate x 15 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120029 | Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 12042017 | 11162017 | 12012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 16 | Revenue | RV |  |  |  | 3.0 |
| 11132017 | 2017-11-13T18:36:08+00:00 |  | 000041142-01 | BEVERLY | YOUNKIN | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11102017 | 11282017 | Standard |  |  | 2017-11-10 | 17/RUA01=$3,214.76 | 0 | 2017-11-28 |  | 2017-12-29 | 2017-12-29 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114043 | I509 | Heart failure, unspecified | ICD10 | 12042017 | 11102017 | 11282017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 10272017 | 2017-10-27T09:29:35+00:00 |  | 000089691-01 | Donald | Theado | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10242017 | 11112017 | Standard |  |  | 2017-10-24 | 17/RUC01=$6,049.81 | 0 | 2017-11-11 |  | 2017-11-30 | 2017-11-30 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027036 | N189, S72143A, Z9181 | History of falling | ICD10 | 12042017 | 10242017 | 11112017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 11202017 | 2017-11-20T15:39:32+00:00 |  | 000072837-01 | Linda | Moore | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11162017 | 11232017 | Standard |  |  | 2017-11-16 | 17/RUA01=$3,214.76 | 0 | 2017-11-23 |  | 2017-11-29 | 2017-11-29 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121006 | Z4889 | Encounter for other specified surgical aftercare | ICD10 | 12042017 | 11162017 | 11232017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 11072017 | 2017-11-07T14:54:01+00:00 |  | 000077898-01 | Willard | Hatfield | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 12042017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 11052017 | 11302017 | Standard |  |  | 2017-11-05 | 17/RUB01= $5813.99 | 0 | 2017-11-30 |  | 2017-12-04 | 2017-12-04 | 25 | 25 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107111 | G9340, J9622, R1310 | Dysphagia, unspecified | ICD10 | 12042017 | 11052017 | 11302017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 26 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 11062017 | 2017-11-06T08:31:31+00:00 |  | 000052750-01 | CHARLOTTE | BALL | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11012017 | 11172017 | Standard |  |  | 2017-11-01 | 17/RUC01=$6,049.81 | 0 | 2017-11-17 |  | 2017-11-30 | 2017-11-30 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106090 | E119, I10, I4892, I639, M84373S, W19XXXS | Unspecified fall, sequela | ICD10 | 12042017 | 11012017 | 11172017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 11152017 | 2017-11-15T07:41:00+00:00 |  | 000064761-01 | JUANITA | TAGGART | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11152017 | 11292017 | Standard |  |  | 2017-11-15 | 16/RHC01= $3133.29 | 44 | 2017-11-29 |  | 2017-12-01 | 2017-12-01 | 14 | 58 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117058 | A047, I5031 | Acute diastolic (congestive) heart failure | ICD10 | 12042017 | 11152017 | 11292017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11072017 | 2017-11-07T15:26:53+00:00 |  | 000082248-01 | Roger | Eden | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11042017 | 11172017 | Standard |  |  | 2017-11-04 | 17/RUB01=$5,813.99 | 0 | 2017-11-17 |  | 2017-11-30 | 2017-11-30 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107113 | R4182, R5383, W19XXXS | Unspecified fall, sequela | ICD10 | 12042017 | 11042017 | 11172017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 11082017 | 2017-11-08T21:04:10+00:00 |  | 000106376-01 | Irene | Rees | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11072017 | 11242017 | Standard |  |  | 2017-11-07 | 17/RUA01= $3214.76 | 0 | 2017-11-24 |  | 2017-12-04 | 2017-12-04 | 17 | 17 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109031 | J698, W19XXXA | Unspecified fall, initial encounter | ICD10 | 12042017 | 11072017 | 11242017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 11292017 | 2017-11-29T13:48:27+00:00 |  | 000047948-01 | DOROTHY | BURGETT | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 12042017 | Denied Skilled - Pay Unskilled | MediGold Classic Preferred | Fax |  | Inpatient | 11272017 | 11292017 | Standard |  |  | 2017-11-27 | ADMISSION DENIAL Non-skilled Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $400.00 | 0 | 2017-11-29 |  |  |  | 0 | 0 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied Skilled - Pay Unskilled | A171130037 | M75122, M7531 | Calcific tendinitis of right shoulder | ICD10 | 12042017 | 11272017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11102017 | 2017-11-10T10:57:44+00:00 |  | 000017650-01 | EDITH | EVANS | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11082017 | 11232017 | Standard |  |  | 2017-11-08 | 17/RVB01=$5,411.86 | 0 | 2017-11-23 |  | 2017-11-30 | 2017-11-30 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110053 | I10, I4891, J189 | Pneumonia, unspecified organism | ICD10 | 12042017 | 11082017 | 11232017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
