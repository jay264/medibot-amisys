Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-20_thru_20178-10-22_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-20_thru_20178-10-22_URGEMERG
	Given I save the auth class "<auth_class>" to a variable
	Given I sign in to the application
	And the test pauses for "3" seconds
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "10" seconds
	And in the "Certification" page I should see the "Initial Date" element
	And I press "Control + N"
	And in the "certification" page I should see the "red_and_yellow_boxes" image
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

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
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
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
	And the test pauses for "3" seconds
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
	And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "2" seconds

	#And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And in the "authorized_services" page I enter "21" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 09262017 | 2017-09-26T08:03:27+00:00 |  | 000059457-01 | DAVID | STORTS | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10132017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926065 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 10202017 | 10132017 | 10192017 | 31622, 32663 | THORACOSCOPY, SURGICAL; | CPT | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 10032017 | 2017-10-03T15:58:19+00:00 |  | 000074132-01 | James | Lint | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10042017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004022 | I639 | Cerebral infarction, unspecified | ICD10 | 10202017 | 10042017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10182017 | 2017-10-18T09:55:27+00:00 | 256655447290 | 000076039-01 | Kyle | Carroll Jr. | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10202017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10172017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018019 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10202017 | 10172017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10182017 | 2017-10-18T11:23:27+00:00 |  | 000109146-01 | MILDRED | LINDSEY | UNIVERSITY HOSPITAL | 936399 |  | UNIVERSITY HOSPITAL | 1033154026 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 10202017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10162017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018057 | R6889 | Other general symptoms and signs | ICD10 | 10202017 | 10162017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09222017 | 2017-09-22T16:09:53+00:00 |  | 000118608-01 | Bruce | Alexander | LICKING MEM HLTH PROF | 936036 | ROBERT W | MUELLER | 1316916752 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925119 | M25561 | Pain in right knee | ICD10 | 10202017 | 10182017 | 10192017 | 27486 | REVSN TOT KNEE ARTHPLSTY/ONE COMP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10182017 | 2017-10-18T10:10:50+00:00 | 252273747290 | 000057095-01 | PETER | REYNOLDS | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10202017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10172017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018028 | I4891 | Unspecified atrial fibrillation | ICD10 | 10202017 | 10172017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10182017 | 2017-10-18T11:15:14+00:00 |  | 000083188-01 | William | Rice | MIDWEST MEDICAL GROUP | 923277 | RASHID M | KHAN | 1972525046 | HEALTHSOUTH REHABILITATI | 947611 | 1538440904 | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 10202017 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 10202017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171019017 | S42202B | Unsp fracture of upper end of left humerus, init for opn fx | ICD10 | 10202017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10172017 | 2017-10-17T08:27:28+00:00 |  | 000094338-01 | Elizabeth | Strahler | MARIETTA HLTH CARE PHYS | 925532 | SUJEETH K | SHETTY | 1063627727 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 10202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10162017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017038 | I4891 | Unspecified atrial fibrillation | ICD10 | 10202017 | 10162017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T13:28:35+00:00 |  | 000112790-01 | James | Benjamin | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10202017 | Approved | MediGold Essential Care | Fax | Pending Admission | Inpatient | 11012017 | 01012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171017041 | M4802 | Spinal stenosis, cervical region | ICD10 | 10202017 |  |  | 63081, 22554, 22585, 22846, 22854, 20936, 22551 | NECK SPINE FUSE&REMOVE ADDL | CPT | 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 2, 1, 1 | , , , , , ,  | 62, 62, 62, 62, 62, 62, 62 | CPT | C4 |  |  | No child records to display. |  |
| 10152017 | 2017-10-15T15:50:18+00:00 |  | 000071228-01 | Alma | White | COPC CENTRAL OHIO PRIMAR | 933304 | RAJIV K | SHETH | 1104110337 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 10202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10152017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016092 | E876 | Hypokalemia | ICD10 | 10202017 | 10152017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10162017 | 2017-10-16T14:30:05+00:00 |  | 000099507-01 | Michael | Davis | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 11052017 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171017046 | R269 | Unspecified abnormalities of gait and mobility | ICD10 | 10202017 |  |  | 63047, 22633, 22853, 22842, 22848, 20936, 20930, 22830, 61783, 22852 | REMOVAL POSTERIOR SEGMENTAL INSTRUMENTATION | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  | No child records to display. |  |
| 10172017 | 2017-10-17T15:35:02+00:00 |  | 000094011-01 | Darlene | Edwards | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 01112018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171018063 | M4807 | Spinal stenosis, lumbosacral region | ICD10 | 10202017 |  |  | 22612, 20937, 22840, 63047 | LMCTMY;DCMP CRD/NRV RT,SNG SG-LMBR | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 60, 60, 60, 60 | CPT | C4 |  |  | No child records to display. |  |
| 10122017 | 2017-10-12T09:50:33+00:00 |  | 000073617-01 | James | Jacobs | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10162017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012053 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 10202017 | 10162017 | 10202017 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 08292017 | 2017-08-29T08:02:42+00:00 |  | 000072918-01 | Ralph | Dheel | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10112017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829006 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 10202017 | 10112017 | 10202017 | 32504, 31622 | BRONCHOSCOPY-DIAG-W-W/O CELL WS/BRS | CPT | 1, 1 | 1, 1 | Approved, Approved | 10, 10 | CPT | C4 |  |  |  | 10.0 |
| 10182017 | 2017-10-18T09:54:49+00:00 | 252144747290 | 000104757-01 | James | Ott | BRUCE L AUERBACH MD LLC | 902501 |  | BRUCE L AUERBACH MD LLC | 1770787723 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Essential Care | Reports | ACO - Atrial Fib | Inpatient | 10172017 | 10202017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018017 | I4891 | Unspecified atrial fibrillation | ICD10 | 10202017 | 10172017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09252017 | 2017-09-25T09:55:21+00:00 |  | 000064880-01 | LEWIS | HAUBEIL | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10132017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925055 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 10202017 | 10132017 | 10202017 | 32663 | THORACOSCOPY, SURGICAL; | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 10182017 | 2017-10-18T13:14:55+00:00 |  | 000107007-01 | Carl | Breth | MOUNT CARMEL HLTH PRVDRS | 949510 | MARK W | BYRGE | 1053307389 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Essential Care | Fax | Pending Admission | Inpatient | 10262017 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171019040 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 10202017 |  |  | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 93 | CPT | C4 |  |  | No child records to display. |  |
| 10182017 | 2017-10-18T13:56:25+00:00 |  | 000097500-01 | PAULA | HUBER | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10202017 | Approved | MediGold Essential Care | Fax | Pending Admission | Inpatient | 10272017 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171019041 | M19012, M75122 | Complete rotatr-cuff tear/ruptr of left shoulder, not trauma | ICD10 | 10202017 |  |  | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 93 | CPT | C4 |  |  | No child records to display. |  |
| 10192017 | 2017-10-19T08:48:49+00:00 |  | 000078239-01 | Ruth | Johnson | GENESIS MEDICAL GRP LLC | 921922 | STEVEN H | KIMBERLY | 1851383137 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 10202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Pending Admission | Inpatient | 10312017 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171019076 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10202017 |  |  | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 93 | CPT | C4 |  |  | No child records to display. |  |
| 10192017 | 2017-10-19T10:16:53+00:00 |  | 000102652-01 | RONNIE | BACK | DAYTON ORTHOPAEDIC SURG | 902812 | JONATHAN J | PALEY | 1508967316 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 10202017 | Approved | MediGold Essential Care | Fax | Pending Admission | Inpatient | 11272017 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171020005 | M172 | Bilateral post-traumatic osteoarthritis of knee | ICD10 | 10202017 |  |  | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 93 | CPT | C4 |  |  | No child records to display. |  |
| 10162017 | 2017-10-16T11:37:00+00:00 |  | 000003286-01 | DORIS | BELL | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10132017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017009 | K529, N390, R110, R197 | Diarrhea, unspecified | ICD10 | 10202017 | 10132017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10172017 | 2017-10-17T08:53:00+00:00 | 179937547290 | 000052190-01 | RUTH | PELPHREY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10172017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017003 | R296 | Repeated falls | ICD10 | 10202017 | 10172017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10172017 | 2017-10-17T10:24:39+00:00 |  | 000028216-01 | RALPH | FRANKLIN | MOUNT CARMEL HLTH SYS | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10142017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017050 | R4182 | Altered mental status, unspecified | ICD10 | 10202017 | 10142017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T16:06:31+00:00 | 016610707-7286 | 000075257-01 | Karl | Oyster | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 10202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10192017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011024 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 10202017 | 10192017 | 10202017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10162017 | 2017-10-16T11:22:05+00:00 |  | 000095105-01 | Dorothy | Stukes | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient | IP | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 10202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10142017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017002 | R739 | Hyperglycemia, unspecified | ICD10 | 10202017 | 10142017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10092017 | 2017-10-09T10:08:39+00:00 |  | 000107543-01 | Robert | Carroll | GENESIS MEDICAL GRP LLC | 913615 | DUANE P | POOL | 1073599031 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10062017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009079 | I200 | Unstable angina | ICD10 | 10202017 | 10062017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10172017 | 2017-10-17T08:51:05+00:00 |  | 000109920-01 | Mary | Grandstaff | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10162017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017043 | R079 | Chest pain, unspecified | ICD10 | 10202017 | 10162017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10112017 | 2017-10-11T08:29:47+00:00 |  | 000080003-01 | Winifred | Tatten | GENESIS MEDICAL GRP LLC | 913879 | PHILIP | FIELDS | 1932155330 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10202017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10102017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011011 | J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 10202017 | 10102017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10192017 | 2017-10-19T09:18:11+00:00 | 167959057293 | 000040227-01 | HAROLD | GUTRIDGE | SOUND PHYSICIANS OF OHI0 | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 10192017 | 10202017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019028 | N200 | Calculus of kidney | ICD10 | 10202017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09252017 | 2017-09-25T08:41:38+00:00 |  | 000070856-01 | Mikl | Davis | MOUNT CARMEL HLTH PRVDRS | 942145 | NATHANIEL A | AMOR | 1922235498 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10172017 | 10202017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925016 | M5104 | Intervertebral disc disorders w myelopathy, thoracic region | ICD10 | 10202017 | 10172017 | 10202017 | 63064, 63055, 22610, 22842, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 10162017 | 2017-10-16T07:40:13+00:00 | 251527587287 | 000080363-01 | Kathy | Curry | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10142017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016002 | R1111 | Vomiting without nausea | ICD10 | 10202017 | 10142017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09062017 | 2017-09-06T14:34:13+00:00 |  | 000086342-01 | Donna | Newhouse | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10172017 | 10202017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907035 | M4726, M4727, M4806, M4807 | Spinal stenosis, lumbosacral region | ICD10 | 10202017 | 10172017 | 10202017 | 22558, 22853, 22585, 77003, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 3, 2, 1, 1 | 1, 3, 2, 1, 1 | Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 10202017 | 2017-10-20T06:52:26+00:00 |  | 000082692-01 | Perry | Zirkle | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 10192017 | 10202017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020001 | M4807 | Spinal stenosis, lumbosacral region | ICD10 | 10202017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09272017 | 2017-09-27T15:15:08+00:00 | 025171570-7289 | 000029609-01 | DORIS | GELLNER | CEN OH NEURO SURGEONS IN | 909312 | PHILLIP | IMMESOETE | 1609089317 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10172017 | 10202017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927075 | M4802 | Spinal stenosis, cervical region | ICD10 | 10202017 | 10172017 | 10202017 | 22551, 22845, 22853, 20936, 22846, 22552 | ADDL NECK SPINE FUSION | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 10162017 | 2017-10-16T08:19:58+00:00 | 262629267288 | 000019728-01 | HERMAN | HIGGINBOTHAM | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10152017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016009 | I509 | Heart failure, unspecified | ICD10 | 10222017 | 10152017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10122017 | 2017-10-12T14:37:28+00:00 |  | 000080140-01 | Robert | Marshall | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10162017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016008 | R160 | Hepatomegaly, not elsewhere classified | ICD10 | 10222017 | 10162017 | 10212017 | 47120 | HEPATECTOMY, PART RESECT LIVER | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 10102017 | 2017-10-10T09:22:37+00:00 | 256229677282 | 000037549-01 | HOMER | WIGET | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10092017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010004 | M549 | Dorsalgia, unspecified | ICD10 | 10222017 | 10092017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 08292017 | 2017-08-29T13:24:28+00:00 |  | 000042977-01 | NANCY | SNIDER | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10202017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829064 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 10222017 | 10202017 | 10212017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09292017 | 2017-09-29T11:47:07+00:00 |  | 000049279-01 | CHARLES | MCALLISTER | MOUNT CARMEL HLTH PRVDRS | 949510 | MARK W | BYRGE | 1053307389 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10192017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929032 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 10222017 | 10192017 | 10212017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10182017 | 2017-10-18T16:36:17+00:00 |  | 000103632-01 | Susan | Smith | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10222017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 10172017 | 10182017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171022001 | N812 | Incomplete uterovaginal prolapse | ICD10 | 10222017 | 10172017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10172017 | 2017-10-17T11:55:17+00:00 | 025223106-7265 | 000069437-01 | KAREN | ROUSH | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 10222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10192017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018037 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10222017 | 10192017 | 10212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10132017 | 2017-10-13T15:14:11+00:00 | 025628648-7289 | 000031516-01 | PATRICIA | AGLER | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10222017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10192017 | 10212017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016123 | S42209A | Unsp fracture of upper end of unsp humerus, init for clos fx | ICD10 | 10222017 | 10192017 | 10212017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10122017 | 2017-10-12T10:04:05+00:00 | 263222717284 | 000065562-01 | KATHERINE | MILES | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10112017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012008 | R627 | Adult failure to thrive | ICD10 | 10222017 | 10112017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10132017 | 2017-10-13T15:02:42+00:00 | 025690739-7286 | 000017129-01 | FRANCIS | HUNTER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10222017 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 10132017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013055 | K2980 | Duodenitis without bleeding | ICD10 | 10222017 | 10132017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10162017 | 2017-10-16T12:24:22+00:00 | 173405957286 | 000029265-01 | MYRIAM | PLACE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10132017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016070 | E876 | Hypokalemia | ICD10 | 10222017 | 10132017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10162017 | 2017-10-16T12:37:56+00:00 | 253050117287 | 000009478-01 | JAMES | WELLS SR | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10142017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016075 | K8050 | Calculus of bile duct w/o cholangitis or cholecyst w/o obst | ICD10 | 10222017 | 10142017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10162017 | 2017-10-16T12:30:10+00:00 | 256971027287 | 000070087-01 | Dorothy | Skeens | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10152017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016072 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 10222017 | 10152017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08182017 | 2017-08-18T11:51:39+00:00 | 016291443-7262 | 000104624-01 | Betty | Cantrell | MOUNT CARMEL HLTH PRVDRS | 935396 | MARK A | WHITE | 1649279837 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10182017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818039 | M4806, M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 10222017 | 10182017 | 10212017 | 63090, 22558, 22853, 63091, 22585 | ARTHDSIS ANT/ANTLATERAL/@ ADDTL SP | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
