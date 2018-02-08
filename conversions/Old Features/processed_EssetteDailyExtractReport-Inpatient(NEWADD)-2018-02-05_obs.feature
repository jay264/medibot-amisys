Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-05_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-05_OBS
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
| 12222017 | 2017-12-22T14:28:12+00:00 |  | 000105420-01 | Jane | Palmer | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01292018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222062 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02052018 | 01292018 | 02012018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 01232018 | 2018-01-23T11:14:59+00:00 |  | 000007275-01 | BOB | DEVOL | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01222018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123043 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02052018 | 01222018 | 01252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01282018 | 2018-01-28T12:22:29+00:00 |  | 000098026-01 | Gary | Lustgarten | HOSPITALIST MEDICINE PHY | 923027 | NAMRATHA R | MAPAKSHI | 1972738235 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02052018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 01282018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129057 | A419, L0390, R4182 | Altered mental status, unspecified | ICD10 | 02052018 | 01282018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01242018 | 2018-01-24T14:01:16+00:00 |  | 000093592-01 | John | Stephens | FAIRFIELD HLTHCARE PROFS | 910541 | KRISHNA S | MANNAVA | 1780727255 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01232018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124059 | M79604 | Pain in right leg | ICD10 | 02052018 | 01232018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01252018 | 2018-01-25T08:22:38+00:00 |  | 000014484-01 | CHARLES | BOWERSOCK | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01242018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125009 | R079, R109 | Unspecified abdominal pain | ICD10 | 02052018 | 01242018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01252018 | 2018-01-25T08:24:49+00:00 |  | 000055168-01 | RAYMOND | HIEATT | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01242018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125011 | R222 | Localized swelling, mass and lump, trunk | ICD10 | 02052018 | 01242018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01252018 | 2018-01-25T14:15:08+00:00 |  | 000079304-01 | Tommy | Gaitten | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1770669871 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 01252018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125076 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02052018 | 01252018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01262018 | 2018-01-26T12:41:03+00:00 |  | 000043885-01 | Edward | Manbevers | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01252018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126052 | E119, I4892 | Unspecified atrial flutter | ICD10 | 02052018 | 01252018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01272018 | 2018-01-27T18:51:46+00:00 |  | 000050437-01 | CAROL | FORTNEY | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01262018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129049 | A419 | Sepsis, unspecified organism | ICD10 | 02052018 | 01262018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01282018 | 2018-01-28T18:47:32+00:00 |  | 000066063-01 | NANCY | WETZEL | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01262018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129110 | C229, E860, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 02052018 | 01262018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01292018 | 2018-01-29T15:04:15+00:00 |  | 000003408-01 | RUTH | ANDERSON | FAIRFIELD COUNTY COMBINE | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129118 | J189, R0600, R531 | Weakness | ICD10 | 02052018 | 01282018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01292018 | 2018-01-29T15:14:34+00:00 |  | 000075408-01 | Charlotte | Estes | GRANDVIEW HOSPITAL & SOU | 904949 | INGRID M | BROWN | 1952309726 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 02052018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01282018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129121 | R55 | Syncope and collapse | ICD10 | 02052018 | 01282018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01302018 | 2018-01-30T07:25:13+00:00 |  | 000002524-01 | JOHN | DYE | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01282018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130011 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 02052018 | 01282018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01292018 | 2018-01-29T06:25:10+00:00 |  | 000071521-01 | Grover | Temple | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01272018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130013 | G459, I639 | Cerebral infarction, unspecified | ICD10 | 02052018 | 01272018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01312018 | 2018-01-31T14:36:20+00:00 |  | 000033439-01 | THELMA | RANKE | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01312018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131095 | G9340, N390 | Urinary tract infection, site not specified | ICD10 | 02052018 | 01312018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01242018 | 2018-01-24T14:29:56+00:00 |  | 000099530-01 | Donna | Keyes | MERCY HEALTH PHYSICIANS | 921669 | ROBERT D | CRANLEY | 1770558058 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 02052018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 01312018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180124063 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 02052018 |  | 02012018 | 35301, 76998 | ULTRASONIC GUIDANCE INTRAOPERATIVE | CPT | 1, 1 | 1, 1 | Approved Observation, Approved Observation | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 01292018 | 2018-01-29T07:48:09+00:00 |  | 000099996-01 | Terry | Wagle | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01282018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129025 | R4182 | Altered mental status, unspecified | ICD10 | 02052018 | 01282018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01292018 | 2018-01-29T12:02:07+00:00 |  | 000089912-01 | Gladys | Chittick | SYCAMORE PRIMARY CARE GR | 902589 | ROBERT | SAWYER | 1730160268 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01272018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130003 | J189 | Pneumonia, unspecified organism | ICD10 | 02052018 | 01272018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01302018 | 2018-01-30T09:44:12+00:00 |  | 000026938-01 | LORNA | MCCOLLUM | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01292018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130032 | I4891, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02052018 | 01292018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01302018 | 2018-01-30T13:42:04+00:00 |  | 000102049-01 | Georgean | Johnson | SOUND INPATIENT PHYS OF | 925203 | ASAD S | ALI | 1053386938 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 02052018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 01292018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131003 | M79602, M7989, S40022D | Contusion of left upper arm, subsequent encounter | ICD10 | 02052018 | 01292018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01302018 | 2018-01-30T14:57:35+00:00 |  | 000101296-01 | Alvie | Cornett | MEDICINE INPATIENT GROUP | 926079 | MADHU P | CHALASANI | 1780630947 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 02052018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 01292018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131010 | J189, J918 | Pleural effusion in other conditions classified elsewhere | ICD10 | 02052018 | 01292018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01312018 | 2018-01-31T15:37:42+00:00 |  | 000048970-01 | STEVEN | RIDDLE | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01302018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131098 | I5031, R0600 | Dyspnea, unspecified | ICD10 | 02052018 | 01302018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01312018 | 2018-01-31T15:36:20+00:00 |  | 000079717-01 | Mary | Miller | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01302018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131101 | J189 | Pneumonia, unspecified organism | ICD10 | 02052018 | 01302018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02012018 | 2018-02-01T10:37:14+00:00 |  | 000026847-01 | BETTY | ETTERS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01312018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201015 | R0602 | Shortness of breath | ICD10 | 02052018 | 01302018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02012018 | 2018-02-01T08:40:33+00:00 |  | 000023103-01 | LEWIS | LOMAGLIO | COMMUNITY HSPIST LLC | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01312018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201024 | R197 | Diarrhea, unspecified | ICD10 | 02052018 | 01312018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02012018 | 2018-02-01T14:18:33+00:00 |  | 000072620-01 | BRENDA | CURRY | SOUND INPATIENT PHYS OF | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01312018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201054 | S42201A | Unsp fracture of upper end of right humerus, init | ICD10 | 02052018 | 01312018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02012018 | 2018-02-01T15:38:23+00:00 |  | 000033990-01 | WILDA | THOMPSON | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201064 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02052018 | 02012018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02012018 | 2018-02-01T17:26:49+00:00 |  | 000044997-01 | JOHN | MILLER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01312018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202012 | R079 | Chest pain, unspecified | ICD10 | 02052018 | 01312018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02022018 | 2018-02-02T06:49:25+00:00 |  | 000085036-01 | Lloyd | Soard | MERCY HEALTH PHYSICIANS | 921134 | RAJINDER P | SINGH | 1184758799 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 02052018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202017 | I471 | Supraventricular tachycardia | ICD10 | 02052018 | 02012018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02022018 | 2018-02-02T09:25:46+00:00 |  | 000121356-01 | William | Smart Jr | ACCESS MEDICAL GROUP LLC | 911415 | NAVEEN | BEKKAM | 1225196371 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 02052018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02012018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202023 | A419, J111, R0902 | Hypoxemia | ICD10 | 02052018 | 02012018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02022018 | 2018-02-02T11:33:43+00:00 |  | 000037957-01 | GLADYS | GEANEKOPULOS | HOSPITALIST MEDICINE PHY | 935011 | JAY M | WALLIN | 1528090768 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202037 | S329XXA | Fracture of unsp parts of lumbosacral spine and pelvis, init | ICD10 | 02052018 | 02012018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02032018 | 2018-02-03T13:35:27+00:00 |  | 000085291-01 | Jayne | Young | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02022018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205006 | R52 | Pain, unspecified | ICD10 | 02052018 | 02022018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02032018 | 2018-02-03T14:19:17+00:00 |  | 000054415-01 | ROOSEVELT | LAWSON | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02052018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02022018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205013 | A419 | Sepsis, unspecified organism | ICD10 | 02052018 | 02022018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02042018 | 2018-02-04T14:20:15+00:00 |  | 000080711-01 | Lana | Mizer | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02052018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02032018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205044 | R296 | Repeated falls | ICD10 | 02052018 | 02032018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
