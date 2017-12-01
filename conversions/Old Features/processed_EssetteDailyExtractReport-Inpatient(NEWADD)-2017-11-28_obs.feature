Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-28_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-28_OBS
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
	And in the "Certification" page I enter "OB" into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
  And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image

	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what count to enter into the count image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "prov" image
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
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And I edit myself if I am a NONPAR
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically

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
| 11272017 | 2017-11-27T10:27:30+00:00 | 025014322-7328 | 000039985-01 | MARGARET | BRAHAM | COPC CENTRAL OHIO PRIMAR | 936062 | NAMI L | CHO | 1023091683 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 11242017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127057 | I639 | Cerebral infarction, unspecified | ICD10 | 11282017 | 11242017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11232017 | 2017-11-23T13:09:29+00:00 |  | 000005236-01 | JAMES | MORGAN | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11242017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127095 | D682, M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 11282017 | 11222017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11272017 | 2017-11-27T08:56:53+00:00 | 250124527328 | 000070869-01 | Charlotte | Barker | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11252017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127013 | N390 | Urinary tract infection, site not specified | ICD10 | 11282017 | 11252017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T10:42:11+00:00 | 255581687328 | 000078655-01 | Nathaniel | Stokes Jr | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11242017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127062 | R4020 | Unspecified coma | ICD10 | 11282017 | 11242017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11262017 | 2017-11-26T06:35:30+00:00 |  | 000071910-01 | Candace | Soto | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11282017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11252017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126003 | H532 | Diplopia | ICD10 | 11282017 | 11252017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11262017 | 2017-11-26T06:40:46+00:00 |  | 000089110-01 | Rose | Patterson | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11282017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11262017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126004 | I509 | Heart failure, unspecified | ICD10 | 11282017 | 11262017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11222017 | 2017-11-22T14:38:22+00:00 |  | 000095303-01 | James | Neff | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11212017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122071 | E162, R197 | Diarrhea, unspecified | ICD10 | 11282017 | 11212017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11272017 | 2017-11-27T09:34:47+00:00 | 250449567329 | 000033462-01 | HELEN | GOHRING | EMERGENCY SERVICES INC | 908214 | ROLAND-JAKE L | PAREDES | 1396714598 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11262017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127029 | R197 | Diarrhea, unspecified | ICD10 | 11282017 | 11262017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11242017 | 2017-11-24T09:00:04+00:00 |  | 000086144-01 | Mary | Topiah | KHN IP MED | 944000 | NIRANSHINY | RAHUNANTHAN | 1477813392 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11282017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 11232017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127083 | R0789, R531 | Weakness | ICD10 | 11282017 | 11232017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11222017 | 2017-11-22T15:19:50+00:00 |  | 000045148-01 | JANET | REES | COPC CENTRAL OHIO PRIMAR | 932738 | SRIKANTH | KESARI | 1932487337 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11222017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127002 | S7001XA | Contusion of right hip, initial encounter | ICD10 | 11282017 | 11222017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08282017 | 2017-08-28T12:54:34+00:00 |  | 000074491-01 | Sharon | Hughes | CASSANO COMMUNITY HEALTH | 904966 | CARLA M | MYERS | 1770581951 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 11282017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08272017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828117 | J189, J441, R7989, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 11282017 | 08272017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11212017 | 2017-11-21T19:47:51+00:00 |  | 000089222-01 | Daniel | Kaiser | MERCY HEALTH PHYSICIANS | 921187 | DANIEL A | TRAMUTA | 1902803612 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 11282017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11172017 | 11192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122005 | I200 | Unstable angina | ICD10 | 11282017 | 11172017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T10:13:03+00:00 | 250948067329 | 000009747-01 | SANDRA | ROSSIO | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11252017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127048 | R55 | Syncope and collapse | ICD10 | 11282017 | 11252017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11202017 | 2017-11-20T15:18:17+00:00 |  | 000107635-01 | Anita | Monte | SWEST INPATIENT PHYS LLC | 935461 | PARMINDER | MODGIL | 1528166816 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11282017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11192017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120112 | H5310 | Unspecified subjective visual disturbances | ICD10 | 11282017 | 11192017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11172017 | 2017-11-17T13:24:12+00:00 |  | 000116011-01 | HELEN | LAKATOS | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11162017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117067 | R220, R29810 | Facial weakness | ICD10 | 11282017 | 11162017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T15:58:20+00:00 |  | 000067133-01 | ROBIN | MILLER | INDU & RAJ SOIN MEDICAL CENTER | 919117 |  | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11102017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114092 | G939 | Disorder of brain, unspecified | ICD10 | 11282017 | 11102017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11242017 | 2017-11-24T10:17:35+00:00 |  | 000035597-01 | FRIEDA | PIERSON | KEVIN M REID DO INC | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11232017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127019 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 11282017 | 11232017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11232017 | 2017-11-23T10:58:44+00:00 |  | 000028933-01 | PATRICIA | DAVIS HYE | OHIOHEALTH PHYS GRP | 909054 | FATIMA I | CHAWDRY | 1790890010 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11222017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127005 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11282017 | 11222017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11272017 | 2017-11-27T12:39:01+00:00 | 263553977331 | 000031237-01 | JAY | RENSHAW | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11272017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127089 | J159 | Unspecified bacterial pneumonia | ICD10 | 11282017 | 11272017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T12:50:42+00:00 | 254522307330 | 000071409-01 | Franklin | Verduga | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11262017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127092 | R0602 | Shortness of breath | ICD10 | 11282017 | 11262017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T12:53:24+00:00 | 260617637330 | 000051882-01 | PHYLLIS | VINCENT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11262017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127093 | K5660 | Unspecified intestinal obstruction | ICD10 | 11282017 | 11262017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T10:25:06+00:00 | 251084637328 | 000005231-01 | BETTY | SIMMS | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11242017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127056 | R079 | Chest pain, unspecified | ICD10 | 11282017 | 11242017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11262017 | 2017-11-26T06:21:38+00:00 |  | 000003047-01 | FREDA | LINDSEY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11262017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126001 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 11282017 | 11262017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T14:35:28+00:00 | 251837267330 | 000044239-01 | ANNA | HARRIS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11262017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127114 | R0902 | Hypoxemia | ICD10 | 11282017 | 11262017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T08:08:10+00:00 |  | 000089222-01 | Daniel | Kaiser | THE JEWISH HOSPITAL | 916862 |  | THE JEWISH HOSPITAL | 1336478163 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 11282017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11242017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127123 | I200 | Unstable angina | ICD10 | 11282017 | 11242017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11282017 | 2017-11-28T09:55:24+00:00 | 267259087332 | 000013344-01 | NORMA | HEIMLICH | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11272017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128010 | M549 | Dorsalgia, unspecified | ICD10 | 11282017 | 11272017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11242017 | 2017-11-24T11:42:14+00:00 |  | 000077676-01 | Velvet | Beckelhimer | SOUND PHYSICIANS OF OHI0 | 948134 | DONNA R | ADAMS | 1154381994 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 11282017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11222017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127030 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 11282017 | 11222017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11252017 | 2017-11-25T17:01:35+00:00 |  | 000052774-01 | MARJORIE | HALL | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11252017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125012 | R0600 | Dyspnea, unspecified | ICD10 | 11282017 | 11252017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11272017 | 2017-11-27T14:42:58+00:00 | 252144747331 | 000104757-01 | James | Ott | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11282017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11272017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127118 | I4891 | Unspecified atrial fibrillation | ICD10 | 11282017 | 11272017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
