Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-05_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-05_SNF
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
| 08212017 | 2017-08-21T16:45:22+00:00 |  | 000115484-01 | EMILY | GETTYS | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 09052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08192017 | 08242017 | Standard |  |  | 2017-08-19 | 16/RHC01=$3133.29 | 10 | 2017-08-25 |  | 2017-08-30 |  | 6 | 16 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822066 | J9601, J9811, M4806 | Spinal stenosis, lumbar region | ICD10 | 09052017 | 08192017 | 08252017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 08162017 | 2017-08-16T10:11:36+00:00 |  | 000113311-01 | Larry | Scott | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | VALLEY VIEW CARE CENTER | 909041 | 1972578045 | VALLEY VIEW CARE CENTER | 1972578045 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VALLEY VIEW CARE CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08152017 | 09032017 | Standard |  |  | 2017-08-15 | Contract/RUG: 16/RUA (Per MDS) = $3,214.76 | 20 | 2017-09-04 |  | 2017-09-01 | 2017-09-01 | 20 | 40 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816056 | Z471, Z96652 | Presence of left artificial knee joint | ICD10 | 09052017 | 08152017 | 09042017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 08312017 | 2017-08-31T12:40:25+00:00 |  | 000094958-01 | Penny | Ross | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08302017 | 08302017 | Standard |  |  | 2017-08-30 | 1 DAY @ $200.00= $200.00 | 0 | 2017-08-30 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831056 | F1010 | Alcohol abuse, uncomplicated | ICD10 | 09052017 | 08302017 | 08302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 1 | Revenue | RV |  |  |  | 1.0 |
| 08162017 | 2017-08-16T13:53:32+00:00 |  | 000005857-01 | Sherman | Ross | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF WORTHINGTON | 936523 | 1215983275 | LAURELS OF WORTHINGTON | 1215983275 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WORTHINGTON | 09052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08122017 | 08262017 | Standard |  |  | 2017-08-12 | 17/RVA01=$3,586.28 | 0 | 2017-08-27 |  | 2017-09-02 | 2017-09-02 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816069 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 09052017 | 08122017 | 08272017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 08152017 | 2017-08-15T18:09:24+00:00 |  | 000001834-01 | ARNOLD | WENGERT | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 09052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08142017 | 08232017 | Standard |  |  | 2017-08-14 | 16/RUB01=$4,429.71 | 0 | 2017-08-24 |  | 2017-09-01 | 2017-09-01 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816034 | G459, I10, R531 | Weakness | ICD10 | 09052017 | 08142017 | 08242017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 08082017 | 2017-08-08T13:58:04+00:00 |  | 000001789-01 | WALTER | VONAU | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | WESTMINSTER THURBER | 902939 | 1275529273 | WESTMINSTER THURBER | 1275529273 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMINSTER THURBER | 09052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08042017 | 08182017 | Standard |  |  | 2017-08-04 | 17/RUB01=$5,813.99 | 0 | 2017-08-19 |  | 2017-09-01 | 2017-09-01 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809038 | I951, M7032, R55 | Syncope and collapse | ICD10 | 09052017 | 08042017 | 08192017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 08182017 | 2017-08-18T15:31:14+00:00 |  | 000080444-01 | Barbara | McClain | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 09052017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 08172017 | 08292017 | Standard |  |  | 2017-08-17 | Contract/RUG: 16/RVB (Per MDS) = $3,350.20 | 0 | 2017-08-30 |  | 2017-09-01 | 2017-09-01 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821094 | Z471 | Aftercare following joint replacement surgery | ICD10 | 09052017 | 08172017 | 08302017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 08282017 | 2017-08-28T08:44:34+00:00 |  | 000054019-01 | LAURA | HEIMLICH | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 09052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08252017 | 08312017 | Standard |  |  | 2017-08-25 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-09-01 |  | 2017-09-01 | 2017-09-01 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828009 | I10, J449, Z96641 | Presence of right artificial hip joint | ICD10 | 09052017 | 08252017 | 09012017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 08172017 | 2017-08-17T10:29:30+00:00 |  | 000116889-01 | ROBERT | MORELAND | MOUNT CARMEL HLTH PRVDRS | 937305 | MELISSA A | PAYNE | 1902847742 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 09052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 08152017 | 09012017 | Standard |  |  | 2017-08-15 | Swing bed daily rate x 17 days | 0 | 2017-09-01 |  |  | 2017-09-01 | 17 | 17 | swing bed daily rate x 17 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817038 | I6350 | Cereb infrc due to unsp occls or stenos of unsp cereb artery | ICD10 | 09052017 | 08152017 | 09012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 18 | Revenue | RV |  |  |  | 3.0 |
| 05222017 | 2017-05-22T15:49:33+00:00 |  | 000103505-01 | ANDREW | HOLUPKA | COPC CENTRAL OHIO PRIMAR | 936191 | TIMOTHY S | COSS | 1720071699 | MARYSVILLE GARDENS REHAB | 949705 | 1326593492 | PRESTIGE GARDENS REHABILITATION & NU | 1326593492 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRESTIGE GARDENS REHABILITATION & NU | 09052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05222017 | 06022017 | Standard |  |  | 2017-05-22 | 17/RAU01=$3214.76 | 22 | 2017-06-03 |  | 2017-08-31 | 2017-07-28 | 12 | 34 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522128 | M86571, S98131A | Complete traumatic amputation of one right lesser toe, init | ICD10 | 09052017 | 05222017 | 06032017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 07142017 | 2017-07-14T16:26:49+00:00 |  | 000049628-01 | KAREN | SPRADLIN | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 09052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 07122017 | 07212017 | Standard |  |  | 2017-07-12 | 10 DAYS @ $200.00=$2000.00 WOUND VAC PER INVOICE= $235.91 TOTAL; $2235.91 | 0 | 2017-07-22 |  | 2017-08-31 |  | 10 | 10 | 2235.91 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717003 | T82898D | Oth complication of vascular prosth dev/grft, subs | ICD10 | 09052017 | 07122017 | 07222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2235 | 2235 | Approved | 10 | Revenue | RV |  |  |  | 10.0 |
| 08212017 | 2017-08-21T15:04:34+00:00 |  | 000073162-01 | Lora | Stark | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 09052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08192017 | 08252017 | Standard |  |  | 2017-08-19 | 16/RUA01= $3214.76 | 0 | 2017-08-26 |  | 2017-08-31 | 2017-08-31 | 7 | 7 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822052 | Z96652 | Presence of left artificial knee joint | ICD10 | 09052017 | 08192017 | 08262017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 07112017 | 2017-07-11T12:50:55+00:00 |  | 000080214-01 | Gale | Ellis | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | MARIETTA REHABILITATION AND NURSING | 931538 | 1184730913 | MARIETTA REHABILITATION AND NURSING | 1184730913 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MARIETTA REHABILITATION AND NURSING | 09052017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 07052017 | 08012017 | Standard |  |  | 2017-07-05 | 17/RVA01= %3586.28 5 DAYS @ $200.00= $1000.00 TOTAL= $4586.28 (NO CARVE OUT FOR WOUND VAC, RESCINDED REQUEST; CASE RATE GIVEN) | 0 | 2017-08-02 |  | 2017-08-30 | 2017-08-30 | 25 | 25 | 4586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711068 | S3215XD | Type 2 fracture of sacrum, subs for fx w routn heal | ICD10 | 09052017 | 07052017 | 08022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4586 | 4586 | Approved | 28 | Revenue | RV |  |  |  | 1.0 |
| 07212017 | 2017-07-21T16:53:42+00:00 |  | 000099249-01 | Alice | Bertram | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | MARIETTA REHABILITATION AND NURSING | 931538 | 1184730913 | MARIETTA REHABILITATION AND NURSING | 1184730913 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MARIETTA REHABILITATION AND NURSING | 09052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 07202017 | 08172017 | Standard |  |  | 2017-07-20 | 17/RUC01= $6049.81 9 DAYS @ $200.00= $1800.00 TOTAL: $7849.81 | 0 | 2017-08-18 |  | 2017-08-28 | 2017-08-28 | 29 | 29 | 7849.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724008 | I4891 | Unspecified atrial fibrillation | ICD10 | 09052017 | 07202017 | 08182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7849 | 7849 | Approved | 29 | Revenue | RV |  |  |  | 2.0 |
| 08172017 | 2017-08-17T12:51:29+00:00 |  | 000077477-01 | Hazel | Hall | MARIETTA MEM HSP | 906929 | FREDERIC A | HUMPHREY | 1366438848 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 09052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 08152017 | 08292017 | Standard |  |  | 2017-08-15 | 17/RVC01= $6306.19 | 0 | 2017-08-30 |  | 2017-08-31 | 2017-08-31 | 15 | 15 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817055 | M6281 | Muscle weakness (generalized) | ICD10 | 09052017 | 08152017 | 08302017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 08252017 | 2017-08-25T08:50:52+00:00 |  | 000057887-01 | EVELAND | DANFORTH | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 09052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08232017 | 09032017 | Standard |  |  | 2017-08-23 | Per MDS: 17/RUB01 = $5813.99 | 0 | 2017-09-04 |  | 2017-08-31 | 2017-09-04 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825033 | E039, E785, I10, Z96652 | Presence of left artificial knee joint | ICD10 | 09052017 | 08232017 | 09042017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 08162017 | 2017-08-16T11:37:23+00:00 |  | 000077671-01 | Daniel | Hicks | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 09052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08142017 | 09022017 | Standard |  |  | 2017-08-14 | Per MDS: 17/RUC01 = $6049.81 | 0 | 2017-09-03 |  | 2017-09-05 | 2017-09-05 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816061 | M5136, M545, M6281, Z7409 | Other reduced mobility | ICD10 | 09052017 | 08142017 | 09032017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 08182017 | 2017-08-18T13:37:21+00:00 |  | 000098188-01 | Gerald | Stuller | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 09052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 08162017 | 08202017 | Standard |  |  | 2017-08-16 | 17/ES101=$4,881.45 | 0 | 2017-08-20 |  | 2017-09-05 |  | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821073 | K9419 | Other complications of enterostomy | ICD10 | 09052017 | 08162017 | 08202017 | ES101 | EXTENSIVE SERVICES , ADL INDEX 2-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved Skilled | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 06292017 | 2017-06-29T12:29:51+00:00 |  | 000111726-01 | RICKY | HILL | MARIETTA HLTH CARE PHYS | 922044 | KENNETH J | LEOPOLD | 1871561472 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 09052017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 09052017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629063 | I69398 | Other sequelae of cerebral infarction | ICD10 | 09052017 | 06262017 | 07022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 1200 |  | 8 | Revenue | RV |  |  |  | 6.0 |
| 09012017 | 2017-09-01T15:44:44+00:00 |  | 000074254-01 | Rosemary | Lail | GERIMED INC | 932657 | EMMANUEL V | RIVERA | 1912946146 | SHAWNEESPRING HEALTH CARE CENTER LLC | 926868 | 1346219987 | SHAWNEESPRING HEALTH CARE CENTER LLC | 1346219987 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHAWNEESPRING HEALTH CARE CENTER LLC | 09052017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Services Available In-Network | Inpatient | 09052017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170901067 | R296, S22080D | Wedge comprsn fx T11-T12 vertebra, subs for fx w routn heal | ICD10 | 09052017 | 09012017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
