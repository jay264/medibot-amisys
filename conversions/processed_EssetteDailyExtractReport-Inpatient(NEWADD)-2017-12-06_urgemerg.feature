Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-06_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-06_URGEMERG
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
| 11272017 | 2017-11-27T12:47:02+00:00 | 256688157330 | 000070886-01 | Donald | Schlater | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12062017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11262017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127091 | J159 | Unspecified bacterial pneumonia | ICD10 | 12062017 | 11262017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12042017 | 2017-12-04T14:28:49+00:00 |  | 000049041-01 | CARL | WALTON | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 12062017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 12062017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171204131 | I639 | Cerebral infarction, unspecified | ICD10 | 12062017 | 12052017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12012017 | 2017-12-01T09:28:39+00:00 | 262311477334 | 000112246-01 | John | Mackey | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12012017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201013 | A419, C9590 | Leukemia, unspecified not having achieved remission | ICD10 | 12062017 | 12012017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11092017 | 2017-11-09T10:52:50+00:00 |  | 000040244-01 | JOYCE | CLARK | OSU INTERNAL MED LLC | 943038 | ALICE S | MIMS | 1699962084 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant | IN TRPLNT | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11092017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109056 | C9201 | Acute myeloblastic leukemia, in remission | ICD10 | 12062017 | 11092017 | 12052017 | 38240 | BONE MARROW TRANSPLANTATION | CPT | 0 | 1 |  | 27 | CPT | C4 |  |  |  | 11.0 |
| 11212017 | 2017-11-21T15:54:00+00:00 |  | 000073699-01 | Mabel | Anderson | GILLESPIE II, HAROLD A | 900097 | HAROLD A | GILLESPIE II | 1689663130 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12062017 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122001 | L0390 | Cellulitis, unspecified | ICD10 | 12062017 | 11202017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11242017 | 2017-11-24T08:02:10+00:00 |  | 000077036-01 | Irene | Matson | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11222017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127015 | M6688, W19XXXD | Unspecified fall, subsequent encounter | ICD10 | 12062017 | 11222017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12042017 | 2017-12-04T10:03:52+00:00 |  | 000078478-01 | Edward | Ross | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12012017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204091 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 12062017 | 12012017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T17:10:30+00:00 |  | 000118768-01 | Christine | Pfaff | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12062017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 12042017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107013 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 12062017 | 12042017 | 12052017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11282017 | 2017-11-28T10:15:35+00:00 | 267884737332 | 000083558-01 | Verla | Pitts | INTERNAL MED ASSOC INC | 902702 | GREGORY R | WISE | 1184605263 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11282017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128018 | J189 | Pneumonia, unspecified organism | ICD10 | 12062017 | 11282017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11272017 | 2017-11-27T10:21:14+00:00 | 253016377330 | 000016893-01 | EVELYN | SCHILLER | EMERGENCY SERVICES INC | 933624 | ADAM J | HERINGHAUS | 1396064499 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11262017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127053 | I5033, J9601 | Acute respiratory failure with hypoxia | ICD10 | 12062017 | 11262017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10102017 | 2017-10-10T14:51:29+00:00 |  | 000106940-01 | Orrin | Berg | MERCY HEALTH PHYSICIANS | 921248 | GREGORY C | ZENNI | 1285664789 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10162017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011008 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 12062017 | 10162017 | 10172017 | 34802 | ENDOVASC ABDO REPR W/DEVICE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11272017 | 2017-11-27T10:00:29+00:00 |  | 000066729-01 | JUDITH | BLAIR | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11252017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129045 | J189, J449, R079 | Chest pain, unspecified | ICD10 | 12062017 | 11252017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11302017 | 2017-11-30T15:45:45+00:00 | 251108057334 | 000026060-01 | Mary | Snodgrass | HOSPITALIST MEDICINE PHY | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11302017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130107 | L03818 | Cellulitis of other sites | ICD10 | 12062017 | 11302017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12042017 | 2017-12-04T11:18:27+00:00 | 259047937337 | 000078975-01 | Ronald | Steele | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 12032017 | 12052017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204099 | I509, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12062017 | 12032017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12042017 | 2017-12-04T09:24:31+00:00 |  | 000116570-01 | Sylvia | Baker | ADAMS COUNTY HOSPITAL | 936460 |  | ADAMS COUNTY HOSPITAL | 0 | ADAMS COUNTY HOSPITAL | 936460 | 0 | ADAMS COUNTY HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | ADAMS COUNTY HOSPITAL | 12062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12012017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204044 | Z471 | Aftercare following joint replacement surgery | ICD10 | 12062017 | 12012017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09252017 | 2017-09-25T09:30:56+00:00 | 250323027265 | 000044473-01 | SHARON | EVANS | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09242017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925027 | I739 | Peripheral vascular disease, unspecified | ICD10 | 12062017 | 09242017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11272017 | 2017-11-27T11:31:20+00:00 | 251015827330 | 000033486-01 | GEORGE | SYKES | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11262017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127077 | T8249XA | Oth complication of vascular dialysis catheter, init encntr | ICD10 | 12062017 | 11262017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11272017 | 2017-11-27T10:01:52+00:00 |  | 000026915-01 | NATTIE | GROVES | ADENA MEDICAL GROUP LLC | 915470 | NIRANJAN | SESHADRI | 1306840210 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11252017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129048 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 12062017 | 11252017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12062017 | 2017-12-06T08:48:27+00:00 |  | 000103179-01 | BEVERLY | KUSMIERCZYK | TAJ MEDICAL INC | 906519 | NAJEEB | AHMED | 1972574275 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12052017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206035 | I259 | Chronic ischemic heart disease, unspecified | ICD10 | 12062017 | 12052017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11292017 | 2017-11-29T11:20:16+00:00 | 253341437332 | 000010566-01 | FREDA | FARLEY | HOSPITALIST MEDICINE PHY | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11282017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129059 | E875 | Hyperkalemia | ICD10 | 12062017 | 11282017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12042017 | 2017-12-04T09:22:26+00:00 | 251546677336 | 000020320-01 | JAMES | CARTWRIGHT | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12022017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204029 | I214, I2510, R079 | Chest pain, unspecified | ICD10 | 12062017 | 12022017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12052017 | 2017-12-05T10:14:17+00:00 | 251683107338 | 000050215-01 | BARBARA | FORDER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12042017 | 12062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205041 | K8050 | Calculus of bile duct w/o cholangitis or cholecyst w/o obst | ICD10 | 12062017 | 12042017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T14:38:03+00:00 | 025180741-7330 | 000093968-01 | Sharon | Hollingsworth | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 11262017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127115 | J189 | Pneumonia, unspecified organism | ICD10 | 12062017 | 11262017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 12032017 | 2017-12-03T14:25:53+00:00 |  | 000025860-01 | HOWARD | MITCHELL | HEALTHWORKS INC | 936644 | RAYMOND D | FULLER | 1356424899 | GRADY MEMORIAL HOSPITAL | 936495 | 1235174327 | GRADY MEMORIAL HOSPITAL | 1235174327 | Inpatient | IP | Concurrent Review | CONC |  | GRADY MEMORIAL HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12032017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204006 | R1084 | Generalized abdominal pain | ICD10 | 12062017 | 12032017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11292017 | 2017-11-29T14:34:18+00:00 |  | 000083663-01 | James | Cummings | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11292017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130004 | E162, R0902, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 12062017 | 11292017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11282017 | 2017-11-28T17:47:57+00:00 |  | 000106563-01 | Timothy | Corriveau | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11272017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129097 | N390, R4182 | Altered mental status, unspecified | ICD10 | 12062017 | 11272017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11302017 | 2017-11-30T15:07:21+00:00 |  | 000115389-01 | Cecilia | Johnson | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11292017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130105 | J939 | Pneumothorax, unspecified | ICD10 | 12062017 | 11292017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12032017 | 2017-12-03T14:44:25+00:00 |  | 000008313-01 | LOUELLA | CONLEY | ADENA MEDICAL GROUP LLC | 927071 | MAYSA | EL-SAYYID | 1962638122 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12022017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204013 | I10 | Essential (primary) hypertension | ICD10 | 12062017 | 12022017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12052017 | 2017-12-05T10:19:19+00:00 | 257158497338 | 000027070-01 | DONNA | FORTNER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 12042017 | 12062017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205044 | N179 | Acute kidney failure, unspecified | ICD10 | 12062017 | 12042017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12042017 | 2017-12-04T07:33:56+00:00 |  | 000035029-01 | PATRICIA | MILLER | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12012017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204066 | D649, R0600 | Dyspnea, unspecified | ICD10 | 12062017 | 12012017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11282017 | 2017-11-28T14:36:42+00:00 |  | 000099599-01 | Joan | Childers | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11272017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129103 | A419, E6601, J189, J9611, R1013 | Epigastric pain | ICD10 | 12062017 | 11272017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11072017 | 2017-11-07T13:27:47+00:00 |  | 000057879-01 | HOWARD | LEWINTER | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11302017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107088 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 12062017 | 11302017 | 12062017 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 11272017 | 2017-11-27T07:47:03+00:00 |  | 000087526-01 | Thomas | Ricketts | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11242017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127111 | L0390 | Cellulitis, unspecified | ICD10 | 12062017 | 11242017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11172017 | 2017-11-17T14:10:35+00:00 |  | 000032029-01 | DOROTHY | SMITH | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11172017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117077 | F333 | Major depressv disorder, recurrent, severe w psych symptoms | ICD10 | 12062017 | 11172017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 11292017 | 2017-11-29T07:24:57+00:00 |  | 000085576-01 | Sharon | Edwards | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129077 | I509, J189, J90 | Pleural effusion, not elsewhere classified | ICD10 | 12062017 | 11282017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11202017 | 2017-11-20T16:57:02+00:00 |  | 000027123-01 | HARRY | HAPPE | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12062017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 11202017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120132 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 12062017 | 11202017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11222017 | 2017-11-22T08:55:21+00:00 |  | 000038591-01 | MARY | MATHERS | SURG INTERVENTIONS LLC | 937369 | HOWARD L | REEVES | 1639245350 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11302017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122056 | D374 | Neoplasm of uncertain behavior of colon | ICD10 | 12062017 | 11302017 | 12052017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 11292017 | 2017-11-29T16:56:30+00:00 |  | 000007646-01 | JOHN | ANDERSON JR | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12062017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 11292017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129118 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 12062017 | 11212017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10202017 | 2017-10-20T09:39:28+00:00 |  | 000006182-01 | ROBERT | MONAGHAN JR | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12052017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023016 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 12062017 | 12062017 | 12062017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09192017 | 2017-09-19T12:18:23+00:00 |  | 000071513-01 | Karen | Smith | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12052017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919073 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12062017 | 12052017 | 12062017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11302017 | 2017-11-30T15:49:06+00:00 | 250451367334 | 000022588-01 | CHARLES | GREENWALD | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11302017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130109 | I639 | Cerebral infarction, unspecified | ICD10 | 12062017 | 11302017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11272017 | 2017-11-27T08:29:40+00:00 |  | 000071374-01 | Harold | Pyle | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11302017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128024 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 12062017 | 11302017 | 12062017 | 76770, 36245 | SELECT.CATH.PLACEMENT,ARTERIAL,EACH 1ST ORDER ABDOMINAL,PELVIC, OR LE | CPT | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 12062017 | 2017-12-06T09:33:50+00:00 |  | 000067245-01 | JUDITH | BINEGAR | MOUNT CARMEL HLTH PRVDRS | 935747 | RENEE | CAPUTO | 1558367862 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12062017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12052017 | 12062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206023 | N813, N8181, N898 | Other specified noninflammatory disorders of vagina | ICD10 | 12062017 | 12052017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12042017 | 2017-12-04T09:37:32+00:00 |  | 000114674-01 | Donna | Holley | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12012017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204038 | K7689 | Other specified diseases of liver | ICD10 | 12062017 | 12012017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11032017 | 2017-11-03T15:35:34+00:00 | 025224912-7310 | 000039726-01 | GAYLORD | REED | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12052017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106072 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12062017 | 12052017 | 12062017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
