Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-21_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-21_OBS
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
| 01302018 | 2018-01-30T11:26:20+00:00 |  | 000044021-01 | ROBERT | BILLHEIMER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 01292018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130051 | G809 | Cerebral palsy, unspecified | ICD10 | 02212018 | 01292018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 01302018 | 2018-01-30T14:50:22+00:00 |  | 000034055-01 | PAUL | KRAUSS | HOSPITALIST MEDICINE PHY | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01292018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131008 | T82868A | Thrombosis of vascular prosth dev/grft, init | ICD10 | 02212018 | 01292018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01302018 | 2018-01-30T15:10:38+00:00 |  | 000041403-01 | LU | PFLAUM | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01302018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131012 | N390, R079 | Chest pain, unspecified | ICD10 | 02212018 | 01302018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T08:00:09+00:00 |  | 000087361-01 | Roger | Mace | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02022018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205050 | I4891 | Unspecified atrial fibrillation | ICD10 | 02212018 | 02022018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T09:55:21+00:00 |  | 000113428-01 | NANCY | COLLINS | SOUND INPATIENT PHYS OF | 927692 | SHAHED | HASNAT | 1770915951 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02022018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205057 | M549 | Dorsalgia, unspecified | ICD10 | 02212018 | 02022018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02072018 | 2018-02-07T17:14:54+00:00 |  | 000049314-01 | ELNORA | TAYLOR | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208022 | S42033A | Disp fx of lateral end of unsp clavicle, init for clos fx | ICD10 | 02212018 | 02072018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02082018 | 2018-02-08T10:07:59+00:00 |  | 000045177-01 | RAYMOND | KROLL | MOUNT CARMEL HLTH PRVDRS | 932450 | JOSHUA R | SILVERSTEIN | 1952587743 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208037 | I472 | Ventricular tachycardia | ICD10 | 02212018 | 02072018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02152018 | 2018-02-15T09:49:36+00:00 |  | 000112401-01 | Ralph | Roe | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02142018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215039 | R0602 | Shortness of breath | ICD10 | 02212018 | 02142018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02192018 | 2018-02-19T08:49:27+00:00 |  | 000034891-01 | CHARLES | REES | CENTRAL OH HSPISTS INC | 907945 | MOHAN K | THIRUGNANAM | 1518188051 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02182018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219024 | R410 | Disorientation, unspecified | ICD10 | 02212018 | 02182018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12112017 | 2017-12-11T18:24:46+00:00 |  | 000046332-01 | DELBERT | BACKUS | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12092017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 171226147865.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212082 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02212018 | 12092017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02082018 | 2018-02-08T10:15:28+00:00 |  | 000024434-01 | ARNETTA | SEYMOUR | BERGER HEALTH PARTNERS | 934811 | YADWINDER | SINGH | 1083608830 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208053 | J111, N390, R4182 | Altered mental status, unspecified | ICD10 | 02212018 | 02072018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02142018 | 2018-02-14T09:52:11+00:00 |  | 000032203-01 | RICHARD | WELLS SR | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02132018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214017 | I214, N390, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 02212018 | 02132018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02142018 | 2018-02-14T10:26:00+00:00 |  | 000062873-01 | JACK | LOLESS | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02132018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214019 | M542 | Cervicalgia | ICD10 | 02212018 | 02132018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02152018 | 2018-02-15T09:57:08+00:00 |  | 000043895-01 | RICHARD | BROWN | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02152018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215022 | E872 | Acidosis | ICD10 | 02212018 | 02152018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02202018 | 2018-02-20T09:30:13+00:00 |  | 000010217-01 | MARY | BROWER | HOSPITALIST MEDICINE PHY | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02152018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220013 | R112 | Nausea with vomiting, unspecified | ICD10 | 02212018 | 02152018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02192018 | 2018-02-19T13:18:55+00:00 |  | 000030828-01 | JOAN | STEWART | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220019 | J9602 | Acute respiratory failure with hypercapnia | ICD10 | 02212018 | 02162018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02212018 | 2018-02-21T10:16:25+00:00 |  | 000006480-01 | THOMAS | GEMPERLINE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02182018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221012 | R55 | Syncope and collapse | ICD10 | 02212018 | 02182018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02212018 | 2018-02-21T10:20:02+00:00 |  | 000026609-01 | VERNON | WILLIAMS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221013 | R4182 | Altered mental status, unspecified | ICD10 | 02212018 | 02172018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02212018 | 2018-02-21T10:35:51+00:00 |  | 000052123-01 | SHARON | CARCONE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 02172018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221015 | I639 | Cerebral infarction, unspecified | ICD10 | 02212018 | 02172018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02212018 | 2018-02-21T10:46:03+00:00 |  | 000114965-01 | Charles | Dillinger | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 02172018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221017 | G809 | Cerebral palsy, unspecified | ICD10 | 02212018 | 02172018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02142018 | 2018-02-14T13:55:27+00:00 |  | 000090307-01 | Sylvia | Flemings | MIAMI VALLEY HSPISTS GRP | 914654 | ELIE R | GHAZAL | 1982657391 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02142018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214042 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 02212018 | 02142018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02152018 | 2018-02-15T09:40:16+00:00 |  | 000098439-01 | Willadean | Free | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02142018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215046 | R079 | Chest pain, unspecified | ICD10 | 02212018 | 02142018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02162018 | 2018-02-16T11:20:02+00:00 |  | 000101184-01 | ROSCOE | MICKEY | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02152018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216024 | Z950 | Presence of cardiac pacemaker | ICD10 | 02212018 | 02152018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02162018 | 2018-02-16T11:53:07+00:00 |  | 000053604-01 | SHIRLEY | TULLOS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02212018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 02152018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216033 | J159 | Unspecified bacterial pneumonia | ICD10 | 02212018 | 02152018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02172018 | 2018-02-17T12:11:43+00:00 |  | 000001151-01 | JANICE | ERLICH | HOSPITALIST MEDICINE PHY | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219002 | J9602 | Acute respiratory failure with hypercapnia | ICD10 | 02212018 | 02172018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02192018 | 2018-02-19T15:41:06+00:00 |  | 000019553-01 | ELIZABETH | EPLING | COLS INPATIENT CARE INC | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220025 | K859 | Acute pancreatitis, unspecified | ICD10 | 02212018 | 02172018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02192018 | 2018-02-19T15:09:56+00:00 |  | 000014426-01 | HAROLD | CAIN | MOUNT CARMEL HLTH SYS | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220047 | I420, R4182, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 02212018 | 02172018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02192018 | 2018-02-19T16:05:07+00:00 |  | 000036724-01 | THOMAS | MOORE | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220050 | R933 | Abnormal findings on dx imaging of prt digestive tract | ICD10 | 02212018 | 02172018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02202018 | 2018-02-20T12:34:20+00:00 |  | 000098637-01 | Charles | Hiles | HOSPITALIST MEDICINE PHY | 913926 | TERESA | FINKE | 1124224423 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02212018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02192018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220081 | I509, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 02212018 | 02192018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02212018 | 2018-02-21T10:56:55+00:00 |  | 000027314-01 | WILLIAM | JOHNSTON | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221022 | D6489, I200, R0600 | Dyspnea, unspecified | ICD10 | 02212018 | 02162018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02212018 | 2018-02-21T11:19:46+00:00 |  | 000060275-01 | BETTY | RODGERS | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221024 | G939, I160 | HYPERTENSIVE URGENCY | ICD10 | 02212018 | 02162018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02212018 | 2018-02-21T12:04:40+00:00 |  | 000070827-01 | Carolyn | Farnsworth | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221029 | S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 02212018 | 02162018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
