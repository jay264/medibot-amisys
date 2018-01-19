Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-18_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-18_SNF
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
| 12272017 | 2017-12-27T12:33:32+00:00 |  | 000100115-01 | Allan | Wilson | SENIORS FIRST INC | 931142 | AMAN | AHMED | 1316046188 | OTTERBEIN LOVELAND LLC | 949386 | 1780042622 | OTTERBEIN LOVELAND | 1780042622 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN LOVELAND | 01182018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 12222017 | 01112018 | Standard |  |  | 2017-12-22 | 17/RUB01= $5813.99 | 0 | 2018-01-11 |  | 2018-01-17 | 2018-01-17 | 20 | 20 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227082 | E871, I10, R4182 | Altered mental status, unspecified | ICD10 | 01182018 | 12222017 | 01112018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01082018 | 2018-01-08T13:34:54+00:00 |  | 000079396-01 | Sharon | Teal | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ZANESVILLE HEALTH AND REHABILITATION | 01182018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 12252017 | 01012018 | Standard |  |  | 2017-12-25 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 39 | 2018-01-01 |  | 2018-01-17 |  | 7 | 46 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109010 | N390, R262, R488, R531 | Weakness | ICD10 | 01182018 | 12252017 | 01012018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 12282017 | 2017-12-28T14:28:05+00:00 |  | 000109615-01 | Karyn | Davis | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | COLS COLONY ELDERLY CARE | 936532 | 1578564563 | COLUMBUS COLONY ELDERLY CARE | 1578564563 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COLUMBUS COLONY ELDERLY CARE | 01182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12272017 | 01082018 | Standard |  |  | 2017-12-27 | 16/RUC01=$7,333.11 | 65 | 2018-01-08 |  | 2018-01-16 |  | 12 | 77 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228071 | J189 | Pneumonia, unspecified organism | ICD10 | 01182018 | 12272017 | 01082018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 01012018 | 2018-01-01T20:21:55+00:00 |  | 000080941-01 | Freddie | Piphus | SENIORS FIRST INC | 931142 | AMAN | AHMED | 1316046188 | HEARTLAND OF MADEIRA OH LLC | 920759 | 1871534834 | HEARTLAND OF MADEIRA OH LLC | 1871534834 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MADEIRA OH LLC | 01182018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 12292017 | 01142018 | Standard |  |  | 2017-12-29 | Contract/RUG: 17/RUL (Per MDS) = $5,317.57 | 16 | 2018-01-14 | 2018-01-17 | 2018-01-17 | 2018-01-17 | 16 | 32 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102057 | N179 | Acute kidney failure, unspecified | ICD10 | 01182018 | 12292017 | 01142018 | RUL01 | ULTRA HIGH REHAB PLUS EXTENSIVE , ADL INDEX 2-10/STAND-ALONE OBRA SCSA O | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 12292017 | 2017-12-29T16:38:37+00:00 |  | 000089968-01 | Jerry | Phelps | KAHLON, GURJEET S | 914096 | GURJEET S | KAHLON | 1649209644 | LAURELS OF HUBER HEIGHTS | 934199 | 1871938555 | LAURELS OF HUBER HEIGHTS | 1871938555 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HUBER HEIGHTS | 01182018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12272017 | 01162018 | Standard |  |  | 2017-12-27 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-01-16 |  | 2018-01-17 | 2018-01-17 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102031 | Z471 | Aftercare following joint replacement surgery | ICD10 | 01182018 | 12272017 | 01162018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 01152018 | 2018-01-15T11:03:55+00:00 |  | 000006036-01 | LEROY | MCKELVEY | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 01182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01132018 | 01172018 | Standard |  |  | 2018-01-13 | Per MDS: 17/RHB01 = $3699.42 | 0 | 2018-01-17 |  | 2018-01-18 | 2018-01-18 | 4 | 4 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115103 | E785, I10, I2510, I4891, R296 | Repeated falls | ICD10 | 01182018 | 01132018 | 01172018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 12262017 | 2017-12-26T13:39:57+00:00 |  | 000099227-01 | Thelma | Jordan | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 01182018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 12222017 | 01112018 | Standard |  |  | 2017-12-22 | Contract/RUG: 17/RHA (Per MDS) = $2,812.08 | 0 | 2018-01-11 |  | 2018-01-17 | 2018-01-17 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226148 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01182018 | 12222017 | 01112018 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 01082018 | 2018-01-08T15:14:45+00:00 |  | 000110483-01 | John | Beedy | AHMED, AIJAZ | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 01182018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 01072018 | 01102018 | Standard |  |  | 2018-01-07 | Per Diem: $200.00/day x 3 SNF Days = $600.00 | 0 | 2018-01-10 |  |  |  | 3 | 3 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109021 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01182018 | 01072018 | 01102018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 10042017 | 2017-10-04T12:12:23+00:00 |  | 000051351-01 | VICKI | MCGRAW | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 01182018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01182018 | 01252018 | Standard |  |  | 2017-10-02 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $200.00/day x 53 days = $10,600.00 Per Diem: $250.00/day x 10 days = $2500.00 Cefipime (per invoice) = $114.92 Meropenum (per invoice) = $221.63 TOTAL PAYMENT = $19,486.36 | 0 | 2018-01-07 | 2018-01-04 | 2018-01-16 | 2018-01-04 | 83 | 83 | 19486.36 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004064 | N3001 | Acute cystitis with hematuria | ICD10 | 01182018 | 10022017 | 01072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 8 | Revenue | RV |  |  |  | 4.0 |
| 12072017 | 2017-12-07T10:25:58+00:00 |  | 000092292-01 | Rogene | Wokna | VALLEY MED PRIMARY CARE | 902885 | ANTON C | VASILIU | 1558356170 | ST LEONARD HEALTH CARE CENTER | 915994 | 1851387047 | ST LEONARD HEALTH CARE CENTER | 1851387047 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST LEONARD HEALTH CARE CENTER | 01182018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12082017 | 01142018 | Standard |  |  | 2017-12-08 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 17 SNF Days = $3,400.00 Total Payment: $9,706.19 | 0 | 2018-01-14 | 2018-01-12 | 2018-01-18 | 2018-01-12 | 37 | 37 | 9706.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207041 | R0902 | Hypoxemia | ICD10 | 01182018 | 12082017 | 01142018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9706 | 9706 | Approved | 38 | Revenue | RV |  |  |  | 3.0 |
