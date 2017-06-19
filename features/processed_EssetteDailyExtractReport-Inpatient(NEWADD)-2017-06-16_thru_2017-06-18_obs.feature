Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-16_thru_2017-06-18_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-16_thru_2017-06-18_OBS
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
| 06082017 | 2017-06-08T14:38:24+00:00 |  | 000059804-01 | MARY | LEACH | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06162017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608062 | J90, R079 | Chest pain, unspecified | ICD10 | 06162017 | 06072017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T09:23:41+00:00 | 025594668-7161 | 000011802-01 | LLOYD | DEAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06162017 | Approved | MediGold Medical Only | Reports | Observation | Inpatient | 06102017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612011 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06162017 | 06102017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06132017 | 2017-06-13T12:49:40+00:00 |  | 000086153-01 | Oneita | Steele | CLUTTER, STEVEN E | 935489 | STEVEN E | CLUTTER | 1992845895 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06122017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613052 | D649 | Anemia, unspecified | ICD10 | 06162017 | 06122017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06132017 | 2017-06-13T14:57:07+00:00 | 250833667164 | 000015705-01 | OTTO | NEIKE | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06132017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613066 | C9110, E860, N179, N390 | Urinary tract infection, site not specified | ICD10 | 06162017 | 06132017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06142017 | 2017-06-14T10:14:42+00:00 | 252105577164 | 000030838-01 | HANNAH | MORGAN | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06132017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614030 | A419 | Sepsis, unspecified organism | ICD10 | 06162017 | 06142017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06142017 | 2017-06-14T10:26:27+00:00 | 256191187164 | 000000840-01 | DELORES | WILCOX | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06132017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614032 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06162017 | 06132017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06152017 | 2017-06-15T09:41:59+00:00 | 163687607166 | 000065768-01 | GEORGE | MEYER | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06142017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615021 | C8510, K639 | Disease of intestine, unspecified | ICD10 | 06162017 | 06142017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06152017 | 2017-06-15T09:52:51+00:00 | 250990657166 | 000044324-01 | BETTY | RINEHART | EMERGENCY SERVICES INC | 908214 | ROLAND-JAKE L | PAREDES | 1396714598 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06152017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615025 | N200 | Calculus of kidney | ICD10 | 06162017 | 06152017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06152017 | 2017-06-15T09:58:58+00:00 | 251231127165 | 000013658-01 | EARL | WALL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06142017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615028 | I5023, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06162017 | 06142017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06152017 | 2017-06-15T10:14:35+00:00 |  | 000089780-01 | Ralph | Metz | OHIOHEALTH PHYS GRP | 910812 | DEEPIKA | BATHINI | 1447347158 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06162017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06142017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615034 | I639 | Cerebral infarction, unspecified | ICD10 | 06162017 | 06142017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06152017 | 2017-06-15T09:26:55+00:00 |  | 000077642-01 | Camilla | Wilson | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06142017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615039 | R42 | Dizziness and giddiness | ICD10 | 06162017 | 06142017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06152017 | 2017-06-15T11:28:12+00:00 |  | 000085814-01 | Sandra | Spaulding | GRANDVIEW HOSPITAL & SOU | 911335 | JOSEPH D | DICICCO | 1871595868 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 06162017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06142017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170615052 | M25511 | Pain in right shoulder | ICD10 | 06162017 |  | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06152017 | 2017-06-15T12:31:00+00:00 |  | 000002897-01 | JUDY | WILSON | PRIMARYONE HEALTH | 936683 | GARY L | GILLEN | 1851397236 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06142017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615061 | I509 | Heart failure, unspecified | ICD10 | 06162017 | 06142017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06162017 | 2017-06-16T09:18:34+00:00 | 260385127167 | 000102570-01 | Rebecca | Hail | HMP OF OHIO PC | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06162017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616013 | I4891 | Unspecified atrial fibrillation | ICD10 | 06162017 | 06162017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06162017 | 2017-06-16T14:10:51+00:00 |  | 000039494-01 | ROBERT | STAUFFER | RIVERSIDE SURG ASSOC INC | 907861 | EDWARD P | DOMINGUEZ | 1467400697 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06132017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616052 | D373 | Neoplasm of uncertain behavior of appendix | ICD10 | 06162017 | 06132017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
