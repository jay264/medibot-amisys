Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-20_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-20_URGEMERG
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
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 04262017 | 2017-04-26T07:20:28+00:00 |  | 000091722-01 | BARBARA | TIMMS | OSU HLTH SYSTEM NEUROSUR | 911676 | ALI R | REZAI | 1124082441 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06142017 | 06172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426001 | G250 | Essential tremor | ICD10 | 06202017 | 06142017 | 06172017 | 61867, 20660, 77002 | FLUOROSCOPIC GUIDANCE FOR NEEDLE PLACEMENT | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 05052017 | 2017-05-05T12:14:54+00:00 |  | 000056128-01 | RICHARD | SOMERS | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509018 | I10, R0602 | Shortness of breath | ICD10 | 06202017 | 05042017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 05172017 | 2017-05-17T11:32:19+00:00 |  | 000043170-01 | CHARLES | MCDORMAN | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06162017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517088 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06202017 | 06162017 | 06202017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 05182017 | 2017-05-18T13:14:00+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 947014 | GREGORY K | BEHBEHANI | 1053679217 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 06202017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 05172017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518043 | D72829 | Elevated white blood cell count, unspecified | ICD10 | 06202017 | 05172017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05292017 | 2017-05-29T16:04:56+00:00 |  | 000089615-01 | Ned | Thomas | HMP OF OHIO PC | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 06202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05262017 | 05292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530108 | I509 | Heart failure, unspecified | ICD10 | 06202017 | 05262017 | 05292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05312017 | 2017-05-31T13:51:44+00:00 |  | 000041527-01 | GEORGE | GARDINER | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05292017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531071 | I2699, I471 | Supraventricular tachycardia | ICD10 | 06202017 | 05292017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T12:46:20+00:00 |  | 000088550-01 | Ronald | Frank | THE CHRIST HSP MED ASSOC | 941214 | HILLARY | MOUNT | 1912133042 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606061 | R509 | Fever, unspecified | ICD10 | 06202017 | 06052017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06072017 | 2017-06-07T14:42:32+00:00 |  | 000111529-01 | Robert | Feldman | S DAYTON ACUTE CARE CNSL | 908196 | KECHENG | JIANG | 1285770859 | ATRIUM MEDICAL CENTER | 936440 | 1700950060 | ATRIUM MEDICAL CENTER | 1700950060 | Inpatient | IP | Concurrent Review | CONC |  | ATRIUM MEDICAL CENTER | 06202017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06072017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607076 | J189, J8410, R0902, R410 | Disorientation, unspecified | ICD10 | 06202017 | 06072017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06072017 | 2017-06-07T16:02:23+00:00 | 025061757-7146 | 000028486-01 | DOROTHY | KOLLMER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 06072017 | 06172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607081 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 06202017 | 06072017 | 06172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06082017 | 2017-06-08T16:19:40+00:00 |  | 000099599-01 | Joan | Childers | APOGEE MED GRP OHIO INC | 943521 | BERTHA S | VALDIVIESO | 1356571236 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06072017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609016 | I8290, J9601, L0390, R0602 | Shortness of breath | ICD10 | 06202017 | 06072017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06092017 | 2017-06-09T15:48:04+00:00 |  | 000080748-01 | Troy | Wilson | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 06202017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06072017 | 06172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609072 | S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 06202017 | 06072017 | 06172017 | 47562 | LAPAROSCOPIC CHOLECYSTECTOMY | CPT | 0 | 1 |  | 11 | CPT | C4 |  |  |  | 1.0 |
| 06092017 | 2017-06-09T16:11:04+00:00 | 025079924-7160 | 000019260-01 | MARJORIE | MOYER | HMP OF OHIO PC | 926900 | ANIRBAN | BISWAS | 1871891614 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 06092017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609073 | A419 | Sepsis, unspecified organism | ICD10 | 06202017 | 06092017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T10:06:12+00:00 | 178520397163 | 000071167-01 | Van | Tish | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06122017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612027 | K8000 | Calculus of gallbladder w acute cholecyst w/o obstruction | ICD10 | 06202017 | 06122017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06132017 | 2017-06-13T09:10:11+00:00 | 255928287163 | 000109729-01 | Robert | Schofield | HMP OF OHIO PC | 914611 | SOWMYA | VARRE | 1871753673 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06202017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06122017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613010 | J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06202017 | 06122017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06132017 | 2017-06-13T07:24:56+00:00 |  | 000021672-01 | KATHERINE | OUELLETTE | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613037 | S72146B | Nondisp intertroch fx unsp femur, init for opn fx type I/2 | ICD10 | 06202017 | 06122017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06132017 | 2017-06-13T12:38:42+00:00 | 025053832-7164 | 000030900-01 | JUSTINE | HARRIS | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 06132017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613045 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06202017 | 06132017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06142017 | 2017-06-14T09:02:58+00:00 |  | 000072165-01 | Gregory | Friensehner | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614020 | E871, K567 | Ileus, unspecified | ICD10 | 06202017 | 06132017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06142017 | 2017-06-14T09:57:51+00:00 |  | 000038400-01 | DAVID | KNOPP | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06132017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614028 | N135 | Crossing vessel and stricture of ureter w/o hydronephrosis | ICD10 | 06202017 | 06132017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06162017 | 2017-06-16T11:45:54+00:00 |  | 000038632-01 | RONALD | NELSON | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06202017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 06192017 | 06202017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616044 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 06202017 | 06192017 | 06202017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06162017 | 2017-06-16T14:17:38+00:00 |  | 000025472-01 | DOUGLAS | RAYMER | COMMUNITY HSPIST LLC | 920738 | MARSHALL C | SPALDING | 1316261100 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 06202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06152017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616055 | W3400XA | Accidental discharge from unsp firearms or gun, init encntr | ICD10 | 06202017 | 06152017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06162017 | 2017-06-16T15:20:56+00:00 |  | 000080333-01 | Tonya | Tallent | WRIGHT STATE PHYSICIANS | 907423 | MELISSA L | WHITMILL | 1821211251 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 06202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06162017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616073 | R4182 | Altered mental status, unspecified | ICD10 | 06202017 | 06162017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 06202017 | 2017-06-20T08:01:33+00:00 |  | 000088070-01 | Carol | Dougherty | HMP OF OHIO PC | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06202017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Inpatient | Inpatient | 06162017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620007 | I639 | Cerebral infarction, unspecified | ICD10 | 06202017 | 06162017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
