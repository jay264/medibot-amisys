Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-16_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-16_OBS
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
	And in the "Certification" page I use the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_requested" image
	And in the "authorized_services" page I enter the first element from "<care_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_requested" image and subtract one
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_approved" image and subtract one
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_approved" image
	And in the "authorized_services" page I enter the first element from "<care_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_requested" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_requested" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_authorized" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_authorized" image
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
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

	And I input the notes if any are contained in "<notes>"
	And the test pauses for "5" seconds

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
		| requested_date  | military_date             | other_reference_#    |	member_id   | member_first_name |	member_last_name | practice_name               | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name      | requesting_provider_npi_# |	facility_name                 | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	      | servicing_provider_npi_# |	sub_class  | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason                 |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type         | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code                    | service_description                                      | service_type |	qty_appr      |	qty_reqd      |	determination                          |	auth_approval_days | type   |	type_code  | notes                                                                                                                                                                                                                                   | care_date  | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 02212017 | 2017-02-21T19:37:39+00:00 |  | 000045114-01 | DOROTHY | MOLEBASH | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03082017 | 03092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170222011 | M25511 | Pain in right shoulder | ICD10 | 03162017 | 23472, 23430 | RUPTURED LONG HEAD BICEPS | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 | 79 year old male presented to the ED for prior auth procedure  and underwent  a right total shoulder revision  on 03/08/2017.   w/o complications. | 03082017, 03092017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 02242017 | 2017-02-24T14:47:13+00:00 |  | 000014994-01 | ELEANOR | FOURMAN | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062017 | 03092017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170224061 | C519 | Malignant neoplasm of vulva, unspecified | ICD10 | 03162017 | 56630, 53210 | URETHECTOMY, TOTAL INC CYSTMY, FEM- | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 | Clinical documentation reviewed in PowerChart | 03062017, 03072017, 03082017, 03092017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03022017 | 2017-03-02T10:44:27+00:00 |  | 000102495-01 | SANDRA | LEAPER | COLS OB GYN INC | 943591 | MONICA L | WIRRIG | 1598051369 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 03012017 | 03022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170302038 | R87619 | Unsp abnormal cytolog findings in specmn from cervix uteri | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03012017, 03022017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03072017 | 2017-03-07T13:43:09+00:00 |  | 000059379-01 | CAROL | GERHART | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03062017 | 03082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170307070 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03062017, 03072017, 03082017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 03062017 | 2017-03-06T14:13:47+00:00 |  | 000089678-01 | Dixie | Rockwell | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03162017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03052017 | 03082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170308099 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03052017, 03062017, 03072017, 03082017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03062017 | 2017-03-06T14:14:33+00:00 |  | 000079240-01 | Loretta | Bartkowiak | HOSP SVC MED GRP OF MARY | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03162017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03032017 | 03072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170309019 | J189 | Pneumonia, unspecified organism | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03032017, 03042017, 03052017, 03062017, 03072017 | Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved,  | 5, 5, 5, 5, 5 |
| 03072017 | 2017-03-07T11:24:46+00:00 |  | 000094311-01 | Ruth | Spittle | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03162017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03052017 | 03082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170309074 | I509 | Heart failure, unspecified | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03052017, 03062017, 03072017, 03082017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03102017 | 2017-03-10T07:45:01+00:00 |  | 000107912-01 | Patricia | Potts | MARIETTA MEM HSP | 927682 | ADEKUNLE G | KUKU | 1033225248 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 03162017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03092017 | 03112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170314041 | J209, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03092017, 03102017, 03112017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 03152017 | 2017-03-15T13:52:08+00:00 |  | 000117354-01 | RONALD | SMITH | MARIETTA HLTH CARE PHYS | 921990 | ROBERT | BEHNKE | 1073710869 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03122017 | 03132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170315104 | E871, J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03122017, 03132017 | Observation, Observation | Observation, Observation | Approved, Approved | 2, 2 |
| 03132017 | 2017-03-13T16:09:56+00:00 |  | 000111984-01 | Jacqueline | Boler | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03162017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03112017 | 03122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170315108 | R079 | Chest pain, unspecified | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03112017, 03122017 | Observation, Observation | Observation, Observation | Approved, Approved | 2, 2 |
