Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-09_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-09_OBS
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
| 01112018 | 2018-01-11T11:02:43+00:00 |  | 000085423-01 | Leland | Moorehead | SPFLD ORTHO SPORTS MED L | 918581 | NOSHIR E | DEBOO | 1164609814 | OHIO VALLEY MEDICAL CENT | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04042018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111050 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 04092018 | 04042018 | 04062018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 6.0 |
| 03162018 | 2018-03-16T07:31:52+00:00 |  | 000073145-01 | Marcella | Hahnemann | ORTHO ASSOC OF DAYTON | 913137 | LANCE M | TIGYER | 1558320408 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 04092018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 03282018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316018 | M50021 | CERVICAL DISC DISORDER AT C4-C5 LEVEL WITH MYELOPATHY | ICD10 | 04092018 | 03282018 | 03292018 | 22551, 22552, 22845, 22846 | ANTERIOR INSTRUMENTATION; 4 TO 7 VERTEBRAL SEGMENTS | CPT | 1, 2, 1, 1 | 1, 2, 1, 1 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 03282018 | 2018-03-28T10:25:29+00:00 |  | 000107748-01 | Randal | Rodichok | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328034 | I350, R0602 | Shortness of breath | ICD10 | 04092018 | 03262018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 04032018 | 2018-04-03T09:58:12+00:00 |  | 000025471-01 | DORA | MATTOX | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04022018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403017 | R52 | Pain, unspecified | ICD10 | 04092018 | 04022018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04032018 | 2018-04-03T10:02:19+00:00 |  | 000029134-01 | ELIZABETH | WILSON | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04022018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403018 | F329, N179 | Acute kidney failure, unspecified | ICD10 | 04092018 | 04022018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04042018 | 2018-04-04T09:38:58+00:00 |  | 000005514-01 | AUDREY | HOLDREN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04032018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404015 | R4182 | Altered mental status, unspecified | ICD10 | 04092018 | 04032018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04052018 | 2018-04-05T10:27:23+00:00 |  | 000004265-01 | RAYMOND | WAY | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04042018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405009 | E872, R0602 | Shortness of breath | ICD10 | 04092018 | 04042018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04052018 | 2018-04-05T12:34:10+00:00 |  | 000049420-01 | EVA | JARRELL | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04042018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405028 | R6520 | Severe sepsis without septic shock | ICD10 | 04092018 | 04042018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01232018 | 2018-01-23T14:57:05+00:00 |  | 000098682-01 | LOUISE | ZUREK | LICKING MEM INPATIENT ME | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01222018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180130153655.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123076 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04092018 | 01222018 | 01252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01292018 | 2018-01-29T12:56:35+00:00 |  | 000030936-01 | RONALD | MATHERS | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01272018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180202154603.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129093 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04092018 | 01272018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02052018 | 2018-02-05T12:24:17+00:00 |  | 000067295-01 | JAMES | WILSON | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02032018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180209155933.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205111 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04092018 | 02032018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03302018 | 2018-03-30T14:36:45+00:00 |  | 000046031-01 | DOROTHY | MCCOY | HOSPITALIST MEDICINE PHY | 917248 | NATHANIEL D | RUSSELL | 1740401470 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03292018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330073 | E872, R4182 | Altered mental status, unspecified | ICD10 | 04092018 | 03292018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04022018 | 2018-04-02T11:45:31+00:00 |  | 000072327-01 | Thomas | Maynard | COPC CENTRAL OHIO PRIMAR | 935499 | ANIMESH | SHARMA | 1063455939 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402082 | K560 | Paralytic ileus | ICD10 | 04092018 | 03292018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04032018 | 2018-04-03T11:19:42+00:00 |  | 000110281-01 | Anna | Durette | JOHN C LINCOLN HOSPITAL DEER VALLEY | 919319 |  | JOHN C LINCOLN HOSPITAL DEER VALLEY | 1528169125 | JOHN C LINCOLN HOSPITAL DEER VALLEY | 919319 | 1528169125 | JOHN C LINCOLN HOSPITAL DEER VALLEY | 1528169125 | Observation | OBSV | Concurrent Review | CONC |  | JOHN C LINCOLN HOSPITAL DEER VALLEY | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04012018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403082 | D72829 | Elevated white blood cell count, unspecified | ICD10 | 04092018 | 04012018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T12:15:06+00:00 |  | 000005237-01 | Charles | Daugherty | HOSPITALIST MEDICINE PHY | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 04022018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403088 | J449, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04092018 | 04022018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04052018 | 2018-04-05T14:50:53+00:00 |  | 000015235-01 | GERTRUDE | RASOR | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04052018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405060 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04092018 | 04052018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T16:25:45+00:00 |  | 000085277-01 | John | Howard | INDU & RAJ SOIN MEDICAL CENTER | 919117 |  | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04012018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403042 | E872 | Acidosis | ICD10 | 04092018 | 04012018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032018 | 2018-04-03T08:44:53+00:00 |  | 000076024-01 | Laurinda | Crouse | LICKING MEM INPATIENT ME | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04022018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403061 | R4182 | Altered mental status, unspecified | ICD10 | 04092018 | 04022018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04042018 | 2018-04-04T09:04:31+00:00 |  | 000031971-01 | Frank | Haverfield | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04032018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404006 | L03818, M79A29 | Nontraumatic compartment syndrome of unsp lower extremity | ICD10 | 04092018 | 04032018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04042018 | 2018-04-04T08:58:40+00:00 |  | 000006941-01 | SANDRA | CARROLL | SOUND INPATIENT PHYS OF | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04032018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404047 | E871, G9340, I10 | Essential (primary) hypertension | ICD10 | 04092018 | 04032018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04042018 | 2018-04-04T09:41:25+00:00 |  | 000063907-01 | LEO | OESTREICHER | SOUND INPATIENT PHYS OF | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04032018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404049 | G9340, I959 | Hypotension, unspecified | ICD10 | 04092018 | 04032018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04042018 | 2018-04-04T15:48:58+00:00 |  | 000118442-01 | Ricky | Klema | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 04032018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404088 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 04092018 | 04032018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04042018 | 2018-04-04T15:18:54+00:00 |  | 000100175-01 | RON | KOESTER | PRIMARY CARE ASSOC OF NE | 922175 | DENNIS A | BINGHAM | 1285777656 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 04092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04032018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404089 | E162, I440, R0902, R0989, R7989, S81802A | Unspecified open wound, left lower leg, initial encounter | ICD10 | 04092018 | 04032018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04052018 | 2018-04-05T14:42:17+00:00 |  | 000074193-01 | Francis | Santavicca | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04042018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405046 | J159 | Unspecified bacterial pneumonia | ICD10 | 04092018 | 04042018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04052018 | 2018-04-05T14:46:53+00:00 |  | 000084077-01 | Frances | Baker | KNOX COMMUNITY HOSPITAL | 912844 | OSHANA | ALAHAKOON | 1285793745 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04052018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405059 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04092018 | 04052018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04052018 | 2018-04-05T16:42:05+00:00 |  | 000063769-01 | PATRICIA | CANTRELL | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04042018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405072 | K810 | Acute cholecystitis | ICD10 | 04092018 | 04042018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04062018 | 2018-04-06T10:03:49+00:00 |  | 000073896-01 | Audra | Wharton | HOSPITALIST MEDICINE PHY | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04052018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406018 | R791 | Abnormal coagulation profile | ICD10 | 04092018 | 04052018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04062018 | 2018-04-06T10:14:43+00:00 |  | 000103555-01 | Wanda | Tisdale | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04052018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406025 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04092018 | 04052018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04062018 | 2018-04-06T12:41:56+00:00 |  | 000085568-01 | Richard | Bruce | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04092018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04062018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406036 | J101, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04092018 | 04062018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04062018 | 2018-04-06T15:19:36+00:00 |  | 000082628-01 | Virginia | Beaver | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04052018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406054 | R55, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 04092018 | 04052018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T15:46:11+00:00 |  | 000033377-01 | RAYMOND | CAMPBELL | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04062018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409082 | D589 | Hereditary hemolytic anemia, unspecified | ICD10 | 04092018 | 04062018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04092018 | 2018-04-09T15:50:18+00:00 |  | 000066642-01 | BARBARA | KUSKOWSKI | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04062018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409083 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 04092018 | 04062018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04092018 | 2018-04-09T15:54:04+00:00 |  | 000108361-01 | Mary | Salamay | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 04062018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409085 | I472 | Ventricular tachycardia | ICD10 | 04092018 | 04062018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
