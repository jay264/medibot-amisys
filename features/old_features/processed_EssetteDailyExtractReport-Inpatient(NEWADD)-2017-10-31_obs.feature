Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-31_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-31_OBS
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
| 10262017 | 2017-10-26T07:42:44+00:00 |  | 000031536-01 | PHILLIP | JOHNSON | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10252017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026053 | R079 | Chest pain, unspecified | ICD10 | 10312017 | 10252017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10312017 | 2017-10-31T07:54:00+00:00 | 025280711-7299 | 000073901-01 | Linda | Suk | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 10262017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031001 | R1110 | Vomiting, unspecified | ICD10 | 10312017 | 10262017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T10:21:10+00:00 | 266242707302 | 000061087-01 | CHARLOTTE | HARTZELL | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10292017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030040 | I10 | Essential (primary) hypertension | ICD10 | 10312017 | 10292017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10262017 | 2017-10-26T08:36:51+00:00 |  | 000106429-01 | Clyde | Buckmaster | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10312017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10252017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026056 | I509 | Heart failure, unspecified | ICD10 | 10312017 | 10252017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10262017 | 2017-10-26T09:55:18+00:00 | 263899207298 | 000077250-01 | Joyce | Williams | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10312017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10252017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026035 | K5669 | Other intestinal obstruction | ICD10 | 10312017 | 10252017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10262017 | 2017-10-26T10:39:10+00:00 | 267267837298 | 000072096-01 | Kathleen | Kappes | SOUND PHYSICIANS OF OHI0 | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10262017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026047 | L03818 | Cellulitis of other sites | ICD10 | 10312017 | 10262017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10262017 | 2017-10-26T09:11:53+00:00 | 253715237298 | 000053211-01 | FRANCES | ADAMS | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10262017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026010 | R791 | Abnormal coagulation profile | ICD10 | 10312017 | 10262017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10262017 | 2017-10-26T09:34:44+00:00 | 251654077298 | 000002467-01 | PAUL | FISCHER | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10252017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026024 | N390 | Urinary tract infection, site not specified | ICD10 | 10312017 | 10252017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10252017 | 2017-10-25T09:16:48+00:00 |  | 000076813-01 | Donald | Batteiger | HOSPITAL MEDICINE SERVIC | 949653 | DEO | MULINDWA | 1881092385 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10242017 | 10292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025032 | R531 | Weakness | ICD10 | 10312017 | 10242017 | 10292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10302017 | 2017-10-30T11:38:52+00:00 |  | 000079582-01 | Dwight | Thatcher Jr | PULMONARY MED OF DAYTON | 922847 | ASHLEE R | AMES | 1962655142 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10282017 | 10292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030083 | R079 | Chest pain, unspecified | ICD10 | 10312017 | 10282017 | 10292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T09:07:04+00:00 |  | 000013730-01 | WAVELENE | STUMP | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10272017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030102 | R079 | Chest pain, unspecified | ICD10 | 10312017 | 10272017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10292017 | 2017-10-29T15:31:24+00:00 |  | 000031103-01 | RUTH | FISHER | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10282017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030031 | N390, R4182 | Altered mental status, unspecified | ICD10 | 10312017 | 10282017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10232017 | 2017-10-23T09:56:30+00:00 |  | 000073789-01 | Joy | Hiles | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10312017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10222017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023105 | N12 | Tubulo-interstitial nephritis, not spcf as acute or chronic | ICD10 | 10312017 | 10222017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T09:32:38+00:00 | 250900857301 | 000104517-01 | Betty | Peer | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10282017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030017 | D61818, R42 | Dizziness and giddiness | ICD10 | 10312017 | 10282017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10312017 | 2017-10-31T11:11:49+00:00 |  | 000096965-01 | Duane | Wegner | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10312017 | Approved | MediGold Essential Care | EMR | Observation | Inpatient | 10282017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031047 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 10312017 | 10282017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10252017 | 2017-10-25T10:45:52+00:00 |  | 000038092-01 | CHARLES | HILL | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10242017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025046 | C9590 | Leukemia, unspecified not having achieved remission | ICD10 | 10312017 | 10242017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10062017 | 2017-10-06T15:33:49+00:00 |  | 000086150-01 | Mary | Mahon | GENERAL SURG ASSOC INC | 900848 | DAVID J | ROBERTSON | 1811983067 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10262017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006072 | D0512 | Intraductal carcinoma in situ of left breast | ICD10 | 10312017 | 10262017 | 10272017 | 19307 | MASTECTOMY MODIFIED RADICAL INCLUDING AXILLARY LYMPH NODES WITH OR WITHO | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 10252017 | 2017-10-25T10:28:24+00:00 | 252331627298 | 000072716-01 | John | Stemen | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10252017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025028 | R079 | Chest pain, unspecified | ICD10 | 10312017 | 10252017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T14:24:13+00:00 |  | 000108441-01 | Patricia | Francis | MIAMI VALLEY HSPISTS GRP | 941454 | ISHA L | BUTLER | 1952693707 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10282017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031023 | R1084 | Generalized abdominal pain | ICD10 | 10312017 | 10282017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T16:54:49+00:00 |  | 000089512-01 | Bruce | Lee | DAYTON SPRINGFIELD CARDI | 900732 | MOHAMMAD A | KABIR | 1801891213 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 10312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10272017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031016 | I739 | Peripheral vascular disease, unspecified | ICD10 | 10312017 | 10272017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T14:13:58+00:00 |  | 000086680-01 | Claude | Duncan | MIAMI VALLEY HSPISTS GRP | 922638 | YOUSIF S | SHAREEF | 1922235811 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10272017 | 10292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031004 | R42 | Dizziness and giddiness | ICD10 | 10312017 | 10272017 | 10292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T10:59:36+00:00 |  | 000080067-01 | Mary | Kennard | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10272017 | 10292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030113 | I83029 | Varicose veins of left lower extremity w ulcer of unsp site | ICD10 | 10312017 | 10272017 | 10292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10312017 | 2017-10-31T10:23:42+00:00 | 256923397303 | 000025508-01 | ESTHER | COX | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10302017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031036 | R109 | Unspecified abdominal pain | ICD10 | 10312017 | 10302017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10272017 | 2017-10-27T10:38:54+00:00 |  | 000035147-01 | Thelma | Layman | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10262017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027040 | I4891, I509, N390 | Urinary tract infection, site not specified | ICD10 | 10312017 | 10262017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10232017 | 2017-10-23T08:47:51+00:00 |  | 000115814-01 | Walter | Dewar Jr | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 10312017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 10212017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023070 | E871, R0600, R0689 | Other abnormalities of breathing | ICD10 | 10312017 | 10212017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10262017 | 2017-10-26T08:49:26+00:00 |  | 000086076-01 | Paulette | Penwell | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 10312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10252017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026060 | R109 | Unspecified abdominal pain | ICD10 | 10312017 | 10252017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10192017 | 2017-10-19T08:43:55+00:00 |  | 000107686-01 | Patricia | Mccutchen | GENESIS MEDICAL GRP LLC | 912844 | OSHANA | ALAHAKOON | 1285793745 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 10312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019025 | E860, N179 | Acute kidney failure, unspecified | ICD10 | 10312017 | 10182017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T08:44:47+00:00 |  | 000031425-01 | JOYCE | LUTZ | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 10312017 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 10292017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030090 | L89200, N390 | Urinary tract infection, site not specified | ICD10 | 10312017 | 10292017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T09:26:16+00:00 | 265001617302 | 000042524-01 | DOROTHY | JOHNSTON | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10292017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030013 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 10312017 | 10302017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T08:37:11+00:00 | 251402267302 | 000062417-01 | JANET | BERRY | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10292017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030007 | R079 | Chest pain, unspecified | ICD10 | 10312017 | 10292017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10262017 | 2017-10-26T09:51:30+00:00 | 252365897298 | 000042530-01 | RONALD | SINES | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10252017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026033 | M542 | Cervicalgia | ICD10 | 10312017 | 10252017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
