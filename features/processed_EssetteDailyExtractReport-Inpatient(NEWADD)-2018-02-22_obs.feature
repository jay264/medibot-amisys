Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-22_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-22_OBS
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
| 01312018 | 2018-01-31T11:22:51+00:00 |  | 000095328-01 | Judy | Dunseith | MERCY HEALTH PHYSICIANS | 920930 | CHARLES | MILLER | 1417956202 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 02222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02192018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131059 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02222018 | 02192018 | 02202018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02142018 | 2018-02-14T10:24:23+00:00 |  | 000084209-01 | Ronald | Probasco | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02202018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214020 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02222018 | 02192018 | 02212018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02152018 | 2018-02-15T09:06:56+00:00 |  | 000083468-01 | Leslie | Wilson | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02142018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215051 | L97503 | Non-prs chronic ulcer oth prt unsp foot w necrosis of muscle | ICD10 | 02222018 | 02142018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01172018 | 2018-01-17T12:55:23+00:00 |  | 000106808-01 | Jeri | Park | SPFLD ORTHO SPORTS MED L | 927402 | KEVIN C | ZARTMAN | 1710173885 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 02222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02152018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117048 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 02222018 | 02152018 | 02172018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01302018 | 2018-01-30T12:41:50+00:00 |  | 000110662-01 | Joyce | Shackelford | ORTHO ASSOC OF DAYTON | 910785 | THOMAS M | COOK | 1942281308 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02202018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130101 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02222018 | 02202018 | 02212018 | 20985, 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02062018 | 2018-02-06T10:06:00+00:00 |  | 000090157-01 | Jarie | Wilburn | MEDICINE INPATIENT GROUP | 926079 | MADHU P | CHALASANI | 1780630947 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 02222018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206044 | R531 | Weakness | ICD10 | 02222018 | 02052018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02062018 | 2018-02-06T13:09:08+00:00 |  | 000086429-01 | Gary | Miller | APOGEE MED GRP OHIO INC | 912176 | AMISH S | OZA | 1396953956 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02052018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206066 | R29810, R471 | Dysarthria and anarthria | ICD10 | 02222018 | 02052018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02142018 | 2018-02-14T11:17:15+00:00 |  | 000079841-01 | David | Traub | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02132018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214033 | R079 | Chest pain, unspecified | ICD10 | 02222018 | 02132018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02142018 | 2018-02-14T14:46:47+00:00 |  | 000045591-01 | Thomas | Stout | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02132018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214053 | I509 | Heart failure, unspecified | ICD10 | 02222018 | 02132018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02192018 | 2018-02-19T10:05:53+00:00 |  | 000038096-01 | JOHN | MCGRAW | APOGEE MED GRP OHIO INC | 914214 | YANJUAN | ZHU | 1316143498 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219034 | I4891 | Unspecified atrial fibrillation | ICD10 | 02222018 | 02172018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02202018 | 2018-02-20T15:58:44+00:00 |  | 000111407-01 | Tamera | Kindelberger | MIAMI VALLEY HSPISTS GRP | 914654 | ELIE R | GHAZAL | 1982657391 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02192018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221054 | R1032 | Left lower quadrant pain | ICD10 | 02222018 | 02192018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02212018 | 2018-02-21T10:59:57+00:00 |  | 000078899-01 | Jerry | Robbins | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02222018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02202018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221083 | E162, I959, N189, R748, S51011A, W06XXXA, T07XXXA | T07XXXA | ICD10 | 02222018 | 02202018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02212018 | 2018-02-21T12:15:47+00:00 |  | 000050437-01 | CAROL | FORTNEY | SOUND INPATIENT PHYS OF | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02202018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221087 | M6281, R4182 | Altered mental status, unspecified | ICD10 | 02222018 | 02202018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02212018 | 2018-02-21T13:39:44+00:00 |  | 000100025-01 | Myron | Lloyd Jr | DIZON, VICTOR V | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02202018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222008 | S22009A, S3981XA, S46911A | Strain unsp musc/fasc/tend at shldr/up arm, right arm, init | ICD10 | 02222018 | 02202018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02212018 | 2018-02-21T14:26:29+00:00 |  | 000090835-01 | Barbara | Campbell | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02202018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222013 | I208, R079 | Chest pain, unspecified | ICD10 | 02222018 | 02202018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02222018 | 2018-02-22T10:31:39+00:00 |  | 000101467-01 | Gary | Smith | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222020 | R109 | Unspecified abdominal pain | ICD10 | 02222018 | 02172018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02222018 | 2018-02-22T07:30:48+00:00 |  | 000068235-01 | Sharron | Burke | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02192018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222021 | R112 | Nausea with vomiting, unspecified | ICD10 | 02222018 | 02192018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02152018 | 2018-02-15T09:54:14+00:00 |  | 000085723-01 | Bonnie | Enos | SOUND INPATIENT PHYS OF | 927326 | UMASANKAR | KAKUMANU | 1699068312 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02222018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02142018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215033 | J189, J441, R748, R7989, Z789 | Other specified health status | ICD10 | 02222018 | 02142018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02162018 | 2018-02-16T08:18:58+00:00 |  | 000091468-01 | Lowell | Gray | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02192018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216001 | R001 | Bradycardia, unspecified | ICD10 | 02222018 | 02192018 | 02202018 | 33208 | INSERT PERMNT PACEMAKER AV SEQUENT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02162018 | 2018-02-16T12:16:42+00:00 |  | 000032081-01 | JOSEPH | FRAZIER | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02222018 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 02152018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216053 | D751, J441, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02222018 | 02152018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02162018 | 2018-02-16T12:41:18+00:00 |  | 000087340-01 | Hilda | Hesse | ONCOLOGY HEMATOLOGY CARE | 921215 | PAULA F | WEISENBERGER | 1083608285 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02222018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02162018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216063 | C55 | Malignant neoplasm of uterus, part unspecified | ICD10 | 02222018 | 02162018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02192018 | 2018-02-19T08:04:36+00:00 |  | 000018157-01 | BENTON | JULIAN | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219011 | F3189 | Other bipolar disorder | ICD10 | 02222018 | 02172018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02192018 | 2018-02-19T08:05:56+00:00 |  | 000062053-01 | NANCY | BYERS | AEBI GINTY ROMAKER SPROU | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02182018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219013 | I951 | Orthostatic hypotension | ICD10 | 02222018 | 02182018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02192018 | 2018-02-19T15:00:05+00:00 |  | 000109057-01 | Dennis | Robertson | FAIRFIELD HLTHCARE PROFS | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02192018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220041 | J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02222018 | 02192018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02212018 | 2018-02-21T09:57:35+00:00 |  | 000094205-01 | Sylvia | Justice | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Observation | OBSV | Concurrent Review | CONC |  | CENTRAL OH PRIMARY CARE PHYS INC | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02192018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221007 | R1900 | Intra-abd and pelvic swelling, mass and lump, unsp site | ICD10 | 02222018 | 02192018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02212018 | 2018-02-21T12:11:54+00:00 |  | 000032984-01 | LAWRENCE | FATHBRUCKNER | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221030 | R109 | Unspecified abdominal pain | ICD10 | 02222018 | 02162018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02212018 | 2018-02-21T13:39:56+00:00 |  | 000052063-01 | DONALD | GOURLEY | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02202018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221050 | Z45018 | Encounter for adjust and mgmt oth prt cardiac pacemaker | ICD10 | 02222018 | 02202018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02222018 | 2018-02-22T08:24:38+00:00 |  | 000114239-01 | Lena | Simpson | COMMUNITY HSPIST LLC | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02202018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222054 | R112 | Nausea with vomiting, unspecified | ICD10 | 02222018 | 02202018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02222018 | 2018-02-22T16:04:01+00:00 |  | 000067681-01 | PAMELA | BARRETT | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02192018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222081 | R6889 | Other general symptoms and signs | ICD10 | 02222018 | 02192018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
