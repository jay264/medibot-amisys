Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-14_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-14_SNF
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
| 04202017 | 2017-04-20T15:20:46+00:00 |  | 000031992-01 | SHIRLEY | JOHNSON | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04192017 | 06072017 | Standard |  |  | 2017-04-19 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 30 days = $7500.00 TOTAL PAYMENT = $12,911.86 | 0 | 2017-06-08 | 2017-05-23 | 2017-06-13 | 2017-06-13 | 50 | 50 | 12911.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421008 | M4326 | Fusion of spine, lumbar region | ICD10 | 06142017 | 04192017 | 06082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 50 | Revenue | RV |  |  |  | 6.0 |
| 04212017 | 2017-04-21T16:31:04+00:00 |  | 000069464-01 | LINDA | PARSLEY | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 06142017 | Approved | MediGold Essential Care | Fax | Transplant Evaluation | Inpatient | 04202017 | 05012017 | Standard |  |  | 2017-04-20 | 17/RVB01=$5411.86 | 0 | 2017-05-01 |  | 2017-05-02 | 2017-05-02 | 11 | 11 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424030 | M1711, M6281, R262, R2689 | Other abnormalities of gait and mobility | ICD10 | 06142017 | 04202017 | 05012017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05022017 | 2017-05-02T15:02:00+00:00 |  | 000117250-01 | BENJAMIN | LEMASTER JR | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06142017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04292017 | 05252017 | Standard |  |  | 2017-04-29 | Per Diem: $250.00/day x 27 days = $6750.00 Linezolid (per invoice) = $1725.00 Zosyn (per invoice) = $826.94 TOTAL PAYMENT = $9311.94 | 15 | 2017-05-26 |  | 2017-06-05 | 2017-06-05 | 27 | 42 | 9311.94 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503044 | Z9049 | Acquired absence of other specified parts of digestive tract | ICD10 | 06142017 | 04292017 | 05262017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9311 | 9311 | Approved | 27 | Revenue | RV |  |  |  | 3.0 |
| 05042017 | 2017-05-04T11:02:21+00:00 |  | 000084519-01 | Arley | Nelson | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06142017 | 06212017 | Standard |  |  | 2017-05-02 | 17/RVC01=$6,306.19 | 20 | 2017-06-21 |  | 2017-06-07 | 2017-06-07 | 19 | 29 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505012 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06142017 | 05022017 | 05212017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 05082017 | 2017-05-08T08:04:15+00:00 |  | 000099749-01 | FRANCES | MARTIN | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 06142017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05042017 | 06092017 | Standard |  |  | 2017-05-04 | Contract/RUG: 16/RVB (Per MDS) = $ 3,350.20 Per Diem: $200.00/day x 17 SNF Days = $3,400.00 Total Payment: $6,750.20 | 0 | 2017-06-10 | 2017-06-08 | 2017-06-14 | 2017-06-08 | 37 | 37 | 6750.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508069 | S32810D | Mult fx of pelv w stable disrupt of pelv ring, 7thD | ICD10 | 06142017 | 05042017 | 06102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6750 | 6750 | Approved | 37 | Revenue | RV |  |  |  | 7.0 |
| 05102017 | 2017-05-10T17:02:16+00:00 |  | 000107512-01 | Nancy | Chaney | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05082017 | 06022017 | Standard |  |  | 2017-05-08 | Contract/RUG: 17/RUB (Per MDS) =$5,813.99 Per Diem: $250.00/day x 6 SNF Days = $1,500.00 Total Payment: $7,313.99 | 0 | 2017-06-03 |  | 2017-05-26 | 2017-06-14 | 26 | 26 | 7313.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511019 | S72001S | Fracture of unspecified part of neck of right femur, sequela | ICD10 | 06142017 | 05082017 | 06032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7313 | 7313 | Approved | 26 | Revenue | RV |  |  |  | 6.0 |
| 05172017 | 2017-05-17T15:39:42+00:00 |  | 000008455-01 | MARY | BARRY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05162017 | 06082017 | Standard |  |  | 2017-05-16 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 33 | 2017-06-09 |  | 2017-06-13 | 2017-06-13 | 24 | 57 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518017 | G809, R531 | Weakness | ICD10 | 06142017 | 05162017 | 06092017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 05172017 | 2017-05-17T15:46:03+00:00 |  | 000019260-01 | MARJORIE | MOYER | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05152017 | 06052017 | Standard |  |  | 2017-05-15 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $200.00/day x 2 days = $400.00 TOTAL PAYMENT = $5811.86 | 0 | 2017-06-06 |  | 2017-06-13 | 2017-06-13 | 22 | 22 | 5811.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518018 | R627 | Adult failure to thrive | ICD10 | 06142017 | 05152017 | 06062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5811 | 5811 | Approved | 22 | Revenue | RV |  |  |  | 2.0 |
| 05172017 | 2017-05-17T16:12:50+00:00 |  | 000109073-01 | Claude | Keim Jr | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 06142017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05162017 | 06092017 | Standard |  |  | 2017-05-16 | Contract/RUG: 16/RUB (Per MDS) = $ 4,429.71 Per Diem: $250.00/day x 5 SNF Days = $1,250.00 Total Payment: $5,679.71 | 0 | 2017-06-10 |  | 2017-06-14 |  | 25 | 25 | 5679.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518022 | C259, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06142017 | 05162017 | 06102017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5679 | 5679 | Approved | 25 | Revenue | RV |  |  |  | 5.0 |
| 05192017 | 2017-05-19T08:42:27+00:00 |  | 000112052-01 | WILLIAM | ALLEN | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 06142017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 06142017 | 06212017 | Standard |  |  | 2017-05-17 | 17/PB101=$2,132.09 | 0 | 2017-05-21 |  | 2017-06-07 |  | 4 | 4 | 2132.09 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519035 | A419 | Sepsis, unspecified organism | ICD10 | 06142017 | 05172017 | 05212017 | PB101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 05192017 | 2017-05-19T16:28:33+00:00 |  | 000111702-01 | Linda | Bowen | MERCY HEALTH PHYSICIANS | 921681 | MOHAMED I | DAHMAN | 1326255399 | HEARTLAND OF MADEIRA OH LLC | 920759 | 1871534834 | HEARTLAND OF MADEIRA OH LLC | 1871534834 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MADEIRA OH LLC | 06142017 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 05172017 | 05212017 | Standard |  |  | 2017-05-17 | Contract/RUG: 17/CD1 (Per MDS) = $3,315.15 | 0 | 2017-05-22 |  | 2017-06-11 |  | 5 | 5 | 3315.15 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522028 | S82101D | Unsp fx upper end of r tibia, subs for clos fx w routn heal | ICD10 | 06142017 | 05172017 | 05222017 | CD101 | CLINICALLY COMPLEX , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CC | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 05232017 | 2017-05-23T08:46:44+00:00 |  | 000040701-01 | RICHARD | LONG | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06142017 | 06212017 | Standard |  |  | 2017-05-19 | 15/RVA01=$3,415.15 | 0 | 2017-06-02 |  | 2017-06-09 | 2017-06-09 | 14 | 14 | 3415.15 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523045 | R627 | Adult failure to thrive | ICD10 | 06142017 | 05192017 | 06022017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 05232017 | 2017-05-23T14:07:14+00:00 |  | 000021672-01 | KATHERINE | OUELLETTE | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | THORNVILLE HEALTH & REHABILITATION C | 939903 | 1689064487 | THORNVILLE HEALTH & REHABILITATION C | 1689064487 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THORNVILLE HEALTH & REHABILITATION C | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05212017 | 06092017 | Standard |  |  | 2017-05-21 | Per MDS: 17/RUC01 = $6049.81 TOTAL PAYMENT = $6049.81 | 0 | 2017-06-10 |  | 2017-06-14 | 2017-06-13 | 20 | 20 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523077 | D649, N390 | Urinary tract infection, site not specified | ICD10 | 06142017 | 05212017 | 06102017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05232017 | 2017-05-23T14:53:19+00:00 |  | 000112291-01 | Ann | Seay | ALLIANCE PHYSICIANS INC | 947084 | MELISSA | WHITESELL | 1528251113 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 06142017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05112017 | 06082017 | Standard |  |  | 2017-05-11 | Contract/RUG: 16/RVC (Per MDS) = $3,539.19 Per Diem: $200.00/day x 7 SNF Days = $1,400.00 Total Payment: $4,939.19 | 0 | 2017-06-09 |  | 2017-06-14 | 2017-06-14 | 27 | 27 | 4939.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523080 | S2241XD | Multiple fx of ribs, right side, subs for fx w routn heal | ICD10 | 06142017 | 05112017 | 06092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4939 | 4939 | Approved | 29 | Revenue | RV |  |  |  | 7.0 |
| 05242017 | 2017-05-24T14:03:12+00:00 |  | 000081215-01 | Karol | Bennett | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05222017 | 06112017 | Standard |  |  | 2017-05-22 | 17/RVC01=$6306.19 1 DAYS @ $250.00 TOTAL: $6556.19 | 0 | 2017-06-12 |  | 2017-06-14 | 2017-06-14 | 21 | 21 | 6556.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524072 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06142017 | 05222017 | 06122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6556 | 6556 | Approved | 21 | Revenue | RV |  |  |  | 1.0 |
| 05242017 | 2017-05-24T14:47:20+00:00 |  | 000023970-01 | ROGER | OUELLETTE | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | THORNVILLE HEALTH & REHABILITATION C | 939903 | 1689064487 | THORNVILLE HEALTH & REHABILITATION C | 1689064487 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THORNVILLE HEALTH & REHABILITATION C | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05222017 | 06092017 | Standard |  |  | 2017-05-22 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-06-10 |  | 2017-06-13 | 2017-06-13 | 19 | 19 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524076 | M6281, R262, R52 | Pain, unspecified | ICD10 | 06142017 | 05222017 | 06102017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 05252017 | 2017-05-25T11:08:08+00:00 |  | 000021195-01 | MARY | HOLTON | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06142017 | 06212017 | Standard |  |  | 2017-05-23 | 17/HC101=$3,481.78 | 0 | 2017-05-28 |  | 2017-06-07 | 2017-06-07 | 5 | 5 | 3481.78 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525057 | M4646, M8610 | Other acute osteomyelitis, unspecified site | ICD10 | 06142017 | 05232017 | 05282017 | HC101 | SPECIAL CARE HIGH , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 05252017 | 2017-05-25T13:09:16+00:00 |  | 000003926-01 | Joseph | Duboe | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 06012017 | Standard |  |  | 2017-05-23 | Per MDS: 17/CA101 = $2698.63 TOTAL PAYMENT = $2698.63 | 0 | 2017-06-02 |  | 2017-06-13 | 2017-06-13 | 10 | 10 | 2698.63 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525060 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 06142017 | 05232017 | 06022017 | CA101 | CLINICALLY COMPLEX , ADL INDEX 0-1/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 05262017 | 2017-05-26T08:36:12+00:00 |  | 000108414-01 | Mary Lou | Powell | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | SOMERSET HEALTH & REHABILITATION C | 942963 | 1952791758 | SOMERSET HEALTH & REHABILITATION C | 1952791758 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOMERSET HEALTH & REHABILITATION C | 06142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 05242017 | 06072017 | Standard |  |  | 2017-05-24 | Per MDS: 17/RUC01 = $6049.81 TOTAL PAYMENT = $6049.81 | 4 | 2017-06-08 |  | 2017-06-13 | 2017-06-13 | 15 | 19 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526027 | S72141D | Displ intertroch fx r femur, subs for clos fx w routn heal | ICD10 | 06142017 | 05242017 | 06082017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05262017 | 2017-05-26T15:43:49+00:00 |  | 000015170-01 | WANDA | BAILEY | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06142017 | 06212017 | Standard |  |  | 2017-05-25 | 16/RUC01=$7,333.11 | 24 | 2017-06-08 |  | 2017-06-09 | 2017-06-09 | 14 | 38 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530044 | M6281, S32592D | Oth fracture of left pubis, subs for fx w routn heal | ICD10 | 06142017 | 05252017 | 06082017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 05302017 | 2017-05-30T13:49:05+00:00 |  | 000016261-01 | JAMES | SASFY | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06142017 | 06212017 | Standard |  |  | 2017-05-27 | 17/RUC01=$6,049.81 | 0 | 2017-06-09 |  | 2017-06-09 | 2017-06-09 | 13 | 13 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530201 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06142017 | 05272017 | 06092017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 05312017 | 2017-05-31T17:31:17+00:00 |  | 000083440-01 | David | Knisley | DUDNEY, JERALD | 935969 | JERALD | DUDNEY | 1770669871 | GOOD SHEPHERD VILLAGE | 920229 | 1396862314 | GOOD SHEPHERD VILLAGE | 1396862314 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GOOD SHEPHERD VILLAGE | 06142017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05302017 | 06132017 | Standard |  |  | 2017-05-30 | Contract/RUG: 16/RUA (Per MDS) = $3,214.76 | 0 | 2017-06-14 |  | 2017-06-13 | 2017-06-13 | 15 | 15 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601031 | M6281 | Muscle weakness (generalized) | ICD10 | 06142017 | 05302017 | 06142017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 06022017 | 2017-06-02T10:46:44+00:00 |  | 000098066-01 | Lelah | Vest | PIKE COMMUNITY HOSPITAL | 906609 | DAVID E | RODDY | 1952355679 | WAVERLY CARE CENTER INC | 928699 | 1962508069 | WAVERLY CARE CENTER INC | 1962508069 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WAVERLY CARE CENTER INC | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05312017 | 06122017 | Standard |  |  | 2017-05-31 | Per MDS: 17/RVB01 = $5411.86 | 15 | 2017-06-13 |  | 2017-06-13 | 2017-06-13 | 13 | 28 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602057 | N390 | Urinary tract infection, site not specified | ICD10 | 06142017 | 05312017 | 06132017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 06022017 | 2017-06-02T15:58:42+00:00 |  | 000024655-01 | HELEN | BRADFORD | CENTRAL OHIO NP SERVICES | 947660 | AMANUEL A | DANIACHEW | 1396955134 | EDGEWOOD MANOR OF WESTER | 936550 | 1134133986 | EDGEWOOD MANOR OF WESTERVILLE | 1134133986 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | EDGEWOOD MANOR OF WESTERVILLE | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06142017 | 06212017 | Standard |  |  | 2017-05-31 | 16/PD101=$2,581.99 | 0 | 2017-06-06 |  | 2017-06-09 |  | 6 | 6 | 2581.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605058 | S72145D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 06142017 | 05312017 | 06062017 | PD101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCP | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 06032017 | 2017-06-03T08:44:41+00:00 |  | 000104958-01 | Mary | Barr | THORNVILLE FAM MED CTR | 922011 | LARRY I | COWAN | 1023002011 | THORNVILLE HEALTH & REHABILITATION C | 939903 | 1689064487 | THORNVILLE HEALTH & REHABILITATION C | 1689064487 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THORNVILLE HEALTH & REHABILITATION C | 06142017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05242017 | 06052017 | Standard |  |  | 2017-05-24 | Per MDS: 17/LB101 = $2915.24 TOTAL PAYMENT = $2915.24 | 0 | 2017-06-06 |  | 2017-06-13 | 2017-06-13 | 11 | 11 | 2915.24 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605085 | C259, J9601 | Acute respiratory failure with hypoxia | ICD10 | 06142017 | 05242017 | 06062017 | LB101 | SPECIAL CARE LOW , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 5.0 |
