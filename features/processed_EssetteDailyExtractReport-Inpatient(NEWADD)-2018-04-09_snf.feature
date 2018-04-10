Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-09_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-09_SNF
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
| 02092018 | 2018-02-09T16:21:03+00:00 |  | 000065766-01 | ARTHUR | CRABTREE | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02082018 | 04012018 | Standard |  |  | 2018-02-08 | 16/RUC01= $7333.11 30 DAYS @ $250.00= $7500.00 TOTAL: $14833.11 | 0 | 2018-04-01 | 2018-03-30 | 2018-04-06 | 2018-04-06 | 50 | 50 | 14833.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212001 | I69354 | Hemiplga following cerebral infrc affecting left nondom side | ICD10 | 04092018 | 02082018 | 04012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 53 | Revenue | RV |  |  |  | 6.0 |
| 03122018 | 2018-03-12T11:19:48+00:00 |  | 000107010-01 | Mary | Gilmore | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 04092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03072018 | 03172018 | Standard |  |  | 2018-03-07 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2018-03-17 |  | 2018-04-06 |  | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312047 | S72101D | Unsp trochan fx right femur, subs for clos fx w routn heal | ICD10 | 04092018 | 03072018 | 03172018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03222018 | 2018-03-22T10:58:44+00:00 |  | 000121051-01 | Wilma | Phillips | MEDICAL & SURG ASSOC INC | 913868 | RAJU | FATEHCHAND | 1346201407 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 04092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03212018 | 04062018 | Standard |  |  | 2018-03-21 | 16/HD101= $3681.73 | 0 | 2018-04-06 |  | 2018-04-06 | 2018-04-06 | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322035 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 04092018 | 03212018 | 04062018 | HD101 | SPECIAL CARE HIGH , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 02062018 | 2018-02-06T14:11:22+00:00 |  | 000039893-01 | LINDA | WEBBER | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 04092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02042018 | 04042018 | Standard |  |  | 2018-02-04 | Per MDS: 17/RUB01 = $5813.99 Per Diem: $250.00/day x 39 days = $9750.00 TOTAL PAYMENT = $15,563.99 | 0 | 2018-04-04 |  | 2018-04-06 | 2018-04-06 | 59 | 59 | 15563.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206072 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 04092018 | 02042018 | 04042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 60 | Revenue | RV |  |  |  | 2.0 |
| 02232018 | 2018-02-23T16:56:18+00:00 |  | 000084473-01 | Donald | Evans | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 04092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02222018 | 04082018 | Standard |  |  | 2018-02-22 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 23 days = $4600.00 TOTAL PAYMENT = $11,933.11 | 0 | 2018-04-08 | 2018-04-05 | 2018-04-09 | 2018-04-09 | 43 | 43 | 11933.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226015 | I25810, M25552, R296, R42, Z96642, W1839XS | Other fall on same level, sequela | ICD10 | 04092018 | 02222018 | 04082018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 3.0 |
| 03122018 | 2018-03-12T16:08:49+00:00 |  | 000115976-01 | Michael | Clemens | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 04092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03092018 | 03292018 | Standard |  |  | 2018-03-09 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-03-29 | 2018-04-08 | 2018-04-08 | 2018-04-08 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312117 | J189 | Pneumonia, unspecified organism | ICD10 | 04092018 | 03092018 | 03292018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 03152018 | 2018-03-15T12:32:40+00:00 |  | 000022919-01 | Charles | Bigham | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 04092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03142018 | 03302018 | Standard |  |  | 2018-03-14 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-03-30 |  | 2018-04-04 |  | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315039 | I639, I69054 | Hemiplga following ntrm subarach hemor aff left nondom side | ICD10 | 04092018 | 03142018 | 03302018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 03162018 | 2018-03-16T11:06:21+00:00 |  | 000061007-01 | EDITH | MILLER | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03142018 | 04072018 | Standard |  |  | 2018-03-14 | Per MDS: 17/RHB01 = $3699.42 | 0 | 2018-04-07 | 2018-04-09 | 2018-04-09 | 2018-04-09 | 24 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316042 | N390, Z5189 | Encounter for other specified aftercare | ICD10 | 04092018 | 03142018 | 04072018 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 03192018 | 2018-03-19T09:33:44+00:00 |  | 000085617-01 | Dorothy | Muldoon | HEARTLAND WOODRIDGE OF F | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 04092018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03162018 | 03302018 | Standard |  |  | 2018-03-16 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2018-03-30 |  | 2018-04-09 | 2018-04-08 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319014 | N390 | Urinary tract infection, site not specified | ICD10 | 04092018 | 03162018 | 03302018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 03192018 | 2018-03-19T13:48:59+00:00 |  | 000078755-01 | Nancy | Tucker | CARROLL, FREDERICK C | 900430 | FREDERICK C | CARROLL | 1962431957 | THE LAURELS OF MT VERNON | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 04092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03162018 | 04072018 | Standard |  |  | 2018-03-16 | 17/RVB01= $5411.86 | 0 | 2018-04-07 | 2018-04-05 | 2018-04-09 | 2018-04-09 | 22 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319065 | Z969 | Presence of functional implant, unspecified | ICD10 | 04092018 | 03162018 | 04072018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 03232018 | 2018-03-23T15:27:22+00:00 |  | 000029753-01 | CHARLES | WALKER | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 04092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03222018 | 04072018 | Standard |  |  | 2018-03-22 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-04-07 |  | 2018-04-09 |  | 16 | 16 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326002 | S72141D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 04092018 | 03222018 | 04072018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 17 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 03262018 | 2018-03-26T10:37:46+00:00 |  | 000100959-01 | Carol | Moorehead | CEN OHIO GERIATRICS LLC | 907151 | JEROME M | KONG | 1598711657 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 04092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03232018 | 04032018 | Standard |  |  | 2018-03-23 | 17/RUB01=$5,813.99 | 0 | 2018-04-03 |  | 2018-04-06 | 2018-04-06 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326077 | I63412 | Cereb infrc due to embolism of left middle cerebral artery | ICD10 | 04092018 | 03232018 | 04032018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 03262018 | 2018-03-26T15:50:17+00:00 |  | 000087512-01 | Christine | Conrad | HEARTLAND WOODRIDGE OF F | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 04092018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 03232018 | 04022018 | Standard |  |  | 2018-03-23 | Contract/RUG: 17/RUA (Per MDS) = 3,214.76 | 0 | 2018-04-02 |  | 2018-04-08 | 2018-04-08 | 10 | 10 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327016 | M4806 | Spinal stenosis, lumbar region | ICD10 | 04092018 | 03232018 | 04022018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 03262018 | 2018-03-26T16:13:53+00:00 |  | 000084508-01 | Frank | Dobie | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 04092018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03232018 | 04062018 | Standard |  |  | 2018-03-23 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2018-04-06 |  | 2018-04-08 | 2018-04-08 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327037 | I509 | Heart failure, unspecified | ICD10 | 04092018 | 03232018 | 04062018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 03272018 | 2018-03-27T07:33:23+00:00 |  | 000010026-01 | COLLEEN | MCDOWELL | PAUL E HARRIS JR DO INC | 936846 | PAUL E | HARRIS JR | 1801889803 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 04092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03232018 | 04072018 | Standard |  |  | 2018-03-23 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 15 | 2018-04-07 | 2018-04-09 | 2018-04-09 | 2018-04-09 | 15 | 30 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327087 | S32008D, Z9181 | History of falling | ICD10 | 04092018 | 03232018 | 04072018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 03292018 | 2018-03-29T14:25:24+00:00 |  | 000063907-01 | LEO | OESTREICHER | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON LEASING LLC | 951358 | 1245770031 | PICKERINGTON CARE & REHABILITATION | 1245770031 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON CARE & REHABILITATION | 04092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03272018 | 04032018 | Standard |  |  | 2018-03-27 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-04-03 |  | 2018-04-09 |  | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329072 | J189 | Pneumonia, unspecified organism | ICD10 | 04092018 | 03272018 | 04032018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 03292018 | 2018-03-29T16:24:54+00:00 |  | 000071194-01 | Shirley | Newport | VASILIU, ANTON C | 902885 | ANTON C | VASILIU | 1558356170 | LAURELS OF WEST CARROLLTON | 934198 | 1235574914 | LAURELS OF WEST CARROLLTON | 1235574914 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF WEST CARROLLTON | 04092018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03292018 | 03302018 | Standard |  |  | 2018-03-29 | Per Diem: $200.00/day x 1 SNF Day = $200.00 | 0 | 2018-03-30 |  |  |  | 1 | 1 | 200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330027 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 04092018 | 03292018 | 03302018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 200 | 200 | Approved | 2 | Revenue | RV |  |  |  | 1.0 |
