Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-13_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-13_OBS
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
| 11072017 | 2017-11-07T10:04:34+00:00 | 251756847310 | 000015176-01 | RALPH | HOFFMAN | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11062017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107034 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11132017 | 11062017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11092017 | 2017-11-09T08:27:29+00:00 | 250037287312 | 000033181-01 | DIANA | BOBO | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11082017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109018 | I160 | HYPERTENSIVE URGENCY | ICD10 | 11132017 | 11082017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11072017 | 2017-11-07T10:07:45+00:00 | 175263657310 | 000080711-01 | Lana | Mizer | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11062017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107035 | R51 | Headache | ICD10 | 11132017 | 11062017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11092017 | 2017-11-09T07:48:40+00:00 |  | 000075878-01 | Sondra | Daugherty | SOUND PHYSICIANS OF OHI0 | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11132017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11082017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109021 | D649, R079 | Chest pain, unspecified | ICD10 | 11132017 | 11082017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11082017 | 2017-11-08T09:54:21+00:00 | 253315157311 | 000024554-01 | KATHLEEN | EBERLE SMITH | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11072017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108026 | I4892, R079 | Chest pain, unspecified | ICD10 | 11132017 | 11072017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11082017 | 2017-11-08T10:13:41+00:00 | 254201377311 | 000041646-01 | BARBARA | RODEHAVER | EMERGENCY SERVICES INC | 931768 | RICHARD JOHN | BOWER | 1942401765 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11072017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108030 | R109 | Unspecified abdominal pain | ICD10 | 11132017 | 11072017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11082017 | 2017-11-08T10:19:22+00:00 | 253321627311 | 000040763-01 | MARCIA | SHORE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11072017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108032 | R296, S32402A | Unsp fracture of left acetabulum, init for clos fx | ICD10 | 11132017 | 11072017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11092017 | 2017-11-09T08:24:37+00:00 |  | 000026944-01 | WILSON | COX | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11132017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11082017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109027 | J189 | Pneumonia, unspecified organism | ICD10 | 11132017 | 11082017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11102017 | 2017-11-10T10:46:10+00:00 | 251178767313 | 000043108-01 | LARRY | TRIMMER | INTERNAL MED ASSOC INC | 902702 | GREGORY R | WISE | 1184605263 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11092017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110043 | G9340 | Encephalopathy, unspecified | ICD10 | 11132017 | 11092017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11072017 | 2017-11-07T13:16:29+00:00 |  | 000053414-01 | BARBARA | SIMERL | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11062017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107096 | J209, R748 | Abnormal levels of other serum enzymes | ICD10 | 11132017 | 11062017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11102017 | 2017-11-10T09:47:22+00:00 |  | 000033870-01 | W SHELDON | JACKSON | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11092017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110048 | N390 | Urinary tract infection, site not specified | ICD10 | 11132017 | 11092017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T09:55:40+00:00 | 255132597315 | 000106200-01 | Beverly | Abrams | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11112017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113007 | R079 | Chest pain, unspecified | ICD10 | 11132017 | 11112017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11072017 | 2017-11-07T13:20:35+00:00 |  | 000034981-01 | RICHARD | SMITH | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11062017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107099 | G9340, R4182 | Altered mental status, unspecified | ICD10 | 11132017 | 11062017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11092017 | 2017-11-09T11:46:33+00:00 |  | 000087540-01 | Lucille | Mitchell | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11132017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11082017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109062 | K5641 | Fecal impaction | ICD10 | 11132017 | 11082017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11102017 | 2017-11-10T11:33:59+00:00 |  | 000110520-01 | RONALD | JONES | MERCY HEALTH PHYSICIANS | 902874 | STEPHEN J | OEHLERS | 1609866490 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11092017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110055 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11132017 | 11092017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11072017 | 2017-11-07T13:25:29+00:00 |  | 000101367-01 | Marilou | Crawford | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11062017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107101 | I4891, R748 | Abnormal levels of other serum enzymes | ICD10 | 11132017 | 11062017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11092017 | 2017-11-09T12:39:45+00:00 |  | 000075475-01 | Joseph | Dillard | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 11132017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 11082017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109072 | R200 | Anesthesia of skin | ICD10 | 11132017 | 11082017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11072017 | 2017-11-07T13:36:23+00:00 |  | 000099346-01 | Glenna | Owens | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11062017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107104 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 11132017 | 11062017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11092017 | 2017-11-09T16:48:02+00:00 |  | 000077901-01 | Evelyn | Akers | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11092017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110034 | M6281 | Muscle weakness (generalized) | ICD10 | 11132017 | 11092017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11102017 | 2017-11-10T10:41:08+00:00 | 251067617313 | 000030358-01 | Joseph | Sullivan | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11092017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110041 | M6281, R112 | Nausea with vomiting, unspecified | ICD10 | 11132017 | 11092017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T11:25:50+00:00 | 256599797314 | 000103255-01 | Cynthia | Jacks | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11102017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113049 | R1010 | Upper abdominal pain, unspecified | ICD10 | 11132017 | 11102017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T11:27:40+00:00 |  | 000044945-01 | CAROL | EYERLY | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 11112017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113050 | G458 | Oth transient cerebral ischemic attacks and related synd | ICD10 | 11132017 | 11112017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11112017 | 2017-11-11T09:22:27+00:00 |  | 000062525-01 | Rose | Payne | SYNERGY CHIRO WLNESS CLI | 930100 | RYAN D | SMITH | 1922062678 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 11102017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113055 | R079 | Chest pain, unspecified | ICD10 | 11132017 | 11102017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11102017 | 2017-11-10T15:20:21+00:00 |  | 000084001-01 | Ruth | Wells | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 11132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11082017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113056 | R42 | Dizziness and giddiness | ICD10 | 11132017 | 11082017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11112017 | 2017-11-11T12:10:18+00:00 |  | 000059710-01 | KATHRYN | CRABTREE | MERCY HEALTH PHYSICIANS | 932656 | PRADEEP R | GUJJA | 1649465600 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11132017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 11092017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113091 | I509 | Heart failure, unspecified | ICD10 | 11132017 | 11092017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
