Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-15_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-15_SNF
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
| 04242018 | 2018-04-24T13:16:56+00:00 |  | 000118640-01 | Stevie | Wright | ADENA MEDICAL GROUP LLC | 926035 | DAVID R | KESSLER | 1861427718 | WAVERLY CARE CENTER INC | 928699 | 1962508069 | WAVERLY CARE CENTER INC | 1962508069 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WAVERLY CARE CENTER INC | 05152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04222018 | 05022018 | Standard |  |  | 2018-04-22 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-05-02 |  | 2018-05-14 | 2018-05-03 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424067 | Z96652 | Presence of left artificial knee joint | ICD10 | 05152018 | 04222018 | 05022018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 04272018 | 2018-04-27T15:04:53+00:00 |  | 000115067-01 | Darlene | Schaeffer-Bryant | OSU FAMILY PRACTICE SVCS | 917486 | DONALD O | MACK | 1316980311 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 05152018 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 04262018 | 05012018 | Standard |  |  | 2018-04-26 | 17/LE101= $3581.75 | 0 | 2018-05-01 |  | 2018-05-15 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427074 | I639 | Cerebral infarction, unspecified | ICD10 | 05152018 | 04262018 | 05012018 | LE101 | SPECIAL CARE LOW , ADL INDEX 15-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 04302018 | 2018-04-30T10:27:14+00:00 |  | 000064531-01 | PAUL | DICUS | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 05152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04272018 | 05112018 | Standard |  |  | 2018-04-27 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 | 0 | 2018-05-11 |  | 2018-05-11 | 2018-05-11 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430043 | I69354 | Hemiplga following cerebral infrc affecting left nondom side | ICD10 | 05152018 | 04272018 | 05112018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04022018 | 2018-04-02T15:38:01+00:00 |  | 000034686-01 | GEORGIA | HUFFER | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03312018 | 05042018 | Standard |  |  | 2018-03-31 | Contract/RUG: 16/RUC (Per MDS) = $7,333.11 Per Diem: $250.00/day x 12 SNF Days = $3,000.00 Per Diem: $200.00/day x 2 SNF Days = $400.00 Total Payment: $10,733.11 | 49 | 2018-05-04 |  | 2018-05-14 |  | 34 | 83 | 10733.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403027 | J181, J449, M797, R000, R630, S32502D, Z431 | Encounter for attention to gastrostomy | ICD10 | 05152018 | 03312018 | 05042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 35 | Revenue | RV |  |  |  | 7.0 |
| 04102018 | 2018-04-10T15:26:14+00:00 |  | 000043215-01 | PEGGY | THORNE | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04092018 | 05122018 | Standard |  |  | 2018-04-09 | Contract/RUG: 16/RUC (per MDS) = $7,333.11 Per Diem: $200.00/day x 13 SNF Days = $2,600.00 Total Payment: $9,933.11 | 0 | 2018-05-12 | 2018-05-09 | 2018-05-14 | 2018-05-14 | 33 | 33 | 9933.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411034 | E1140, I4891, I509, M0589, M6281, N3000, R5383, R791, Z9181, Z7409 | Other reduced mobility | ICD10 | 05152018 | 04092018 | 05122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9933 | 9933 | Approved | 34 | Revenue | RV |  |  |  | 6.0 |
| 04232018 | 2018-04-23T15:47:01+00:00 |  | 000001539-01 | GRACE | GILL | DILEY MEDICAL GROUP LLC | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 05152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04182018 | 05082018 | Standard |  |  | 2018-04-18 | Contract/RUG: 17/RUB (Per MDS) = $5,813.99 | 0 | 2018-05-08 |  | 2018-05-11 | 2018-05-11 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424002 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05152018 | 04182018 | 05082018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04302018 | 2018-04-30T10:20:00+00:00 |  | 000117065-01 | Norma | Williams | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 05152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04282018 | 05122018 | Standard |  |  | 2018-04-28 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-05-12 |  | 2018-05-14 | 2018-05-14 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430038 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05152018 | 04282018 | 05122018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 04022018 | 2018-04-02T15:38:01+00:00 |  | 000047934-01 | NED | MOREHART | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05152018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04012018 | 05122018 | Standard |  |  | 2018-04-01 | Contract/RUG: 16/HD2 (Per MDS) = $4,414.82 Per Diem: $200.00/day x 21 SNF Days = $4,200.00 Total Payment: $8,614.82 | 0 | 2018-05-12 |  | 2018-05-14 | 2018-05-14 | 41 | 41 | 8614.82 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403029 | F419, I509, I959, J449, M6281, R001, R262, R296, R509, R52, Z7409 | Other reduced mobility | ICD10 | 05152018 | 04012018 | 05122018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8614 | 8614 | Approved | 42 | Revenue | RV |  |  |  | 5.0 |
| 04192018 | 2018-04-19T15:50:11+00:00 |  | 000100948-01 | Kenneth | Brown | MARIETTA HLTH CARE PHYS | 914714 | DAVID M | MONTGOMERY | 1992773501 | MARIETTA REHABILITATION AND NURSING | 931538 | 1184730913 | MARIETTA REHABILITATION AND NURSING | 1184730913 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MARIETTA REHABILITATION AND NURSING | 05152018 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 04172018 | 05082018 | Standard |  |  | 2018-04-17 | 17/RVA01= $3586.28 1 DAYS @ $200.00= $200.00 TOTAL: $3786.28 | 0 | 2018-05-08 |  | 2018-05-10 |  | 21 | 21 | 3786.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420003 | M4328 | Fusion of spine, sacral and sacrococcygeal region | ICD10 | 05152018 | 04172018 | 05082018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3786 | 3786 | Approved | 22 | Revenue | RV |  |  |  | 1.0 |
| 04232018 | 2018-04-23T09:36:49+00:00 |  | 000108867-01 | RICHARD | TUTTLE | NATIONAL CHURCH RESIDENC | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 05152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04202018 | 05112018 | Standard |  |  | 2018-04-20 | Contract/RUG: 17/RVC (Per MDS) = $6,306.19 Per Diem: $200.00/day x 1 SNF Day = $200.00 Total Payment: $6,506.19 | 13 | 2018-05-11 |  | 2018-05-14 | 2018-05-14 | 21 | 34 | 6506.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423028 | I482 | Chronic atrial fibrillation | ICD10 | 05152018 | 04202018 | 05112018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6506 | 6506 | Approved | 22 | Revenue | RV |  |  |  | 1.0 |
| 04272018 | 2018-04-27T10:36:28+00:00 |  | 000047645-01 | NORA | KOUGHER | HOCKING VALLEY HSPISTS I | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 05152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04262018 | 05072018 | Standard |  |  | 2018-04-26 | 11 DAYS @ $520/VENT= $5720.00 | 0 | 2018-05-07 |  | 2018-05-15 |  | 11 | 11 | 5720.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427026 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 05152018 | 04262018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05042018 | 2018-05-04T12:28:41+00:00 |  | 000025068-01 | JOE | GORE | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 05152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05022018 | 05042018 | Standard |  |  | 2018-05-02 | 2 DAYS @ $250.00= $500.00 | 0 | 2018-05-04 |  | 2018-05-15 |  | 2 | 2 | 500.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504050 | M6281 | Muscle weakness (generalized) | ICD10 | 05152018 | 05022018 | 05042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 500 | 500 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 05082018 | 2018-05-08T16:04:13+00:00 |  | 000072606-01 | Claire | Skinner | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 05152018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05042018 | 05082018 | Standard |  |  | 2018-05-04 | 4 DAYS @ $200.00= $800.00 | 0 | 2018-05-08 |  | 2018-05-15 |  | 4 | 4 | 800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509001 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05152018 | 05042018 | 05082018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 800 | 800 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
