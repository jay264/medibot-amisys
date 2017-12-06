Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-04_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-04_URGEMERG
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
| 11302017 | 2017-11-30T08:38:26+00:00 |  | 000001487-01 | BRUCE | BROWN | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11292017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201001 | R590 | Localized enlarged lymph nodes | ICD10 | 12032017 | 11292017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12012017 | 2017-12-01T09:38:16+00:00 |  | 000099739-01 | Deroy | Taylor | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11232017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201019 | D72829 | Elevated white blood cell count, unspecified | ICD10 | 12032017 | 11232017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 11302017 | 2017-11-30T10:28:45+00:00 | 250900857333 | 000104517-01 | Betty | Peer | HOSPITALIST MEDICINE PHY | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11292017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130041 | M6281 | Muscle weakness (generalized) | ICD10 | 12032017 | 11292017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11302017 | 2017-11-30T10:11:29+00:00 | 258709787333 | 000075549-01 | Kevin | Denny | HOSPITALIST MEDICINE PHY | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11292017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130030 | N179 | Acute kidney failure, unspecified | ICD10 | 12042017 | 11292017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11222017 | 2017-11-22T10:45:39+00:00 | 163171647325 | 000044725-01 | SHARON | DOUP | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 11222017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122045 | A419 | Sepsis, unspecified organism | ICD10 | 12042017 | 11212017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11272017 | 2017-11-27T11:54:25+00:00 | 250442827329 | 000052063-01 | DONALD | GOURLEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11252017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127082 | K810 | Acute cholecystitis | ICD10 | 12042017 | 11252017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11282017 | 2017-11-28T10:47:51+00:00 | 263729987332 | 000051849-01 | RICHARD | MOHLER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11282017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128028 | R6521 | Severe sepsis with septic shock | ICD10 | 12042017 | 11282017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11292017 | 2017-11-29T11:29:42+00:00 | 256458777332 | 000042010-01 | Clarence | Slone | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 11282017 | 12022017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129065 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12042017 | 11282017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11272017 | 2017-11-27T09:31:38+00:00 | 026353815-7326 | 000009279-01 | CARL | STROHMEYER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 11222017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127027 | I629 | Nontraumatic intracranial hemorrhage, unspecified | ICD10 | 12042017 | 11222017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11212017 | 2017-11-21T11:03:41+00:00 | 256202227324 | 000014328-01 | HULDA | WILLIAMS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11202017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121050 | R296 | Repeated falls | ICD10 | 12042017 | 11202017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 10182017 | 2017-10-18T16:28:14+00:00 | 025200178-7313 | 000071086-01 | Judith | Valentine | ORTHO & NEURO CONSULTS I | 902411 | DONALD J | ROHL | 1578547097 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12042017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11302017 | 12022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019049 | M5416, M48062 | M48062 | ICD10 | 12042017 | 11302017 | 12022017 | 63048, 22830, 22612, 22850, 22840, 20930, 95941, 95938, 95861 | EMG TWO EXTRM.& RLTD PARASPNL AREAS | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 11272017 | 2017-11-27T10:07:28+00:00 |  | 000045673-01 | Mary | Elliott | NEUROSCIENCE CENTER | 944006 | ARCHANA P | HINDUJA | 1336313865 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11242017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128022 | I639 | Cerebral infarction, unspecified | ICD10 | 12042017 | 11242017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11282017 | 2017-11-28T09:39:08+00:00 |  | 000080585-01 | Delbert | Fehrman | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12042017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11272017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129012 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 12042017 | 11272017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11302017 | 2017-11-30T09:18:33+00:00 | 025275120-7299 | 000082628-01 | Virginia | Beaver | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 11282017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130017 | M4712 | Other spondylosis with myelopathy, cervical region | ICD10 | 12042017 | 11282017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10262017 | 2017-10-26T10:06:12+00:00 |  | 000078210-01 | Katrina | Whitesed | OSU GENERAL INTL MED LLC | 910491 | DUSTIN A | CHASE | 1285845396 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12042017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10252017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026050 | D649 | Anemia, unspecified | ICD10 | 12042017 | 10252017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11142017 | 2017-11-14T09:03:14+00:00 |  | 000011513-01 | PAULINE | LEFEBURE | OSU INTERNAL MED LLC | 949149 | MARGARET E | WILLIAMS | 1952664575 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11132017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114073 | T451X1A | Poisoning by antineopl and immunosup drugs, acc, init | ICD10 | 12042017 | 11132017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12042017 | 2017-12-04T09:41:24+00:00 | 025129478-7320 | 000074371-01 | Glenda | Zolton | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12042017 | Approved | MediGold Southeast OH Classic Preferred | EMR | EIS | Inpatient | 12012017 | 12022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204040 | M159 | Polyosteoarthritis, unspecified | ICD10 | 12042017 | 12012017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11152017 | 2017-11-15T08:12:59+00:00 |  | 000107304-01 | Johnny | Weiss | HOSPITALIST MEDICINE PHY | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11142017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115060 | A419, E1010, E11621 | Type 2 diabetes mellitus with foot ulcer | ICD10 | 12042017 | 11142017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11232017 | 2017-11-23T11:09:39+00:00 |  | 000037749-01 | CAROLYN | DAVIS | OHIOHEALTH PHYS GRP | 940515 | JENNIFER L | MIDDLETON | 1326183393 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11232017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127007 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 12042017 | 11232017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11222017 | 2017-11-22T08:54:22+00:00 |  | 000055345-01 | ERIC | CROKER | UCPA PC | 942644 | XIAO-MING | YIN | 1588630818 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11212017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122028 | C01, C7800, J90 | Pleural effusion, not elsewhere classified | ICD10 | 12042017 | 11212017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11152017 | 2017-11-15T17:16:45+00:00 |  | 000014484-01 | CHARLES | BOWERSOCK | PHILIP E HINKLE MD | 900299 | PHILIP E | HINKLE | 1518068048 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11162017 | 12012017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116001 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 12042017 | 11162017 | 12012017 | 90870 | ELECTROCONVULSIVE THERAPY | CPT | 1 | 1 | Approved | 16 | CPT | C4 |  |  |  | 1.0 |
| 11212017 | 2017-11-21T10:39:53+00:00 |  | 000062695-01 | JAYNE | BLAISDELL | HOSP SVC MED GRP OF MARY | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12042017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 11202017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121067 | D649, R079 | Chest pain, unspecified | ICD10 | 12042017 | 11202017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11242017 | 2017-11-24T11:57:16+00:00 |  | 000092157-01 | Virginia | Smith | HOSPITALIST MEDICINE PHY | 946140 | MALATHY | VARATHARAJAH | 1669470050 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12042017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11222017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127033 | I429, I4891 | Unspecified atrial fibrillation | ICD10 | 12042017 | 11222017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12012017 | 2017-12-01T13:40:59+00:00 |  | 000044540-01 | JANET | WOOD | PREMIER HEALTH SPEC INC | 931255 | BABAR | HASAN | 1649266016 | WAYNE HOSPITAL | 952493 | 1134217979 | WAYNE HOSPITAL | 1134217979 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | WAYNE HOSPITAL | 12042017 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 11292017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201051 | R45851 | Suicidal ideations | ICD10 | 12042017 | 11292017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11202017 | 2017-11-20T07:01:11+00:00 |  | 000116828-01 | Annette | Stevenson | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11172017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120042 | R748, W19XXXA | Unspecified fall, initial encounter | ICD10 | 12042017 | 11172017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T08:38:14+00:00 |  | 000096147-01 | Frederick | Goerler | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11202017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120047 | C9200, D709, E119, I10, N400 | Enlarged prostate without lower urinary tract symptoms | ICD10 | 12042017 | 11202017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11272017 | 2017-11-27T09:01:27+00:00 |  | 000085660-01 | Anita | Hairston | HOSPITALIST MEDICINE PHY | 947589 | ZACHARY T | EINARSSON | 1962846204 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11252017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127141 | J9621, J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 12042017 | 11252017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11282017 | 2017-11-28T09:14:11+00:00 |  | 000116078-01 | JOSEPH | SANOK JR | OSU INTERNAL MED LLC | 908498 | RAGAVENDRA R | BALIGA | 1790722197 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11272017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129008 | I509 | Heart failure, unspecified | ICD10 | 12042017 | 11272017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11292017 | 2017-11-29T14:36:09+00:00 |  | 000064499-01 | ALBERT | KEECHLE | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11272017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130005 | Z96659 | Presence of unspecified artificial knee joint | ICD10 | 12042017 | 11272017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11272017 | 2017-11-27T17:14:14+00:00 |  | 000045339-01 | Alice | Jansons | UCPA PC | 942644 | XIAO-MING | YIN | 1588630818 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11272017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128065 | C069, W19XXXA | Unspecified fall, initial encounter | ICD10 | 12042017 | 11272017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11302017 | 2017-11-30T08:50:42+00:00 |  | 000012265-01 | VIRGINIA | ANDREWS | OSU SURGERY LLC | 942268 | HOSAM F | EL SAYED | 1063598977 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11292017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130071 | I723 | Aneurysm of iliac artery | ICD10 | 12042017 | 11292017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11242017 | 2017-11-24T10:29:19+00:00 |  | 000076791-01 | Betty | Wilkins | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12042017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11232017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127023 | D6959 | Other secondary thrombocytopenia | ICD10 | 12042017 | 11232017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11302017 | 2017-11-30T16:31:25+00:00 |  | 000026614-01 | BEVERLY | PURDIN | BUTLER COUNTY HLTH CONSO | 933425 | JOHN W | GREENE | 1275956617 | GRADY MEMORIAL HOSPITAL | 936495 | 1235174327 | GRADY MEMORIAL HOSPITAL | 1235174327 | Inpatient | IP | Concurrent Review | CONC |  | GRADY MEMORIAL HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11302017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201020 | R6889 | Other general symptoms and signs | ICD10 | 12042017 | 11302017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11202017 | 2017-11-20T17:43:38+00:00 |  | 000080899-01 | Rozanna | Fitchpatrick | RESILIENCY & WELLNESS CO | 946613 | DELANEY | SMITH | 1942324728 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11192017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121010 | F1020, F319 | Bipolar disorder, unspecified | ICD10 | 12042017 | 11192017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11202017 | 2017-11-20T08:52:52+00:00 |  | 000109642-01 | Clarence | Steele Jr. | BUTLER COUNTY MENTAL HLT | 932392 | RAKESSHKUMAR | KANERIA | 1740347566 | BLUERIDGE VISTA HEALTH A | 949112 | 1053784454 | BLUERIDGE VISTA HEALTH AND WELLNESS | 1053784454 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | BLUERIDGE VISTA HEALTH AND WELLNESS | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11192017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120039 | F0631 | Mood disorder due to known physiol cond w depressv features | ICD10 | 12042017 | 11192017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11212017 | 2017-11-21T10:48:22+00:00 |  | 000117120-01 | Janet | Baker | SYCAMORE PRIMARY CARE GR | 942247 | JEVEDE D | HARRIS | 1154687127 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11192017 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121068 | E876, I509, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 12042017 | 11192017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 11212017 | 2017-11-21T14:10:15+00:00 |  | 000083402-01 | Michael | Wells | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 12042017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11212017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121076 | K5660 | Unspecified intestinal obstruction | ICD10 | 12042017 | 11212017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11212017 | 2017-11-21T14:22:09+00:00 |  | 000060998-01 | JUDITH | JONES | ALLIANCE PHYSICIANS INC | 948102 | CHRISTA | SIEBENBURGEN | 1114247251 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121077 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 12042017 | 11202017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11242017 | 2017-11-24T13:48:26+00:00 |  | 000109704-01 | David | Wilson | COPC CENTRAL OHIO PRIMAR | 911172 | JOO A | LEE | 1598924524 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11232017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127070 | I82431 | Acute embolism and thrombosis of right popliteal vein | ICD10 | 12042017 | 11232017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11242017 | 2017-11-24T14:06:21+00:00 |  | 000090271-01 | Lena | Clarke | ORTHO TRAUMA SRVS LTD | 911031 | JOAQUIN | CASTANEDA | 1801932447 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11242017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127073 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 12042017 | 11242017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11242017 | 2017-11-24T11:12:27+00:00 |  | 000103908-01 | DOLLETTA | PAUL | SOUND KENWOOD HSPISTS OF | 928796 | KERRY A | LECKY | 1396952651 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 12042017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11222017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127028 | J441, J9601 | Acute respiratory failure with hypoxia | ICD10 | 12042017 | 11222017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11242017 | 2017-11-24T12:33:55+00:00 |  | 000106276-01 | Barbara | Brewer | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12042017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11222017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127041 | I509 | Heart failure, unspecified | ICD10 | 12042017 | 11222017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11282017 | 2017-11-28T10:51:18+00:00 |  | 000104389-01 | HOBERT | PARKER | MIAMI VALLEY HSPISTS GRP | 914654 | ELIE R | GHAZAL | 1982657391 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11272017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129036 | I4891, J159, R079 | Chest pain, unspecified | ICD10 | 12042017 | 11272017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11142017 | 2017-11-14T11:28:02+00:00 |  | 000028526-01 | LESTER | ABBOTT | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11132017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115017 | M84359S, T148 | Other injury of unspecified body region | ICD10 | 12042017 | 11132017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11242017 | 2017-11-24T11:56:22+00:00 |  | 000079919-01 | William | Day | MEDICINE INPATIENT GROUP | 925155 | FADI | BAILONY | 1003965385 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 12042017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11232017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127032 | R079 | Chest pain, unspecified | ICD10 | 12042017 | 11232017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11222017 | 2017-11-22T12:48:03+00:00 |  | 000103642-01 | James | Price Jr | SOUND KENWOOD HSPISTS OF | 941846 | SIDDHARTH K | MUSHRIF | 1447455159 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12042017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11222017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122061 | A419, R404 | Transient alteration of awareness | ICD10 | 12042017 | 11222017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11302017 | 2017-11-30T07:18:58+00:00 |  | 000095539-01 | Sharon | Thabat Mohamed | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 12042017 | Approved | MediGold Essential Care | Fax | Pending Admission | Inpatient | 01082018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171130095 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12042017 |  |  | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 26 | CPT | C4 |  |  | No child records to display. |  |
| 12042017 | 2017-12-04T11:08:24+00:00 | 025655747-7335 | 000108186-01 | Sandra | Ackerman | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Essential Care | EMR | ACO - Pulmonary | Inpatient | 12012017 | 12032017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204093 | J209 | Acute bronchitis, unspecified | ICD10 | 12042017 | 12012017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11242017 | 2017-11-24T15:00:02+00:00 |  | 000048989-01 | RICHARD | GRIMM | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11232017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127117 | A419, J189, R0902 | Hypoxemia | ICD10 | 12042017 | 11232017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11272017 | 2017-11-27T13:17:58+00:00 |  | 000066817-01 | RALPH | MCNEAL | INTERNAL MED CARE INC | 942842 | JOSEPH R | CRAWFORD | 1811242571 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 12042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11252017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128075 | R0602 | Shortness of breath | ICD10 | 12042017 | 11252017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12022017 | 2017-12-02T14:24:29+00:00 |  | 000030293-01 | HELEN | ROWE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12012017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171202002 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 12042017 | 12012017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12012017 | 2017-12-01T09:29:15+00:00 | 251459007334 | 000051597-01 | MARGARET | CHAFFIN | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11302017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201015 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 12042017 | 11302017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
