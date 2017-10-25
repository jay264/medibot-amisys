Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-20_thru_20178-10-22_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-20_thru_20178-10-22_OBS
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
| 10182017 | 2017-10-18T10:42:27+00:00 | 260891817290 | 000010470-01 | JAMES | MONROE | CAPE CORAL HSPISTS INC | 947935 | EDWARD | KIRSCH | 1396911533 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10172017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018038 | R109 | Unspecified abdominal pain | ICD10 | 10202017 | 10172017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10182017 | 2017-10-18T13:25:38+00:00 |  | 000075785-01 | Ronald | Winget | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10202017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 10172017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018058 | N186, R531, R5383, W19XXXA, Z992 | Dependence on renal dialysis | ICD10 | 10202017 | 10172017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10182017 | 2017-10-18T14:38:59+00:00 |  | 000107137-01 | Roger | Mustard | ADENA MEDICAL GROUP LLC | 902416 | JENNIFER L | KELLER | 1073576294 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10172017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018077 | I429 | Cardiomyopathy, unspecified | ICD10 | 10202017 | 10172017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T11:57:25+00:00 |  | 000095258-01 | Robert | Cordy Jr | CLINTON MEMORIAL HOSPITAL | 917905 |  | CLINTON MEMORIAL HOSPITAL | 1063713659 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10152017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017013 | R079, R55 | Syncope and collapse | ICD10 | 10202017 | 10152017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10192017 | 2017-10-19T11:13:02+00:00 |  | 000070473-01 | Sandra | Powell | SOUND PHYSICIANS OF OHI0 | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019054 | R079 | Chest pain, unspecified | ICD10 | 10202017 | 10182017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10162017 | 2017-10-16T12:52:09+00:00 |  | 000080195-01 | Susan | Buckholtz | ONCOLOGY HEMATOLOGY CARE | 921114 | MARCIA C | BOWLING | 1316930621 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 10202017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Inpatient | 11012017 | 01012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171017040 | C541 | Malignant neoplasm of endometrium | ICD10 | 10202017 |  |  | 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1 | 1 | Approved | 62 | CPT | C4 |  |  | No child records to display. |  |
| 10182017 | 2017-10-18T08:51:18+00:00 |  | 000086175-01 | Emily | Meyer | KNOX COMMUNITY HSP PHYS | 904518 | DAVID A | KITTOE | 1730149154 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 10202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10172017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018040 | R197 | Diarrhea, unspecified | ICD10 | 10202017 | 10172017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10182017 | 2017-10-18T09:44:02+00:00 | 253605017291 | 000055743-01 | Barbara | Morehouse | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10172017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018015 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 10202017 | 10172017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10182017 | 2017-10-18T09:59:20+00:00 | 255481627290 | 000005393-01 | RONALD | ROBICHAUD | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10172017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018020 | N882 | Stricture and stenosis of cervix uteri | ICD10 | 10202017 | 10172017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09072017 | 2017-09-07T15:58:06+00:00 |  | 000035223-01 | BONNIE | POLING | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10172017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911015 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 10202017 | 10172017 | 10182017 | 34800, 34805, 34825, 34832, 34845, 34848, 35081, 35103, 75952, 75953 | ABDOM ANEURYSM ENDOVAS RPR | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 10182017 | 2017-10-18T10:45:14+00:00 | 263501567290 | 000060807-01 | GEORGE | WALRAVEN | SOUND PHYSICIANS OF OHI0 | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10182017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018039 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10202017 | 10182017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10192017 | 2017-10-19T13:00:07+00:00 |  | 000046174-01 | PAUL | BUSSEY | SPRINGFIELD HEART SURGEO | 948857 | SOUMYA | NERAVETLA | 1558511865 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019068 | R079 | Chest pain, unspecified | ICD10 | 10202017 | 10182017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10172017 | 2017-10-17T09:22:39+00:00 | 250020637291 | 000095502-01 | Joseph | Allen | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10162017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017008 | I82409, L0390 | Cellulitis, unspecified | ICD10 | 10202017 | 10162017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10192017 | 2017-10-19T08:37:32+00:00 | 261244267291 | 000108267-01 | Marcus | Hammonds Jr. | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10202017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10182017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019012 | R509 | Fever, unspecified | ICD10 | 10202017 | 10182017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10202017 | 2017-10-20T15:50:32+00:00 |  | 000005690-01 | SUSAN | STARNER | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10172017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020075 | R6889 | Other general symptoms and signs | ICD10 | 10202017 | 10172017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10172017 | 2017-10-17T10:50:22+00:00 |  | 000053137-01 | BARBARA | GERHARDT | SOUND PHYSICIANS OF OHI0 | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10162017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017051 | S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 10202017 | 10162017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10152017 | 2017-10-15T08:22:36+00:00 |  | 000065872-01 | STEVE | ADAMS | KEVIN M REID DO INC | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 10202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10132017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016081 | D729 | Disorder of white blood cells, unspecified | ICD10 | 10202017 | 10132017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10202017 | 2017-10-20T09:48:18+00:00 | 260234487292 | 000086065-01 | Bella | Yemelyanova | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10192017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020037 | G454 | Transient global amnesia | ICD10 | 10202017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10202017 | 2017-10-20T09:44:13+00:00 | 167117177292 | 000111882-01 | Donald | Shoemaker | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10192017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020036 | I4892 | Unspecified atrial flutter | ICD10 | 10202017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10202017 | 2017-10-20T09:40:51+00:00 | 250493557292 | 000020063-01 | CONNIE | HALE | SOUND PHYSICIANS OF OHI0 | 952311 | TERENCE | MUKONJE | 1497044705 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10192017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020035 | R55 | Syncope and collapse | ICD10 | 10202017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10192017 | 2017-10-19T09:14:37+00:00 | 251966477292 | 000032651-01 | BARBARA | LUTZ | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10192017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019027 | R079 | Chest pain, unspecified | ICD10 | 10222017 | 10192017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10192017 | 2017-10-19T09:20:07+00:00 | 252429307291 | 000085466-01 | Carron | Toon | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10222017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10182017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019030 | I4891 | Unspecified atrial fibrillation | ICD10 | 10222017 | 10182017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10192017 | 2017-10-19T09:06:07+00:00 | 250530867292 | 000009402-01 | Jack | Hayner | BINAY EAPEN MD | 916075 | BINAY C | EAPEN | 1255591228 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10182017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019020 | N179 | Acute kidney failure, unspecified | ICD10 | 10222017 | 10182017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10192017 | 2017-10-19T15:41:55+00:00 | 256755867292 | 000019385-01 | RUTH ELLEN | MCKAY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10192017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019080 | R1310 | Dysphagia, unspecified | ICD10 | 10222017 | 10192017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10192017 | 2017-10-19T15:32:22+00:00 | 026767969-7293 | 000118924-01 | Eugene | Martin | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10222017 | Approved | MediGold Essential Care | EMR | Observation | Inpatient | 10192017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019077 | L0390 | Cellulitis, unspecified | ICD10 | 10222017 | 10192017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
