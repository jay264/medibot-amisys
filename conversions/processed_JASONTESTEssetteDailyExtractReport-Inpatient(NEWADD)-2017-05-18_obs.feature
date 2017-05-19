Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-18_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-18_OBS
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
  And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image

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
| 03232017 | 2017-03-23T08:42:28+00:00 |  | 000059541-01 | GURNEY | CLUM | FAIRFIELD MEDICAL CENTER | 936439 |  | FAIRFIELD MEDICAL CENTER | 1467433763 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03222017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170324096 | K5900, N19, N201 | Calculus of ureter | ICD10 | 05182017 | 03222017 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03232017 | 2017-03-23T10:08:27+00:00 |  | 000101408-01 | Donna | Parker | DAYTON SPRINGFIELD CARDI | 926167 | CHUKWUEMEKE O | NKADI | 1598760845 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03222017 | 03222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170324108 | R079 | Chest pain, unspecified | ICD10 | 05182017 | 03222017 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03302017 | 2017-03-30T14:02:20+00:00 |  | 000099539-01 | Kathy | Drake | KEVIN M REID DO INC | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03292017 | 03302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170331048 | E860, R1084 | Generalized abdominal pain | ICD10 | 05182017 | 03292017 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04142017 | 2017-04-14T11:52:30+00:00 |  | 000100013-01 | Nellie | Greathouse | UMERANI, AJAZ | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04132017 | 04172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418028 | E162, R1937, R4182 | Altered mental status, unspecified | ICD10 | 05182017 | 04132017 | 04172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04242017 | 2017-04-24T13:30:36+00:00 |  | 000039149-01 | RUBY | CROWLEY | INTERNAL MED CARE INC | 904949 | INGRID M | BROWN | 1952309726 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04222017 | 04262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425072 | N179 | Acute kidney failure, unspecified | ICD10 | 05182017 | 04222017 | 04262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05012017 | 2017-05-01T13:47:35+00:00 |  | 000115378-01 | GEORGIA | CAIRNS | SURG ASSOC OF GREENE COU | 903547 | CHRISTOPHER K | MADISON | 1326015504 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302017 | 05022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502061 | E876, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05182017 | 04302017 | 05022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05012017 | 2017-05-01T15:40:15+00:00 |  | 000075762-01 | Dennis | Norrish | TRI-COUNTY UROLOGY | 915740 | STEPHEN L | DONA | 1649257536 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04282017 | 04292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502075 | N201 | Calculus of ureter | ICD10 | 05182017 | 04282017 | 04292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042017 | 2017-05-04T09:06:21+00:00 |  | 000116534-01 | Raymond | Wanstrath | THE CHRIST HSP MED ASSOC | 944411 | JOSEPH R | DAGENBACH | 1205838109 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 05182017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05032017 | 05092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508003 | I82220 | Acute embolism and thrombosis of inferior vena cava | ICD10 | 05182017 | 05032017 | 05092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05082017 | 2017-05-08T14:26:40+00:00 |  | 000078059-01 | Jerri | Grooms | ALLIANCE PHYSICIANS INC | 903445 | THOMAS J | REID | 1245296409 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05152017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509002 | C541 | Malignant neoplasm of endometrium | ICD10 | 05182017 | 05152017 | 05162017 | 58571, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 05082017 | 2017-05-08T16:38:14+00:00 |  | 000114689-01 | Stephen | Gihl | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05082017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509136 | R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 05182017 | 05082017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05102017 | 2017-05-10T07:44:55+00:00 |  | 000074597-01 | Elmer | Scott | ALLIANCE PHYSICIANS INC | 910766 | JACOB C | YANNETTA III | 1992873046 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05102017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510076 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 05182017 | 05102017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05102017 | 2017-05-10T09:11:05+00:00 |  | 000088411-01 | Barbara | Taborn | APOGEE MED GRP OHIO INC | 945887 | HIDETAKA | KITAZONO | 1033316104 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510087 | L03115 | Cellulitis of right lower limb | ICD10 | 05182017 | 05092017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05112017 | 2017-05-11T12:25:57+00:00 |  | 000055789-01 | CHARLES | SPRY | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05102017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511040 | N179 | Acute kidney failure, unspecified | ICD10 | 05182017 | 05102017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05122017 | 2017-05-12T13:09:10+00:00 |  | 000005242-01 | WINONA | ROBERTS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05112017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512048 | I4891 | Unspecified atrial fibrillation | ICD10 | 05182017 | 05112017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05152017 | 2017-05-15T10:21:19+00:00 |  | 000009328-01 | RUBY | MOXLEY | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05102017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515054 | N390 | Urinary tract infection, site not specified | ICD10 | 05182017 | 05102017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05152017 | 2017-05-15T11:25:33+00:00 |  | 000065040-01 | GEORGE | HIXON | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05132017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515062 | R319 | Hematuria, unspecified | ICD10 | 05182017 | 05132017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05152017 | 2017-05-15T12:25:58+00:00 |  | 000070304-01 | Mary | Ledgett | COMMUNITY HSPIST LLC | 936308 | DAVID J | DUNBAR | 1295712032 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05142017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515082 | I480 | Paroxysmal atrial fibrillation | ICD10 | 05182017 | 05142017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05162017 | 2017-05-16T10:35:10+00:00 | 026360774-7136 | 000054970-01 | ELIZABETH | MINO | COPC CENTRAL OHIO PRIMAR | 935868 | JACQUELINE M | AMICO | 1487640264 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516017 | R079 | Chest pain, unspecified | ICD10 | 05182017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05162017 | 2017-05-16T10:42:17+00:00 | 026480185-7135 | 000105031-01 | John | Beyer | COPC CENTRAL OHIO PRIMAR | 937380 | NEIL E | RICHARD | 1801865670 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05182017 | Approved | MediGold Essential Care | EMR | Observation | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516020 | R4182 | Altered mental status, unspecified | ICD10 | 05182017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T09:52:57+00:00 |  | 000117046-01 | DALE | CARR | GENESIS MEDICAL GRP LLC | 948505 | CLAUDIA J | KIM | 1477843480 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05182017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516051 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 05182017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T11:30:32+00:00 |  | 000078296-01 | Douglas | Napier | ALLIANCE PHYSICIANS INC | 908728 | RAJA A | NAZIR | 1003871963 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516068 | I249 | Acute ischemic heart disease, unspecified | ICD10 | 05182017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T13:40:57+00:00 |  | 000109548-01 | Teresa | Glaub | J B WINTERS DO LLC | 921534 | JENNIFER B | WINTERS | 1235102591 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 05182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 05152017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516082 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05182017 | 05152017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05162017 | 2017-05-16T14:31:12+00:00 |  | 000085068-01 | Elke | Ferneding | SOUND KENWOOD HSPISTS OF | 924450 | RANA K | SINGH | 1518131085 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 05152017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516093 | S43004A | Unspecified dislocation of right shoulder joint, init encntr | ICD10 | 05182017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05172017 | 2017-05-17T08:24:23+00:00 |  | 000112291-01 | Ann | Seay | FCMH MED & SURG ASSOC | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 05182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517009 | E860, I10 | Essential (primary) hypertension | ICD10 | 05182017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05172017 | 2017-05-17T09:22:28+00:00 | 025974899-7136 | 000043107-01 | LINDA | BURTON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517011 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 05182017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05172017 | 2017-05-17T09:41:56+00:00 |  | 000073649-01 | Pauline | Allen | 24 ON PHYSICIANS PC | 935143 | JAMES J | HOMSY | 1871641647 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517018 | R55 | Syncope and collapse | ICD10 | 05182017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05172017 | 2017-05-17T13:50:59+00:00 |  | 000092523-01 | Raymond | Claar Jr | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517056 | R0602 | Shortness of breath | ICD10 | 05182017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05182017 | 2017-05-18T08:01:36+00:00 |  | 000107907-01 | Evelyn | Dean | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518014 | R6889 | Other general symptoms and signs | ICD10 | 05182017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05182017 | 2017-05-18T09:04:25+00:00 |  | 000057453-01 | JOHN | FINNEY | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05172017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518015 | R6889 | Other general symptoms and signs | ICD10 | 05182017 | 05172017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05182017 | 2017-05-18T09:09:55+00:00 |  | 000086031-01 | Martha | Pollock | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05172017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518016 | R6889 | Other general symptoms and signs | ICD10 | 05182017 | 05172017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05182017 | 2017-05-18T15:05:43+00:00 |  | 000052582-01 | BEVERLY | MARRIOTT | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518057 | R6889 | Other general symptoms and signs | ICD10 | 05182017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05172017 | 2017-05-17T15:07:52+00:00 |  | 000046039-01 | JOAN | TOWNSEND | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05162017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518059 | I4891 | Unspecified atrial fibrillation | ICD10 | 05182017 | 05162017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
