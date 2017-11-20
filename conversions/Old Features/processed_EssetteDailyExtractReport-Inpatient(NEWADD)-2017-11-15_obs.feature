Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-15_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-15_OBS
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
| 11132017 | 2017-11-13T13:27:28+00:00 | 256128137315 | 000072483-01 | Shirley | Weaver | GENESIS MEDICAL GRP LLC | 924382 | DAWIT | WUBISHET | 1083971311 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11112017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113066 | J159 | Unspecified bacterial pneumonia | ICD10 | 11142017 | 11112017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11142017 | 2017-11-14T10:17:58+00:00 | 257149747317 | 000060061-01 | FRANKIE | EDGERTON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11132017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114041 | E876 | Hypokalemia | ICD10 | 11142017 | 11132017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T09:17:20+00:00 | 251728307318 | 000118157-01 | JACCQULYN | GRIFFIN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11152017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11142017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114012 | R410 | Disorientation, unspecified | ICD10 | 11152017 | 11142017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11102017 | 2017-11-10T09:51:54+00:00 |  | 000109220-01 | Joyce | Zedaker | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 11152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11102017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110044 | R079 | Chest pain, unspecified | ICD10 | 11152017 | 11102017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11152017 | 2017-11-15T08:57:02+00:00 |  | 000004631-01 | CONNIE | HATCHER | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11152017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 11102017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115004 | N390 | Urinary tract infection, site not specified | ICD10 | 11152017 | 11102017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11082017 | 2017-11-08T14:19:06+00:00 |  | 000071671-01 | Donna | Hilderbran | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 11152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11072017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108053 | R0602, R42 | Dizziness and giddiness | ICD10 | 11152017 | 11072017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T10:05:32+00:00 |  | 000063705-01 | JANET | ALLISON | SOUND PHYSICIANS OF OHI0 | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11132017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114033 | R079 | Chest pain, unspecified | ICD10 | 11152017 | 11132017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T09:33:35+00:00 | 264656907317 | 000109421-01 | VINCENT | PRIORE | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11132017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114020 | G500 | Trigeminal neuralgia | ICD10 | 11152017 | 11132017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T10:38:15+00:00 | 110512977316 | 000069560-01 | CHARLES | SARGENT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11122017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113024 | M5410 | Radiculopathy, site unspecified | ICD10 | 11152017 | 11122017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T10:04:38+00:00 |  | 000072256-01 | Norma | Rhodes | SOUND PHYSICIANS OF OHI0 | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11122017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114032 | R55 | Syncope and collapse | ICD10 | 11152017 | 11122017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11092017 | 2017-11-09T11:00:03+00:00 |  | 000085036-01 | Lloyd | Soard | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11152017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 11092017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109079 | A419 | Sepsis, unspecified organism | ICD10 | 11152017 | 11092017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T06:59:21+00:00 |  | 000094408-01 | Ronald | Aldridge | SOUND PHYSICIANS OF OHI0 | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11102017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113083 | R51 | Headache | ICD10 | 11152017 | 11102017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T10:34:27+00:00 | 251614047317 | 000112855-01 | Richard | Dearwester | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11152017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11132017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113022 | K4000 | Bi inguinal hernia, w obst, w/o gangrene, not spcf as recur | ICD10 | 11152017 | 11132017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T10:55:22+00:00 | 253848427317 | 000028286-01 | FLORA | KAPTEINA | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11132017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113035 | R0902 | Hypoxemia | ICD10 | 11152017 | 11132017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T11:00:27+00:00 | 251916577314 | 000053568-01 | JUDITH | KELLER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11152017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 11102017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113037 | G4089 | Other seizures | ICD10 | 11152017 | 11102017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11142017 | 2017-11-14T09:27:11+00:00 | 253700857317 | 000107358-01 | HARRIETTE | KING | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11152017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11132017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114017 | R079 | Chest pain, unspecified | ICD10 | 11152017 | 11132017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T10:10:57+00:00 |  | 000117026-01 | DELMAR | SEVERING | MED STAFF SERVICES LLC | 907315 | FARID | BOUNIF | 1053470518 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 11152017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11122017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114045 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 11152017 | 11122017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T06:56:17+00:00 |  | 000100153-01 | Fern | Martin | SOUND PHYSICIANS OF OHI0 | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11152017 | Approved | MediGold Essential Care | HealthHelp | Observation | Inpatient | 11102017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113080 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 11152017 | 11102017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11102017 | 2017-11-10T11:35:09+00:00 |  | 000109614-01 | Ronald | Anderson | DAVID S BRANDT MD INC | 935238 | DAVID S | BRANDT | 1821099136 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11152017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 11092017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110054 | I638 | Other cerebral infarction | ICD10 | 11152017 | 11092017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11132017 | 2017-11-13T06:53:13+00:00 |  | 000057590-01 | GEORGE | GRIFFITH | SOUND PHYSICIANS OF OHI0 | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11122017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113076 | E872, R1110, R197 | Diarrhea, unspecified | ICD10 | 11152017 | 11122017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T10:24:31+00:00 | 253569827316 | 000097552-01 | Sandra | Campbell | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11122017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113017 | T80212A | Local infection due to central venous catheter, init encntr | ICD10 | 11152017 | 11122017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10252017 | 2017-10-25T08:36:25+00:00 |  | 000100298-01 | William | Selby Sr. | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10242017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025024 | R6889 | Other general symptoms and signs | ICD10 | 11152017 | 10242017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T09:41:18+00:00 |  | 000073886-01 | Loretta | Prouty | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11152017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11102017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113118 | N390 | Urinary tract infection, site not specified | ICD10 | 11152017 | 11102017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T11:09:16+00:00 | 167287507316 | 000034740-01 | BETTY | PATCH | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11122017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113041 | M6281 | Muscle weakness (generalized) | ICD10 | 11152017 | 11122017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T10:08:13+00:00 |  | 000097375-01 | E Virginia | Evans | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11152017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11112017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114040 | K627 | Radiation proctitis | ICD10 | 11152017 | 11112017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T08:27:17+00:00 |  | 000115976-01 | Michael | Clemens | SYCAMORE PRIMARY CARE GR | 942247 | JEVEDE D | HARRIS | 1154687127 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 11152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11102017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113100 | J189, 486 | 486.0 | ICD10 | 11152017 | 11102017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11132017 | 2017-11-13T13:21:52+00:00 | 261430307315 | 000021672-01 | KATHERINE | OUELLETTE | SOUND PHYSICIANS OF OHI0 | 943144 | PRANAV | WASTI | 1659634236 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11122017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113064 | L0390 | Cellulitis, unspecified | ICD10 | 11152017 | 11122017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11142017 | 2017-11-14T11:09:25+00:00 | 252408837317 | 000002091-01 | ROBERT | SHORTLAND | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114050 | R0989, T17908A | Unsp fb in resp tract, part unsp causing oth injury, init | ICD10 | 11152017 | 11132017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11112017 | 2017-11-11T14:31:24+00:00 |  | 000028882-01 | IRENE | HAGER | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11102017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113092 | G9341, W19XXXA | Unspecified fall, initial encounter | ICD10 | 11152017 | 11102017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11012017 | 2017-11-01T15:27:25+00:00 |  | 000110267-01 | ALICE | WISMAN | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 11152017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11012017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101068 | R0789 | Other chest pain | ICD10 | 11152017 | 11012017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T11:19:15+00:00 |  | 000107584-01 | Thomas | Kennon | MERCY EMERGENCY CARE SER | 924383 | LISA L | KISER | 1902992340 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Observation | OBSV | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 11152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11102017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114056 | L03113 | Cellulitis of right upper limb | ICD10 | 11152017 | 11102017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T10:41:01+00:00 | 251015827316 | 000033486-01 | GEORGE | SYKES | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11122017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113026 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11152017 | 11122017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11092017 | 2017-11-09T12:29:01+00:00 |  | 000090365-01 | Arthur | Dunlap | ALLIANCE PHYSICIANS INC | 906934 | BRIAN P | SCHWARTZ | 1255315453 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11082017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109069 | R278, R4781 | Slurred speech | ICD10 | 11152017 | 11082017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
