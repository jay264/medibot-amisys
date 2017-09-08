Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-06_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-06_OBS
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
| 08282017 | 2017-08-28T13:18:00+00:00 |  | 000105743-01 | ROGER | MUSSER | PRIME HEALTHCARE FOUNDAT | 950913 |  | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 09062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08272017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828125 | R001, R55 | Syncope and collapse | ICD10 | 09062017 | 08272017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07272017 | 2017-07-27T15:29:56+00:00 |  | 000083235-01 | Jerry | Widener | ALLIANCE PHYSICIANS INC | 939986 | CHRISTOPHER R | SCHNEIDER | 1588689475 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07262017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727073 | K9419 | Other complications of enterostomy | ICD10 | 09062017 | 07262017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08042017 | 2017-08-04T11:44:39+00:00 |  | 000086731-01 | Shirley | Chang | WRIGHT STATE PHYSICIANS | 900959 | ROXANE | WEIGHALL | 1497711493 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08042017 | 08052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804057 | C50912 | Malignant neoplasm of unspecified site of left female breast | ICD10 | 09062017 | 08042017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T15:50:24+00:00 |  | 000116011-01 | HELEN | LAKATOS | S DAYTON ACUTE CARE CNSL | 932325 | SIVAPRASAD | NALLURI | 1558619668 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809078 | N390 | Urinary tract infection, site not specified | ICD10 | 09062017 | 08082017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08102017 | 2017-08-10T15:07:22+00:00 |  | 000023361-01 | DORIS | PAGE | ADENA MEDICAL GROUP LLC | 910639 | SUNG H | YI | 1265642961 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Observation | OBSV | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08092017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810070 | N390 | Urinary tract infection, site not specified | ICD10 | 09062017 | 08092017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T10:34:38+00:00 | 173067957246 | 000099302-01 | Susan | Mercer | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09032017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905028 | S5292XS | Unspecified fracture of left forearm, sequela | ICD10 | 09062017 | 09032017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T11:51:29+00:00 | 251250107246 | 000094175-01 | James | Walker | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09032017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905060 | N390, R419 | Unsp symptoms and signs w cognitive functions and awareness | ICD10 | 09062017 | 09032017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08312017 | 2017-08-31T08:15:52+00:00 |  | 000110927-01 | William | Lyall | SOUND PHYSICIANS OF OHI0 | 948370 | SAIYID-NAUFAL | T ZAIDI | 1790122307 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09062017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831031 | R112, R42 | Dizziness and giddiness | ICD10 | 09062017 | 08302017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T12:50:32+00:00 |  | 000083423-01 | Ruth | Wiegand | MOUNT CARMEL HLTH SYS | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07302017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170803120073.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801050 | K52839 | MICROSCOPIC COLITIS, UNSPECIFIED | ICD10 | 09062017 | 07302017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T09:46:32+00:00 |  | 000078283-01 | Linda | Carpenter | MED STAFF SERVICES LLC | 907315 | FARID | BOUNIF | 1053470518 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 09062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 09012017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906048 | R079 | Chest pain, unspecified | ICD10 | 09062017 | 09012017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T09:49:27+00:00 |  | 000096412-01 | LORETTA | STAHOVEC | MED STAFF SERVICES LLC | 907315 | FARID | BOUNIF | 1053470518 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 09062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 09012017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906049 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 09062017 | 09012017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08312017 | 2017-08-31T07:12:07+00:00 |  | 000011912-01 | CLARENCE | RAVER | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831035 | I509 | Heart failure, unspecified | ICD10 | 09062017 | 08302017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02102017 | 2017-02-10T16:17:13+00:00 |  | 000076079-01 | Janet | Wedmore | MERCY HEALTH PHYSICIANS | 921735 | PAUL | FAVORITO | 1306845151 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 09062017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02222017 | 02232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170522104607.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213002 | M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 09062017 | 02222017 | 02232017 | 23472, 23430 | RUPTURED LONG HEAD BICEPS | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 09052017 | 2017-09-05T14:38:53+00:00 | 256679847248 | 000113400-01 | Charles | Crabtree | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09052017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905083 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09062017 | 09052017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08302017 | 2017-08-30T08:45:05+00:00 |  | 000073554-01 | Judy | VanAtta | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08292017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830051 | R112 | Nausea with vomiting, unspecified | ICD10 | 09062017 | 08292017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T09:22:49+00:00 |  | 000071941-01 | Lowell | Adams | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906043 | R079 | Chest pain, unspecified | ICD10 | 09062017 | 09012017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T10:57:54+00:00 |  | 000116923-01 | Marvin | Smith | GENESIS MEDICAL GRP LLC | 924967 | EUCHARIA C | AKUSOBA-DAVIS | 1053545269 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906069 | R079 | Chest pain, unspecified | ICD10 | 09062017 | 09012017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08222017 | 2017-08-22T10:48:51+00:00 |  | 000039303-01 | NORMA | CRIST | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08212017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822065 | R079 | Chest pain, unspecified | ICD10 | 09062017 | 08212017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08252017 | 2017-08-25T10:18:30+00:00 |  | 000107846-01 | Lorraine | Green | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825036 | L03818 | Cellulitis of other sites | ICD10 | 09062017 | 08242017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08252017 | 2017-08-25T10:15:30+00:00 |  | 000027237-01 | MARILYN | LYONS | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08242017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825043 | R627 | Adult failure to thrive | ICD10 | 09062017 | 08242017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08252017 | 2017-08-25T10:14:32+00:00 |  | 000040533-01 | ELEANOR | KAYE | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825044 | R55 | Syncope and collapse | ICD10 | 09062017 | 08242017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08252017 | 2017-08-25T10:13:35+00:00 |  | 000050211-01 | RICHARD | MATHIAS | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825045 | R0602 | Shortness of breath | ICD10 | 09062017 | 08242017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T11:52:14+00:00 |  | 000074242-01 | Dorothy | Gross | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09022017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906077 | D649 | Anemia, unspecified | ICD10 | 09062017 | 09022017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T08:15:02+00:00 |  | 000074313-01 | ALICE | HENDERLY | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829039 | R55 | Syncope and collapse | ICD10 | 09062017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08292017 | 2017-08-29T08:14:05+00:00 |  | 000044070-01 | PAUL | WRIGHT | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08282017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829042 | J189 | Pneumonia, unspecified organism | ICD10 | 09062017 | 08282017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08252017 | 2017-08-25T12:05:00+00:00 |  | 000087449-01 | Robert | Ritchie | SELBY GENERAL HOSPITAL | 921969 | DEVAKI S | SIVA | 1982823290 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 09062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825041 | D649, M7981, T148 | Other injury of unspecified body region | ICD10 | 09062017 | 08242017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T10:54:32+00:00 |  | 000013111-01 | ALICE | HARSH | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09042017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905041 | R109 | Unspecified abdominal pain | ICD10 | 09062017 | 09042017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08252017 | 2017-08-25T09:04:53+00:00 |  | 000115142-01 | Gary | Frazier | ALLIANCE PHYSICIANS INC | 910766 | JACOB C | YANNETTA III | 1992873046 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 09062017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825022 | I70213 | Athscl native arteries of extrm w intrmt claud, bi legs | ICD10 | 09062017 | 08242017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T11:11:50+00:00 |  | 000081035-01 | Darrell | Lyon | HOSPITALIST ASSOC LLC | 907558 | GEOFFREY M | POLEN | 1942268107 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 09032017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906073 | I482 | Chronic atrial fibrillation | ICD10 | 09062017 | 09032017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09062017 | 2017-09-06T09:20:01+00:00 | 252264437249 | 000062091-01 | MITZIE | RAWLINS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09052017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906010 | R079 | Chest pain, unspecified | ICD10 | 09062017 | 09052017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T10:41:08+00:00 |  | 000039721-01 | REBECCA | POSTON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09042017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905031 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 09062017 | 09042017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T10:40:33+00:00 | 253971237247 | 000016018-01 | ELOISE | JORDAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09042017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905032 | R296 | Repeated falls | ICD10 | 09062017 | 09042017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08312017 | 2017-08-31T10:42:39+00:00 |  | 000002821-01 | JAMES | PRICE | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08302017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831049 | G9340, N390 | Urinary tract infection, site not specified | ICD10 | 09062017 | 08302017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
