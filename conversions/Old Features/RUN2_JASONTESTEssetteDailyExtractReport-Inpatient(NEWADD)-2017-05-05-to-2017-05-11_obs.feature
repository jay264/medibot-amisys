Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-05-to-2017-05-11_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-05-to-2017-05-11_OBS
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
  And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image

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
| 04132017 | 2017-04-13T08:35:05+00:00 |  | 000099792-01 | KENNETH | JACKSON | BANDED KILLIFISH INPATIE | 946686 | IHUNANYA C | MBATA | 1740556406 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 05112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05112017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170418096395.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414012 | J449, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05112017 | 04122017 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04142017 | 2017-04-14T15:50:09+00:00 |  | 000112928-01 | Arthur | Carle | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04142017 | 04142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418018 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05052017 | 04142017 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182017 | 2017-04-18T09:18:58+00:00 |  | 000083023-01 | Christine | Clark | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04172017 | 04192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419057 | R55 | Syncope and collapse | ICD10 | 05112017 | 04172017 | 04192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04192017 | 2017-04-19T12:59:54+00:00 |  | 000044600-01 | DOROTHY | WOOD | CLINTON MEMORIAL HOSPITAL | 917905 |  | CLINTON MEMORIAL HOSPITAL | 1063713659 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 05052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04182017 | 04202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170425098229.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420028 | D649 | Anemia, unspecified | ICD10 | 05052017 | 04182017 | 04202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04212017 | 2017-04-21T13:46:47+00:00 |  | 000089362-01 | Glenna | Perry | OHIOHEALTH PHYS GRP | 920553 | CHRIS S | KARAS | 1174781587 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Pre-Service | PRE |  | GRANT MEDICAL CENTER | 05052017 | Denied | MediGold Southeast OH Essential Care | Fax | Services Available In-Network | Inpatient | 05052017 | 05062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170425083 | G912 | (Idiopathic) normal pressure hydrocephalus | ICD10 | 05052017 |  |  | 62223 | SHUNT;VENTRICILO-PERITONEAL,-PLEURAL, OTHER TERMINUS | CPT | 0 | 1 | Denied | 0 | CPT | C4 |  |  | No child records to display. |  |
| 04262017 | 2017-04-26T08:01:44+00:00 |  | 000075849-01 | Richard | Sharp | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 05082017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05082017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426052 | H53122 | Transient visual loss, left eye | ICD10 | 05082017 | 04252017 | 04272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022017 | 2017-05-02T15:37:00+00:00 |  | 000083739-01 | Betty | Baxter | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04282017 | 05032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503036 | R296 | Repeated falls | ICD10 | 05052017 | 04282016 | 05032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05052017 | 2017-05-05T10:35:36+00:00 |  | 000063513-01 | CECELIA | CISCO | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05042017 | 05092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505022 | K210 | Gastro-esophageal reflux disease with esophagitis | ICD10 | 05102017 | 05042017 | 05092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05052017 | 2017-05-05T10:37:20+00:00 |  | 000030614-01 | MARY | THOMPSON | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05042017 | 05052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505023 | R079 | Chest pain, unspecified | ICD10 | 05082017 | 05042017 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05092017 | 2017-05-09T14:07:07+00:00 |  | 000028781-01 | AUDREY | ORR | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05102017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05062017 | 05082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510046 | R6889 | Other general symptoms and signs | ICD10 | 05102017 | 05062017 | 05082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
