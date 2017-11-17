Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-14_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-14_OBS
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
| 11132017 | 2017-11-13T10:48:09+00:00 | 265001617314 | 000042524-01 | DOROTHY | JOHNSTON | EMERGENCY SERVICES INC | 927151 | BENJAMIN L | HARTSHORN | 1457516320 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11102017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113030 | R55 | Syncope and collapse | ICD10 | 11132017 | 11102017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11082017 | 2017-11-08T15:20:15+00:00 |  | 000110636-01 | Jennifer | Preston | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11072017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109004 | E781, K861, K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 11142017 | 11072017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11132017 | 2017-11-13T13:24:20+00:00 | 256602147317 | 000030289-01 | JAMES | SHOUP | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11132017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113065 | I4891 | Unspecified atrial fibrillation | ICD10 | 11142017 | 11132017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T08:28:40+00:00 |  | 000078223-01 | Carolyn | Wheeler | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11122017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113105 | R55 | Syncope and collapse | ICD10 | 11142017 | 11122017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11092017 | 2017-11-09T14:59:10+00:00 |  | 000083380-01 | Rose | Lee | CAMDEN CLARK PHYS CORPOR | 931289 | JUSTIN M | VARGHESE | 1003136367 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11142017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11092017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110016 | I639 | Cerebral infarction, unspecified | ICD10 | 11142017 | 11092017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T13:30:32+00:00 | 177294557316 | 000116833-01 | William | Johnson | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11122017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113068 | E872 | Acidosis | ICD10 | 11142017 | 11122017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T10:02:38+00:00 | 250196487314 | 000048010-01 | ARTHUR | CLINE | SOUND PHYSICIANS OF OHI0 | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11112017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113008 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11142017 | 11112017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T10:14:06+00:00 | 250569567317 | 000043786-01 | William | Jackson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11132017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113012 | R079 | Chest pain, unspecified | ICD10 | 11142017 | 11132017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T09:18:58+00:00 |  | 000092734-01 | Charlotte | Jewell | SOUND PHYSICIANS OF OHI0 | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 11092017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114013 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 11142017 | 11092017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11092017 | 2017-11-09T10:54:13+00:00 |  | 000066147-01 | THOMAS | HEWITT | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11082017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109054 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 11142017 | 11082017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11072017 | 2017-11-07T11:18:49+00:00 |  | 000079203-01 | Helen | Dixon | SOUND PHYSICIANS OF OHI0 | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11062017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107080 | G9340, J189 | Pneumonia, unspecified organism | ICD10 | 11142017 | 11062017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08302017 | 2017-08-30T09:44:03+00:00 |  | 000039199-01 | CHARLES | MOORE | SOUND PHYSICIANS OF OHI0 | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08282017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830061 | E876, I10, I4891, I509, R079 | Chest pain, unspecified | ICD10 | 11142017 | 08282017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11032017 | 2017-11-03T08:36:31+00:00 |  | 000065160-01 | FLOYD | REDDING | FCMH MED & SURG ASSOC | 937321 | ROBERT R | PICKERING | 1548209844 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11022017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103059 | E860, R410 | Disorientation, unspecified | ICD10 | 11142017 | 11022017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T10:08:15+00:00 |  | 000085490-01 | Clyde | Morland | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11142017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11122017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114047 | N179 | Acute kidney failure, unspecified | ICD10 | 11142017 | 11122017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T14:10:17+00:00 |  | 000103976-01 | KATHERINE | HARRELL | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11052017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114068 | R079 | Chest pain, unspecified | ICD10 | 11142017 | 11052017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11092017 | 2017-11-09T15:27:39+00:00 |  | 000046875-01 | RONALD | SEYMOUR | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11082017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110017 | R0902, R531 | Weakness | ICD10 | 11142017 | 11082017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T14:10:17+00:00 |  | 000003934-01 | HOWARD | SCHUENAMAN | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11042017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114070 | R269 | Unspecified abnormalities of gait and mobility | ICD10 | 11142017 | 11042017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T15:56:09+00:00 |  | 000074506-01 | James | Chandler | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11052017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107057 | N390 | Urinary tract infection, site not specified | ICD10 | 11142017 | 11052017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T14:10:17+00:00 |  | 000030722-01 | Lena | Dillon | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11042017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114081 | E860 | Dehydration | ICD10 | 11142017 | 11042017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T14:10:17+00:00 |  | 000044673-01 | GORDON | STOWE JR | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11042017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114085 | R4182 | Altered mental status, unspecified | ICD10 | 11142017 | 11042017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11072017 | 2017-11-07T13:25:29+00:00 |  | 000101367-01 | Marilou | Crawford | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11062017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107101 | I4891, R748 | Abnormal levels of other serum enzymes | ICD10 | 11142017 | 11062017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11072017 | 2017-11-07T13:20:35+00:00 |  | 000034981-01 | RICHARD | SMITH | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11062017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107099 | G9340, R4182 | Altered mental status, unspecified | ICD10 | 11142017 | 11062017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11102017 | 2017-11-10T14:49:04+00:00 |  | 000044118-01 | WILLIAM | HUGHES | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11092017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110067 | I671 | Cerebral aneurysm, nonruptured | ICD10 | 11142017 | 11092017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11072017 | 2017-11-07T13:11:40+00:00 |  | 000088889-01 | Richard | Rine | KNOX COMMUNITY HOSPITAL | 936422 |  | KNOX COMMUNITY HOSPITAL | 1295761963 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11062017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107091 | R079 | Chest pain, unspecified | ICD10 | 11142017 | 11062017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11112017 | 2017-11-11T07:21:14+00:00 |  | 000095657-01 | Reva | Wood | MERCY HEALTH PHYSICIANS | 902845 | MARVIN M | NARCELLES | 1871583666 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11102017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113004 | R5383 | Other fatigue | ICD10 | 11142017 | 11102017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11122017 | 2017-11-12T16:07:16+00:00 |  | 000103295-01 | Robert | Tritle | AJAZ UMERANI MD INC | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11102017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113082 | D72829 | Elevated white blood cell count, unspecified | ICD10 | 11142017 | 11102017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
