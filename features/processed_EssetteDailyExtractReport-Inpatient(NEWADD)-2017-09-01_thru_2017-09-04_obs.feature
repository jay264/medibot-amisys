Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-01_thru_2017-09-04_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-01_thru_2017-09-04_OBS
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
| 08302017 | 2017-08-30T15:32:19+00:00 |  | 000112201-01 | L JEAN | BECKDAHL | MERCY HEALTH PHYSICIANS | 932656 | PRADEEP R | GUJJA | 1649465600 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830084 | I4891 | Unspecified atrial fibrillation | ICD10 | 09012017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09022017 | 2017-09-02T10:48:19+00:00 |  | 000066731-01 | JAMES | MARTIN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Medical Only | Reports | Observation | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170904003 | R079 | Chest pain, unspecified | ICD10 | 09042017 | 09012017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09012017 | 2017-09-01T08:27:55+00:00 | 176272437243 | 000053455-01 | ROBERT | BROWN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08312017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901005 | R200 | Anesthesia of skin | ICD10 | 09042017 | 08312017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09012017 | 2017-09-01T08:20:38+00:00 | 255933917244 | 000022984-01 | GLORIA | BAUGESS | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09012017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901003 | R079 | Chest pain, unspecified | ICD10 | 09042017 | 09012017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08292017 | 2017-08-29T14:55:28+00:00 |  | 000100064-01 | Louise | Gschwender | SOUND INPATIENT PHYS OF | 930150 | SWATHI | DATLA | 1013222603 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09012017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829089 | E870, N179 | Acute kidney failure, unspecified | ICD10 | 09012017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08312017 | 2017-08-31T09:13:33+00:00 | 250283317242 | 000015060-01 | JOHN | DUDA | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831012 | R4182 | Altered mental status, unspecified | ICD10 | 09012017 | 08302017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T10:58:25+00:00 |  | 000095199-01 | Wanda | Spicer | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09012017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08272017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828061 | R55 | Syncope and collapse | ICD10 | 09012017 | 08272017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07212017 | 2017-07-21T09:52:47+00:00 |  | 000099865-01 | Charles | Kauffman | S DAYTON ACUTE CARE CNSL | 913547 | SVEN E | RAYMOND | 1609830876 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 09012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07202017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721064 | I10 | Essential (primary) hypertension | ICD10 | 09012017 | 07202017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09022017 | 2017-09-02T11:46:04+00:00 |  | 000011406-01 | NAOMI | KESTERSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09012017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170904006 | R55 | Syncope and collapse | ICD10 | 09042017 | 09012017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09012017 | 2017-09-01T10:19:29+00:00 | 260818537243 | 000018669-01 | RALPH | REYNOLDS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08312017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901024 | R200 | Anesthesia of skin | ICD10 | 09012017 | 08312017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T10:57:45+00:00 |  | 000086259-01 | Robert | Kenney Jr | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 09012017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08272017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828110 | K5669 | Other intestinal obstruction | ICD10 | 09012017 | 08272017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08312017 | 2017-08-31T09:10:45+00:00 | 254997507242 | 000009136-01 | CLARA | MONTONEY | COLS INPATIENT CARE INC | 914611 | SOWMYA | VARRE | 1871753673 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831011 | R296 | Repeated falls | ICD10 | 09042017 | 08302017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09012017 | 2017-09-01T15:57:03+00:00 |  | 000014417-01 | NATALINA | IULIANELLI | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 08292017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901064 | I4891 | Unspecified atrial fibrillation | ICD10 | 09012017 | 08292017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08312017 | 2017-08-31T09:17:23+00:00 | 179397147242 | 000075625-01 | Carolyn | Hines | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09012017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831016 | M542 | Cervicalgia | ICD10 | 09012017 | 08302017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T12:54:34+00:00 |  | 000074491-01 | Sharon | Hughes | CASSANO COMMUNITY HEALTH | 904966 | CARLA M | MYERS | 1770581951 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 09012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08272017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828117 | J189, J441, R7989, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 09012017 | 08272017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08312017 | 2017-08-31T09:06:55+00:00 | 256190177242 | 000083445-01 | Betty | Dadum | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831009 | N119 | Chronic tubulo-interstitial nephritis, unspecified | ICD10 | 09042017 | 08302017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09012017 | 2017-09-01T10:33:34+00:00 |  | 000035556-01 | JONAH | MOUNTS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08312017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170904001 | R112 | Nausea with vomiting, unspecified | ICD10 | 09042017 | 08312017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08212017 | 2017-08-21T08:20:55+00:00 |  | 000108927-01 | David | Young | AJAZ UMERANI MD INC | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08182017 | 08192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821121 | R001, R0789, R42 | Dizziness and giddiness | ICD10 | 09012017 | 08182017 | 08192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09032017 | 2017-09-03T11:30:45+00:00 |  | 000015577-01 | MARJORIE | WHITMAN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09022017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170904004 | K5190 | Ulcerative colitis, unspecified, without complications | ICD10 | 09042017 | 09022017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08092017 | 2017-08-09T10:08:46+00:00 |  | 000092975-01 | Luan | Bowman | DAVID ZAPF DO INC | 902206 | DAVID M | ZAPF | 1518948611 | GRANDVIEW HOSPITAL & SOU | 902690 | 1053339507 | SOUTHVIEW MEDICAL CENTER | 0 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHVIEW MEDICAL CENTER | 09012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809055 | K5732 | Dvtrcli of lg int w/o perforation or abscess w/o bleeding | ICD10 | 09012017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T10:54:02+00:00 | 254293917240 | 000071426-01 | Christine | Krites | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09012017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828058 | N390 | Urinary tract infection, site not specified | ICD10 | 09012017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09012017 | 2017-09-01T13:12:56+00:00 |  | 000102153-01 | Dave | Lacey | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08302017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901054 | J9811, S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 09012017 | 08302017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09022017 | 2017-09-02T10:41:10+00:00 |  | 000093596-01 | Douglas | Hull | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170904002 | R079 | Chest pain, unspecified | ICD10 | 09042017 | 09012017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
