Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-05_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-05_SNF
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
| 03232017 | 2017-03-23T08:02:05+00:00 |  | 000101667-01 | Debra | Wilson | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | THE OAKS AT NORTHPOINTE | 931632 | 1609181700 | THE OAKS AT NORTHPOINTE | 1609181700 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE OAKS AT NORTHPOINTE | 06052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 03202017 | 03282017 | Standard |  |  | 2017-03-20 | 16/RUA01=$3214.76 | 0 | 2017-03-29 |  | 2017-06-02 | 2017-06-02 | 9 | 9 | 3214.76 | 170327092126.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170323109 | I10, I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06052017 | 03202017 | 03292017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 03272017 | 2017-03-27T09:26:16+00:00 |  | 000032925-01 | VERNONNE | WEINER | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06052017 | 06122017 | Standard |  |  | 2017-03-22 | 17/RUC01=$6,049.81 PER DIEM OF $200.00/DAY X 42 DAYS= $8,400.00 TOTAL PAYMENT=$14,449.81 | 0 | 2017-05-23 |  | 2017-05-31 | 2017-05-31 | 62 | 62 | 14449.81 | 170328092424.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170327137 | I10, M4322, S2249XD, S52509D, S52609D | Unsp fx lower end unsp ulna, subs for clos fx w routn heal | ICD10 | 06052017 | 03222017 | 05232017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 8 | Revenue | RV |  |  |  | 1.0 |
| 04172017 | 2017-04-17T09:52:26+00:00 |  | 000092179-01 | Patsy | Hertenstein | DUDNEY, JERALD | 935969 | JERALD | DUDNEY | 1770669871 | GOOD SHEPHERD VILLAGE | 920229 | 1396862314 | GOOD SHEPHERD VILLAGE | 1396862314 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GOOD SHEPHERD VILLAGE | 06052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04142017 | 04282017 | Standard |  |  | 2017-04-14 | Per Diem: $200.00/day x 15 SNF Days = $3,000.00 Wound Vac/Supplies/Canisters: $1,715.30 IV Vancomycin: $720.15/21 doses Total Payment: $5,435.45 | 0 | 2017-04-29 |  | 2017-04-27 |  | 15 | 15 | 5435.45 | 170418096398.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417033 | L03114, M7022 | Olecranon bursitis, left elbow | ICD10 | 06052017 | 04142017 | 04292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5435 | 5435 | Approved | 15 | Revenue | RV |  |  |  | 1.0 |
| 04212017 | 2017-04-21T08:15:50+00:00 |  | 000045383-01 | Robert | Looney | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04192017 | 04242017 | Standard |  |  | 2017-04-19 | SWING BED daily rate x 6 days | 0 | 2017-04-25 |  |  |  | 6 | 6 | SWING bed daily rate x6 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421066 | M179, Z96659 | Presence of unspecified artificial knee joint | ICD10 | 06052017 | 04192017 | 04252017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 6 | Revenue | RV |  |  |  | 6.0 |
| 05012017 | 2017-05-01T15:37:13+00:00 |  | 000109738-01 | Robert | Turvey | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BROWN MEMORIAL HOME INC | 939459 | 1780617043 | BROWN MEMORIAL HOME INC | 1780617043 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BROWN MEMORIAL HOME INC | 06052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04292017 | 06022017 | Standard |  |  | 2017-04-29 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 15 days = $3750.00 TOTAL PAYMENT = $9563.99 | 0 | 2017-06-03 |  | 2017-06-01 | 2017-06-01 | 35 | 35 | 9563.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502057 | M6282, R296 | Repeated falls | ICD10 | 06052017 | 04292017 | 06032017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9563 | 9563 | Approved | 35 | Revenue | RV |  |  |  | 5.0 |
| 05022017 | 2017-05-02T15:09:37+00:00 |  | 000003864-01 | LEE | HANFORD | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04282017 | 05282017 | Standard |  |  | 2017-04-28 | Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 11 days = $2750.00 TOTAL PAYMENT = $8161.86 | 0 | 2017-05-29 | 2017-05-26 | 2017-06-05 | 2017-06-05 | 31 | 31 | 8161.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503052 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 06052017 | 04282017 | 05292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8161 | 8161 | Approved | 31 | Revenue | RV |  |  |  | 4.0 |
| 05042017 | 2017-05-04T15:18:25+00:00 |  | 000002954-01 | PAUL | KOSE | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05022017 | 05232017 | Standard |  |  | 2017-05-02 | Per MDS: 17/RVB01 = 5411.86 Per Diem: $250.00/day x 2 days = $500.00 TOTAL PAYMENT = 5911.86 | 0 | 2017-06-24 |  | 2017-06-05 | 2017-06-05 | 22 | 22 | 5911.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505039 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06052017 | 05022017 | 05242017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5911 | 5911 | Approved | 22 | Revenue | RV |  |  |  | 2.0 |
| 05052017 | 2017-05-05T11:07:20+00:00 |  | 000021622-01 | HELEN | MYERS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05032017 | 06042017 | Standard |  |  | 2017-05-03 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $250.00/ day x 13 days = $3250.00 TOTAL PAYMENT = $9556.19 | 0 | 2017-06-05 | 2017-06-02 | 2017-06-05 | 2017-06-05 | 33 | 33 | 9556.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505055 | J189 | Pneumonia, unspecified organism | ICD10 | 06052017 | 05032017 | 06052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9556 | 9556 | Approved | 33 | Revenue | RV |  |  |  | 5.0 |
| 05042017 | 2017-05-04T16:02:44+00:00 |  | 000014757-01 | RONALD | LATZ | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06052017 | 06122017 | Standard |  |  | 2017-05-02 | 16/RUB01=$4,429.71 | 4 | 2017-05-23 |  | 2017-05-30 | 2017-05-30 | 21 | 25 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505068 | I2699, M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06052017 | 05022017 | 05232017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 05082017 | 2017-05-08T15:34:46+00:00 |  | 000088624-01 | Betty | Shumaker | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 06052017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05052017 | 05262017 | Standard |  |  | 2017-05-05 | Per MDS: 17/RUB01 = $5813.99 TOTAL PAYMENT = $5813.99 | 0 | 2017-05-27 |  | 2017-06-02 | 2017-05-24 | 22 | 22 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509075 | M545, R531, S32029D | Unsp fx second lum vertebra, subs for fx w routn heal | ICD10 | 06052017 | 05052017 | 05272017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 22 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 05092017 | 2017-05-09T14:37:03+00:00 |  | 000012700-01 | BRENDA | BELL | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05062017 | 05252017 | Standard |  |  | 2017-05-06 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-05-26 |  | 2017-06-05 | 2017-06-05 | 20 | 20 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510053 | K603, K921 | Melena | ICD10 | 06052017 | 05062017 | 05262017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05102017 | 2017-05-10T17:29:13+00:00 |  | 000047934-01 | NED | MOREHART | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 06052017 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 05092017 | 06022017 | Standard |  |  | 2017-05-09 | Per MDS: 16/RUA01 = $3214.76 TOTAL PAYMENT = $3214.76 | 0 | 2017-06-03 |  | 2017-05-31 | 2017-05-31 | 25 | 25 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511027 | I10, I2510, I5030, R52, Z741 | Need for assistance with personal care | ICD10 | 06052017 | 05092017 | 06032017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 05122017 | 2017-05-12T12:09:12+00:00 |  | 000106228-01 | Shirley | Babcock | MARIETTA MEM HSP | 922016 | LLOYD D | DENNIS | 1578531547 | MARIETTA REHABILITATION AND NURSING | 931538 | 1184730913 | MARIETTA REHABILITATION AND NURSING | 1184730913 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MARIETTA REHABILITATION AND NURSING | 06052017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 05102017 | 06012017 | Standard |  |  | 2017-05-10 | 17/RVC01=$6306.19 | 0 | 2017-06-02 |  | 2017-05-31 | 2017-05-31 | 24 | 24 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512063 | M84459D | Pathological fracture, hip, unsp, subs for fx w routn heal | ICD10 | 06052017 | 05102017 | 06022017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 05122017 | 2017-05-12T16:25:19+00:00 |  | 000015460-01 | RICHARD | PATTON | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05102017 | 06022017 | Standard |  |  | 2017-05-10 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 13 | 2017-06-03 | 2017-05-31 | 2017-06-05 | 2017-06-05 | 24 | 37 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515026 | S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 06052017 | 05102017 | 06032017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 05152017 | 2017-05-15T15:21:08+00:00 |  | 000053271-01 | BERTHA | WARREN | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05132017 | 06012017 | Standard |  |  | 2017-05-13 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-06-02 |  | 2017-06-02 | 2017-06-02 | 20 | 20 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515140 | S066X9A, S069X9A | Unsp intracranial injury w LOC of unsp duration, init | ICD10 | 06052017 | 05132017 | 06022017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05162017 | 2017-05-16T08:02:33+00:00 |  | 000004591-01 | DELORES | HAY | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06052017 | 06122017 | Standard |  |  | 2017-05-11 | 17/RVB01=$5,813.99 | 0 | 2017-05-21 |  | 2017-05-31 | 2017-05-31 | 10 | 10 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516048 | I313, I4891, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06052017 | 05112017 | 05212017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 05162017 | 2017-05-16T10:10:18+00:00 |  | 000106928-01 | Glenn | Barnhart | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05132017 | 05242017 | Standard |  |  | 2017-05-13 | Per MDS: 17/RVB01 = $5411.86 TOTAL PAYMENT = $5411.86 | 0 | 2017-05-25 |  | 2017-06-04 | 2017-06-04 | 12 | 12 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516078 | S12600D | Unsp disp fx of 7th cervcal vert, subs for fx w routn heal | ICD10 | 06052017 | 05132017 | 05252017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 05172017 | 2017-05-17T12:41:21+00:00 |  | 000030095-01 | VERNA | SIMMONS | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06052017 | 06122017 | Standard |  |  | 2017-05-15 | 17/RUB01=$5,813.99 | 0 | 2017-05-22 |  | 2017-05-31 | 2017-05-31 | 7 | 7 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517059 | E119, I10, Z96641 | Presence of right artificial hip joint | ICD10 | 06052017 | 05152017 | 05222017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 05172017 | 2017-05-17T14:21:07+00:00 |  | 000080513-01 | Vivien | Johnson | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | WILLOW HAVEN CARE CENTER | 924194 | 1306834148 | WILLOW HAVEN CARE CENTER | 1306834148 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WILLOW HAVEN CARE CENTER | 06052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 05162017 | 06032017 | Standard |  |  | 2017-05-16 | 17/RUC01=$3800.00 | 81 | 2017-06-04 |  | 2017-06-05 |  | 19 | 100 | 3800.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517091 | R531, R5381 | Other malaise | ICD10 | 06052017 | 05162017 | 06042017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3800 | 3800 | Approved | 19 | Revenue | RV |  |  |  | 5.0 |
| 05172017 | 2017-05-17T15:29:36+00:00 |  | 000046755-01 | JANET | WARD | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06052017 | 06122017 | Standard |  |  | 2017-05-16 | 17/RUA01=$3,214.76 | 0 | 2017-05-29 |  | 2017-06-02 | 2017-06-02 | 13 | 13 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517096 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06052017 | 05162017 | 05292017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 05182017 | 2017-05-18T14:55:05+00:00 |  | 000079216-01 | Mary | Blackschleger | HORSLEY, CHARLES D | 941004 | CHARLES D | HORSLEY | 1477546976 | LEBANON COUNTRY MANOR | 930691 | 1225455926 | LEBANON COUNTRY MANOR | 1225455926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LEBANON COUNTRY MANOR | 06052017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 05162017 | 06042017 | Standard |  |  | 2017-05-16 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-06-05 |  | 2017-06-02 | 2017-06-02 | 20 | 20 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518068 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06052017 | 05162017 | 06052017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05182017 | 2017-05-18T15:16:14+00:00 |  | 000070169-01 | Robert | Schreiber | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05172017 | 06012017 | Standard |  |  | 2017-05-17 | Per MDS: 17/RVA01 = $3586.28 TOTAL PAYMENT = $3586.28 | 0 | 2017-06-02 |  | 2017-06-05 | 2017-06-05 | 16 | 16 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518073 | F1020, R296 | Repeated falls | ICD10 | 06052017 | 05172017 | 06022017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 05192017 | 2017-05-19T14:28:01+00:00 |  | 000038776-01 | MARY LOU | RATLIFF | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06052017 | 06122017 | Standard |  |  | 2017-05-18 | 17/RUB01=$5,813.99 | 0 | 2017-05-28 |  | 2017-06-01 | 2017-06-01 | 10 | 10 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519069 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 06052017 | 05182017 | 05282017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 05222017 | 2017-05-22T08:22:49+00:00 |  | 000053038-01 | MARY | JACKSON | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05182017 | 06012017 | Standard |  |  | 2017-05-18 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 19 | 2017-06-02 | 2017-06-05 | 2017-06-05 | 2017-06-05 | 15 | 34 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522047 | J449, M545 | Low back pain | ICD10 | 06052017 | 05182017 | 06022017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05222017 | 2017-05-22T13:07:54+00:00 |  | 000086754-01 | Robert | Smith | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05192017 | 06012017 | Standard |  |  | 2017-05-19 | Swing Bed daily rate x 14 days | 0 | 2017-06-02 |  |  | 2017-05-31 | 14 | 14 | Swing Bed daily rate x 14 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522106 | I6350 | Cereb infrc due to unsp occls or stenos of unsp cereb artery | ICD10 | 06052017 | 05192017 | 06022017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 14 | Revenue | RV |  |  |  | 7.0 |
| 05222017 | 2017-05-22T14:42:10+00:00 |  | 000091188-01 | Edward | Sabo Jr | COMPREHENSIVE GERIATRIC | 915497 | SUSAN E | BERNER | 1952384505 | OHIO LIVING MOUNT PLEASANT | 946645 | 1821084807 | OHIO LIVING MOUNT PLEASANT | 1821084807 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OHIO LIVING MOUNT PLEASANT | 06052017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 05202017 | 05302017 | Standard |  |  | 2017-05-20 | Contract/RUG: 17/RUA (Per MDS) = $3,214.76 | 0 | 2017-05-31 |  | 2017-06-05 | 2017-06-05 | 11 | 11 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522111 | Z96651, Z4889 | Encounter for other specified surgical aftercare | ICD10 | 06052017 | 05202017 | 05312017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 05222017 | 2017-05-22T18:15:08+00:00 |  | 000028378-01 | DELORES | JORDAN | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 06052017 | Approved | TRINITY HEALTH | Fax | SNF | Inpatient | 06052017 | 06122017 | Standard |  |  | 2017-05-20 | 17/RVC01=$6,306.19 | 0 | 2017-05-29 |  | 2017-05-30 | 2017-05-30 | 9 | 9 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523037 | S32018D | Oth fracture of first lum vertebra, subs for fx w routn heal | ICD10 | 06052017 | 05202017 | 05292017 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 05232017 | 2017-05-23T08:40:34+00:00 |  | 000074430-01 | Betty | Chilcote | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 06052017 | 06122017 | Standard |  |  | 2017-05-21 | 16/RVB01=$3,350.20 | 0 | 2017-05-30 |  | 2017-06-01 | 2017-05-24 | 9 | 9 | 3350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523042 | M4806 | Spinal stenosis, lumbar region | ICD10 | 06052017 | 05212017 | 05302017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 05232017 | 2017-05-23T16:09:05+00:00 |  | 000057414-01 | ALICE | HUCK | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05222017 | 06022017 | Standard |  |  | 2017-05-22 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-06-03 |  | 2017-05-30 | 2017-06-05 | 12 | 12 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524007 | C3490, J449, M4840XA, M7981, S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 06052017 | 05222017 | 06032017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 12 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 05252017 | 2017-05-25T09:19:36+00:00 |  | 000081601-01 | Kristi | Marshall | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 06052017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 05232017 | 05272017 | Standard |  |  | 2017-05-23 | Per MDS: 17/RUA01 = $3214.76 TOTAL PAYMENT = $3214.76 | 0 | 2017-06-28 |  | 2017-06-01 | 2017-06-01 | 5 | 5 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525050 | F419, G20, M4800, R410 | Disorientation, unspecified | ICD10 | 06052017 | 05232017 | 05282017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 05252017 | 2017-05-25T16:04:46+00:00 |  | 000072795-01 | Rosalee | Gillman | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 06052017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05242017 | 06032017 | Standard |  |  | 2017-05-24 | Per MDS: 16/RUB01 = $4429.71 TOTAL PAYMENT = $4429.71 | 0 | 2017-06-04 |  | 2017-06-01 | 2017-06-05 | 11 | 11 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526007 | J449, J470, M1711, N189 | Chronic kidney disease, unspecified | ICD10 | 06052017 | 05242017 | 06042017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 11.0 |
