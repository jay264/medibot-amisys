Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-09_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-09_URGEMERG
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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 11012017 | 2017-11-01T09:55:39+00:00 |  | 000083985-01 | Charlene | Hollins | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101029 | R55 | Syncope and collapse | ICD10 | 11092017 | 10312017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11062017 | 2017-11-06T08:25:39+00:00 |  | 000110636-01 | Jennifer | Preston | SOUND KENWOOD HSPISTS OF | 905430 | DEBORAH M | BOWE | 1679512230 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11042017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106089 | R112, R739 | Hyperglycemia, unspecified | ICD10 | 11092017 | 11042017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T10:06:03+00:00 |  | 000077359-01 | Margaret | Powell | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11042017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107007 | S42302A | Unsp fracture of shaft of humerus, left arm, init | ICD10 | 11092017 | 11042017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11082017 | 2017-11-08T09:36:52+00:00 |  | 000053245-01 | ELIZABETH | KIRKPATRICK | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11092017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 11092017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171108028 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 11092017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11012017 | 2017-11-01T14:53:04+00:00 |  | 000104155-01 | Florence | Sharp | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10312017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101063 | I4892 | Unspecified atrial flutter | ICD10 | 11092017 | 10312017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08212017 | 2017-08-21T11:06:11+00:00 |  | 000031001-01 | MARTIN | CANNON | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11072017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821076 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11092017 | 11072017 | 11082017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10192017 | 2017-10-19T13:21:26+00:00 |  | 000110520-01 | RONALD | JONES | STEPHEN J OEHLERS LLC | 902883 |  | STEPHEN J OEHLERS LLC | 1538353651 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10182017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019070 | I25810, K625 | Hemorrhage of anus and rectum | ICD10 | 11092017 | 10182017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 11092017 | 2017-11-09T09:03:21+00:00 |  | 000062946-01 | JANE | FARBER | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11092017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 11072017 | 11082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109016 | K433 | Parastomal hernia with obstruction, without gangrene | ICD10 | 11092017 | 11072017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11022017 | 2017-11-02T07:45:46+00:00 |  | 000109899-01 | Mary | Bennett | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11012017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102002 | J209, R0600, R0902 | Hypoxemia | ICD10 | 11092017 | 11012017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11032017 | 2017-11-03T08:26:54+00:00 |  | 000068035-01 | LORENA | BANKSTON | OSU INTERNAL MED LLC | 911866 | JAMES R | KNIGHT | 1740496553 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11092017 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 11022017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103044 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11092017 | 11022017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11062017 | 2017-11-06T09:24:56+00:00 |  | 000092203-01 | Alma | Thompson | OSU INTERNAL MED LLC | 932086 | SAKIMA A | SMITH | 1457563702 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106108 | R079 | Chest pain, unspecified | ICD10 | 11092017 | 11042017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10272017 | 2017-10-27T12:32:01+00:00 |  | 000107490-01 | Clarence | Barnhart | APOGEE MED GRP OHIO INC | 946966 | CHARLES A | BERKO | 1114363819 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10262017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027053 | I5033, I509, J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 11092017 | 10262017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 11062017 | 2017-11-06T10:02:19+00:00 |  | 000051351-01 | VICKI | MCGRAW | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106079 | A419, N390, R509 | Fever, unspecified | ICD10 | 11092017 | 11042017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T09:00:32+00:00 |  | 000037946-01 | PETER | PALM | OSU INTERNAL MED LLC | 952079 | MARCELO R | BONOMI | 1043446230 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11032017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106107 | C329, J9601 | Acute respiratory failure with hypoxia | ICD10 | 11092017 | 11032017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11032017 | 2017-11-03T14:02:58+00:00 |  | 000078183-01 | William | Knight | COSHOCTON COUNTY MEM HSP | 923156 | GARY J | CARVER | 1982781563 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 11092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11022017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106071 | R4701 | Aphasia | ICD10 | 11092017 | 11022017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11072017 | 2017-11-07T14:28:04+00:00 |  | 000103049-01 | Heather | Beckley | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107102 | E161, E872, G9341, K7290 | Hepatic failure, unspecified without coma | ICD10 | 11092017 | 11062017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11022017 | 2017-11-02T13:47:16+00:00 |  | 000037249-01 | ELMER | PELPHREY | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102049 | L0390 | Cellulitis, unspecified | ICD10 | 11092017 | 11012017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11062017 | 2017-11-06T10:07:35+00:00 |  | 000107749-01 | Denna | Davis | SOUND PHYSICIANS OF OHI0 | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11042017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107014 | J189, J90 | Pleural effusion, not elsewhere classified | ICD10 | 11092017 | 11042017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T14:51:08+00:00 |  | 000092211-01 | Mary | White | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11092017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 11042017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107081 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 11092017 | 11042017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11072017 | 2017-11-07T12:48:07+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY OF CINCINNATI | 948578 | HAREEPRASAD R | VONGOORU | 1407045693 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 11092017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 11062017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107068 | R05, R0602, R5383 | Other fatigue | ICD10 | 11092017 | 11062017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11062017 | 2017-11-06T08:15:06+00:00 |  | 000091456-01 | Sheila | Flack | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11042017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106086 | L02414 | Cutaneous abscess of left upper limb | ICD10 | 11092017 | 11042017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10042017 | 2017-10-04T13:26:53+00:00 |  | 000099023-01 | Joyce | Moore | SERN OHIO ER PHYS LLP | 906496 | VALERIE A | ALIU | 1073692042 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10032017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004056 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 11092017 | 10032017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 30.0 |
| 11072017 | 2017-11-07T09:35:03+00:00 |  | 000093536-01 | James | Burwell | KNOX COMMUNITY HSP PHYS | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11042017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107092 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 11092017 | 11042017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T10:09:08+00:00 |  | 000065709-01 | PATRICIA | MILLER | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11032017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107015 | I4892, R531 | Weakness | ICD10 | 11092017 | 11032017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11062017 | 2017-11-06T16:49:11+00:00 |  | 000091962-01 | Kenneth | Dyer Jr | DAYTON SURGEONS INC | 901564 | JONATHAN E | VELASCO | 1962477661 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107052 | I998 | Other disorder of circulatory system | ICD10 | 11092017 | 11042017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11012017 | 2017-11-01T15:40:12+00:00 |  | 000080080-01 | Roger | Rupe | CENTRAL OH HSPISTS INC | 923628 | TEJAL K | PATEL | 1194073213 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101062 | K7460 | Unspecified cirrhosis of liver | ICD10 | 11092017 | 10312017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11062017 | 2017-11-06T10:54:07+00:00 | 256628147308 | 000107387-01 | Lester | Jackson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11042017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106043 | J159 | Unspecified bacterial pneumonia | ICD10 | 11092017 | 11042017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11022017 | 2017-11-02T08:41:45+00:00 |  | 000074555-01 | Irma | Stewart | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11092017 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 11012017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102012 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 11092017 | 11012017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10182017 | 2017-10-18T14:14:49+00:00 |  | 000076345-01 | Pauline | Mcginnis | S DAYTON ACUTE CARE CNSL | 946577 | DAVID | BRANDT | 1477844090 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10172017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018067 | I159, N289 | Disorder of kidney and ureter, unspecified | ICD10 | 11092017 | 10172017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11062017 | 2017-11-06T12:01:31+00:00 | 016794661-7283 | 000117261-01 | William | Schockling | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11092017 | Approved | MediGold Southeast OH Essential Care | Fax | EIS | Inpatient | 11082017 | 11092017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106118 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 11092017 | 11082017 | 11092017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10192017 | 2017-10-19T18:10:31+00:00 |  | 000071934-01 | Lula | Peters | S DAYTON ACUTE CARE CNSL | 930272 | ISAAC P | HUMPHREY | 1649357724 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10182017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020004 | R0602, R079 | Chest pain, unspecified | ICD10 | 11092017 | 10182017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11022017 | 2017-11-02T09:31:10+00:00 |  | 000117056-01 | Loretta | Bonifield | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11092017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11022017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102030 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 11092017 | 11022017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10202017 | 2017-10-20T11:40:56+00:00 |  | 000013701-01 | WILLIAM | BAY | HOCKING VALLEY MED GRP | 949829 | TAREK M | AZIZ | 1679592075 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10182017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020057 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 11092017 | 10182017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10232017 | 2017-10-23T14:37:41+00:00 |  | 000092045-01 | Elizabeth | Veg Bali | DAVID ZAPF DO INC | 902206 | DAVID M | ZAPF | 1518948611 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10202017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024025 | I739 | Peripheral vascular disease, unspecified | ICD10 | 11092017 | 10202017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 10242017 | 2017-10-24T12:06:35+00:00 |  | 000105509-01 | Mary | Pool | SOUND KENWOOD HSPISTS OF | 924460 | RAVIKANTH | CHANDA | 1609175496 | WEST CHESTER MEDICAL CENTER | 911775 | 1851549273 | WEST CHESTER MEDICAL CENTER | 1851549273 | Inpatient | IP | Concurrent Review | CONC |  | WEST CHESTER MEDICAL CENTER | 11092017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10232017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024071 | S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 11092017 | 10232017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 11012017 | 2017-11-01T15:44:51+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 11092017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 11052017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103049 | C9102 | Acute lymphoblastic leukemia, in relapse | ICD10 | 11092017 | 11052017 | 11072017 | 96416, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | HCPCS | HC |  |  |  | 2.0 |
| 10272017 | 2017-10-27T10:52:41+00:00 |  | 000112593-01 | Robert | Long | ALLIANCE PHYSICIANS INC | 917471 | PHILLIP M | PORCELLI | 1629287677 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10262017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027042 | M4722 | Other spondylosis with radiculopathy, cervical region | ICD10 | 11092017 | 10262017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11052017 | 2017-11-05T13:55:50+00:00 |  | 000103610-01 | David | Turner | RIVERSIDE RAD ASSOC | 920632 | SUMIT | BHATLA | 1104823137 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11032017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106062 | N99528 | Other complication of other external stoma of urinary tract | ICD10 | 11092017 | 11032017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T16:01:10+00:00 |  | 000113778-01 | Earl | Stone | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107058 | I10, I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 11092017 | 11042017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11082017 | 2017-11-08T17:46:19+00:00 |  | 000009299-01 | HOWARD | SETSER | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11092017 | Denied | MediGold Classic Preferred | Fax | Member Not Eligible | Inpatient | 11092017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171109007 | S060X0A | Concussion without loss of consciousness, initial encounter | ICD10 | 11092017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10272017 | 2017-10-27T12:58:06+00:00 |  | 000046190-01 | Jeanna | John | ALLIANCE PHYS BH INC | 927615 | PAUL F | HANLEY | 1760507057 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10262017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027056 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 11092017 | 10262017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11022017 | 2017-11-02T11:30:25+00:00 |  | 000119256-01 | JEFFREY | ZIRKLE | OHIOHEALTH PHYS GRP | 908946 | CHARLES F | BOTTI JR | 1962406439 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11092017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102043 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 11092017 | 11012017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11032017 | 2017-11-03T08:39:03+00:00 |  | 000000107-01 | MINNIE | BEATTY | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11022017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103065 | I249, R079 | Chest pain, unspecified | ICD10 | 11092017 | 11022017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11062017 | 2017-11-06T10:50:43+00:00 | 264468677309 | 000038783-01 | Calvin | Anderson | COPC CENTRAL OHIO PRIMAR | 928116 | ONMA A | AMEH | 1578884565 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11092017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11052017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106042 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 11092017 | 11052017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11062017 | 2017-11-06T10:29:00+00:00 | 025660778-7307 | 000081403-01 | Eddie | Crockett | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11082017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106119 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11092017 | 11082017 | 11092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10242017 | 2017-10-24T13:47:38+00:00 | 026039307-7292 | 000028919-01 | NANCY | SPEAKMAN | COSHOCTON REGIONAL MEDIC | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11082017 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025041 | M1711, M25561 | Pain in right knee | ICD10 | 11092017 | 11082017 | 11092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 63 | CPT | C4 |  |  |  | 1.0 |
| 09222017 | 2017-09-22T12:13:01+00:00 | 025710861-7275 | 000094150-01 | Guy | Swisher | ORTHO SPEC & SPORTS MED | 935034 | EDWARD L | WESTERHEIDE | 1821019258 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11082017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922049 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11092017 | 11082017 | 11092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11062017 | 2017-11-06T09:57:20+00:00 | 256305787307 | 000109142-01 | JAMES | SCANLON | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11092017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11032017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106023 | S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 11092017 | 11032017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11032017 | 2017-11-03T08:48:51+00:00 |  | 000100104-01 | Ruth | Brinkel | GRANDVIEW & SOUTHVIEW HO | 936462 |  | GRANDVIEW MEDICAL CENTER | 1053339507 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 11092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11022017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103011 | D649, D759 | Disease of blood and blood-forming organs, unspecified | ICD10 | 11092017 | 11022017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
