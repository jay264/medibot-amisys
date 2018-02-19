Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-15_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-15_OBS
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
| 02052018 | 2018-02-05T09:14:08+00:00 |  | 000089493-01 | Frank | Jackson | GENESIS MEDICAL GRP LLC | 924382 | DAWIT | WUBISHET | 1083971311 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02152018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205079 | A419, E875, I959, N390, R109 | Unspecified abdominal pain | ICD10 | 02152018 | 02042018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02072018 | 2018-02-07T08:42:37+00:00 |  | 000100573-01 | Glenn | Phillips | HOLLON, JOHN T | 914228 | JOHN T | HOLLON | 1124092846 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 02152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02062018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207076 | E875, R404 | Transient alteration of awareness | ICD10 | 02152018 | 02062018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02092018 | 2018-02-09T11:43:25+00:00 |  | 000085296-01 | Freddie | Chamberlain | SOUND INPATIENT PHYS OF | 941188 | ABDAL R | ALHYARI | 1205051570 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Observation | OBSV | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209054 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02152018 | 02082018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01302018 | 2018-01-30T09:22:12+00:00 |  | 000001315-01 | HERBERT | WARD | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01282018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130066 | M6281, R1111 | Vomiting without nausea | ICD10 | 02152018 | 01282018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02022018 | 2018-02-02T14:21:28+00:00 |  | 000029644-01 | SOLWEIG | MAXIE | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202051 | I2510, R079 | Chest pain, unspecified | ICD10 | 02152018 | 02012018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02022018 | 2018-02-02T16:00:16+00:00 |  | 000109616-01 | Wilma | Graves | ADENA MEDICAL GROUP LLC | 926167 | CHUKWUEMEKE O | NKADI | 1598760845 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02012018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205001 | I4891, I509 | Heart failure, unspecified | ICD10 | 02152018 | 02012018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02122018 | 2018-02-12T11:25:23+00:00 |  | 000083349-01 | John | Hendershot | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02092018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212084 | R0602 | Shortness of breath | ICD10 | 02152018 | 02092018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01302018 | 2018-01-30T08:16:18+00:00 |  | 000076292-01 | Lois | Miller | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01282018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130061 | N179 | Acute kidney failure, unspecified | ICD10 | 02152018 | 01282018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02032018 | 2018-02-03T11:33:47+00:00 |  | 000085320-01 | Gerald | Oberdorf | WEDGEWOOD URG CARE LLC | 910846 | ROY N | LEMASTER | 1629241427 | HALIFAX MEDICAL CENTER | 934629 | 1811991227 | HALIFAX MEDICAL CENTER | 1811991227 | Observation | OBSV | Concurrent Review | CONC |  | HALIFAX MEDICAL CENTER | 02152018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02022018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205008 | R0600 | Dyspnea, unspecified | ICD10 | 02152018 | 02022018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T08:55:26+00:00 |  | 000095021-01 | Sharon | Glaze | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205073 | A419 | Sepsis, unspecified organism | ICD10 | 02152018 | 02012018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T08:56:56+00:00 |  | 000053808-01 | BETTY | MILLER | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02022018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205076 | R296 | Repeated falls | ICD10 | 02152018 | 02022018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T09:17:33+00:00 |  | 000043215-01 | PEGGY | THORNE | FAIRFIELD HLTHCARE PROFS | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205081 | E8770, I110, I509, I2720 | I2720 | ICD10 | 02152018 | 02012018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T15:10:15+00:00 |  | 000063073-01 | WILLIAM | JAMES | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02032018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206002 | R0789 | Other chest pain | ICD10 | 02152018 | 02032018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02062018 | 2018-02-06T13:23:46+00:00 |  | 000053872-01 | THOMAS | OVERLY | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206054 | N400 | Enlarged prostate without lower urinary tract symptoms | ICD10 | 02152018 | 02052018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02072018 | 2018-02-07T08:20:52+00:00 |  | 000054503-01 | GREGORY | MCBRIDE | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02122018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207007 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02152018 | 02122018 | 02142018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02052018 | 2018-02-05T03:41:41+00:00 |  | 000083465-01 | Judy | Tarrence | GRANDVIEW HOSPITAL & SOU | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02032018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207030 | R0902 | Hypoxemia | ICD10 | 02152018 | 02032018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02072018 | 2018-02-07T08:35:37+00:00 |  | 000039481-01 | RONALD | DEREXSON | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207032 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02152018 | 02062018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02072018 | 2018-02-07T08:38:14+00:00 |  | 000088777-01 | Patsy | Osborne | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02072018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207035 | R112 | Nausea with vomiting, unspecified | ICD10 | 02152018 | 02072018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02072018 | 2018-02-07T08:40:35+00:00 |  | 000061906-01 | LLOYD | GRAVES | ADENA MEDICAL GROUP LLC | 902418 | JOHN J | KELLER | 1700849114 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207036 | Z792 | Long term (current) use of antibiotics | ICD10 | 02152018 | 02062018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02072018 | 2018-02-07T08:46:22+00:00 |  | 000025330-01 | FLORENCE | KINSEY | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207079 | F0390, K2970, R109 | Unspecified abdominal pain | ICD10 | 02152018 | 02072018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02082018 | 2018-02-08T10:24:45+00:00 |  | 000092113-01 | Gary | Davish Sr | SCHEIDLER HLTH ASSOC LLC | 921477 | PETER A | SCHEIDLER | 1538142310 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 02152018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02072018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208055 | M6282 | Rhabdomyolysis | ICD10 | 02152018 | 02072018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02092018 | 2018-02-09T10:50:16+00:00 |  | 000097893-01 | Jackie | Morris | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02082018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209040 | R079 | Chest pain, unspecified | ICD10 | 02152018 | 02082018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02112018 | 2018-02-11T16:32:50+00:00 |  | 000038514-01 | JUDITH | CLOKEY | COPC CENTRAL OHIO PRIMAR | 927320 | SAMATHA | PALADUGU | 1154635753 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02102018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212027 | N200 | Calculus of kidney | ICD10 | 02152018 | 02102018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02122018 | 2018-02-12T09:10:26+00:00 |  | 000054442-01 | RUTH | BAIR | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02102018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212065 | R531 | Weakness | ICD10 | 02152018 | 02102018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T12:42:57+00:00 |  | 000056666-01 | JAMES | FAIRCHILD | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02112018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212079 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 02152018 | 02112018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T14:34:22+00:00 |  | 000028484-01 | ALBERT | KOLLMER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02112018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213011 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02152018 | 02112018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T15:18:23+00:00 |  | 000062303-01 | MARY | LODRIGUE | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213017 | R531 | Weakness | ICD10 | 02152018 | 02092018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T15:38:05+00:00 |  | 000121360-01 | ROGER | ARLEDGE | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02112018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213031 | R55 | Syncope and collapse | ICD10 | 02152018 | 02112018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02132018 | 2018-02-13T07:50:05+00:00 |  | 000096682-01 | Shirley | Moore | FCMH MED & SURG ASSOC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02122018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213034 | A419, N390, R739 | Hyperglycemia, unspecified | ICD10 | 02152018 | 02122018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02132018 | 2018-02-13T08:33:59+00:00 |  | 000103485-01 | Cheryl | Hamilton | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02122018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213037 | R55 | Syncope and collapse | ICD10 | 02152018 | 02122018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02132018 | 2018-02-13T10:02:45+00:00 |  | 000032984-01 | LAWRENCE | FATHBRUCKNER | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02122018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213084 | N390 | Urinary tract infection, site not specified | ICD10 | 02152018 | 02122018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02142018 | 2018-02-14T11:14:56+00:00 |  | 000097609-01 | Janet | Graf | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02132018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214029 | R079 | Chest pain, unspecified | ICD10 | 02152018 | 02132018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02152018 | 2018-02-15T10:43:24+00:00 |  | 000062563-01 | EDWARD | MARTT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02132018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215024 | R079 | Chest pain, unspecified | ICD10 | 02152018 | 02132018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02152018 | 2018-02-15T15:02:13+00:00 |  | 000066667-01 | Walter | Gorrell | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02132018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215064 | R6889 | Other general symptoms and signs | ICD10 | 02152018 | 02132018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
