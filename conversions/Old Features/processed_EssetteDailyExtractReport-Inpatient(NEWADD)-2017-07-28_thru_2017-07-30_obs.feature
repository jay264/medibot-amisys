Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-28_thru_2017-07-30_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-28_thru_2017-07-30_OBS
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
| 06202017 | 2017-06-20T09:02:57+00:00 |  | 000116378-01 | Roger | Sigman | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07282017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06192017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170626112584.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620082 | R911 | Solitary pulmonary nodule | ICD10 | 07282017 | 06192017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06262017 | 2017-06-26T15:50:36+00:00 |  | 000083826-01 | Edith | Arledge | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06242017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627028 | R0602 | Shortness of breath | ICD10 | 07282017 | 06242017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07062017 | 2017-07-06T09:52:09+00:00 |  | 000111187-01 | Orlan | Moore | GENESIS MEDICAL GRP LLC | 916160 | MANEESH | LALL | 1770760761 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07282017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706069 | E162 | Hypoglycemia, unspecified | ICD10 | 07282017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T13:46:46+00:00 |  | 000095174-01 | Lois | Post | HOSP SVC MED GRP OF MARY | 931850 | ARIEL | BIGGS | 1316239916 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Observation | OBSV | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07162017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718049 | R0602 | Shortness of breath | ICD10 | 07282017 | 07162017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T15:31:04+00:00 |  | 000095505-01 | Delores | Pierce | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07142017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718083 | K5792, R109 | Unspecified abdominal pain | ICD10 | 07282017 | 07142017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07182017 | 2017-07-18T16:50:18+00:00 |  | 000086627-01 | Gary | Herman | S DAYTON ACUTE CARE CNSL | 942346 | HYUNGKOO | KIM | 1518288422 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 07282017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07172017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718129 | I10 | Essential (primary) hypertension | ICD10 | 07282017 | 07172017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07192017 | 2017-07-19T09:12:54+00:00 | 250006557199 | 000069092-01 | CHARLOTTE | AKERS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07182017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719007 | T814XXA | Infection following a procedure, initial encounter | ICD10 | 07282017 | 07182017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07192017 | 2017-07-19T14:11:22+00:00 |  | 000032580-01 | GERALD | HALL | S DAYTON ACUTE CARE CNSL | 923833 | MUHAMMAD | AKBAR | 1295062099 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07182017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719072 | I639 | Cerebral infarction, unspecified | ICD10 | 07282017 | 07182017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07212017 | 2017-07-21T09:08:38+00:00 |  | 000088853-01 | Glina | Stitzel | FAIRFIELD HSPISTS INC | 925424 | CHALANA U | GUNAWARDENA | 1023276821 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 07282017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07202017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721018 | E162 | Hypoglycemia, unspecified | ICD10 | 07282017 | 07202017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07202017 | 2017-07-20T14:52:46+00:00 |  | 000113186-01 | Donald | Lane | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 07282017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07202017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721022 | R0602 | Shortness of breath | ICD10 | 07282017 | 07202017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07212017 | 2017-07-21T09:03:44+00:00 |  | 000031102-01 | RAYMOND | FISHER | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07192017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721058 | J189 | Pneumonia, unspecified organism | ICD10 | 07282017 | 07192017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07242017 | 2017-07-24T10:20:32+00:00 | 259199587204 | 000049628-01 | KAREN | SPRADLIN | EMERGENCY SERVICES INC | 908221 | MAURY | WITKOFF | 1073591657 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07232017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724045 | T819XXA | Unspecified complication of procedure, initial encounter | ICD10 | 07282017 | 07232017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07212017 | 2017-07-21T15:05:38+00:00 |  | 000104951-01 | Mary | Culbertson | HMP OF OHIO PC | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07212017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724072 | J9610 | Chronic respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 07282017 | 07212017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T08:55:58+00:00 |  | 000097637-01 | Charles | Parker | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07232017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724104 | R4182 | Altered mental status, unspecified | ICD10 | 07282017 | 07232017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07242017 | 2017-07-24T08:56:54+00:00 |  | 000097505-01 | Robert | Haslett | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07232017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724106 | R079 | Chest pain, unspecified | ICD10 | 07282017 | 07232017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07242017 | 2017-07-24T09:56:33+00:00 |  | 000095474-01 | Cynthia | Meyer | HMP OF OHIO PC | 946140 | MALATHY | VARATHARAJAH | 1669470050 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07282017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07212017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725026 | K529, N390, R1032 | Left lower quadrant pain | ICD10 | 07282017 | 07212017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07242017 | 2017-07-24T14:16:51+00:00 |  | 000086877-01 | Charles | Kirkbride | MARIETTA HLTH CARE PHYS | 915210 | CYNTHIA M | GAERKE | 1538184437 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07282017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07232017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725060 | E871, I2699, R0902, R109 | Unspecified abdominal pain | ICD10 | 07282017 | 07232017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07252017 | 2017-07-25T11:14:41+00:00 |  | 000034755-01 | ELDRED | GRAVES | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07242017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725101 | I10 | Essential (primary) hypertension | ICD10 | 07282017 | 07242017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07252017 | 2017-07-25T11:12:28+00:00 |  | 000034981-01 | RICHARD | SMITH | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07242017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725102 | R0602 | Shortness of breath | ICD10 | 07282017 | 07242017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07252017 | 2017-07-25T15:12:28+00:00 |  | 000082594-01 | Mary | Slovak | MUSKINGUM VALLEY HLTH CT | 923156 | GARY J | CARVER | 1982781563 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 07282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07242017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726003 | K5660 | Unspecified intestinal obstruction | ICD10 | 07282017 | 07242017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07262017 | 2017-07-26T11:34:41+00:00 |  | 000117367-01 | Kirk | Cummins | MEDICINE INPATIENT GROUP | 925155 | FADI | BAILONY | 1003965385 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 07282017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07252017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726051 | M6281, R5382 | Chronic fatigue, unspecified | ICD10 | 07282017 | 07252017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07262017 | 2017-07-26T13:14:33+00:00 |  | 000113101-01 | VIRGINIA | FISHER | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07282017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07212017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726053 | R109 | Unspecified abdominal pain | ICD10 | 07282017 | 07212017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07272017 | 2017-07-27T09:54:18+00:00 | 250582007207 | 000027312-01 | MARILYN | JOHNSTON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07262017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727017 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07282017 | 07262017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07272017 | 2017-07-27T09:40:37+00:00 |  | 000096037-01 | Elizabeth | Roberts | MIAMI VALLEY HSPISTS GRP | 949361 | PRIYANAINA R | KASULA | 1659649770 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 07282017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07272017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727025 | M549 | Dorsalgia, unspecified | ICD10 | 07282017 | 07272017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07272017 | 2017-07-27T10:41:13+00:00 | 250382937208 | 000115353-01 | Jerold | Frazier | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727033 | R079 | Chest pain, unspecified | ICD10 | 07282017 | 07272017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07272017 | 2017-07-27T11:05:22+00:00 |  | 000075204-01 | Barbara | Hahn | MUSKINGUM VALLEY HLTH CT | 923156 | GARY J | CARVER | 1982781563 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 07282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07252017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727039 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 07282017 | 07252017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07272017 | 2017-07-27T13:19:45+00:00 |  | 000063884-01 | SANDRA | UHRICK | ADENA MEDICAL GROUP LLC | 901483 | JAMES E | FLEMING | 1952326159 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07262017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727054 | M7138 | Other bursal cyst, other site | ICD10 | 07282017 | 07262017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07282017 | 2017-07-28T09:33:05+00:00 | 250476967209 | 000097505-01 | Robert | Haslett | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728007 | R609 | Edema, unspecified | ICD10 | 07282017 | 07272017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07282017 | 2017-07-28T10:09:01+00:00 | 250630057208 | 000043285-01 | TOM | KNEISLEY | HMP OF OHIO PC | 942960 | TAMARA J | SCOTT | 1871852863 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728017 | R42 | Dizziness and giddiness | ICD10 | 07282017 | 07272017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07282017 | 2017-07-28T10:14:11+00:00 | 259576477208 | 000020705-01 | ANN | LORENZ | COPC CENTRAL OHIO PRIMAR | 935499 | ANIMESH | SHARMA | 1063455939 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728019 | N179 | Acute kidney failure, unspecified | ICD10 | 07282017 | 07272017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
