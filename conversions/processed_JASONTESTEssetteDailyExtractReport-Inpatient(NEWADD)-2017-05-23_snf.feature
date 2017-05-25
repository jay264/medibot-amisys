Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-23_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-23_SNF
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
| 03062017 | 2017-03-06T16:40:53+00:00 |  | 000057687-01 | LOWELL | BROWN | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03052017 | 05072017 | Standard |  |  | 2017-03-05 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 39 days = $7800.00 TOTAL PAYMENT = $15,133.11 | 0 | 2017-05-08 | 2017-05-05 | 2017-05-09 | 2017-05-09 | 59 | 59 | 15133.11 | 170309088882.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170307058 | I25110, J189, J441, R634 | Abnormal weight loss | ICD10 | 05232017 | 03052017 | 05082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 64 | Revenue | RV |  |  |  | 59.0 |
| 03072017 | 2017-03-07T13:35:50+00:00 |  | 000010118-01 | JEAN | MCCLASKEY | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 922959 | 1841551488 | SHG WHITEHALL HOLDINGS LLC | 1841551488 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SHG WHITEHALL HOLDINGS LLC | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03022017 | 04282017 | Standard |  |  | 2017-03-02 | Per MDS: 17/RVC01 = $6306.19 Per Diem: $200.00/day x 17 days = $3400.00 (reimbursed through 4/11/16 only due to therapy dischagring 4/11/17) TOTAL PAYMENT: $9706.19 | 0 | 2017-04-29 |  | 2017-05-15 | 2017-05-15 | 37 | 37 | 9706.19 | 170313089542.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170307091 | Z89611 | Acquired absence of right leg above knee | ICD10 | 05232017 | 03022017 | 04292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9706 | 9706 | Approved | 58 | Revenue | RV |  |  |  | 18.0 |
| 03132017 | 2017-03-13T07:11:46+00:00 |  | 000067973-01 | MERLIN | CRIPPEN | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | ARBORS AT CARROLL | 943297 | 1528466471 | ARBORS AT CARROLL | 1528466471 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT CARROLL | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03092017 | 05062017 | Standard |  |  | 2017-03-09 | Per MDS: 17/RUC01 = $6049.81 Per Diem: $250.00/day x 29 days = $7250.00 Per Diem: $200.00/day x 3 days = $600.00 TOTAL PAYMENT = $13,899.81 | 0 | 2017-05-07 |  | 2017-05-12 |  | 52 | 52 | 13899.81 | 170316090418.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170313102 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 05232017 | 03092017 | 05072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 59 | Revenue | RV |  |  |  | 52.0 |
| 03282017 | 2017-03-28T17:30:52+00:00 |  | 000051189-01 | WANDA | HUNT | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | KINDRED TRANSITIONAL CAR | 936533 | 1659394054 | KINDRED TRANSITIONAL CARE & REHAB NE | 1659394054 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KINDRED TRANSITIONAL CARE & REHAB NE | 05232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03262017 | 05182017 | Standard |  |  | 2017-03-26 | 16/RUB01=$4429.71 34 days @ $200.00= $6800.00 total= $11229.71 | 0 | 2017-05-19 |  | 2017-05-22 | 2017-05-22 | 54 | 54 | 11229.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170329085 | I10, R262, S82852D, Z4789 | Encounter for other orthopedic aftercare | ICD10 | 05232017 | 03262017 | 05192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 54 | Revenue | RV |  |  |  | 6.0 |
| 03312017 | 2017-03-31T16:39:41+00:00 |  | 000019967-01 | RUTH | STONE | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | WEXNER HERITAGE HOUSE | 939320 | 1932197704 | WEXNER HERITAGE HOUSE | 1932197704 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEXNER HERITAGE HOUSE | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-04-04 | OON/case rate only, RVB01=$5,411.86/CSA contract | 0 | 2017-05-01 |  | 2017-05-02 | 2017-05-02 | 27 | 27 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170403099 | N390, R4182 | Altered mental status, unspecified | ICD10 | 05232017 | 04032017 | 05012017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 03312017 | 2017-03-31T16:42:46+00:00 |  | 000051330-01 | WILLIAM | MYERS | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03292017 | 05192017 | Standard |  |  | 2017-03-29 | Per MDS: 16/RUC01 = $7333.11 Per Diem: $200.00/day x 32 days = $6400.00 TOTAL PAYMENT = $13,733.11 | 15 | 2017-05-20 |  | 2017-05-22 | 2017-05-22 | 52 | 67 | 13733.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170403102 | G20, I200, I2510, I509, M545, S32009S, S34104S | Unsp injury to L4 level of lumbar spinal cord, sequela | ICD10 | 05232017 | 03292017 | 05202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 52 | Revenue | RV |  |  |  | 5.0 |
| 04132017 | 2017-04-13T08:19:03+00:00 |  | 000044934-01 | JOHN | ECOS | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-04-10 | PER DIEM RATE OF $250.00/DAY X 10 DAYS=2,500.00 IV CEFEPIME, PER INVOICE+$761.22 TOTAL PAYMENT =$3,261.22 | 0 | 2017-04-20 |  | 2017-05-19 | 2017-05-19 | 10 | 10 | 3261.22 | 170417096048.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413037 | I4891, I5033, J189, N179 | Acute kidney failure, unspecified | ICD10 | 05232017 | 04102017 | 04202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 3261 | 3261 | Approved Skilled | 8 | Revenue | RV |  |  |  | 10.0 |
| 04172017 | 2017-04-17T14:41:09+00:00 |  | 000089362-01 | Glenna | Perry | HLTHCARE ASSOC OF ZANESV | 922084 | WILLIAM A | SHADE | 1104816321 | CAMBRIDGE HEALTHCARE AND | 930700 | 1053662429 | ASTORIA PLACE OF CAMBRIDGE | 1053662429 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF CAMBRIDGE | 05232017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 04152017 | 05112017 | Standard |  |  | 2017-04-15 | 16/RHC01=$3133.29 9 days @ $200.00= $1400.00 total: $4533.29 | 57 | 2017-05-12 | 1957-05-23 | 2017-05-23 |  | 27 | 84 | 4533.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417073 | I63342, M6281, R531 | Weakness | ICD10 | 05232017 | 04152017 | 05122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4533 | 4533 | Approved | 27 | Revenue | RV |  |  |  | 27.0 |
| 04202017 | 2017-04-20T16:57:54+00:00 |  | 000087837-01 | Larry | Ayers | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | DARBY GLENN NURSING & REHABILITATION | 918938 | 1609180322 | DARBY GLENN NURSING & REHABILITATION | 1609180322 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | DARBY GLENN NURSING & REHABILITATION | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-04-19 | 16/RUB01=$4,429.71 PERDIEM RATE OF $200.00/DAY X 9 DAYS=1,800.00 TOTAL PAYMENT=$6,229.71 | 0 | 2017-05-18 |  | 2017-05-19 | 2017-05-19 | 29 | 29 | 6229.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421029 | M4806, M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 05232017 | 04192017 | 05182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6229 | 6229 | Approved Skilled | 8 | Revenue | RV |  |  |  | 9.0 |
| 04252017 | 2017-04-25T12:55:40+00:00 |  | 000111542-01 | DEBORAH | GATTS | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-04-21 | 17/RVB01=$5,411.86 | 0 | 2017-05-05 |  | 2017-05-19 | 2017-05-19 | 14 | 14 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425093 | D649, R296 | Repeated falls | ICD10 | 05232017 | 04212017 | 05052017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04272017 | 2017-04-27T13:24:49+00:00 |  | 000117728-01 | John | White | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-04-25 | 17/RUB01=$5,813.99 | 0 | 2017-05-11 |  | 2017-05-19 | 2017-05-19 | 16 | 16 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428016 | D61810, D759, N390, R531 | Weakness | ICD10 | 05232017 | 04252017 | 05112017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 16.0 |
| 04282017 | 2017-04-28T08:38:50+00:00 |  | 000022846-01 | ELOISE | DENNY | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-04-26 | 17/RUB01=$5,813.99 | 0 | 2017-05-10 |  | 2017-05-19 | 2017-05-19 | 14 | 14 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428051 | I509, R1310, S72009A, Z8674 | Personal history of sudden cardiac arrest | ICD10 | 05232017 | 04262017 | 05102017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04282017 | 2017-04-28T15:50:23+00:00 |  | 000005506-01 | ELWOOD | LEWIS | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-04-27 | 16/RVB01=$3,350.20 | 0 | 2017-05-17 |  | 2017-05-19 | 2017-05-19 | 20 | 20 | $3.350.20 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501111 | K810 | Acute cholecystitis | ICD10 | 05232017 | 04272017 | 05172017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05022017 | 2017-05-02T09:53:46+00:00 |  | 000052063-01 | DONALD | GOURLEY | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-04-29 | 16/RHC01=$3133.29 | 0 | 2017-05-14 |  | 2017-05-22 |  | 15 | 15 | 3133.29 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503025 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05232017 | 04292017 | 05142017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 15.0 |
| 05022017 | 2017-05-02T11:49:16+00:00 |  | 000010360-01 | Elizabeth | Dunn | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 05232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-04-28 | 17/RVA01=$3,568.28 | 0 | 2017-05-18 |  | 2017-05-22 | 2017-05-22 | 20 | 20 | 3568.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503035 | Q780 | Osteogenesis imperfecta | ICD10 | 05232017 | 04282017 | 05182017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05022017 | 2017-05-02T12:03:02+00:00 |  | 000118213-01 | Marsha | Gaudi | AMERICAN HLTH NETWORK OF | 904090 | WILLIAM A | ELDER | 1710914833 | LEVERING MANAGEMENT INC | 905850 | 1447317235 | LEVERING MANAGEMENT INC | 1447317235 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LEVERING MANAGEMENT INC | 05232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04012017 | 05182017 | Standard |  |  | 2017-04-01 | Per MDS/SCA: 17/RHB01 = $3699.42 Per DIem: $200.00/day x 28 days = $5600.00 TOTAL PAYMENT = $9299.42 | 15 | 2017-05-19 | 2017-05-16 | 2017-05-15 | 2017-05-16 | 48 | 63 | 9299.42 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503038 | S52501D, S82841D, W109XXD | Fall (on) (from) unspecified stairs and steps, subs encntr | ICD10 | 05232017 | 04012017 | 05192017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9299 | 9299 | Approved | 48 | Revenue | RV |  |  |  | 3.0 |
| 05022017 | 2017-05-02T15:27:38+00:00 |  | 000042603-01 | DONALD | RILEY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04302017 | 05192017 | Standard |  |  | 2017-04-30 | Per MDS: 17/RVB01 = $5411.86 TOTAL PAYMENT = $5411.86 | 22 | 2017-05-20 |  | 2017-05-22 | 2017-05-22 | 20 | 42 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503056 | R590 | Localized enlarged lymph nodes | ICD10 | 05232017 | 04302017 | 05202017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05032017 | 2017-05-03T09:40:01+00:00 |  | 000026609-01 | VERNON | WILLIAMS | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-05-01 | 16/RUB01=$4,429.71 | 0 | 2017-05-20 |  | 2017-05-22 | 2017-05-18 | 20 | 20 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504011 | S32020D | Wedge comprsn fx second lum vert, subs for fx w routn heal | ICD10 | 05232017 | 05012017 | 05202017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05032017 | 2017-05-03T16:36:28+00:00 |  | 000000241-01 | BYRON | THOMPSON | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05022017 | 05212017 | Standard |  |  | 2017-05-02 | Per MDS: 16/RUC01 = $7333.11 TOTAL PAYMENT = $7333.11 | 0 | 2017-05-22 | 2017-05-19 | 2017-05-11 | 2017-05-19 | 20 | 20 | 7333.11 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504058 | E780, I6930, R339, S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 05232017 | 05022017 | 05222017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05042017 | 2017-05-04T14:41:16+00:00 |  | 000106389-01 | MICHAEL | JONES | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 05232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05032017 | 05202017 | Standard |  |  | 2017-05-03 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 0 | 2017-05-21 |  | 2017-05-22 | 2017-05-22 | 18 | 18 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505036 | I509, M6281 | Muscle weakness (generalized) | ICD10 | 05232017 | 05032017 | 05212017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 05052017 | 2017-05-05T16:26:19+00:00 |  | 000077350-01 | Leslie | Mcguire | COPC CENTRAL OHIO PRIMAR | 904883 | NILESH V | VARMA | 1558303545 | FIRST COMMUNITY VILLAGE | 939347 | 1457334476 | FIRST COMMUNITY VILLAGE | 1457334476 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FIRST COMMUNITY VILLAGE | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-05-04 | 17/RUA01=$3,214.76 | 0 | 2017-05-11 |  | 2017-05-19 | 2017-05-18 | 8 | 8 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508037 | M6281, R2689 | Other abnormalities of gait and mobility | ICD10 | 05232017 | 05042017 | 05122017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 05082017 | 2017-05-08T14:34:58+00:00 |  | 000105389-01 | Sharon | Pierce | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 05232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05052017 | 05182017 | Standard |  |  | 2017-05-05 | Contract/RUG: 16/RUB (Per MDS) = $ 4,429.71 | 0 | 2017-05-19 |  | 2017-05-22 | 2017-05-22 | 14 | 14 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509070 | Z471 | Aftercare following joint replacement surgery | ICD10 | 05232017 | 05052017 | 05192017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 05092017 | 2017-05-09T08:05:32+00:00 |  | 000023768-01 | DALE | COX | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-05-06 | 16/RUA01=$3,214.76 | 0 | 2017-05-13 | 2017-05-19 | 2017-05-19 | 2017-05-19 | 7 | 7 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510009 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05232017 | 05062017 | 05132017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 05102017 | 2017-05-10T09:18:14+00:00 |  | 000080263-01 | Estillene | Carr | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 05232017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-05-08 | 17/RUC01=$6,049.81 | 0 | 2017-05-17 |  | 2017-05-19 | 2017-05-19 | 9 | 9 | 6049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510099 | I10, R296, S2239XD | Fracture of one rib, unsp side, subs for fx w routn heal | ICD10 | 05232017 | 05082017 | 05172017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 05102017 | 2017-05-10T11:17:12+00:00 |  | 000039603-01 | JON | NEFF | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 05232017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 05232017 | 05302017 | Standard |  |  | 2017-05-08 | 17/RVB01=$5,411.86 | 0 | 2017-05-17 |  | 2017-05-22 | 2017-05-22 | 9 | 9 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510105 | R296, R6520 | Severe sepsis without septic shock | ICD10 | 05232017 | 05082017 | 05172017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 05222017 | 2017-05-22T15:18:13+00:00 |  | 000115231-01 | R | WIANT | MERCY MCAULEY CENTER | 922577 |  | MERCY MCAULEY CENTER | 1780641175 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 05232017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 04242017 | 05092017 | Standard |  |  | 2017-04-24 | Contract/RUG: 16/RHB (Per MDS) = $2,690.49 | 0 | 2017-05-10 |  | 2017-05-23 | 2017-05-22 | 16 | 16 | 2690.49 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522122 | J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 05232017 | 04242017 | 05102017 | RHB01 | HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 16 | RUGS,HHRG | HP |  |  |  | 16.0 |
