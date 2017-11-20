Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-16_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-16_OBS
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
| 11142017 | 2017-11-14T10:55:31+00:00 | 263610387317 | 000092670-01 | Caitlin | Hysell | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114048 | K625 | Hemorrhage of anus and rectum | ICD10 | 11162017 | 11132017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11142017 | 2017-11-14T09:29:11+00:00 | 254167047317 | 000051158-01 | PALESTINE | MOORE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114018 | K7460, R609 | Edema, unspecified | ICD10 | 11162017 | 11132017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11152017 | 2017-11-15T09:49:17+00:00 | 260566037318 | 000062444-01 | DALE | HETTINGER | DIZON, VICTOR V | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11142017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115019 | S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 11162017 | 11142017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T10:28:26+00:00 |  | 000078225-01 | Midori | Clark | MARIETTA HLTH CARE PHYS | 932956 | GOYAL | AMANDEEP | 1710273248 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 11162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11132017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114051 | K529, N390, Z789 | Other specified health status | ICD10 | 11162017 | 11132017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T09:49:33+00:00 | 251167407318 | 000006506-01 | Martha | Terry | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11142017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114035 | E871, W19XXXA | Unspecified fall, initial encounter | ICD10 | 11162017 | 11142017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T16:11:07+00:00 |  | 000106070-01 | Danny | Brooks | OHIOHEALTH PHYS GRP | 932197 | MICHELLE Y | KINCAID | 1396943601 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11112017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115055 | S0101XA | Laceration without foreign body of scalp, initial encounter | ICD10 | 11162017 | 11112017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11112017 | 2017-11-11T06:58:05+00:00 |  | 000115195-01 | JOANNE | LAUER | MERCY HEALTH PHYSICIANS | 920971 | SURESH | NAYAK | 1730184946 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11162017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11102017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113002 | T8130XA | Disruption of wound, unspecified, initial encounter | ICD10 | 11162017 | 11102017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11152017 | 2017-11-15T08:32:10+00:00 |  | 000115532-01 | Harley | Coen | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11142017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115064 | I959 | Hypotension, unspecified | ICD10 | 11162017 | 11142017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T08:57:19+00:00 |  | 000046174-01 | PAUL | BUSSEY | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11122017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113115 | R079, R202 | Paresthesia of skin | ICD10 | 11162017 | 11122017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11152017 | 2017-11-15T09:41:03+00:00 |  | 000117653-01 | Raymond | Willison | MED ASSOCS OF CAMBRIDGE | 922079 | DOUGLAS | RUSH | 1467457846 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 11162017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11142017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115071 | I10, R079, R55 | Syncope and collapse | ICD10 | 11162017 | 11142017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11162017 | 2017-11-16T10:35:50+00:00 |  | 000113711-01 | Betty | Wojtseck | KNOX COMMUNITY HSP PHYS | 931881 | MICHAEL D | HEUMAN | 1457349680 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 11162017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11102017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116060 | K37 | Unspecified appendicitis | ICD10 | 11162017 | 11102017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11132017 | 2017-11-13T09:41:03+00:00 |  | 000096699-01 | Donna | Davis | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11162017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11102017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113117 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 11162017 | 11102017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11152017 | 2017-11-15T12:03:15+00:00 |  | 000056390-01 | GLEN | JONES | GARY L GILLEN MD | 909982 |  | GARY L GILLEN MD | 1962601369 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11142017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115084 | I10 | Essential (primary) hypertension | ICD10 | 11162017 | 11142017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T14:38:58+00:00 |  | 000011513-01 | PAULINE | LEFEBURE | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11132017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115008 | E10621, L03039, N186 | End stage renal disease | ICD10 | 11162017 | 11132017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T08:24:34+00:00 | 255641477317 | 000075316-01 | Carol | Dunn | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11132017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114010 | I2510, R079 | Chest pain, unspecified | ICD10 | 11162017 | 11132017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11152017 | 2017-11-15T12:57:27+00:00 |  | 000099599-01 | Joan | Childers | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11162017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116005 | E876, L0390 | Cellulitis, unspecified | ICD10 | 11162017 | 11132017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11142017 | 2017-11-14T13:18:35+00:00 |  | 000113901-01 | Christina | Moss | SOUND PHYSICIANS OF OHI0 | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115032 | H4901 | Third [oculomotor] nerve palsy, right eye | ICD10 | 11162017 | 11132017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11162017 | 2017-11-16T14:08:12+00:00 |  | 000051999-01 | RONALD | GRAHAM | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11162017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11142017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116094 | R6889 | Other general symptoms and signs | ICD10 | 11162017 | 11142017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T10:02:46+00:00 |  | 000032322-01 | RUBY | ECHARD | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11122017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115005 | R112 | Nausea with vomiting, unspecified | ICD10 | 11162017 | 11122017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11112017 | 2017-11-11T17:52:27+00:00 |  | 000078760-01 | Jerry | Daniels | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11102017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113094 | M549 | Dorsalgia, unspecified | ICD10 | 11162017 | 11102017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10202017 | 2017-10-20T08:24:34+00:00 |  | 000081141-01 | Lucinda | Sharb | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10192017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020021 | R109 | Unspecified abdominal pain | ICD10 | 11162017 | 10192017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11142017 | 2017-11-14T13:29:36+00:00 |  | 000062299-01 | Ronnie | Hartman | MIAMI VALLEY HSPISTS GRP | 925015 | TITILAYO A | OLUWABUSI | 1912293077 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115033 | K659 | Peritonitis, unspecified | ICD10 | 11162017 | 11132017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
