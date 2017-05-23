Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-22_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-22_SNF
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
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
  And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
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
| 03082017 | 2017-03-08T14:58:36+00:00 |  | 000096555-01 | Edward | Funk | CNP OPERATING CO LLC | 913181 | JEROLD A | MEYER | 1821093881 | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF COSHOCTON | 05222017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 03072017 | 03312017 | Standard |  |  | 2017-03-07 | 17/RVB01=$5411.86 | 0 | 2017-03-31 |  | 2017-05-22 | 2017-05-22 | 22 | 22 | 5411.86 | 170310089128.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170309025 | I25799 | Atherosclerosis of CABG w unsp angina pectoris | ICD10 | 05222017 | 03072017 | 03312017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04042017 | 2017-04-04T12:08:45+00:00 |  | 000004421-01 | PATRICIA | NARIKE | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03302017 | 05182017 | Standard |  |  | 2017-03-30 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 23 days = $4600.00 TOTAL PAYMENT = $11,933.11 | 0 | 2017-05-19 |  | 2017-05-19 | 2017-05-19 | 43 | 43 | 11933.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170404052 | I10, J159, J449, J80, R0902, R531 | Weakness | ICD10 | 05222017 | 03302017 | 05192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 50 | Revenue | RV |  |  |  | 23.0 |
| 04052017 | 2017-04-05T14:24:01+00:00 |  | 000052800-01 | WALTER | LINK | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05222017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 05222017 | 05292017 | Standard |  |  | 2017-04-04 | 16/RVC01=$3,539.19 | 0 | 2017-04-23 |  | 2017-05-03 | 2017-04-21 | 19 | 19 | 3539.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170406011 | D649 | Anemia, unspecified | ICD10 | 05222017 | 04042017 | 04232017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 04132017 | 2017-04-13T13:58:52+00:00 |  | 000110200-01 | CECIL | JORDAN | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | HIGHLAND OAKS HEALTH CENTER | 934015 | 1083929186 | HIGHLAND OAKS HEALTH CENTER | 1083929186 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HIGHLAND OAKS HEALTH CENTER | 05222017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 04112017 | 05112017 | Standard |  |  | 2017-04-11 | Per MDS: 17/RVB01 = $5411.86 TOTAL PAYMENT = $5411.86 | 0 | 2017-05-12 |  | 2017-05-22 | 2017-05-22 | 31 | 31 | 5411.86 | 170417096084.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414015 | S82201D, S82401D | Unsp fx shaft of r fibula, subs for clos fx w routn heal | ICD10 | 05222017 | 04112017 | 05122017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 31 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 04132017 | 2017-04-13T16:34:46+00:00 |  | 000104447-01 | Ralphine | Harper | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | HEARTLAND OF MADEIRA OH LLC | 920759 | 1871534834 | HEARTLAND OF MADEIRA OH LLC | 1871534834 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MADEIRA OH LLC | 05222017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04112017 | 04182017 | Standard |  |  | 2017-04-11 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-04-19 |  | 2017-05-21 | 2017-05-21 | 8 | 8 | 5411.86 | 170418096317.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414027 | S12100D | Unsp disp fx of 2nd cervcal vert, subs for fx w routn heal | ICD10 | 05222017 | 04112017 | 04192017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 04142017 | 2017-04-14T14:55:41+00:00 |  | 000097907-01 | EUGENE | LAUTENSCHLEGER | CNP OPERATING CO LLC | 913181 | JEROLD A | MEYER | 1821093881 | COSHOCTON SPRINGS HEALTH & REHABILIT | 939939 | 1144610940 | COSHOCTON SPRINGS HEALTH & REHABILIT | 1144610940 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COSHOCTON SPRINGS HEALTH & REHABILIT | 05222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 04122017 | 05102017 | Standard |  |  | 2017-04-12 | 17/RVA01=$3586.28 9 DAYS@ $200.00= $1800.00 TOTAL: $5386.28 | 0 | 2017-05-11 |  | 2017-05-19 | 2017-05-19 | 29 | 29 | 5386.28 | 170418096346.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417006 | R0600 | Dyspnea, unspecified | ICD10 | 05222017 | 04122017 | 05112017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5386 | 5386 | Approved | 29 | Revenue | RV |  |  |  | 2.0 |
| 04172017 | 2017-04-17T16:32:06+00:00 |  | 000101052-01 | Helen | Bolce | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 05222017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04142017 | 05042017 | Standard |  |  | 2017-04-14 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 Per Diem: $250.00 x1 SNF Day = $250.00 Total Payment: $6,299.81 | 0 | 2017-05-05 |  | 2017-05-21 | 2017-05-21 | 21 | 21 | 6299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418007 | R4182 | Altered mental status, unspecified | ICD10 | 05222017 | 04142017 | 05052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6299 | 6299 | Approved | 21 | Revenue | RV |  |  |  | 1.0 |
| 04202017 | 2017-04-20T08:05:42+00:00 |  | 000017305-01 | JOHN | BALL | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 05222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05222017 | 05292017 | Standard |  |  | 2017-04-18 | 17/RVC01=$6,306.19 | 0 | 2017-05-30 |  | 2017-05-19 | 2017-05-19 | 12 | 12 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420014 | N390 | Urinary tract infection, site not specified | ICD10 | 05222017 | 04182017 | 04302017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 04252017 | 2017-04-25T15:50:06+00:00 |  | 000076931-01 | Jean | Wilson | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 05222017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04232017 | 05012017 | Standard |  |  | 2017-04-23 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-05-02 |  | 2017-05-21 | 2017-05-21 | 9 | 9 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426017 | R531 | Weakness | ICD10 | 05222017 | 04232017 | 05022017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 04282017 | 2017-04-28T15:56:44+00:00 |  | 000059477-01 | Madeleine | Mcelroy | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 05222017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04272017 | 05162017 | Standard |  |  | 2017-04-27 | RUX01=$7339.86 | 0 | 2017-05-17 |  | 2017-05-19 | 2017-05-19 | 20 | 20 | 7339.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501126 | I2699, M6281, Z950 | Presence of cardiac pacemaker | ICD10 | 05222017 | 04272017 | 05172017 | RUX01 | ULTRA HIGH REHAB PLUS EXTENSIVE , ADL INDEX 11-16/STAND-ALONE OBRA SCSA | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05012017 | 2017-05-01T14:14:02+00:00 |  | 000095593-01 | Larry | Fisher | SELBY GENERAL HOSPITAL | 914714 | DAVID M | MONTGOMERY | 1992773501 | HIGHLAND OAKS HEALTH CENTER | 934015 | 1083929186 | HIGHLAND OAKS HEALTH CENTER | 1083929186 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HIGHLAND OAKS HEALTH CENTER | 05222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 04282017 | 05182017 | Standard |  |  | 2017-04-28 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-05-19 |  | 2017-05-22 |  | 21 | 21 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502051 | S7292XA | Unsp fracture of left femur, init encntr for closed fracture | ICD10 | 05222017 | 04282017 | 05192017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 05012017 | 2017-05-01T12:55:50+00:00 |  | 000023074-01 | Shirley | Keefe | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 05222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272017 | 05192017 | Standard |  |  | 2017-04-27 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 Per Diem: $200.00 x 3 SNF Days = $600.00 Total Payment: $6,413.99 | 0 | 2017-05-20 | 2017-05-22 | 2017-05-22 | 2017-05-22 | 23 | 23 | 6413.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502069 | R296, S82842D | Displ bimalleol fx l low leg, subs for clos fx w routn heal | ICD10 | 05222017 | 04272017 | 05202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6413 | 6413 | Approved | 23 | Revenue | RV |  |  |  | 3.0 |
| 05012017 | 2017-05-01T15:44:25+00:00 |  | 000102108-01 | Angla | Scarano | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 05222017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04282017 | 05052017 | Standard |  |  | 2017-04-28 | Contract/RUG: 17/RUA (Per MDS) =$3,214.76 | 0 | 2017-05-06 |  | 2017-05-21 | 2017-05-21 | 8 | 8 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502090 | K623 | Rectal prolapse | ICD10 | 05222017 | 04282017 | 05062017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 05022017 | 2017-05-02T11:43:19+00:00 |  | 000002467-01 | PAUL | FISCHER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 05222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05222017 | 05292017 | Standard |  |  | 2017-05-01 | 16/RUC01=$7,333.11 | 0 | 2017-05-16 |  | 2017-05-18 | 2017-05-18 | 15 | 15 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503032 | J189, R269, R471 | Dysarthria and anarthria | ICD10 | 05222017 | 05012017 | 05162017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05032017 | 2017-05-03T17:40:27+00:00 |  | 000086956-01 | Irene | Broughton | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 05222017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 05012017 | 05062017 | Standard |  |  | 2017-05-01 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 | 0 | 2017-05-07 |  | 2017-05-21 |  | 6 | 6 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504063 | K5790 | Dvrtclos of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 05222017 | 05012017 | 05072017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 05042017 | 2017-05-04T13:32:07+00:00 |  | 000083969-01 | Barbara | Stevens | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 05222017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05032017 | 05162017 | Standard |  |  | 2017-05-03 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 13 | 2017-05-17 |  | 2017-05-19 | 2017-05-19 | 14 | 27 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505030 | K559 | Vascular disorder of intestine, unspecified | ICD10 | 05222017 | 05032017 | 05172017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 05082017 | 2017-05-08T11:45:00+00:00 |  | 000012034-01 | CAROLYN | HARDY | COPC CENTRAL OHIO PRIMAR | 904883 | NILESH V | VARMA | 1558303545 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 05222017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05222017 | 05292017 | Standard |  |  | 2017-04-27 | 17/RVB01=$5,411.86 | 0 | 2017-05-04 |  | 2017-05-18 | 2017-05-19 | 7 | 7 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508082 | S329XXA | Fracture of unsp parts of lumbosacral spine and pelvis, init | ICD10 | 05222017 | 04272017 | 05042017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 05092017 | 2017-05-09T15:49:05+00:00 |  | 000100080-01 | Dennis | Neumann | ASH MEDICAL INC | 906519 | NAJEEB | AHMED | 1972574275 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Pre-Service | PRE |  | HEARTLAND OF SPRINGFIELD OH LLC | 05222017 | Approved | MediGold Essential Care | Member | SNF | Inpatient | 05092017 | 05102017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170509138 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 05222017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05152017 | 2017-05-15T17:21:33+00:00 |  | 000085068-01 | Elke | Ferneding | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 05222017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 05122017 | 05142017 | Standard |  |  | 2017-05-12 | Contract/RUG: 17/CB1 (Per MDS) = $2,898.58 | 0 | 2017-05-15 |  | 2017-05-21 |  | 3 | 3 | 2898.58 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516041 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 05222017 | 05122017 | 05152017 | CB101 | CLINICALLY COMPLEX , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 3 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 05182017 | 2017-05-18T17:23:14+00:00 |  | 000110640-01 | Terry | Budd | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 05222017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04272017 | 04282017 | Standard |  |  | 2017-04-27 | Per Diem: $200.00/day x 2 SNF Days = $400.00 | 16 | 2017-04-29 |  |  |  | 2 | 18 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519009 | R55, S82831D | Oth fx upr & low end r fibula, subs for clos fx w routn heal | ICD10 | 05222017 | 04272017 | 04292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 2 | Revenue | RV |  |  |  | 2.0 |
