Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-16_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-16_OBS
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
	And in the "Certification" page I use the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_requested" image
	And in the "authorized_services" page I enter the first element from "<care_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_requested" image and subtract one
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_approved" image and subtract one
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_approved" image
	And in the "authorized_services" page I enter the first element from "<care_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_requested" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_requested" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_authorized" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_authorized" image
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
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
		| requested_date  | military_date             | other_reference_#    |	member_id   | member_first_name |	member_last_name | practice_name               | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name      | requesting_provider_npi_# |	facility_name                 | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	      | servicing_provider_npi_# |	sub_class  | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason                 |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type         | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code                    | service_description                                      | service_type |	qty_appr      |	qty_reqd      |	determination                          |	auth_approval_days | type   |	type_code  | notes                                                                                                                                                                                                                                   | care_date  | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 03292017 | 2017-03-29T15:43:51+00:00 |  | 000104189-01 | Ida | Glock | APOGEE MED GRP OHIO INC | 942140 | ALFRED R | QUEZADA | 1871918243 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03282017 | 03312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170330030 | L03213 | PERIORBITAL CELLULITIS | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | 79 year old presented to the ED after seeing her PCP  with increases facial cellulitis not responding to outpatient atb's. The mbr fell on the sidewalk hitting her face. she developed redness to her face she denies pain or loss of vision. CT of the head revels cellulitis  right infrorbital SQ tissue. IV atb's started. | 03282017, 03292017, 03302017, 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017, 04072017, 04082017, 04092017, 04102017, 04112017, 04122017, 04132017, 04142017, 04152017, 04162017, 04172017, 04182017, 04192017, 04202017, 04212017, 04222017, 04232017, 04242017, 04252017, 04262017, 04272017, 04282017, 04292017, 04302017 | Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , ,  | 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 |
| 04052017 | 2017-04-05T10:42:18+00:00 |  | 000077500-01 | Jill | Lucke | SOUND INPATIENT PHYS OF | 913926 | TERESA | FINKE | 1124224423 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 04142017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04052017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170407079 | J189 | Pneumonia, unspecified organism | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04052017, 04062017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 04082017 | 2017-04-08T08:14:39+00:00 |  | 000048829-01 | ROGER | CARMAN | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 04142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04072017 | 04082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170411038 | I4891 | Unspecified atrial fibrillation | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04072017, 04082017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 04102017 | 2017-04-10T08:26:59+00:00 |  | 000090589-01 | Orville | Radabaugh | HMP OF OHIO PC | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04072017 | 04122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170411045 | A419 | Sepsis, unspecified organism | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | 57 year old male presented to the ED with productive cough. Was seen in the ER on 4/4 d/c  with predinsone.  Sat 88% on arrival   95% with 2 liters   dx with exacerbation of COPD secondary to pneumonia | 04072017, 04082017, 04092017, 04102017, 04112017, 04122017 | Observation, Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 04102017 | 2017-04-10T09:00:34+00:00 |  | 000082827-01 | James | Coe | KNOX COMMUNITY HOSP GRP | 907435 | HYDI F | LAIDLAW-SMITH | 1063401438 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04092017 | 04102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170411047 | K8001 | Calculus of gallbladder w acute cholecystitis w obstruction | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | Observation level of service per facility. | 04092017, 04102017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 04082017 | 2017-04-08T16:52:53+00:00 |  | 000094671-01 | Deborah | Armentrout | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04142017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 04082017 | 04102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170411102 | M6281 | Muscle weakness (generalized) | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with weakness and HA. Discontinued her MS medication 2 months ago on her own. Dx of MS flare up.  Tx with IV steroids. | 04082017, 04092017, 04102017, 04112017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 3, 3, 3, 3 |
| 04112017 | 2017-04-11T15:43:49+00:00 |  | 000053038-01 | MARY | JACKSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04102017 | 04132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170411117 | K625 | Hemorrhage of anus and rectum | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04102017, 04112017, 04122017, 04132017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 04102017 | 2017-04-10T15:03:02+00:00 |  | 000010016-01 | SARAH | HILL | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04092017 | 04092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170412030 | R001, R55 | Syncope and collapse | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | Letter of determination faxed 4/13/17 not delivered. OBS letter resent. | 04092017, 04102017 | Observation, Observation | Observation, Observation | Approved,  | 1, 1 |
| 04122017 | 2017-04-12T15:07:57+00:00 |  | 000034934-01 | NORMA | SPROUSE | COPC CENTRAL OHIO PRIMAR | 911535 | RAVI | BELLALA | 1649483801 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04112017 | 04132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170412080 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04112017, 04122017, 04132017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 04122017 | 2017-04-12T09:21:53+00:00 |  | 000090308-01 | Carolyn | Trout | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 04142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04112017 | 04122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170413042 | R079 | Chest pain, unspecified | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04112017, 04122017 | Observation, Observation | Observation, Observation | ,  | 2, 2 |
| 04132017 | 2017-04-13T14:28:56+00:00 |  | 000107628-01 | Russell | Ogan | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04142017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 04122017 | 04142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170413063 | R531 | Weakness | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04122017, 04132017, 04142017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 04132017 | 2017-04-13T15:12:02+00:00 |  | 000011321-01 | BARBARA | EDWARDS | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04122017 | 04132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170413069 | I472 | Ventricular tachycardia | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 04122017, 04132017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 04132017 | 2017-04-13T15:55:13+00:00 |  | 000048664-01 | BING | TOM | FAHRIG, CHARLES M | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04122017 | 04132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170413074 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04122017, 04132017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 04132017 | 2017-04-13T16:09:50+00:00 |  | 000072225-01 | EDWARD | TONEY | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04122017 | 04132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170413081 | I471 | Supraventricular tachycardia | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04122017, 04132017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
