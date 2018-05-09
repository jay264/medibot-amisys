Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-07_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-07_OBS
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
| 05012018 | 2018-05-01T15:02:42+00:00 |  | 000027468-01 | Velda | Parrish | HOSPITALIST MEDICINE PHY | 904883 | NILESH V | VARMA | 1558303545 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502023 | G450, M25561, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 05062018 | 04302018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T17:48:02+00:00 |  | 000042529-01 | PATRICIA | SINES | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04222018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424043 | J189, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05072018 | 04222018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 04252018 | 2018-04-25T15:06:17+00:00 |  | 000066428-01 | Venita | Howard | HOSPITALIST MEDICINE PHY | 906496 | VALERIE A | ALIU | 1073692042 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 05072018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04242018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425083 | N179, N390, R410 | Disorientation, unspecified | ICD10 | 05072018 | 04242018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05022018 | 2018-05-02T16:11:36+00:00 |  | 000027586-01 | SHIRLEY | MORELAND | COPC CENTRAL OHIO PRIMAR | 952051 | THOMAS M | COWAN | 1558655423 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04292018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502093 | R112, R197, R531 | Weakness | ICD10 | 05072018 | 04292018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04232018 | 2018-04-23T12:56:50+00:00 |  | 000084983-01 | Edward | Sanders | KUBALA, GINGER S | 921384 | GINGER S | KUBALA | 1952441891 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Observation | OBSV | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 05072018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04212018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424004 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05072018 | 04212018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04302018 | 2018-04-30T11:48:48+00:00 |  | 000073888-01 | Barbara | Spicer | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05072018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04292018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430026 | G809, K651, R609 | Edema, unspecified | ICD10 | 05072018 | 04292018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05012018 | 2018-05-01T10:10:38+00:00 |  | 000033309-01 | JOSEPH | CLARK | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05072018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04292018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501018 | R1010, R112, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 05072018 | 04292018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05012018 | 2018-05-01T11:29:48+00:00 |  | 000075848-01 | Anna | Sharp | TRIHEALTH G LLC | 916549 | TOMMY R | TIGAR | 1306955422 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Observation | OBSV | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 05072018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04302018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501057 | D6489, I509 | Heart failure, unspecified | ICD10 | 05072018 | 04302018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05012018 | 2018-05-01T11:07:23+00:00 |  | 000066745-01 | ROBERT | PETTIT | HOSPITALIST MEDICINE PHY | 906496 | VALERIE A | ALIU | 1073692042 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 05072018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04292018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501077 | R0609, R609 | Edema, unspecified | ICD10 | 05072018 | 04292018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05012018 | 2018-05-01T11:18:41+00:00 |  | 000073733-01 | Rosemary | Hettema | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05072018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04302018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502005 | R0602 | Shortness of breath | ICD10 | 05072018 | 04302018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05012018 | 2018-05-01T15:07:49+00:00 |  | 000122038-01 | BONNIE | TULLIS | APOGEE MED GRP OHIO INC | 923380 | W TRAVIS | LAWSON JR | 1134114044 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05072018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04302018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502025 | D649, J189, R0602, R0902 | Hypoxemia | ICD10 | 05072018 | 04302018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05022018 | 2018-05-02T09:22:23+00:00 |  | 000080535-01 | Diane | Metz | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05072018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04302018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502043 | I509 | Heart failure, unspecified | ICD10 | 05072018 | 04302018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022018 | 2018-05-02T09:22:34+00:00 |  | 000064596-01 | MARY | CAYTON | LICKING MEM HLTH PROF | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05012018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502049 | J159, R0902 | Hypoxemia | ICD10 | 05072018 | 05012018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05022018 | 2018-05-02T11:57:42+00:00 |  | 000079955-01 | Helen | Cripe | S DAYTON ACUTE CARE CNSL | 912896 | RICHARD J | SAXEN | 1790847226 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05072018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05012018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502068 | D649, I509, K921 | Melena | ICD10 | 05072018 | 05012018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05032018 | 2018-05-03T14:56:35+00:00 |  | 000031425-01 | JOYCE | LUTZ | FAYETTE COUNTY MEM HSP 1 | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 05072018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 05032018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503053 | I10 | Essential (primary) hypertension | ICD10 | 05072018 | 05032018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T10:06:54+00:00 |  | 000083607-01 | Helen | Cottrill | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05072018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05032018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504013 | I2510, I483 | Typical atrial flutter | ICD10 | 05072018 | 05032018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T12:09:44+00:00 |  | 000065017-01 | SHARON | MCKNIGHT | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504020 | M25559 | Pain in unspecified hip | ICD10 | 05072018 | 04302018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05042018 | 2018-05-04T13:41:14+00:00 |  | 000066350-01 | ISABELLE | BUONI | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504031 | R531 | Weakness | ICD10 | 05072018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05042018 | 2018-05-04T14:20:30+00:00 |  | 000116002-01 | HOWARD | FRY | HOSPITALIST MEDICINE PHY | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05022018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504044 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05072018 | 05022018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T12:09:11+00:00 |  | 000108708-01 | FREIDA | MEIER | SOUND INPATIENT PHYS OF | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05032018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504062 | G459, I639 | Cerebral infarction, unspecified | ICD10 | 05072018 | 05032018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05072018 | 2018-05-07T08:41:40+00:00 |  | 000111152-01 | Robert | Richberg Jr | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05032018 | 05062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507005 | I4891, Z952 | Presence of prosthetic heart valve | ICD10 | 05072018 | 05032018 | 05062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05042018 | 2018-05-04T16:39:35+00:00 |  | 000057375-01 | DORIS | KERN | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05072018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05032018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507010 | R079 | Chest pain, unspecified | ICD10 | 05072018 | 05032018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05072018 | 2018-05-07T09:15:24+00:00 |  | 000101894-01 | Judith | Pacino | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05072018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05042018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507046 | H532 | Diplopia | ICD10 | 05082018 | 05042018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05072018 | 2018-05-07T11:49:16+00:00 |  | 000093749-01 | Martha | Miller | APOGEE MED GRP OHIO INC | 947840 | OSAMA | ALHAJJAR | 1801233077 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05072018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05042018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507079 | I4891 | Unspecified atrial fibrillation | ICD10 | 05072018 | 05042018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05072018 | 2018-05-07T09:33:31+00:00 |  | 000009904-01 | JAMES | LAW | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05042018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507090 | I4891 | Unspecified atrial fibrillation | ICD10 | 05072018 | 05042018 | 05052018 | 33340 | PERQ CLSR TCAT L ATR APNDGE | CPT | 0 | 1 | Auth Not Required | 2 | CPT | C4 |  |  |  | 1.0 |
