Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-30_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-30_OBS
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
| 04122018 | 2018-04-12T08:48:12+00:00 |  | 000111630-01 | JEROME | SMITH | HOSPITALIST MEDICINE PHY | 946140 | MALATHY | VARATHARAJAH | 1669470050 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 04302018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04112018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412020 | R7889 | Finding of oth substances, not normally found in blood | ICD10 | 04302018 | 04112018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182018 | 2018-04-18T15:40:48+00:00 |  | 000112712-01 | Shirley | Stacey | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04182018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419008 | E162 | Hypoglycemia, unspecified | ICD10 | 04302018 | 04182018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T08:20:42+00:00 |  | 000096380-01 | Lucien | Mouawad | OSU INTERNAL MED LLC | 948815 | SHARON S | CLARK | 1124384946 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Observation | OBSV | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427008 | K140, R220, R682 | Dry mouth, unspecified | ICD10 | 04302018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02212018 | 2018-02-21T15:38:10+00:00 |  | 000083102-01 | Susan | Graham | ORTHO & NEURO CONSULTS I | 902411 | DONALD J | ROHL | 1578547097 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03012018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221089 | M4316, M5416 | Radiculopathy, lumbar region | ICD10 | 04302018 | 03012018 | 03012018 | 63047, 22612, 22840, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 1, 1, 1, 1 | CPT | C4 |  |  |  | 1.0 |
| 03142018 | 2018-03-14T13:24:05+00:00 |  | 000043720-01 | HAZEL | ENGLE | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04232018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314056 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 04302018 | 04232018 | 04262018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04112018 | 2018-04-11T15:11:47+00:00 |  | 000066934-01 | ROBERT | OATNEY | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04232018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411092 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 04302018 | 04232018 | 04262018 | 23473, 23474 | REVIS RECONST SHOULDER JOINT | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 04152018 | 2018-04-15T12:34:37+00:00 |  | 000054517-01 | RON | MERCER | RIVERSIDE TRAUMA SURGEON | 907601 | JOHN | LEFF | 1396744140 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04142018 | 04142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416048 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 04302018 | 04142018 | 04142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04192018 | 2018-04-19T10:17:22+00:00 |  | 000073888-01 | Barbara | Spicer | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04302018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04172018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419037 | R509 | Fever, unspecified | ICD10 | 04302018 | 04172018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04202018 | 2018-04-20T15:49:44+00:00 |  | 000023881-01 | OTHO | KIDDER | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04202018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423021 | R0602 | Shortness of breath | ICD10 | 04302018 | 04202018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04222018 | 2018-04-22T15:29:11+00:00 |  | 000108971-01 | Mildred | Wolfskill | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04212018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423039 | E860, N179, N390 | Urinary tract infection, site not specified | ICD10 | 04302018 | 04212018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T14:55:13+00:00 |  | 000052663-01 | JOAN | BRAGG | FAIRFIELD MEDICAL CENTER | 936439 |  | FAIRFIELD MEDICAL CENTER | 1467433763 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04192018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423074 | F0390, N189, R451 | Restlessness and agitation | ICD10 | 04302018 | 04192018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04242018 | 2018-04-24T17:51:44+00:00 |  | 000001765-01 | ELIZABETH | SHULL | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04232018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425010 | I10, I639, R42 | Dizziness and giddiness | ICD10 | 04302018 | 04232018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04252018 | 2018-04-25T08:14:15+00:00 |  | 000096720-01 | ROBERT | BAKER | SWICK, SHAWN M | 927362 | SHAWN M | SWICK | 1790703692 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04242018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425040 | R079 | Chest pain, unspecified | ICD10 | 04302018 | 04242018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04262018 | 2018-04-26T14:39:23+00:00 |  | 000105321-01 | MARY | ROLL | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426066 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04302018 | 04252018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04272018 | 2018-04-27T09:15:35+00:00 |  | 000085874-01 | Norma | Messina | LICKING MEM HLTH PROF | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04262018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427021 | L97509 | Non-pressure chronic ulcer oth prt unsp foot w unsp severity | ICD10 | 04302018 | 04262018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T08:52:35+00:00 |  | 000085158-01 | Roy | Pack | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04302018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04262018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430010 | R6889 | Other general symptoms and signs | ICD10 | 04302018 | 04262018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T07:28:46+00:00 |  | 000121365-01 | RICHARD | CARTER | MERCY HEALTH PHYSICIANS | 920936 | RAJBIR S | MINHAS | 1134175409 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04282018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430016 | R079 | Chest pain, unspecified | ICD10 | 04302018 | 04282018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T07:33:50+00:00 |  | 000108665-01 | Bonnie | Stanforth | HOSPITAL MEDICINE SERVIC | 949699 | IMRAN T | MINHAS | 1942288402 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04282018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430019 | D649, R55 | Syncope and collapse | ICD10 | 04302018 | 04282018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04252018 | 2018-04-25T13:16:01+00:00 |  | 000066670-01 | PAUL | WAUGH | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425061 | I208, K625, R0609 | Other forms of dyspnea | ICD10 | 04302018 | 04242018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04262018 | 2018-04-26T08:26:00+00:00 |  | 000103935-01 | Jimmie | Toles | THE UROLOGY GROUP | 921064 | MICHAEL B | ROUSSEAU | 1851328660 | MERCY HOSPITAL CLERMONT | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 04302018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426013 | N138, N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 04302018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04262018 | 2018-04-26T09:59:05+00:00 |  | 000098643-01 | Ronald | Stelzer | ALLIANCE PHYSICIANS INC | 927662 | MICHAEL A | BUCH | 1154625564 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426025 | J189, 486 | 486.0 | ICD10 | 04302018 | 04252018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04262018 | 2018-04-26T15:53:59+00:00 |  | 000098276-01 | GERTRUDE | HERB | MEDICINE INPATIENT GROUP | 927693 | SIVANI S | PATHMARAJAH | 1336257666 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 04302018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04252018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426070 | R030 | Elevated blood-pressure reading, w/o diagnosis of htn | ICD10 | 05012018 | 04252018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04272018 | 2018-04-27T10:13:24+00:00 |  | 000104081-01 | Thelma | Nutter | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04262018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427034 | R079 | Chest pain, unspecified | ICD10 | 04302018 | 04262018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T14:54:31+00:00 |  | 000038820-01 | RICHARD | MANN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Medical Only | Reports | Observation | Inpatient | 04262018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427053 | M6281 | Muscle weakness (generalized) | ICD10 | 04302018 | 04262018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04272018 | 2018-04-27T15:35:15+00:00 |  | 000097736-01 | Wanda | Elbe | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04302018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04272018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427072 | R079 | Chest pain, unspecified | ICD10 | 04302018 | 04272018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T09:39:30+00:00 |  | 000104374-01 | Karl | Straight | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04272018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430036 | T82118A | Breakdown (mechanical) of cardiac electronic device, init | ICD10 | 04302018 | 04272018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T15:35:17+00:00 |  | 000111237-01 | Diana | Sandall | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04302018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 04262018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430076 | I4891 | Unspecified atrial fibrillation | ICD10 | 04302018 | 04262018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T12:35:27+00:00 |  | 000053921-01 | SONIA | FRAZIER | BERGER HEALTH PARTNERS | 942920 | RAUL A | ZAMORA | 1538484415 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04272018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430082 | K352, K8080, P599 | Neonatal jaundice, unspecified | ICD10 | 04302018 | 04272018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
