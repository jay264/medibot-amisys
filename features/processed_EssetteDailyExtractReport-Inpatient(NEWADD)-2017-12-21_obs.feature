Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-21_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-21_OBS
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
| 12202017 | 2017-12-20T07:56:28+00:00 | 025007163-7353 | 000097692-01 | Kathleen | Ball | COPC CENTRAL OHIO PRIMAR | 928116 | ONMA A | AMEH | 1578884565 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12212017 | Approved | Flexible Choice PPO | EMR | Observation | Inpatient | 12192017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220006 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12212017 | 12192017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12182017 | 2017-12-18T11:05:15+00:00 | 025898041-7351 | 000037348-01 | DAVID | HEISERMAN | SOUND INPATIENT PHYS OF | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 12172017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218064 | I4891 | Unspecified atrial fibrillation | ICD10 | 12212017 | 12172017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12152017 | 2017-12-15T08:24:55+00:00 |  | 000050437-01 | CAROL | FORTNEY | MOUNT CARMEL HLTH PRVDRS | 901005 | ARTHUR N | COLE | 1891799698 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12152017 | 12202017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215013 | G912 | (Idiopathic) normal pressure hydrocephalus | ICD10 | 12212017 | 12152017 | 12202017 | 62223 | SHUNT;VENTRICILO-PERITONEAL,-PLEURAL, OTHER TERMINUS | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 12172017 | 2017-12-17T10:37:48+00:00 | 025047696-7351 | 000097505-01 | Robert | Haslett | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12172017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218053 | R110 | Nausea | ICD10 | 12212017 | 12172017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12202017 | 2017-12-20T09:34:40+00:00 | 250259227353 | 000109725-01 | William G | Dewey | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12202017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220025 | R0602 | Shortness of breath | ICD10 | 12212017 | 12202017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12202017 | 2017-12-20T10:19:37+00:00 |  | 000003398-01 | JOHN | TIMMONS | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220044 | D649, N390 | Urinary tract infection, site not specified | ICD10 | 12212017 | 12192017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12202017 | 2017-12-20T10:14:42+00:00 |  | 000034707-01 | MARY JANE | SKINNER | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220043 | E860, E875, R110, R1111, R197 | Diarrhea, unspecified | ICD10 | 12212017 | 12192017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12192017 | 2017-12-19T10:11:00+00:00 |  | 000093636-01 | Kelly | Agin | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12182017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219085 | R079 | Chest pain, unspecified | ICD10 | 12212017 | 12182017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12182017 | 2017-12-18T11:59:50+00:00 | 255852557351 | 000023164-01 | JOANN | LEATHERWOOD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12172017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218081 | D509 | Iron deficiency anemia, unspecified | ICD10 | 12212017 | 12172017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12152017 | 2017-12-15T12:38:22+00:00 |  | 000100394-01 | JoAnn | Money | MERCY HEALTH PHYSICIANS | 921447 | JOSEPH J | PFLUM | 1356398747 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Observation | OBSV | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 12212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12142017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215057 | R296 | Repeated falls | ICD10 | 12212017 | 12142017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T05:38:51+00:00 |  | 000112789-01 | Douglas | Lee | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11222017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127107 | R0789 | Other chest pain | ICD10 | 12212017 | 11222017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12072017 | 2017-12-07T15:43:47+00:00 |  | 000051351-01 | VICKI | MCGRAW | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12042017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207074 | E785, I10 | Essential (primary) hypertension | ICD10 | 12212017 | 12042017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11272017 | 2017-11-27T08:42:46+00:00 |  | 000065527-01 | FREDA | CRAIG | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11242017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127135 | R42, R7989, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 12212017 | 11242017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12202017 | 2017-12-20T08:17:10+00:00 |  | 000051690-01 | BETTY | GAREE | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12172017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220011 | R55 | Syncope and collapse | ICD10 | 12212017 | 12172017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12142017 | 2017-12-14T08:36:10+00:00 |  | 000028444-01 | ROBERT | ELLIOTT | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214016 | N289, R4182, R4701, R739 | Hyperglycemia, unspecified | ICD10 | 12212017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12212017 | 2017-12-21T09:41:33+00:00 | 252330577354 | 000017089-01 | ROBERT | STANTON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12212017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 12202017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221031 | R0602 | Shortness of breath | ICD10 | 12212017 | 12202017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12152017 | 2017-12-15T08:45:16+00:00 |  | 000077908-01 | Phyllis | Rhoades | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12212017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12132017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215022 | I160 | HYPERTENSIVE URGENCY | ICD10 | 12212017 | 12132017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12152017 | 2017-12-15T08:46:21+00:00 |  | 000013869-01 | LYLE | SPEAKS | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12142017 | 12162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215023 | J189 | Pneumonia, unspecified organism | ICD10 | 12212017 | 12142017 | 12162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12142017 | 2017-12-14T14:37:28+00:00 |  | 000105509-01 | Mary | Pool | SOUND KENWOOD HSPISTS OF | 924460 | RAVIKANTH | CHANDA | 1609175496 | WEST CHESTER MEDICAL CENTER | 911775 | 1851549273 | WEST CHESTER MEDICAL CENTER | 1851549273 | Observation | OBSV | Concurrent Review | CONC |  | WEST CHESTER MEDICAL CENTER | 12212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12132017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214049 | R079, R51 | Headache | ICD10 | 12212017 | 12132017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12012017 | 2017-12-01T11:38:29+00:00 |  | 000099756-01 | Willetta | Mundy | S DAYTON ACUTE CARE CNSL | 930272 | ISAAC P | HUMPHREY | 1649357724 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11302017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201045 | N3000 | Acute cystitis without hematuria | ICD10 | 12212017 | 11302017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12132017 | 2017-12-13T08:42:41+00:00 |  | 000115560-01 | KATHRYN | PACK | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12122017 | 12162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213067 | R55 | Syncope and collapse | ICD10 | 12212017 | 12122017 | 12162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11222017 | 2017-11-22T09:02:21+00:00 |  | 000086596-01 | Michelle | Golden | ATRIUM HOSPITALIST GROUP | 950082 | HEIDI | FRANZ | 1922417070 | ATRIUM MEDICAL CENTER | 936440 | 1700950060 | ATRIUM MEDICAL CENTER | 1700950060 | Observation | OBSV | Concurrent Review | CONC |  | ATRIUM MEDICAL CENTER | 12212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11212017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122029 | I10, R002 | Palpitations | ICD10 | 12212017 | 11212017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12202017 | 2017-12-20T10:16:53+00:00 |  | 000073225-01 | Kathryn | Nibert | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220042 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 12212017 | 12192017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12212017 | 2017-12-21T09:34:27+00:00 | 257854907354 | 000029552-01 | MICHAEL | GORDON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12202017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221027 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 12212017 | 12202017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12182017 | 2017-12-18T13:21:46+00:00 | 259779667352 | 000024322-01 | MARJORIE | HOLYFIELD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12182017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218116 | R4701 | Aphasia | ICD10 | 12212017 | 12182017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12062017 | 2017-12-06T09:54:28+00:00 |  | 000090938-01 | Elizabeth | Peterman | SOUTHVIEW WOMENS CENTER | 912322 | PERCY L | FRASIER | 1578556767 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 12212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206038 | N736 | Female pelvic peritoneal adhesions (postinfective) | ICD10 | 12212017 | 12192017 | 12212017 | 58150, 58740 | LYSIS OF ADHESIONS (SALPINGOLYSIS, OVARIOLYSIS) | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 12212017 | 2017-12-21T09:26:56+00:00 | 252868577354 | 000074505-01 | Rosemary | Sapp | EMERGENCY SERVICES INC | 908216 | EMILY | SENG | 1417984212 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12202017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221023 | R55 | Syncope and collapse | ICD10 | 12212017 | 12202017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12202017 | 2017-12-20T13:39:57+00:00 |  | 000088580-01 | Jack | Katenkamp | SUMA & DURGA PA | 940125 | DURGA P | MAGANTI | 1619075579 | LAKE WALES MEDICAL CENTER | 903364 | 1033180195 | LAKE WALES MEDICAL CENTER | 1033180195 | Observation | OBSV | Concurrent Review | CONC |  | LAKE WALES MEDICAL CENTER | 12212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220065 | S0101XA | Laceration without foreign body of scalp, initial encounter | ICD10 | 12212017 | 12192017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12122017 | 2017-12-12T08:18:56+00:00 |  | 000111474-01 | Jack | Emde | HOSPITALIST MEDICINE PHY | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 12212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12112017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212039 | M6281 | Muscle weakness (generalized) | ICD10 | 12212017 | 12112017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12112017 | 2017-12-11T04:32:14+00:00 |  | 000116711-01 | DAVID | BRADFORD | MEDICINE INPATIENT GROUP | 924498 | RAJARATNAM | PATHMARAJAH | 1891882346 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 12212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12102017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212003 | I5023, R0602, R600, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 12212017 | 12102017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12192017 | 2017-12-19T09:47:57+00:00 | 252957177352 | 000018746-01 | LOIS | GIBBONEY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12182017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219046 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 12212017 | 12182017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12202017 | 2017-12-20T10:29:10+00:00 | 252199767353 | 000100890-01 | Rhea | Persinger | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220038 | R609 | Edema, unspecified | ICD10 | 12212017 | 12192017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12192017 | 2017-12-19T10:11:35+00:00 | 252306477353 | 000005062-01 | DOROTHY | SUHAYDA | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219060 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 12212017 | 12192017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
