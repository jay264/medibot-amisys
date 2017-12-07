Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-05_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-05_URGEMERG
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
| 12042017 | 2017-12-04T09:57:58+00:00 | 025697661-7335 | 000033965-01 | JANICE | DEMPSEY | COPC CENTRAL OHIO PRIMAR | 918091 | SANA A | SIDDIQUI | 1417100694 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 12012017 | 12042017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204054 | S32010A | Wedge compression fracture of first lumbar vertebra, init | ICD10 | 12052017 | 12012017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12042017 | 2017-12-04T11:06:03+00:00 | 250362097336 | 000050908-01 | JANET | FLOOD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12022017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204092 | I2119 | STEMI involving oth coronary artery of inferior wall | ICD10 | 12052017 | 12022017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11172017 | 2017-11-17T13:26:42+00:00 |  | 000091747-01 | Roma | Napier | ALLIANCE PHYSICIANS INC | 908728 | RAJA A | NAZIR | 1003871963 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12052017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11292017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117074 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 12052017 | 11292017 | 12022017 | 33418, 33419 | REPAIR TCAT MITRAL VALVE | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 11272017 | 2017-11-27T12:26:38+00:00 | 168943597329 | 000073706-01 | David | Mclarnan | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12052017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11252017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127087 | K869 | Disease of pancreas, unspecified | ICD10 | 12052017 | 11252017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12052017 | 2017-12-05T08:24:23+00:00 |  | 000051549-01 | Gilbert | Albright | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | EMR | ACO - Pulmonary | Inpatient | 12032017 | 12042017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205003 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 12052017 | 12032017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11282017 | 2017-11-28T10:02:41+00:00 | 252213217331 | 000088295-01 | David | Roffe | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11272017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128014 | R6889 | Other general symptoms and signs | ICD10 | 12052017 | 11272017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11172017 | 2017-11-17T15:38:04+00:00 |  | 000101230-01 | George | Wilson | MOUNT CARMEL HLTH PRVDRS | 907033 | PATRINA V | YAO | 1578719639 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12042017 | 12042017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117083 | G40919 | Epilepsy, unsp, intractable, without status epilepticus | ICD10 | 12052017 | 12042017 | 12042017 | 95951 | MONITOR EEG & VIDEO C INT & RPT | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 12012017 | 2017-12-01T08:35:07+00:00 | 25002227335 | 000107248-01 | Yvonne | Allen | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12012017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201002 | R040 | Epistaxis | ICD10 | 12052017 | 12012017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11272017 | 2017-11-27T13:36:53+00:00 |  | 000083826-01 | Edith | Arledge | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11262017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129054 | C3490, J449, R0902 | Hypoxemia | ICD10 | 12052017 | 11262017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11292017 | 2017-11-29T10:19:33+00:00 |  | 000045030-01 | ROBERTA | BASS | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129100 | I10 | Essential (primary) hypertension | ICD10 | 12052017 | 11282017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11292017 | 2017-11-29T09:37:19+00:00 | 261922387332 | 000068654-01 | JAMES | CHAMBERS JR | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11292017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129019 | R319 | Hematuria, unspecified | ICD10 | 12052017 | 11292017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12042017 | 2017-12-04T09:43:01+00:00 | 250169467337 | 000089328-01 | Patricia | Cooperider | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | TRINITY HEALTH | Reports | ACO - CHF | Inpatient | 12022017 | 12042017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204042 | I5031, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12052017 | 12022017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12012017 | 2017-12-01T11:26:52+00:00 |  | 000044540-01 | JANET | WOOD | WAYNE HOSPITAL | 952493 |  | WAYNE HOSPITAL | 1134217979 | WAYNE HOSPITAL | 952493 | 1134217979 | WAYNE HOSPITAL | 1134217979 | Inpatient | IP | Concurrent Review | CONC |  | WAYNE HOSPITAL | 12052017 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 11302017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201039 | I481, I959 | Hypotension, unspecified | ICD10 | 12052017 | 11302017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11272017 | 2017-11-27T14:33:41+00:00 |  | 000098922-01 | Katherine | Seward | UNIVERSITY OF CINCINNATI | 926886 | TAHIR | LATIF | 1750378717 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 12052017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11252017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128083 | E872, R1907 | Generalized intra-abd and pelvic swelling, mass and lump | ICD10 | 12052017 | 11252017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11222017 | 2017-11-22T10:31:02+00:00 |  | 000096172-01 | Helen | Charles | SOUND INPATIENT PHYS OF | 930101 | MICHAEL J | CROTTY | 1215199559 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 12052017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11212017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122050 | I4891 | Unspecified atrial fibrillation | ICD10 | 12052017 | 11212017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11292017 | 2017-11-29T09:54:08+00:00 | 260233377332 | 000006054-01 | DIANE | GAVORCIK | PR CARE LLC | 939535 | WILLIAM SAXBY | ROTHE III | 1801874235 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11282017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129021 | R4182 | Altered mental status, unspecified | ICD10 | 12052017 | 11282017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11302017 | 2017-11-30T15:39:50+00:00 |  | 000092922-01 | Paul | Hoag | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11292017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130103 | I313, J159 | Unspecified bacterial pneumonia | ICD10 | 12052017 | 11292017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11292017 | 2017-11-29T16:54:28+00:00 |  | 000106445-01 | Lawrence | Stewart | COMMUNITY HSPIST LLC | 920738 | MARSHALL C | SPALDING | 1316261100 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11292017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130051 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 12052017 | 11292017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11272017 | 2017-11-27T11:51:52+00:00 |  | 000099249-01 | Alice | Bertram | MARIETTA HLTH CARE PHYS | 922112 | LARRY T | HAWKINS | 1700881034 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 12052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11252017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128044 | F0281 | Dementia in oth diseases classd elswhr w behavioral disturb | ICD10 | 12052017 | 11252017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12042017 | 2017-12-04T10:54:30+00:00 | 263847377335 | 000045585-01 | SYLVIA | MEYERS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12012017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204084 | J159 | Unspecified bacterial pneumonia | ICD10 | 12052017 | 12012017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11272017 | 2017-11-27T16:09:38+00:00 |  | 000110663-01 | Shirley | Crawford | CASSANO COMMUNITY HEALTH | 904966 | CARLA M | MYERS | 1770581951 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 12052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11242017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129001 | E872, N10 | Acute tubulo-interstitial nephritis | ICD10 | 12052017 | 11242017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11152017 | 2017-11-15T15:58:17+00:00 | 025241906-7318 | 000072575-01 | RONALD | TUCKER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11142017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115077 | K219, M8610 | Other acute osteomyelitis, unspecified site | ICD10 | 12052017 | 11142017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 11272017 | 2017-11-27T15:11:07+00:00 | 025752419-7313 | 000092010-01 | JAMES | AGLER | COSHOCTON COUNTY MEM HSP | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12052017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11302017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128047 | M1711, M25561 | Pain in right knee | ICD10 | 12052017 | 11302017 | 12012017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11222017 | 2017-11-22T10:44:34+00:00 |  | 000087294-01 | James | Ebner | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12052017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11212017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122052 | M4640 | Discitis, unspecified, site unspecified | ICD10 | 12052017 | 11212017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 11302017 | 2017-11-30T13:15:19+00:00 | 018017821-7311 | 000113892-01 | Rose | Conley | MOUNT CARMEL HLTH PRVDRS | 904976 | WILLIAM R | ZERICK | 1568469609 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12052017 | Approved | MediGold Southeast OH Classic Preferred | EMR | EIS | Inpatient | 11292017 | 12012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130079 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 12052017 | 11292017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11222017 | 2017-11-22T08:20:20+00:00 |  | 000027196-01 | Gladys | Myers | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11212017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122021 | D72829, E876, I8291 | Chronic embolism and thrombosis of unspecified vein | ICD10 | 12052017 | 11212017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12012017 | 2017-12-01T15:04:38+00:00 | 025280933-7335 | 000025186-01 | RUTH | CARTER | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 12012017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201060 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 12052017 | 12012017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11282017 | 2017-11-28T10:12:14+00:00 | 253828097331 | 000003171-01 | MYRTLE | MITCHELL | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11272017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128017 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 12052017 | 11272017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11282017 | 2017-11-28T10:19:00+00:00 | 251151877331 | 000054522-01 | MABLE | TAYLOR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11272017 | 12042017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128020 | J159 | Unspecified bacterial pneumonia | ICD10 | 12052017 | 11272017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12042017 | 2017-12-04T08:31:16+00:00 | 251378737336 | 000114316-01 | Timothy | Belt | EMERGENCY SERVICES INC | 948131 | STEPHANIE N | CASEY | 1063685329 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12052017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 12022017 | 12052017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204002 | J189, R0602 | Shortness of breath | ICD10 | 12052017 | 12022017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12012017 | 2017-12-01T15:30:08+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY OF CINCINNATI | 943877 | DONALD R | LYNCH JR | 1285891481 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 12052017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 11302017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201066 | E860 | Dehydration | ICD10 | 12052017 | 11302017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11232017 | 2017-11-23T10:58:44+00:00 |  | 000028933-01 | PATRICIA | DAVIS HYE | OHIOHEALTH PHYS GRP | 909054 | FATIMA I | CHAWDRY | 1790890010 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11222017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127005 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12052017 | 11222017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11292017 | 2017-11-29T07:26:09+00:00 |  | 000065813-01 | Clarice | Malone | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129078 | I4891 | Unspecified atrial fibrillation | ICD10 | 12052017 | 11282017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11062017 | 2017-11-06T09:58:13+00:00 |  | 000046796-01 | JOANNE | BLAKE | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12042017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106101 | C541, N812 | Incomplete uterovaginal prolapse | ICD10 | 12052017 | 12042017 | 12052017 | 38571, 58571, 58400 | HYSTEROPEXY-SHORTENING ROUND LIGAM | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11272017 | 2017-11-27T13:38:17+00:00 |  | 000042738-01 | JOAN | CLIFTON | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11252017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129055 | N201, N3000 | Acute cystitis without hematuria | ICD10 | 12052017 | 11252017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11282017 | 2017-11-28T09:43:58+00:00 |  | 000116417-01 | Floyd | Parr | S DAYTON ACUTE CARE CNSL | 927463 | PRIYANKA | EDARA | 1932413630 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 12052017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11272017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129015 | K562 | Volvulus | ICD10 | 12052017 | 11272017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11292017 | 2017-11-29T09:17:34+00:00 |  | 000076198-01 | Robert | Eckstein | ORTHO ASSOC OF ZANESVILL | 952284 | VANESSA L | FALK | 1255607784 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 12052017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11292017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129092 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 12052017 | 11292017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T08:20:59+00:00 |  | 000098057-01 | Robert | Christy | CLERMONT INTERNISTS ASSO | 924704 | SUSHEELA | RAJAN | 1144273673 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 12052017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11262017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127129 | I4891, K625, R0602, R791, Z7901 | Long term (current) use of anticoagulants | ICD10 | 12052017 | 11262017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12012017 | 2017-12-01T13:23:26+00:00 |  | 000105818-01 | MARJORIE | WRIGHT | COMMUNITY HSPIST LLC | 920738 | MARSHALL C | SPALDING | 1316261100 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12052017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12012017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201047 | S82202C | Unsp fx shaft of left tibia, init for opn fx type 3A/B/C | ICD10 | 12052017 | 12012017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12042017 | 2017-12-04T09:35:01+00:00 | 255822817335 | 000072926-01 | Allan | Colgan | HOSPITALIST MEDICINE PHY | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12012017 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204039 | I214, R079 | Chest pain, unspecified | ICD10 | 12052017 | 12012017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12042017 | 2017-12-04T09:26:07+00:00 |  | 000076887-01 | Willanna | Swinehart | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12012017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204051 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 12052017 | 12012017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11082017 | 2017-11-08T11:25:44+00:00 |  | 000108048-01 | Emma | Heldman | HL KRUPADEV MD LLC | 925316 |  | HL KRUPADEV MD LLC | 1215054200 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 12052017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11072017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108042 | A09 | Infectious gastroenteritis and colitis, unspecified | ICD10 | 12052017 | 11072017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 12042017 | 2017-12-04T11:35:56+00:00 |  | 000116115-01 | Geraldine | Neer | PREMIER HEALTH SPEC INC | 945934 | NIVEDITA | MANKOTIA | 1750501441 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 12052017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12022017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204107 | I609, I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 12052017 | 12022017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
