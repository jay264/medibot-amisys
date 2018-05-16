Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-11_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-11_OBS
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
| 03272018 | 2018-03-27T08:49:54+00:00 |  | 000034560-01 | HAROLD | LAMA | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05082018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327026 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05112018 | 05082018 | 05102018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05082018 | 2018-05-08T15:34:27+00:00 |  | 000040994-01 | Jane | Gischler | SOUND INPATIENT PHYS OF | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 05072018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508085 | R531 | Weakness | ICD10 | 05112018 | 05072018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05012018 | 2018-05-01T09:15:09+00:00 |  | 000076718-01 | Noah | Miller | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04272018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501006 | R55 | Syncope and collapse | ICD10 | 05112018 | 04272018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05012018 | 2018-05-01T09:33:54+00:00 |  | 000044043-01 | DONALD | KINSER | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04272018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501008 | J159 | Unspecified bacterial pneumonia | ICD10 | 05112018 | 04272018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05022018 | 2018-05-02T17:00:12+00:00 |  | 000085666-01 | Arthur | Pack | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502101 | R42 | Dizziness and giddiness | ICD10 | 05112018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05032018 | 2018-05-03T13:22:21+00:00 |  | 000054327-01 | JOYCE | MAYNARD | MOUNT CARMEL HLTH SYS | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05022018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503028 | R4182 | Altered mental status, unspecified | ICD10 | 05112018 | 05022018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05042018 | 2018-05-04T16:13:18+00:00 |  | 000081593-01 | Nancy | White | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05112018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05022018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504078 | A419 | Sepsis, unspecified organism | ICD10 | 05112018 | 05022018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T14:35:57+00:00 |  | 000019053-01 | MARGARET | PORT | OHIOHEALTH PHYS GRP | 922935 | MIRYAM L | BURELLI | 1568692564 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Observation | OBSV | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05032018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507006 | R109 | Unspecified abdominal pain | ICD10 | 05112018 | 05032018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05072018 | 2018-05-07T10:55:16+00:00 |  | 000034815-01 | JIM | SHULTZ | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05032018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507007 | E871, E872, I959 | Hypotension, unspecified | ICD10 | 05112018 | 05032018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05072018 | 2018-05-07T16:27:11+00:00 |  | 000057590-01 | GEORGE | GRIFFITH | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05062018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507097 | K5669, K56609 | K56609 | ICD10 | 05112018 | 05062018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05102018 | 2018-05-10T09:45:39+00:00 |  | 000093514-01 | Karla | Redd | LICKING MEM HLTH PROF | 918520 | JAMIE A | RHODES | 1619120276 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05112018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05092018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510035 | I259, R55 | Syncope and collapse | ICD10 | 05112018 | 05092018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05102018 | 2018-05-10T14:19:33+00:00 |  | 000015577-01 | MARJORIE | WHITMAN | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510041 | I639 | Cerebral infarction, unspecified | ICD10 | 05112018 | 05092018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T14:40:09+00:00 |  | 000057441-01 | TERRY | PETERS | CENTRAL OH HSPISTS INC | 914542 | JAMEELAH S | HARRIS | 1932368818 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05032018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504067 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 05112018 | 05032018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05042018 | 2018-05-04T17:02:08+00:00 |  | 000100971-01 | Jack | Hobt | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05112018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05032018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507016 | R55 | Syncope and collapse | ICD10 | 05112018 | 05032018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05062018 | 2018-05-06T08:10:06+00:00 |  | 000108625-01 | Carl | Birkemeyer | MEDICINE INPATIENT GROUP | 926079 | MADHU P | CHALASANI | 1780630947 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 05112018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05042018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507035 | I472 | Ventricular tachycardia | ICD10 | 05112018 | 05042018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05082018 | 2018-05-08T07:43:13+00:00 |  | 000121646-01 | Albert | Cecere | GERICARE ASSOCIATES INC | 921316 | SHWETAL G | DESAI | 1083687248 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05112018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 05072018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508043 | I4891, R112, R42, R55 | Syncope and collapse | ICD10 | 05112018 | 05072018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05082018 | 2018-05-08T11:32:06+00:00 |  | 000030345-01 | VIRGINIA | MILAM | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05062018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508053 | I509 | Heart failure, unspecified | ICD10 | 05142018 | 05062018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05082018 | 2018-05-08T14:57:30+00:00 |  | 000089448-01 | Michele | Camarota | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05072018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508078 | R079 | Chest pain, unspecified | ICD10 | 05112018 | 05072018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05082018 | 2018-05-08T15:20:25+00:00 |  | 000015917-01 | MARY | SERGIO | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05072018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508081 | R296 | Repeated falls | ICD10 | 05112018 | 05072018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05082018 | 2018-05-08T15:32:16+00:00 |  | 000055112-01 | CAROLYN | PYLES | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05072018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508084 | R296 | Repeated falls | ICD10 | 05112018 | 05072018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092018 | 2018-05-09T09:47:04+00:00 |  | 000112426-01 | Robert | Delancey | LICKING MEM HLTH PROF | 918520 | JAMIE A | RHODES | 1619120276 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05112018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05082018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509053 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05112018 | 05082018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05092018 | 2018-05-09T15:44:41+00:00 |  | 000044848-01 | VIRGINIA | BANTON | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05072018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509077 | S93402A | Sprain of unspecified ligament of left ankle, init encntr | ICD10 | 05112018 | 05082018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05092018 | 2018-05-09T15:57:04+00:00 |  | 000112684-01 | KAREN | FITZWATER | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 05082018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509082 | R079 | Chest pain, unspecified | ICD10 | 05112018 | 05082018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05102018 | 2018-05-10T09:42:14+00:00 |  | 000106370-01 | Ruth | Hunter | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05082018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510007 | R55 | Syncope and collapse | ICD10 | 05112018 | 05082018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05102018 | 2018-05-10T14:10:39+00:00 |  | 000096562-01 | Gary | Harris | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05082018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510040 | R0602 | Shortness of breath | ICD10 | 05112018 | 05082018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05102018 | 2018-05-10T16:11:15+00:00 |  | 000109105-01 | Helen | Postle | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05112018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 05072018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510058 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 05112018 | 05072018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05112018 | 2018-05-11T09:50:27+00:00 |  | 000067671-01 | CHARLES | WALKER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511012 | R001, R55 | Syncope and collapse | ICD10 | 05112018 | 05092018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05112018 | 2018-05-11T10:00:37+00:00 |  | 000034815-01 | JIM | SHULTZ | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05032018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511013 | E871, I959, R0902 | Hypoxemia | ICD10 | 05112018 | 05032018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05102018 | 2018-05-10T15:23:45+00:00 |  | 000058069-01 | MARTHA | HART | COMMUNITY HSPIST LLC | 946367 | JOHN G | HATANELAS | 1225379795 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05082018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511015 | N390, R4182 | Altered mental status, unspecified | ICD10 | 05112018 | 05082018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05112018 | 2018-05-11T10:29:20+00:00 |  | 000054923-01 | CLIFFORD | JERNIGAN | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 05052018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511017 | R4182 | Altered mental status, unspecified | ICD10 | 05112018 | 05052018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05112018 | 2018-05-11T15:24:37+00:00 |  | 000063509-01 | EVELYN | DELONG | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05092018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511070 | R079 | Chest pain, unspecified | ICD10 | 05112018 | 05092018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05112018 | 2018-05-11T14:13:57+00:00 |  | 000086185-01 | Edna | Lang | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05112018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05102018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511084 | E869, J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 05112018 | 05102018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
