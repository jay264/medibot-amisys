Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-11_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-11_OBS
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
| 05032017 | 2017-05-03T15:44:55+00:00 |  | 000094509-01 | Evelyn | Parr | ALLIANCE PHYSICIANS INC | 931507 | RICHARD J | GORMAN JR | 1235475476 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07062017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503071 | M5440 | Lumbago with sciatica, unspecified side | ICD10 | 07112017 | 07062017 | 07082017 | 22558, 22853, 22845, 22612, 22614, 22842 | SEGMENTAL FIXATION (EX. LUQUE TECH.) SEE CPT FOR OTHER EXAMPLES... | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 06192017 | 2017-06-19T11:55:15+00:00 |  | 000091896-01 | Fred | Thomas | S DAYTON ACUTE CARE CNSL | 932487 | SRAVAN K | METLA | 1851713879 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06172017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619126 | I5021 | Acute systolic (congestive) heart failure | ICD10 | 07112017 | 06172017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06292017 | 2017-06-29T15:22:14+00:00 |  | 000034431-01 | WILLIAM | GARRISON | OSU INTERNAL MED LLC | 946409 | TARA M | BAUTISTA | 1205219375 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629084 | I10 | Essential (primary) hypertension | ICD10 | 07112017 | 06282017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T15:53:54+00:00 |  | 000104492-01 | Christopher | Armstrong | J B WINTERS DO LLC | 921534 | JENNIFER B | WINTERS | 1235102591 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 07112017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629094 | R030 | Elevated blood-pressure reading, w/o diagnosis of htn | ICD10 | 07112017 | 06282017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07012017 | 2017-07-01T19:34:27+00:00 |  | 000094602-01 | Linda | Collison | COMMUNITY HSPIST LLC | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06302017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703026 | K859 | Acute pancreatitis, unspecified | ICD10 | 07112017 | 06302017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07062017 | 2017-07-06T10:01:54+00:00 |  | 000011694-01 | JUANITA | SIZEMORE | GARY L GILLEN MD | 909982 |  | GARY L GILLEN MD | 1962601369 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07052017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706027 | G459, R4701 | Aphasia | ICD10 | 07112017 | 07052017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07062017 | 2017-07-06T09:12:44+00:00 |  | 000078792-01 | Hazel | Morehouse | GENESIS MEDICAL GRP LLC | 928371 | ROY J | PETERS | 1063701035 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706035 | I509 | Heart failure, unspecified | ICD10 | 07112017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07062017 | 2017-07-06T09:12:27+00:00 |  | 000111726-01 | RICKY | HILL | CAMDEN CLARK PHYS CORPOR | 931289 | JUSTIN M | VARGHESE | 1003136367 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07112017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07052017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706038 | I639 | Cerebral infarction, unspecified | ICD10 | 07112017 | 07052017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07062017 | 2017-07-06T09:12:10+00:00 |  | 000020762-01 | FLORENCE | HARDESTY | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706040 | R55 | Syncope and collapse | ICD10 | 07112017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07062017 | 2017-07-06T09:12:23+00:00 |  | 000046382-01 | Gloria | Dillon | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706042 | R079 | Chest pain, unspecified | ICD10 | 07112017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07062017 | 2017-07-06T09:11:57+00:00 |  | 000077526-01 | Audrey | Redman | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706047 | R42 | Dizziness and giddiness | ICD10 | 07112017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07062017 | 2017-07-06T14:46:02+00:00 |  | 000083747-01 | Donald | Slaughter | HMP OF OHIO PC | 947711 | PATEL | BHUMIT | 1114269222 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07112017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07062017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706093 | K529, K5790 | Dvrtclos of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 07112017 | 07062017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07062017 | 2017-07-06T14:40:14+00:00 |  | 000052816-01 | SHIRLEY | LEETH | APOGEE MED GRP OHIO INC | 943020 | SRAVAN K R | BEZWADA | 1669728895 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07062017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706101 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 07112017 | 07042017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07072017 | 2017-07-07T10:39:59+00:00 |  | 000011115-01 | BEULAH | SMITH | OHIOHEALTH PHYS GRP | 910477 | MARK D | WELLS | 1215926597 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07062017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707036 | Z01818 | Encounter for other preprocedural examination | ICD10 | 07112017 | 07062017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07082017 | 2017-07-08T19:20:26+00:00 |  | 000011912-01 | CLARENCE | RAVER | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07082017 | 07092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710005 | I509 | Heart failure, unspecified | ICD10 | 07112017 | 07072017 | 07092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07102017 | 2017-07-10T09:25:10+00:00 | 259863037188 | 000062972-01 | MARIANNE | BECKELHEIMER | HMP OF OHIO PC | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07082017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710016 | R55 | Syncope and collapse | ICD10 | 07112017 | 07082017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T10:06:19+00:00 | 254679727189 | 000049848-01 | BEVERLY | BOBO | HMP OF OHIO PC | 914611 | SOWMYA | VARRE | 1871753673 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07092017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710030 | R0789 | Other chest pain | ICD10 | 07112017 | 07092017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07102017 | 2017-07-10T10:31:33+00:00 | 260483127190 | 000074555-01 | Irma | Stewart | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Observation | Inpatient | 07082017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710040 | N390 | Urinary tract infection, site not specified | ICD10 | 07112017 | 07082017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T10:48:08+00:00 | 264560737189 | 000106212-01 | Bobby | Wilson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07092017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710050 | R079 | Chest pain, unspecified | ICD10 | 07112017 | 07092017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07102017 | 2017-07-10T11:12:30+00:00 | 261438907188 | 000033073-01 | MARGARET | FATHBRUCKNER | HMP OF OHIO PC | 913492 | MOHAMED H | HAMZA | 1720060940 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07072017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710056 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 07112017 | 07072017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T11:17:55+00:00 | 261638407190 | 000034143-01 | RUTH | FRAME | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07102017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710057 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 07112017 | 07102017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07102017 | 2017-07-10T10:06:04+00:00 |  | 000087611-01 | Janice | Jackson | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07072017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710097 | E875, R202 | Paresthesia of skin | ICD10 | 07112017 | 07072017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07102017 | 2017-07-10T11:45:24+00:00 |  | 000105677-01 | Bobbie | Whitley | WETHERINGTON, ANTHONY P | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Observation | OBSV | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 07112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07092017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710109 | I4891 | Unspecified atrial fibrillation | ICD10 | 07112017 | 07092017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07102017 | 2017-07-10T13:46:15+00:00 |  | 000108880-01 | Amin | Hedayat | TRAUMA INC | 911344 | STEVEN A | SANTANELLO | 1316936263 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07072017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711011 | S0181XA | Laceration w/o foreign body of oth part of head, init encntr | ICD10 | 07112017 | 07072017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07112017 | 2017-07-11T13:28:21+00:00 |  | 000030473-01 | MARY JO | STRATTON | OSU INTERNAL MED LLC | 932883 | CRYSTAL M | KELLY | 1679899066 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Observation | OBSV | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07072017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711046 | C801, E441, K869, L02419, L03119, R0689 | Other abnormalities of breathing | ICD10 | 07112017 | 07072017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07102017 | 2017-07-10T16:07:07+00:00 |  | 000044488-01 | JAMES | WILLIAMS | PRIMARYONE HEALTH | 936683 | GARY L | GILLEN | 1851397236 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07042017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711051 | I509 | Heart failure, unspecified | ICD10 | 07112017 | 07042017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T16:29:49+00:00 |  | 000084896-01 | Jacob | Grob | UNIVERSITY OF CINCINNATI | 927891 | JAY A | JOHANNIGMAN | 1548257405 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 944170 | 1689618423 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 1689618423 | Observation | OBSV | Concurrent Review | CONC |  | UNIVERSITY OF CINCINNATI MEDICAL CEN | 07112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 07072017 | 07092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711058 | V877XXA | Person injured in collision betw oth mtr veh (traffic), init | ICD10 | 07112017 | 07072017 | 07092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07112017 | 2017-07-11T14:59:55+00:00 |  | 000044488-01 | JAMES | WILLIAMS | PRIMARYONE HEALTH | 936683 | GARY L | GILLEN | 1851397236 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07102017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711069 | S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 07112017 | 07102017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07112017 | 2017-07-11T14:48:19+00:00 |  | 000063516-01 | JAMES | GREGG | HMP OF OHIO PC | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07102017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711070 | R000 | Tachycardia, unspecified | ICD10 | 07112017 | 07102017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07082017 | 2017-07-08T19:05:47+00:00 |  | 000051720-01 | CONNIE | MOORE | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07072017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711096 | I4891 | Unspecified atrial fibrillation | ICD10 | 07112017 | 07072017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
