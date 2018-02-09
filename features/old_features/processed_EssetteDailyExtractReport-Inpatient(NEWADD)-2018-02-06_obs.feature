Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-06_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-06_OBS
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
| 01192018 | 2018-01-19T11:36:27+00:00 |  | 000115997-01 | Ronald | Potter | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01302018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119049 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 02062018 | 01302018 | 01312018 | 34800, 34802, 34803, 34804, 34805, 34825, 34832, 34845, 34848, 35081, 35103, 75952, 75953 | ABDOM ANEURYSM ENDOVAS RPR | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 01232018 | 2018-01-23T08:47:07+00:00 |  | 000020427-01 | LLOYD | BAKER | OHIOHEALTH PHYS GRP | 912793 | PIYUSH | GUPTA | 1275618803 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Observation | OBSV | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01222018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123027 | J189, R4182 | Altered mental status, unspecified | ICD10 | 02062018 | 01222018 | 02252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01292018 | 2018-01-29T16:10:35+00:00 |  | 000086113-01 | Lawrence | Holley Jr. | S DAYTON ACUTE CARE CNSL | 913547 | SVEN E | RAYMOND | 1609830876 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 02062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01262018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130008 | G459, R270, R4781 | Slurred speech | ICD10 | 02062018 | 01262018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02032018 | 2018-02-03T17:30:59+00:00 |  | 000028327-01 | NANCY | NOBLE | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02022018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205026 | J09X9, M6281 | Muscle weakness (generalized) | ICD10 | 02062018 | 02022018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10022017 | 2017-10-02T10:20:31+00:00 |  | 000106899-01 | Mary | Mcartor | HOSPITALIST MEDICINE PHY | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09302017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 171004132223.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002106 | R079 | Chest pain, unspecified | ICD10 | 02062018 | 09302017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01122018 | 2018-01-12T14:56:23+00:00 |  | 000086857-01 | Ray | Kimbler | ADENA MEDICAL GROUP LLC | 903781 | JAMES R | MANAZER | 1205860228 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01312018 | 02012018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112091 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 02062018 | 01312018 | 02012018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01292018 | 2018-01-29T13:01:17+00:00 |  | 000099899-01 | Lawrence | Poe | AINA MEDICAL INC | 939947 | OLAYINKA O | AINA | 1295706976 | ADAMS COUNTY HOSPITAL | 936460 | 0 | ADAMS COUNTY HOSPITAL | 0 | Observation | OBSV | Concurrent Review | CONC |  | ADAMS COUNTY HOSPITAL | 02062018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 01272018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130004 | G459, R4182 | Altered mental status, unspecified | ICD10 | 02062018 | 01272018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01302018 | 2018-01-30T13:28:18+00:00 |  | 000075943-01 | James | Spearman | BERGER ACUTE SRVS LLC | 920054 | TRENT J | TIMMONS | 1790957488 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01282018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130091 | E11621, L03818 | Cellulitis of other sites | ICD10 | 02062018 | 01282018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02012018 | 2018-02-01T14:45:27+00:00 |  | 000084711-01 | George | Merrill SR | MERCY HEALTH PHYSICIANS | 921166 | LESTER E | SUNA | 1871592576 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02062018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201055 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 02062018 | 02012018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02022018 | 2018-02-02T09:35:32+00:00 |  | 000032984-01 | LAWRENCE | FATHBRUCKNER | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202009 | A419, N1330, N135 | Crossing vessel and stricture of ureter w/o hydronephrosis | ICD10 | 02062018 | 02012018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02022018 | 2018-02-02T10:15:44+00:00 |  | 000028952-01 | REBECCA | BANNER | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202032 | K5669 | Other intestinal obstruction | ICD10 | 02062018 | 02012018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02042018 | 2018-02-04T11:43:09+00:00 |  | 000033474-01 | LLOYD | SHEW | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02032018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205031 | G9340, N179 | Acute kidney failure, unspecified | ICD10 | 02062018 | 02032018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02052018 | 2018-02-05T12:36:03+00:00 |  | 000109101-01 | RALPH | WITHERS | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02032018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206013 | R079 | Chest pain, unspecified | ICD10 | 02062018 | 02032018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01312018 | 2018-01-31T09:19:44+00:00 |  | 000109746-01 | John | Golden | GRANDVIEW HOSPITAL & SOU | 918449 | RACHEL M | MAST | 1952552812 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 02062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01302018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131043 | R2681, R29898 | Oth symptoms and signs involving the musculoskeletal system | ICD10 | 02062018 | 01302018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01312018 | 2018-01-31T13:13:39+00:00 |  | 000041888-01 | LARRY | STEINBROOK | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01302018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131076 | R001, R55 | Syncope and collapse | ICD10 | 02062018 | 01302018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01312018 | 2018-01-31T15:12:26+00:00 |  | 000112319-01 | Shirley | Williams | GOOD SAMARITAN HSP & HLT | 903375 | SHAMSUDDIN C | PRACHA | 1104872779 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | Observation | OBSV | Concurrent Review | CONC |  | GOOD SAMARITAN MEDICAL CENTER | 02062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01312018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131097 | R112, R42, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 02062018 | 01312018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02012018 | 2018-02-01T10:21:42+00:00 |  | 000118461-01 | Kathleen | Chambers | HOSPITALIST MEDICINE PHY | 943144 | PRANAV | WASTI | 1659634236 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01312018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201028 | M6281 | Muscle weakness (generalized) | ICD10 | 02062018 | 01312018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02012018 | 2018-02-01T10:21:42+00:00 |  | 000020930-01 | CORDELIA | PORTER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01312018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201030 | I639 | Cerebral infarction, unspecified | ICD10 | 02062018 | 01312018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02052018 | 2018-02-05T07:54:47+00:00 |  | 000102124-01 | Sharon | Beaty | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 02062018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02022018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205032 | E876, R55 | Syncope and collapse | ICD10 | 02062018 | 02022018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02042018 | 2018-02-04T14:20:41+00:00 |  | 000112229-01 | JEROME | MANSFIELD | APOGEE MED GRP OHIO INC | 923380 | W TRAVIS | LAWSON JR | 1134114044 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02022018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205045 | I82402, N280, R1032 | Left lower quadrant pain | ICD10 | 02062018 | 02022018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02052018 | 2018-02-05T08:53:00+00:00 |  | 000034376-01 | WANDA | JUSTICE | CMH REGIONAL HLTH SYSTEM | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02032018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205069 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02062018 | 02032018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02052018 | 2018-02-05T08:59:13+00:00 |  | 000114460-01 | Ruth | Chenoweth | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02042018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205077 | R079 | Chest pain, unspecified | ICD10 | 02062018 | 02042018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T09:35:41+00:00 |  | 000011372-01 | ILAH | CHAPPELEAR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02022018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205084 | I4891 | Unspecified atrial fibrillation | ICD10 | 02062018 | 02022018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02052018 | 2018-02-05T09:35:41+00:00 |  | 000014896-01 | BETTY | LAPENNA | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02042018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205090 | S5290XK | Unsp fracture of unsp forearm, subs for clos fx w nonunion | ICD10 | 02062018 | 02042018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
