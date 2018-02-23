Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-21_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-21_SNF
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
| 01252018 | 2018-01-25T09:21:48+00:00 |  | 000024856-01 | PAUL | KATZ | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01232018 | 02122018 | Standard |  |  | 2018-01-23 | 17/RVC01=$6,306.19 | 0 | 2018-02-12 |  | 2018-02-19 | 2018-02-19 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125056 | R296, S12091D, S12101D, S22010D, S22020D | Wedge comprsn fx second thor vert, subs for fx w routn heal | ICD10 | 02212018 | 01232018 | 02122018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 11062017 | 2017-11-06T08:16:58+00:00 |  | 000010759-01 | MARY | REA | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11032017 | 02172018 | Standard |  |  | 2017-11-03 | 16/RHB01=$2,690.49 PER DIEM RATE OF $250.00/DAY X 78 DAYS=$19,500.00 TOTAL PAYMENT=$22,190.49 | 2 | 2018-02-17 |  | 2018-02-20 |  | 98 | 100 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106088 | N184, S2241XS | Multiple fractures of ribs, right side, sequela | ICD10 | 02212018 | 11032017 | 02172018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 107 | Revenue | RV |  |  |  | 6.0 |
| 01152018 | 2018-01-15T16:37:02+00:00 |  | 000016742-01 | ROBERTA | GIERHART | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 02212018 | Approved | MediGold Classic Preferred | Mail | SNF | Inpatient | 01122018 | 02102018 | Standard |  |  | 2018-01-12 | 16/RVL01= $4874.23 9 DAYS @ $200.00= $1800.00 TOTAL: $6674.23 | 0 | 2018-02-10 |  | 2018-02-21 |  | 29 | 29 | 6674.23 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116003 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 02212018 | 01122018 | 02102018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6674 | 6674 | Approved | 30 | Revenue | RV |  |  |  | 2.0 |
| 01162018 | 2018-01-16T15:32:15+00:00 |  | 000106772-01 | Norma | Simmermacher | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02212018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01122018 | 02122018 | Standard |  |  | 2018-01-12 | 17/RVC01= $6306.19 11 DAYS @ $200.00= $2200.00 TOTAL: $8506.19 | 0 | 2018-02-12 |  | 2018-02-20 | 2018-02-20 | 31 | 31 | 8506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116085 | S82301D | Unsp fx lower end of r tibia, subs for clos fx w routn heal | ICD10 | 02212018 | 01122018 | 02122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8506 | 8506 | Approved | 32 | Revenue | RV |  |  |  | 4.0 |
| 01182018 | 2018-01-18T13:16:10+00:00 |  | 000029484-01 | DENZIL | COLLIER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01162018 | 01252018 | Standard |  |  | 2018-01-16 | 17/RVA01= $3586.28 | 0 | 2018-02-25 |  | 2018-02-20 | 2018-02-20 | 9 | 9 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118066 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02212018 | 01162018 | 01252018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01262018 | 2018-01-26T13:14:52+00:00 |  | 000113220-01 | Michael | Stacey | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02212018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01242018 | 02132018 | Standard |  |  | 2018-01-24 | 17/RVC01= $6306.19 | 0 | 2018-02-13 |  | 2018-02-20 | 2018-02-20 | 20 | 20 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129017 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02212018 | 01242018 | 02132018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01302018 | 2018-01-30T16:23:01+00:00 |  | 000037959-01 | PAUL | BENNETT | HEARTLAND OF UPTOWN WEST | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01282018 | 02092018 | Standard |  |  | 2018-01-28 | 17/RVB01= $5411.86 | 0 | 2018-02-09 |  | 2018-02-20 | 2018-02-20 | 12 | 12 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131054 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02212018 | 01282018 | 02092018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01312018 | 2018-01-31T16:02:45+00:00 |  | 000072803-01 | Howard | Herrick | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02212018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01292018 | 02192018 | Standard |  |  | 2018-01-29 | 17/RVC01= $6306.19 | 0 | 2018-02-19 |  | 2018-02-20 | 2018-02-20 | 18 | 18 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201017 | R4182 | Altered mental status, unspecified | ICD10 | 02212018 | 01292018 | 02192018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 02122018 | 2018-02-12T11:00:22+00:00 |  | 000096518-01 | Dannette | Rosner | SMITH, KIRK E | 940202 | KIRK E | SMITH | 1730199985 | OTTERBEIN MIDDLETOWN | 952743 | 1174795793 | OTTERBEIN MIDDLETOWN | 1174795793 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN MIDDLETOWN | 02212018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 02082018 | 02172018 | Standard |  |  | 2018-02-08 | 17/RUA01= $3214.76 | 0 | 2018-02-17 |  | 2018-02-20 | 2018-02-20 | 9 | 9 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212053 | C50919 | Malignant neoplasm of unsp site of unspecified female breast | ICD10 | 02212018 | 02082018 | 02172018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 01092018 | 2018-01-09T17:44:41+00:00 |  | 000015176-01 | RALPH | HOFFMAN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01062018 | 01092018 | Standard |  |  | 2018-01-06 | PER DIEM RATE OF $200.00/DAY X 3 DAYS=$600.00 CARVE OUT FOR IV CEFEPIME PER INVOICE=$53.73 TOTAL PAYMENT=$653.73 | 0 | 2018-01-09 |  | 2018-02-14 |  | 3 | 3 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110048 | A4152 | Sepsis due to Pseudomonas | ICD10 | 02212018 | 01062018 | 01092018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 653 | 653 | Approved Skilled | 4 | Revenue | RV |  |  |  | 3.0 |
| 01242018 | 2018-01-24T16:27:51+00:00 |  | 000084160-01 | Kenneth | Melvin | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 02212018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01222018 | 02092018 | Standard |  |  | 2018-01-22 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-02-09 |  | 2018-02-18 | 2018-02-18 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125034 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02212018 | 01222018 | 02092018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 01252018 | 2018-01-25T08:53:29+00:00 |  | 000013111-01 | ALICE | HARSH | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01232018 | 02142018 | Standard |  |  | 2018-01-23 | 16/RUC01=$7,333.11 PER DIEM RATE OF $250.00/DAY X 2 DAYS=$500.00 TOTAL PAYMENT=$7,833.11 | 0 | 2018-02-14 |  | 2018-02-16 | 2018-02-16 | 22 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125054 | J209 | Acute bronchitis, unspecified | ICD10 | 02212018 | 01232018 | 02142018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7833 | 7833 | Approved Skilled | 23 | Revenue | RV |  |  |  | 2.0 |
| 01252018 | 2018-01-25T17:07:53+00:00 |  | 000093826-01 | Patricia | Kendig | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 02212018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 01242018 | 02132018 | Standard |  |  | 2018-01-24 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 26 | 2018-02-13 |  | 2018-02-20 | 2018-02-20 | 17 | 43 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126015 | I509 | Heart failure, unspecified | ICD10 | 02212018 | 01242018 | 02132018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 02022018 | 2018-02-02T16:39:31+00:00 |  | 000026445-01 | REBECCA | MESECHER | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01312018 | 02152018 | Standard |  |  | 2018-01-31 | 16/CC101= $3231.84 | 0 | 2018-02-15 |  | 2018-02-21 |  | 11 | 11 | 3231.84 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205002 | J189 | Pneumonia, unspecified organism | ICD10 | 02212018 | 01312018 | 02152018 | CC101 | CLINICALLY COMPLEX , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 02072018 | 2018-02-07T11:02:41+00:00 |  | 000095861-01 | Judith | Bame | COLS INPATIENT CARE INC | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02212018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02052018 | 02112018 | Standard |  |  | 2018-02-05 | 17/CE201=$3,815.03 | 9 | 2018-02-11 |  | 2018-02-16 |  | 6 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207039 | C8339, K631, Z932 | Ileostomy status | ICD10 | 02212018 | 02052018 | 02112018 | CE201 | CLINICALLY COMPLEX , ADL INDEX 15-16/STAND-ALONE OBRA SCSA OR SCPA OR CC | RUGS,HHRG | 1 | 1 | Approved Skilled | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 02092018 | 2018-02-09T08:43:18+00:00 |  | 000083595-01 | Gail | Rowat | EDINBURG CARE RESOURCES | 905253 | PAUL E | HARRIS III | 1467679365 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072018 | 02152018 | Standard |  |  | 2018-02-07 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-02-15 | 2018-02-21 | 2018-02-21 | 2018-02-21 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209016 | Z96641 | Presence of right artificial hip joint | ICD10 | 02212018 | 02072018 | 02152018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 02092018 | 2018-02-09T11:01:07+00:00 |  | 000088298-01 | Wanda | Roffe | COLS INPATIENT CARE INC | 919184 | ASHITA | SINHA | 1821110693 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01312018 | 02082018 | Standard |  |  | 2018-01-31 | 17/RUB01=$5,813.99 | 0 | 2018-02-08 |  | 2018-02-16 | 2018-02-16 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209032 | I10, R269 | Unspecified abnormalities of gait and mobility | ICD10 | 02212018 | 01312018 | 02082018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 02092018 | 2018-02-09T12:51:52+00:00 |  | 000060176-01 | ARTHUR | SHORT | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082018 | 02182018 | Standard |  |  | 2018-02-08 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-02-18 |  | 2018-02-19 | 2018-02-19 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209061 | F0150, F0390, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 02212018 | 02082018 | 02182018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 02092018 | 2018-02-09T12:52:11+00:00 |  | 000019068-01 | JOHN | MCCOMAS | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02172018 | Standard |  |  | 2018-02-09 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 5 | 2018-02-17 |  | 2018-02-19 | 2018-02-19 | 9 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209063 | F0390, M6281, R1311, R1319, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 02212018 | 02092018 | 02172018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 02092018 | 2018-02-09T16:21:03+00:00 |  | 000055856-01 | GEORGE | PETTET | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082018 | 02192018 | Standard |  |  | 2018-02-08 | 16/RVA01= $2689.71 | 0 | 2018-02-19 |  | 2018-02-21 | 2018-02-21 | 11 | 11 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212005 | C250 | Malignant neoplasm of head of pancreas | ICD10 | 02212018 | 02082018 | 02192018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 02122018 | 2018-02-12T17:54:53+00:00 |  | 000026513-01 | SPYROS | SEVIS | CANYON MEDICAL CENTER | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN GAHANNA LLC | 943640 | 1437548575 | OTTERBEIN GAHANNA LLC | 1437548575 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN GAHANNA LLC | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02102018 | 02202018 | Standard |  |  | 2018-02-10 | 17/RUB01= $5813.99 | 0 | 2018-02-20 |  | 2018-02-20 | 2018-02-20 | 10 | 10 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213055 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 02212018 | 02102018 | 02202018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 01302018 | 2018-01-30T11:03:18+00:00 |  | 000084624-01 | Sharon | Bolen | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01282018 | 02012018 | Standard |  |  | 2018-01-28 | 17/LC101= $3048.45 | 0 | 2018-02-01 |  | 2018-02-21 |  | 4 | 4 | 3048.45 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130092 | E669, I10, I272, I480, J441, J9621, J9622, N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 02212018 | 01282018 | 02012018 | LC101 | SPECIAL CARE LOW , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 02072018 | 2018-02-07T11:55:23+00:00 |  | 000002762-01 | LAVERNE | WARNER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CONTINUING HEALTHCARE OF | 952581 | 1356871610 | CONTINUING HEALTHCARE OF GAHANNA LLC | 1356871610 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CONTINUING HEALTHCARE OF GAHANNA LLC | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02052018 | 02162018 | Standard |  |  | 2018-02-05 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2018-02-16 |  | 2018-02-21 | 2018-02-21 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207060 | J09X2, J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 02212018 | 02052018 | 02162018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 02082018 | 2018-02-08T13:20:16+00:00 |  | 000036911-01 | JOHN | MOORE | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072018 | 02182018 | Standard |  |  | 2018-02-07 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-02-18 |  | 2018-02-20 | 2018-02-20 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208063 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02212018 | 02072018 | 02182018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 02082018 | 2018-02-08T14:27:07+00:00 |  | 000016738-01 | SONDRA | WHITT | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072018 | 02162018 | Standard |  |  | 2018-02-07 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-02-16 |  | 2018-02-20 | 2018-02-20 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208079 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 02212018 | 02072018 | 02162018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 02092018 | 2018-02-09T11:21:40+00:00 |  | 000003915-01 | MADELINE | ONEAL | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082018 | 02182018 | Standard |  |  | 2018-02-08 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2018-02-18 |  | 2018-02-20 | 2018-02-20 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209037 | W19XXXD | Unspecified fall, subsequent encounter | ICD10 | 02212018 | 02082018 | 02182018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 02122018 | 2018-02-12T11:03:17+00:00 |  | 000016893-01 | EVELYN | SCHILLER | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02172018 | Standard |  |  | 2018-02-09 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 12 | 2018-02-17 |  | 2018-02-20 | 2018-02-20 | 8 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212057 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 02212018 | 02092018 | 02172018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 02122018 | 2018-02-12T11:08:01+00:00 |  | 000024040-01 | Ariel | Etgen | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02092018 | 02162018 | Standard |  |  | 2018-02-09 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-02-16 |  | 2018-02-20 |  | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212072 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 02212018 | 02092018 | 02162018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 02152018 | 2018-02-15T09:45:42+00:00 |  | 000006889-01 | MARTHA | ADAMS | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 02212018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02022018 | 02112018 | Standard |  |  | 2018-02-02 | 17/RVB01=$5,411.86 | 0 | 2018-02-11 |  | 2018-02-19 | 2018-02-19 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215019 | Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 02212018 | 02022018 | 02112018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 02192018 | 2018-02-19T14:28:20+00:00 |  | 000075768-01 | Floyd | Martin | AHMED, AIJAZ | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 02212018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 02162018 | 02182018 | Standard |  |  | 2018-02-16 | Per Diem: $200.00/day x 2 SNF Days = $400.00 | 0 | 2018-02-18 |  |  |  | 2 | 2 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220002 | M6281, Z48815 | Encntr for surgical aftcr following surgery on the dgstv sys | ICD10 | 02212018 | 02162018 | 02182018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
