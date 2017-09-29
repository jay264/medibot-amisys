Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-26_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-26_OBS
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
| 09252017 | 2017-09-25T11:01:10+00:00 |  | 000098618-01 | Laura | Cook | GOOD SAMARITAN HSP & HLT | 910703 | SUSAN M | GRANDHI | 1073686838 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09262017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09222017 | 09232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925093 | I639, I6782, R51 | Headache | ICD10 | 09262017 | 09222017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09252017 | 2017-09-25T09:47:52+00:00 | 250814037267 | 000006306-01 | Rachel | Markley | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09242017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925037 | M6281 | Muscle weakness (generalized) | ICD10 | 09262017 | 09242017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09262017 | 2017-09-26T10:14:39+00:00 |  | 000101884-01 | Mark | Spring | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09262017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 09252017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926033 | R079 | Chest pain, unspecified | ICD10 | 09262017 | 09252017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09222017 | 2017-09-22T14:20:44+00:00 | 256603327265 | 000076641-01 | Joseph | Warden | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09222017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922048 | L03818 | Cellulitis of other sites | ICD10 | 09262017 | 09222017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08212017 | 2017-08-21T10:36:56+00:00 |  | 000108933-01 | Norma | Francis | MOUNT CARMEL HLTH SYS | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08172017 | 08192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822039 | R0600 | Dyspnea, unspecified | ICD10 | 09262017 | 08172017 | 08192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09192017 | 2017-09-19T09:53:50+00:00 | 179490337261 | 000104663-01 | Marvin | Fields | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09182017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919022 | E860 | Dehydration | ICD10 | 09262017 | 09182017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 09202017 | 2017-09-20T08:30:45+00:00 |  | 000083856-01 | Jody | Mcneely | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 09192017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920064 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09262017 | 09192017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09252017 | 2017-09-25T15:45:09+00:00 |  | 000065201-01 | CARL | MATHIAS | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09242017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926001 | D7289, I959, R109 | Unspecified abdominal pain | ICD10 | 09262017 | 09242017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09222017 | 2017-09-22T10:14:15+00:00 | 252881577264 | 000006260-01 | MABEL | TRITT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09222017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922031 | R443 | Hallucinations, unspecified | ICD10 | 09262017 | 09222017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09222017 | 2017-09-22T10:20:07+00:00 |  | 000066674-01 | JAMES | DIAMOND JR | OSU INTERNAL MED LLC | 948177 | DEREK D | HEM | 1821433905 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09262017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09212017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922033 | E785, E8342, I10, I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 09262017 | 09212017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09252017 | 2017-09-25T12:04:49+00:00 | 250675187266 | 000001616-01 | PATRICIA | LEDFORD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09232017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925071 | M6281 | Muscle weakness (generalized) | ICD10 | 09262017 | 09232017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09252017 | 2017-09-25T11:43:29+00:00 | 258399147266 | 000034331-01 | SARAH | BEAN | AMERICAN HLTH NETWORK OF | 924337 | RAJNISH K | GUPTA | 1063466795 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09232017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925067 | I82401 | Acute embolism and thombos unsp deep veins of r low extrem | ICD10 | 09262017 | 09232017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09252017 | 2017-09-25T07:57:05+00:00 |  | 000085219-01 | Phyllis | Talbot | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09262017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09222017 | 09242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925019 | E871, R42, R55 | Syncope and collapse | ICD10 | 09262017 | 09222017 | 09242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09212017 | 2017-09-21T08:43:40+00:00 |  | 000080879-01 | Debra | Fisher | FAIRFIELD MEDICAL CENTER | 936439 |  | FAIRFIELD MEDICAL CENTER | 1467433763 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09262017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09202017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921046 | R29810 | Facial weakness | ICD10 | 09262017 | 09202017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09262017 | 2017-09-26T12:04:15+00:00 |  | 000079357-01 | James | Parrish | OSU INTERNAL MED LLC | 946409 | TARA M | BAUTISTA | 1205219375 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09262017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09242017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926056 | I10 | Essential (primary) hypertension | ICD10 | 09262017 | 09242017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09182017 | 2017-09-18T14:42:47+00:00 |  | 000104213-01 | James | Carnes | MERITRA CLINICS LLC | 911415 | NAVEEN | BEKKAM | 1225196371 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 09262017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 09182017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919077 | I509, J189 | Pneumonia, unspecified organism | ICD10 | 09262017 | 09182017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09252017 | 2017-09-25T15:49:23+00:00 | 256693597265 | 000064273-01 | HELEN | STARR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09262017 | Approved | THE TIMKEN COMPANY | Reports | Observation | Inpatient | 09222017 | 09242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925116 | J159 | Unspecified bacterial pneumonia | ICD10 | 09262017 | 09222017 | 09242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09082017 | 2017-09-08T12:51:57+00:00 | 025997423-7254 | 000116646-01 | Brenda | George | ORTHO SPEC & SPORTS MED | 903844 | BRAD L | BERNACKI | 1356303481 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09262017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09252017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912013 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09262017 | 09252017 | 09252017 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 09252017 | 2017-09-25T11:54:51+00:00 | 250412307268 | 000076586-01 | Daniel | Golas | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09262017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 09252017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925069 | J329 | Chronic sinusitis, unspecified | ICD10 | 09262017 | 09252017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09252017 | 2017-09-25T09:34:06+00:00 | 250801657267 | 000064139-01 | SHIRLEY | MOORE | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09242017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925028 | R42 | Dizziness and giddiness | ICD10 | 09262017 | 09242017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09182017 | 2017-09-18T13:22:20+00:00 |  | 000025001-01 | RUSSELL | EVANS | ASSOC IN PODIATRY INC | 935606 | PHILIP J | CAIN | 1932140076 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09192017 | 09252017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918081 | I96, L03031 | Cellulitis of right toe | ICD10 | 09262017 | 09192017 | 09252017 | 28820 | AMPUTATION TOE W/ OR W/O GRAFT | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 09202017 | 2017-09-20T08:18:35+00:00 |  | 000108926-01 | Marc | Blumberg | MIAMI VALLEY HSPISTS GRP | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09262017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09192017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920063 | R1013, R109 | Unspecified abdominal pain | ICD10 | 09262017 | 09192017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09252017 | 2017-09-25T15:45:26+00:00 | 250413667267 | 000018634-01 | GLORIA | GILLESPIE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09242017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925115 | R791 | Abnormal coagulation profile | ICD10 | 09262017 | 09242017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
