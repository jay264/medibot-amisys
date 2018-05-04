Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-02_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-02_OBS
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
| 04242018 | 2018-04-24T13:48:02+00:00 |  | 000079031-01 | Mary | Ingram | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04202018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424079 | I4891, I509 | Heart failure, unspecified | ICD10 | 05022018 | 04202018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 04262018 | 2018-04-26T13:57:01+00:00 |  | 000062430-01 | Sheila | Bailey | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 04252018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426050 | J159 | Unspecified bacterial pneumonia | ICD10 | 05022018 | 04252018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04262018 | 2018-04-26T14:02:00+00:00 |  | 000098482-01 | Manifred | Smoot | SOUND INPATIENT PHYS OF | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04252018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426056 | I82402 | Acute embolism and thombos unsp deep veins of l low extrem | ICD10 | 05022018 | 04252018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04302018 | 2018-04-30T13:53:23+00:00 |  | 000038217-01 | JO | COLLINS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04292018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430094 | K652, N390 | Urinary tract infection, site not specified | ICD10 | 05022018 | 04292018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04202018 | 2018-04-20T08:38:32+00:00 |  | 000070079-01 | James | Weaver | FAIRFIELD MEDICAL CENTER | 936439 |  | FAIRFIELD MEDICAL CENTER | 1467433763 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04192018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420026 | R000, R531, Z789 | Other specified health status | ICD10 | 05022018 | 04192018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04262018 | 2018-04-26T10:08:10+00:00 |  | 000046202-01 | LINDA | MOLEBASH | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302018 | 04302018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426021 | M12811 | Oth specific arthropathies, NEC, right shoulder | ICD10 | 05022018 | 04302018 | 04302018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 04272018 | 2018-04-27T09:57:32+00:00 |  | 000098867-01 | VIRGINIA | ASCHE | HOSPITALIST MEDICINE PHY | 928645 | MUHAMMAD R | AHMAD | 1255355319 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05022018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04262018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427027 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05022018 | 04262018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T14:34:39+00:00 |  | 000009328-01 | RUBY | MOXLEY | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04262018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430075 | M79606, W19XXXA | Unspecified fall, initial encounter | ICD10 | 05022018 | 04262018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04302018 | 2018-04-30T15:07:01+00:00 |  | 000120995-01 | PAUL | HOY JR | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04272018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501040 | N179, R748, I160 | HYPERTENSIVE URGENCY | ICD10 | 05022018 | 04272018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T10:45:31+00:00 |  | 000071085-01 | Barbara | Parsons | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04262018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427016 | R531 | Weakness | ICD10 | 05022018 | 04262018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04272018 | 2018-04-27T11:06:27+00:00 |  | 000047450-01 | CONSTANCE | KAUFMAN | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04262018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427020 | R112, R197 | Diarrhea, unspecified | ICD10 | 05022018 | 04262018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T13:46:43+00:00 |  | 000070848-01 | Sandra | Odell | INTERNAL MED ASSOC INC | 902702 | GREGORY R | WISE | 1184605263 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 04252018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427042 | R079 | Chest pain, unspecified | ICD10 | 05022018 | 04252018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04272018 | 2018-04-27T15:02:35+00:00 |  | 000029726-01 | Bernard | Edwards | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04252018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427058 | M6281 | Muscle weakness (generalized) | ICD10 | 05022018 | 04252018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04272018 | 2018-04-27T15:05:40+00:00 |  | 000120406-01 | ROBERT | BYRD | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04262018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427060 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 05022018 | 04262018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T15:07:51+00:00 |  | 000031763-01 | ARNOLD | FULLER JR | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 04262018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427062 | I200 | Unstable angina | ICD10 | 05022018 | 04262018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T09:13:17+00:00 |  | 000117090-01 | Carole | Manning | ER MED PHYS OF IREDELL C | 926511 | MEGAN | LEONARD | 1467726323 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05022018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 04272018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430029 | J441, N3001, R0600, R0689, R410, R591 | Generalized enlarged lymph nodes | ICD10 | 05022018 | 04272018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04302018 | 2018-04-30T10:11:22+00:00 |  | 000090902-01 | Brenda | Day | MIAMI VALLEY HSPISTS GRP | 923926 | ANDREW | MAIGUR | 1912103631 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 05022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04282018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430048 | G9341 | Metabolic encephalopathy | ICD10 | 05022018 | 04282018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T10:47:46+00:00 |  | 000062231-01 | LINDA | SEYMOUR | VARUN ASHOK | 953711 | VARUN | ASHOK | 1508271297 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04292018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430049 | K5660 | Unspecified intestinal obstruction | ICD10 | 05022018 | 04292018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T11:52:54+00:00 |  | 000033662-01 | FRED | JOHNSON | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04282018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430058 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05022018 | 04282018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T11:56:30+00:00 |  | 000076819-01 | Lando | Perry | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04282018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430066 | J80, R092 | Respiratory arrest | ICD10 | 05022018 | 04282018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T15:46:26+00:00 |  | 000094205-01 | Sylvia | Justice | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04272018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430078 | N390 | Urinary tract infection, site not specified | ICD10 | 05022018 | 04272018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T15:53:53+00:00 |  | 000024964-01 | JOSEPH | PANICO | HOSPITALIST MEDICINE PHY | 906123 | BEVERLY J | YAMOUR | 1376512624 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04282018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430080 | N179 | Acute kidney failure, unspecified | ICD10 | 05022018 | 04282018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05012018 | 2018-05-01T09:21:46+00:00 |  | 000105296-01 | Linda | Wolfe | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04272018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501007 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 05022018 | 04272018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T15:51:31+00:00 |  | 000082014-01 | James | Webster | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04282018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501012 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05022018 | 04282018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05012018 | 2018-05-01T10:05:04+00:00 |  | 000041120-01 | PEGGY | SWOPE | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04292018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501016 | J159 | Unspecified bacterial pneumonia | ICD10 | 05022018 | 04292018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05012018 | 2018-05-01T10:07:50+00:00 |  | 000042739-01 | JOHN | POOLE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04292018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501017 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05022018 | 04292018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T15:03:53+00:00 |  | 000098026-01 | Gary | Lustgarten | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 04292018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501030 | M4626, T8249XA, T82898A | Oth complication of vascular prosth dev/grft, init | ICD10 | 05022018 | 04292018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T15:40:06+00:00 |  | 000062452-01 | ANN | FORAKER | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04272018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501043 | I10, L03116, M79662 | Pain in left lower leg | ICD10 | 05022018 | 04272018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05022018 | 2018-05-02T15:28:08+00:00 |  | 000028767-01 | EDITH | SNYDER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04272018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502069 | R079, R55 | Syncope and collapse | ICD10 | 05022018 | 04272018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022018 | 2018-05-02T15:31:33+00:00 |  | 000048275-01 | JONNIE | HITE SR | MOUNT CARMEL EAST PHYS | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04272018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502071 | N202 | Calculus of kidney with calculus of ureter | ICD10 | 05022018 | 04272018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022018 | 2018-05-02T15:39:09+00:00 |  | 000035158-01 | CHARLES | HAYES | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04282018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502076 | I639 | Cerebral infarction, unspecified | ICD10 | 05022018 | 04282018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
