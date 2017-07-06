Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-03_thru_2017-0704_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-03_thru_2017-0704_OBS
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
| 06272017 | 2017-06-27T14:57:19+00:00 |  | 000090260-01 | Rose | Lawson | KEVIN M REID DO INC | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06262017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627095 | D649, R339 | Retention of urine, unspecified | ICD10 | 07032017 | 06262017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06282017 | 2017-06-28T09:12:16+00:00 | 251823037178 | 000063687-01 | JAMES | HANDLEY | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06282017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628008 | R079 | Chest pain, unspecified | ICD10 | 07032017 | 06282017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06282017 | 2017-06-28T10:19:44+00:00 | 262238497178 | 000091380-01 | John | Heston | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06272017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628024 | R55 | Syncope and collapse | ICD10 | 07032017 | 06272017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06282017 | 2017-06-28T08:15:45+00:00 |  | 000049503-01 | CAROLE | FIFE | LICKING MEM INPATIENT ME | 919278 | FOLARIN K | SOGBETUN | 1356536882 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06272017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628037 | N390 | Urinary tract infection, site not specified | ICD10 | 07032017 | 06272017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06282017 | 2017-06-28T10:59:24+00:00 |  | 000098026-01 | Gary | Lustgarten | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07032017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 06272017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628040 | E876, R252 | Cramp and spasm | ICD10 | 07032017 | 06272017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06282017 | 2017-06-28T10:42:06+00:00 |  | 000065896-01 | BRUCE | TRUDE | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06282017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628045 | M6281 | Muscle weakness (generalized) | ICD10 | 07032017 | 06282017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06282017 | 2017-06-28T10:03:25+00:00 |  | 000099733-01 | Jody | Devoy | OB GYN OF SEORMC | 921886 | JOSEPH | BINKIEWICZ | 1891775029 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07032017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628060 | I82890 | Acute embolism and thrombosis of other specified veins | ICD10 | 07032017 | 06282017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T08:29:18+00:00 | 265748237179 | 000048320-01 | EDGAR | DAY JR | HMP OF OHIO PC | 914611 | SOWMYA | VARRE | 1871753673 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06282017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629005 | I10 | Essential (primary) hypertension | ICD10 | 07032017 | 06282017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06292017 | 2017-06-29T09:19:43+00:00 | 250691977179 | 000018994-01 | ANDREA | LONGWELL | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06282017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629013 | R0602 | Shortness of breath | ICD10 | 07032017 | 06282017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06292017 | 2017-06-29T09:29:12+00:00 | 252197007179 | 000087233-01 | Juanita | Parsley | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06292017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629015 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 07032017 | 06292017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06302017 | 2017-06-30T08:59:29+00:00 | 255930227180 | 000026386-01 | ESTELLE | BRISTOW | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06292017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630009 | R079 | Chest pain, unspecified | ICD10 | 07032017 | 06292017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06302017 | 2017-06-30T09:06:14+00:00 |  | 000106878-01 | Sabrina | Sexton | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07032017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 06292017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630017 | R079 | Chest pain, unspecified | ICD10 | 07032017 | 06292017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06302017 | 2017-06-30T09:52:05+00:00 | 251962167180 | 000085663-01 | Joann | Lawson | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06292017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630018 | R001 | Bradycardia, unspecified | ICD10 | 07032017 | 06292017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06302017 | 2017-06-30T10:28:22+00:00 | 025617881-7180 | 000054929-01 | CHARLES | LOOMIS | MOUNT CARMEL HLTH PRVDRS | 935942 | BOGDAN A | TOPLAK | 1518945971 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07032017 | Approved | Flexible Choice PPO | EMR | Observation | Inpatient | 06302017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630028 | R609 | Edema, unspecified | ICD10 | 07032017 | 06302017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06302017 | 2017-06-30T10:36:24+00:00 | 263464967180 | 000030331-01 | Betty | Ugland | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07032017 | Approved | Flexible Choice PPO | Reports | Observation | Inpatient | 06292017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630031 | I739 | Peripheral vascular disease, unspecified | ICD10 | 07032017 | 06292017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06302017 | 2017-06-30T15:05:42+00:00 | 251677787181 | 000045413-01 | LOIS | FORSTER | COPC CENTRAL OHIO PRIMAR | 911536 | ROBERT J | ZSOLDOS | 1841416179 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06302017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630053 | R079 | Chest pain, unspecified | ICD10 | 07032017 | 06302017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06302017 | 2017-06-30T15:09:04+00:00 | 250382207181 | 000030167-01 | CHARLOTTE | FREIZINGER | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 06302017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630055 | J189 | Pneumonia, unspecified organism | ICD10 | 07032017 | 06302017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06302017 | 2017-06-30T15:15:11+00:00 | 250932317181 | 000035180-01 | DELBERT | ROBINSON | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06302017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630059 | I509 | Heart failure, unspecified | ICD10 | 07032017 | 06302017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06302017 | 2017-06-30T15:20:41+00:00 | 251265777181 | 000073576-01 | Kathleen | Waller | COPC CENTRAL OHIO PRIMAR | 911536 | ROBERT J | ZSOLDOS | 1841416179 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06302017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630061 | N390, R0789 | Other chest pain | ICD10 | 07032017 | 06302017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07032017 | 2017-07-03T10:45:00+00:00 | 250767877182 | 000039819-01 | BETTY | MULLINS | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07012017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703048 | N132 | Hydronephrosis with renal and ureteral calculous obstruction | ICD10 | 07032017 | 07012017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T09:36:34+00:00 |  | 000063393-01 | JOLEEN | KELLEY | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07012017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703052 | R4182 | Altered mental status, unspecified | ICD10 | 07032017 | 07012017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T10:49:59+00:00 | 251834537183 | 000027993-01 | MELVIN | HERB | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06302017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703053 | I10 | Essential (primary) hypertension | ICD10 | 07032017 | 06302017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T10:52:40+00:00 | 254402307182 | 000076067-01 | Helen | Roberts | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07012017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703057 | N390 | Urinary tract infection, site not specified | ICD10 | 07032017 | 07012017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T07:44:57+00:00 |  | 000095243-01 | Barbara | Levy | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07032017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07012017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703070 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 07032017 | 07012017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07032017 | 2017-07-03T12:34:02+00:00 | 025449102-7182 | 000007558-01 | ANNA | BUSH | R G VARGO DO INC | 934983 | RONALD G | VARGO | 1902829526 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 07012017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703087 | R609 | Edema, unspecified | ICD10 | 07032017 | 07012017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06302017 | 2017-06-30T13:27:27+00:00 | 025250791-7182 | 000060107-01 | MARJORIE | WOLFE | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 06302017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703095 | T1490 | Injury, unspecified | ICD10 | 07032017 | 06302017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07032017 | 2017-07-03T09:46:19+00:00 |  | 000096472-01 | KENNETH | DEAVERS | GENESIS MEDICAL GRP LLC | 924967 | EUCHARIA C | AKUSOBA-DAVIS | 1053545269 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07032017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Inpatient | 07022017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703102 | R079 | Chest pain, unspecified | ICD10 | 07032017 | 07022017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T17:27:41+00:00 | 025068672-7181 | 000043216-01 | ARTHUR | LENZO | MOUNT CARMEL HLTH SYS | 937061 | JAMES A | BARNES | 1235177007 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 06302017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703133 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 07032017 | 06302017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
