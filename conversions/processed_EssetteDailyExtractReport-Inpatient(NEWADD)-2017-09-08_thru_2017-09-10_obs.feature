Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-08_thru_2017-09-10_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-08_thru_2017-09-10_OBS
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
| 09072017 | 2017-09-07T16:08:21+00:00 |  | 000116753-01 | Betty | Rogers | CAMDEN CLARK PHYS CORPOR | 932032 | JAFAR Z | SALMASSI | 1700826492 | CAMDEN CLARK MEM HSP | 936876 | 1508160268 | CAMDEN CLARK MEMORIAL HOSPITAL | 1508160268 | Observation | OBSV | Concurrent Review | CONC |  | CAMDEN CLARK MEMORIAL HOSPITAL | 09082017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908052 | R079 | Chest pain, unspecified | ICD10 | 09082017 | 09012017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09072017 | 2017-09-07T15:12:08+00:00 |  | 000078671-01 | Douglas | Swain | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09062017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908033 | R079 | Chest pain, unspecified | ICD10 | 09082017 | 09062017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08082017 | 2017-08-08T10:01:03+00:00 |  | 000083423-01 | Ruth | Wiegand | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08032017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808035 | K625, K55059 | ACUTE ISCHEMIA OF INTESTINE, PART AND EXTENT UNSPECIFIED | ICD10 | 09082017 | 08032017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09072017 | 2017-09-07T08:41:10+00:00 |  | 000053498-01 | PEGGY | RILEY | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09052017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907092 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 09082017 | 09052017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09082017 | 2017-09-08T11:06:43+00:00 |  | 000115915-01 | VALLA | ODELL | NATIONAL CHURCH RESIDENC | 927572 | SEAN D | STILTNER | 1821156472 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09032017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908081 | R6889 | Other general symptoms and signs | ICD10 | 09082017 | 09032017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09062017 | 2017-09-06T08:33:13+00:00 |  | 000045553-01 | Ronald | Young | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09052017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907062 | I5023, J90, R0609, R0902 | Hypoxemia | ICD10 | 09082017 | 09052017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T11:39:45+00:00 |  | 000079743-01 | James | Dorsey | STONY BROOK INTERNISTS U | 939704 | WILLIAM E | LAWSON | 1013932250 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 09042017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906076 | D649 | Anemia, unspecified | ICD10 | 09082017 | 09042017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09062017 | 2017-09-06T14:19:03+00:00 |  | 000097442-01 | Lawrence | Hohensheldt | KUMAR, DEEPAK | 903927 | DEEPAK | KUMAR | 1154324747 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09052017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907081 | K649 | Unspecified hemorrhoids | ICD10 | 09082017 | 09052017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T10:44:14+00:00 | 259386977245 | 000003883-01 | ROBERT | KENNEDY JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09032017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905036 | R627 | Adult failure to thrive | ICD10 | 09082017 | 09032017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08302017 | 2017-08-30T15:46:14+00:00 |  | 000078899-01 | Jerry | Robbins | SOUND PHYSICIANS OF OHI0 | 948370 | SAIYID-NAUFAL | T ZAIDI | 1790122307 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09082017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831018 | I482, R5383, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 09082017 | 08292017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T10:15:29+00:00 | 170158287246 | 000104479-01 | Mary | Dudley | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09032017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905020 | D649, R0602 | Shortness of breath | ICD10 | 09082017 | 09032017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09082017 | 2017-09-08T12:44:49+00:00 |  | 000088776-01 | Edith | Kohn | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Medical Criteria Met | Inpatient | 09072017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908057 | R6889 | Other general symptoms and signs | ICD10 | 09082017 | 09072017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T09:13:11+00:00 |  | 000054735-01 | TROY | FICKEL JR | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09042017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906018 | N390 | Urinary tract infection, site not specified | ICD10 | 09082017 | 09042017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09062017 | 2017-09-06T11:39:05+00:00 |  | 000051030-01 | LEROY | BOWMAN | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09052017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907075 | A419, J189, N179, N183, N390 | Urinary tract infection, site not specified | ICD10 | 09082017 | 09052017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09062017 | 2017-09-06T09:27:22+00:00 |  | 000079081-01 | Charles | Roof | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09082017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 09052017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907063 | N132 | Hydronephrosis with renal and ureteral calculous obstruction | ICD10 | 09082017 | 09052017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09072017 | 2017-09-07T09:28:18+00:00 |  | 000112311-01 | Howard | Winnett | SOUND PHYSICIANS OF OHI0 | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 09082017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 09062017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907094 | E860, R197 | Diarrhea, unspecified | ICD10 | 09082017 | 09062017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T14:47:51+00:00 |  | 000043860-01 | CHARLES | SCHOENHOLTZ | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09052017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906101 | R4182 | Altered mental status, unspecified | ICD10 | 09082017 | 09052017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09082017 | 2017-09-08T11:06:43+00:00 |  | 000073732-01 | Thomas | Hettema Jr | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09062017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908080 | R6889 | Other general symptoms and signs | ICD10 | 09082017 | 09062017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09032017 | 2017-09-03T13:59:37+00:00 |  | 000119214-01 | Ruth | Gillfillan | ACCESS MEDICAL GROUP LLC | 928828 | REIGNIER M | NOHAY | 1568620862 | MARION GENERAL HOSPITAL | 925023 | 1386642155 | MARION GENERAL HOSPITAL | 1215935366 | Observation | OBSV | Concurrent Review | CONC |  | MARION GENERAL HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09022017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905073 | N12 | Tubulo-interstitial nephritis, not spcf as acute or chronic | ICD10 | 09082017 | 09022017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09062017 | 2017-09-06T16:03:43+00:00 |  | 000112359-01 | CHARLES | ISON | MERCY HEALTH PHYSICIANS | 904113 | FAIQ S | AKHTER | 1801896303 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09052017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907029 | I739 | Peripheral vascular disease, unspecified | ICD10 | 09082017 | 09052017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09062017 | 2017-09-06T09:59:46+00:00 | 256634047248 | 000038514-01 | JUDITH | CLOKEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09052017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906029 | N201 | Calculus of ureter | ICD10 | 09082017 | 09052017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09062017 | 2017-09-06T11:34:42+00:00 |  | 000089778-01 | Sheryl | Loudermilk | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09042017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907073 | R0600 | Dyspnea, unspecified | ICD10 | 09082017 | 09042017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09082017 | 2017-09-08T09:34:47+00:00 | 252562427250 | 000041142-01 | BEVERLY | YOUNKIN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09072017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908024 | T82198S | Mech compl of other cardiac electronic device, sequela | ICD10 | 09082017 | 09072017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T08:51:08+00:00 |  | 000109777-01 | Daisy | Thompson | SOUND PHYSICIANS OF OHI0 | 948370 | SAIYID-NAUFAL | T ZAIDI | 1790122307 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09082017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 09012017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905115 | R109 | Unspecified abdominal pain | ICD10 | 09082017 | 09012017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T08:36:24+00:00 |  | 000096924-01 | EMERY | BATES | SCHEIDLER HLTH ASSOC LLC | 921477 | PETER A | SCHEIDLER | 1538142310 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 09082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 09042017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905110 | N179, W19XXXA | Unspecified fall, initial encounter | ICD10 | 09082017 | 09042017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T07:51:02+00:00 |  | 000084594-01 | Dona | Frazier | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905098 | I5023, R0902, R109, R739 | Hyperglycemia, unspecified | ICD10 | 09082017 | 09012017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09042017 | 2017-09-04T05:32:02+00:00 |  | 000016601-01 | RAYMOND | STACK | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905081 | D72829, J40, R509 | Fever, unspecified | ICD10 | 09082017 | 09012017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09012017 | 2017-09-01T12:05:49+00:00 |  | 000044221-01 | WILLIAN | KURTZ | HMP OF FRANKLIN CTY LTD | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08312017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901042 | J189, J441, R079, R222 | Localized swelling, mass and lump, trunk | ICD10 | 09082017 | 08312017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
