Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-22_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-22_OBS
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
| 08162017 | 2017-08-16T15:31:30+00:00 |  | 000096053-01 | Nancy | Newman | GENESIS MEDICAL GRP LLC | 911275 | IAN J | ALEXANDER | 1033184478 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08222017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08172017 | 08182017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816080 | S42002A | Fracture of unsp part of left clavicle, init for clos fx | ICD10 | 08222017 | 08172017 | 08182017 | 23515 | FX CLAVICLE,OPEN REDUCTION | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08212017 | 2017-08-21T09:44:15+00:00 |  | 000087090-01 | Judy | Masters | GENESIS MEDICAL GRP LLC | 929175 | YORAM | MOYAL | 1194730580 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 08192017 | 08202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822015 | R079 | Chest pain, unspecified | ICD10 | 08222017 | 08192017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T12:31:26+00:00 |  | 000092732-01 | Jody | Fulks | SOUND KENWOOD HSPISTS OF | 941846 | SIDDHARTH K | MUSHRIF | 1447455159 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08222017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 08192017 | 08202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822060 | A047, R1030, R110 | Nausea | ICD10 | 08222017 | 08192017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T11:17:13+00:00 |  | 000104389-01 | HOBERT | PARKER | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08182017 | 08202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821077 | I4891, R079 | Chest pain, unspecified | ICD10 | 08222017 | 08182017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08222017 | 2017-08-22T08:04:40+00:00 |  | 000118157-01 | JACCQULYN | GRIFFIN | COPC CENTRAL OHIO PRIMAR | 905425 | SVITLANA | HAYNES | 1457307837 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08222017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08202017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822002 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08222017 | 08202017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08182017 | 2017-08-18T15:00:54+00:00 |  | 000096053-01 | Nancy | Newman | GENESIS MEDICAL GRP LLC | 911275 | IAN J | ALEXANDER | 1033184478 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08222017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08172017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821069 | S42002A | Fracture of unsp part of left clavicle, init for clos fx | ICD10 | 08222017 | 08172017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T10:40:47+00:00 | 164480917233 | 000086691-01 | Mindie | Lanham | SOUND PHYSICIANS OF OHI0 | 923291 | BASHAR | ALAWAD | 1396024121 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08202017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821054 | K5900 | Constipation, unspecified | ICD10 | 08222017 | 08202017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08152017 | 2017-08-15T08:28:10+00:00 |  | 000049333-01 | ROBERTA | MILLISER | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815092 | R079 | Chest pain, unspecified | ICD10 | 08222017 | 08142017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08182017 | 2017-08-18T09:18:56+00:00 |  | 000084562-01 | Michael | Campbell | MID STATE PHYSICIANS LLP | 922998 | IFIOK A | IDEM | 1427288174 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 08172017 | 08192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170820013 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08222017 | 08172017 | 08192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08222017 | 2017-08-22T10:27:41+00:00 | 025029359-7233 | 000010387-01 | LEONARD | DELONG | COPC CENTRAL OHIO PRIMAR | 935014 | MICHAEL D | WALUZAK | 1053394601 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 08212017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822044 | I959 | Hypotension, unspecified | ICD10 | 08222017 | 08212017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08162017 | 2017-08-16T14:51:58+00:00 |  | 000112390-01 | Geneva | Matlock | COPC CENTRAL OHIO PRIMAR | 933619 | KIMBERLY M | MORTON | 1558656819 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08152017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817003 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 08222017 | 08152017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08212017 | 2017-08-21T10:23:07+00:00 | 251287397232 | 000013600-01 | CLYDE | YOUNG | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08202017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821040 | R0602 | Shortness of breath | ICD10 | 08222017 | 08202017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08212017 | 2017-08-21T14:40:16+00:00 |  | 000101507-01 | Melanie | Peters | S DAYTON ACUTE CARE CNSL | 912896 | RICHARD J | SAXEN | 1790847226 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08222017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 08182017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822074 | M869 | Osteomyelitis, unspecified | ICD10 | 08222017 | 08182017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08212017 | 2017-08-21T08:28:05+00:00 |  | 000052998-01 | N | LEATHERWOOD | SOUND PHYSICIANS OF OHI0 | 925622 | CAROLYN M | WHATLEY | 1487750022 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 08202017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821067 | R079 | Chest pain, unspecified | ICD10 | 08222017 | 08202017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T16:19:06+00:00 | 252721147229 | 000012603-01 | LILLIAN | POCHEDLEY | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08172017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821123 | G629, R531 | Weakness | ICD10 | 08222017 | 08172017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08022017 | 2017-08-02T11:06:36+00:00 |  | 000086620-01 | Larry | Shock | ALLIANCE PHYSICIANS INC | 910964 | SALEEM | AHMAD | 1013973429 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802077 | I442 | Atrioventricular block, complete | ICD10 | 08222017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08152017 | 2017-08-15T08:26:15+00:00 |  | 000066050-01 | KAY | FRAZIER | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815088 | R55 | Syncope and collapse | ICD10 | 08222017 | 08142017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08212017 | 2017-08-21T09:44:26+00:00 |  | 000084599-01 | Darla | Garrett | MID STATE PHYSICIANS LLP | 922998 | IFIOK A | IDEM | 1427288174 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08222017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08192017 | 08202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822018 | R55 | Syncope and collapse | ICD10 | 08222017 | 08192017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T09:43:45+00:00 | 250911627232 | 000062101-01 | SHARYN | PARSLEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08202017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821021 | N179 | Acute kidney failure, unspecified | ICD10 | 08222017 | 08202017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T08:39:50+00:00 |  | 000083035-01 | Marguerite | Felix | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08222017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08192017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821066 | J189 | Pneumonia, unspecified organism | ICD10 | 08222017 | 08192017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08212017 | 2017-08-21T13:43:05+00:00 |  | 000097188-01 | Marie | Marquardt | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08212017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821098 | R55 | Syncope and collapse | ICD10 | 08222017 | 08212017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T09:44:39+00:00 |  | 000084602-01 | Robert | Garrett | GENESIS MEDICAL GRP LLC | 929175 | YORAM | MOYAL | 1194730580 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08222017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08192017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821045 | R0602 | Shortness of breath | ICD10 | 08222017 | 08192017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08172017 | 2017-08-17T10:57:54+00:00 |  | 000092459-01 | Virginia | Thomas | KNOX COMMUNITY HOSPITAL | 912867 | LAUREN E | MCDOWELL JACOB | 1801836424 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 08222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08162017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817050 | R6889 | Other general symptoms and signs | ICD10 | 08222017 | 08162017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07142017 | 2017-07-14T12:12:16+00:00 |  | 000079216-01 | Mary | Blackschleger | MONTGOMERY FAMILY PRCT | 921384 | GINGER S | KUBALA | 1952441891 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Observation | OBSV | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 08222017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07132017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714061 | I10 | Essential (primary) hypertension | ICD10 | 08222017 | 07132017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08172017 | 2017-08-17T09:05:01+00:00 |  | 000079267-01 | Carolyn | Hinkle | MID STATE PHYSICIANS LLP | 922998 | IFIOK A | IDEM | 1427288174 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08222017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08162017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817039 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 08222017 | 08162017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08152017 | 2017-08-15T08:30:08+00:00 |  | 000094929-01 | Ronald | Cheadle | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08142017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815094 | R079 | Chest pain, unspecified | ICD10 | 08222017 | 08142017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08132017 | 2017-08-13T14:40:06+00:00 |  | 000069899-01 | Russell | Karlen III | OHIOHEALTH CORPORATION | 905908 |  | DUBLIN METHODIST HOSPITAL | 1801937008 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Observation | OBSV | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08122017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814076 | R45851 | Suicidal ideations | ICD10 | 08222017 | 08122017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08182017 | 2017-08-18T09:42:32+00:00 | 252342557229 | 000005522-01 | VERA | STREITENBERGER | SOUND PHYSICIANS OF OHI0 | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08172017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818011 | I4891 | Unspecified atrial fibrillation | ICD10 | 08222017 | 08172017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08212017 | 2017-08-21T10:15:59+00:00 | 251203997231 | 000030469-01 | IONA | WEST | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08202017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821036 | M6281 | Muscle weakness (generalized) | ICD10 | 08222017 | 08202017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
