Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-15_thru_2017-12-17_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-15_thru_2017-12-17_OBS
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
| 12132017 | 2017-12-13T10:20:29+00:00 | 252504917339 | 000094631-01 | Benjamin | Wile Sr | MOUNT CARMEL HLTH PRVDRS | 949510 | MARK W | BYRGE | 1053307389 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12122017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213056 | Z01818 | Encounter for other preprocedural examination | ICD10 | 12152017 | 12122017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12132017 | 2017-12-13T11:58:52+00:00 | 025668144-7346 | 000032021-01 | LOUIE | HONAKER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 12122017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213079 | R29898 | Oth symptoms and signs involving the musculoskeletal system | ICD10 | 12152017 | 12122017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12132017 | 2017-12-13T10:12:42+00:00 | 265303497346 | 000060158-01 | DORIS | BOYER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12152017 | Approved | MediGold Medical Only | Reports | Observation | Inpatient | 12122017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213051 | M545 | Low back pain | ICD10 | 12152017 | 12122017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T13:34:31+00:00 |  | 000107344-01 | Joseph | Riley | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11262017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129049 | E079, J449, R55 | Syncope and collapse | ICD10 | 12152017 | 11262017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12062017 | 2017-12-06T09:38:16+00:00 |  | 000116926-01 | Billy | Lemaster | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12012017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206039 | R112 | Nausea with vomiting, unspecified | ICD10 | 12152017 | 12012017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12072017 | 2017-12-07T12:34:56+00:00 |  | 000044626-01 | KATHERINE | RINEHART | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12062017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207055 | J069, N390, R531 | Weakness | ICD10 | 12152017 | 12062017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T09:53:15+00:00 |  | 000081974-01 | John | Coppel | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12082017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211123 | R0602 | Shortness of breath | ICD10 | 12152017 | 12082017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12142017 | 2017-12-14T09:32:15+00:00 |  | 000049150-01 | SUSAN | BECKLEY | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214023 | R079 | Chest pain, unspecified | ICD10 | 12152017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12142017 | 2017-12-14T09:06:15+00:00 |  | 000081407-01 | Cynthia | Perry | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12152017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214022 | N136 | Pyonephrosis | ICD10 | 12152017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12132017 | 2017-12-13T15:23:28+00:00 |  | 000081491-01 | Margaret | Adams | HOSPITALIST MEDICINE PHY | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213102 | Y632 | Overdose of radiation given during therapy | ICD10 | 12152017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12062017 | 2017-12-06T11:55:59+00:00 |  | 000093096-01 | Colleen | Rice | OHIOHEALTH PHYS GRP | 919351 | SABREEN O | ABU OBAID | 1700026556 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12152017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12052017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206053 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 12152017 | 12052017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12132017 | 2017-12-13T07:37:04+00:00 |  | 000085012-01 | Ronald | Belus | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Observation | OBSV | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 12152017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12122017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213023 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 12152017 | 12122017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12132017 | 2017-12-13T12:21:58+00:00 |  | 000087007-01 | Janice | Knisley | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | SPRINGFIELD REGIONAL CANCER CENTER | 905599 | 1477546984 | SPRINGFIELD REGIONAL CANCER CENTER | 1477546984 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL CANCER CENTER | 12152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12122017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213082 | M25552, R531, R5383, R748 | Abnormal levels of other serum enzymes | ICD10 | 12152017 | 12122017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10022017 | 2017-10-02T10:26:40+00:00 |  | 000089104-01 | Harold | Bailey | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09282017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002113 | J189, J9610 | Chronic respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 12152017 | 09282017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10022017 | 2017-10-02T10:28:13+00:00 |  | 000019463-01 | ROSEMARY | HUNTER | HOSP SVC MED GRP OF MARY | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09282017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002116 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 12152017 | 09282017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12112017 | 2017-12-11T08:03:04+00:00 |  | 000104789-01 | ARTHUR | SHERRER | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 12152017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12102017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211039 | H6121, R55, R748 | Abnormal levels of other serum enzymes | ICD10 | 12152017 | 12102017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12142017 | 2017-12-14T07:40:24+00:00 |  | 000081408-01 | Betty | Mick | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214007 | R531 | Weakness | ICD10 | 12152017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12122017 | 2017-12-12T14:39:37+00:00 |  | 000096172-01 | Helen | Charles | CLERMONT INTERNISTS ASSO | 924704 | SUSHEELA | RAJAN | 1144273673 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 12152017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 12112017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213006 | J441, J9601 | Acute respiratory failure with hypoxia | ICD10 | 12152017 | 12112017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12132017 | 2017-12-13T10:25:16+00:00 | 255893697347 | 000018949-01 | Keith | Zaynor | CEN OH PRIMARY CARE SPEC | 935053 | IAN J | WILSON | 1760598239 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12152017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 12132017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213059 | R509 | Fever, unspecified | ICD10 | 12152017 | 12132017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12142017 | 2017-12-14T09:39:03+00:00 |  | 000103790-01 | PATRICIA | BRANNOCK | WETHERINGTON, ANTHONY P | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Observation | OBSV | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 12152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12132017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214025 | N390, R310 | Gross hematuria | ICD10 | 12152017 | 12132017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12122017 | 2017-12-12T11:18:35+00:00 |  | 000075205-01 | Fred | Hahn | PRIME HEALTHCARE FOUNDAT | 950913 |  | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 12152017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12122017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213011 | R6889 | Other general symptoms and signs | ICD10 | 12152017 | 12122017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11062017 | 2017-11-06T08:45:51+00:00 |  | 000102835-01 | MARK | LOHMANN | SOUND INPATIENT PHYS OF | 913926 | TERESA | FINKE | 1124224423 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 12152017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11052017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106093 | M79602, M7989, R791 | Abnormal coagulation profile | ICD10 | 12152017 | 11052017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12132017 | 2017-12-13T15:17:31+00:00 | 250909407347 | 000104911-01 | PATRICIA | MURPHY | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12132017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213099 | J90, R188 | Other ascites | ICD10 | 12152017 | 12132017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12122017 | 2017-12-12T09:05:40+00:00 |  | 000079919-01 | William | Day | MEDICINE INPATIENT GROUP | 924498 | RAJARATNAM | PATHMARAJAH | 1891882346 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 12152017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 12112017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212051 | R42 | Dizziness and giddiness | ICD10 | 12152017 | 12112017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12142017 | 2017-12-14T07:44:18+00:00 |  | 000023700-01 | CLARENCE | MCLAUGHLIN | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214009 | J9601, R0902 | Hypoxemia | ICD10 | 12152017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12122017 | 2017-12-12T12:15:47+00:00 |  | 000106904-01 | Joseph | Johnson | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12122017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213081 | J9621, J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 12152017 | 12122017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12152017 | 2017-12-15T10:30:08+00:00 | 256255687348 | 000077603-01 | Gerald | Turrill | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12152017 | Approved | MediGold Medical Only | Reports | Observation | Inpatient | 12142017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215046 | R079 | Chest pain, unspecified | ICD10 | 12152017 | 12142017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
