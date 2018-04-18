Feature: Process Essette Extract OBS_Inpatient_New_Adds_04142018
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: OBS_Inpatient_New_Adds_04142018
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
| 03052018 | 2018-03-05T12:14:27+00:00 |  | 000075199-01 | Charles | Sturni | ORTHO INSTITUTE OF DAYTO | 902696 | JEFFREY S | HOSKINS | 1669471447 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04022018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305049 | M5417, M48061, M48062 | M48062 | ICD10 | 04122018 | 04022018 | 04032018 | 63030, 69990 | MICROSURGERY ADD-ON | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04092018 | 2018-04-09T16:19:16+00:00 |  | 000028043-01 | BILLIE | KALL | CEP AMERICA - OHIO LLC | 952186 | JOANNA M | LE PARC | 1336554914 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04072018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410051 | A419, J159 | Unspecified bacterial pneumonia | ICD10 | 04122018 | 04072018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04112018 | 2018-04-11T10:14:39+00:00 |  | 000094530-01 | Karel | Phillips | GREG A WISE MD INC | 909948 |  | GREG A WISE MD INC | 1801018924 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04082018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411021 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 04122018 | 04082018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04122018 | 2018-04-12T09:25:22+00:00 |  | 000092873-01 | Thelma | Little | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04102018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412007 | I10 | Essential (primary) hypertension | ICD10 | 04122018 | 04102018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01102018 | 2018-01-10T17:01:30+00:00 |  | 000004550-01 | DELPHINE | BROBST | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01102018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180201154074.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111013 | L03114 | Cellulitis of left upper limb | ICD10 | 04122018 | 01102018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01162018 | 2018-01-16T13:57:09+00:00 |  | 000012182-01 | MARY | MCGINTY | BINAY EAPEN MD | 916075 | BINAY C | EAPEN | 1255591228 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 01152018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180124152562.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116067 | I639 | Cerebral infarction, unspecified | ICD10 | 04122018 | 01152018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01222018 | 2018-01-22T10:26:15+00:00 |  | 000003846-01 | LORETTA | BALLENGER | HOSPITALIST MEDICINE PHY | 943144 | PRANAV | WASTI | 1659634236 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01192018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180126153074.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122073 | S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 04122018 | 01192018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01242018 | 2018-01-24T14:56:55+00:00 |  | 000003754-01 | EDWARD | BIRKO | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01232018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124067 | L0390 | Cellulitis, unspecified | ICD10 | 04122018 | 01232018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T09:01:49+00:00 |  | 000039443-01 | MEREDITH | RATCLIFF | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04092018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326013 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04122018 | 04092018 | 04112018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03302018 | 2018-03-30T08:43:21+00:00 |  | 000094872-01 | Mark | Rodecker | OSU INTERNAL MED LLC | 942966 | LANLA F | CONTEH | 1497964399 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04092018 | 04102018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330008 | C229 | Malig neoplasm of liver, not specified as primary or sec | ICD10 | 04122018 | 04092018 | 04102018 | 96420 | CHEMOTHERAPY ADMINISTRATION, INTR-ARTERIAL; PUSH TECHNIQUE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04032018 | 2018-04-03T14:00:20+00:00 |  | 000052816-01 | SHIRLEY | LEETH | ADENA MEDICAL GROUP LLC | 925477 | ROGER E | WILTFONG | 1851602544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03302018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404004 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 04122018 | 03302018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032018 | 2018-04-03T14:06:22+00:00 |  | 000059431-01 | JUDITH | DAILEY | APOGEE MED GRP OHIO INC | 947840 | OSAMA | ALHAJJAR | 1801233077 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03302018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404012 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 04122018 | 03302018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032018 | 2018-04-03T14:10:28+00:00 |  | 000034711-01 | MARY | RIGSBY | APOGEE MED GRP OHIO INC | 947840 | OSAMA | ALHAJJAR | 1801233077 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03302018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404018 | R42 | Dizziness and giddiness | ICD10 | 04122018 | 03302018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032018 | 2018-04-03T14:14:36+00:00 |  | 000116818-01 | Kenneth | Gragg | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03312018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404023 | J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 04122018 | 03312018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04092018 | 2018-04-09T08:47:58+00:00 |  | 000074543-01 | Dean | Hall | MARIETTA HLTH CARE PHYS | 932956 | GOYAL | AMANDEEP | 1710273248 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04072018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409086 | A419, C159, N390 | Urinary tract infection, site not specified | ICD10 | 04122018 | 04072018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04092018 | 2018-04-09T16:12:36+00:00 |  | 000087728-01 | Phyllis | Duncan | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04082018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409092 | R197 | Diarrhea, unspecified | ICD10 | 04122018 | 04082018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T16:12:06+00:00 |  | 000074432-01 | Robert | Vess | KNOX COMMUNITY HSP PHYS | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04072018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410044 | J189 | Pneumonia, unspecified organism | ICD10 | 04122018 | 04072018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04102018 | 2018-04-10T09:26:09+00:00 |  | 000085204-01 | Rosemary | Spencer | OSU EMERGENCY MED LLC | 937644 |  | OSU EMERGENCY MEDICINE LLC | 1699705681 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04092018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410080 | R51 | Headache | ICD10 | 04122018 | 04092018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04102018 | 2018-04-10T11:29:58+00:00 |  | 000088527-01 | John | Craig | CENTRAL OH HSPISTS INC | 924263 | AUSTIN G | AL-KAZAZ | 1679803290 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04102018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410086 | M549 | Dorsalgia, unspecified | ICD10 | 04122018 | 04102018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04102018 | 2018-04-10T11:33:04+00:00 |  | 000003189-01 | ANNALOUISEC | WOHRLE | OHIOHEALTH PHYS GRP | 914379 | MARK A | RENZ | 1275773061 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04092018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410088 | E860 | Dehydration | ICD10 | 04122018 | 04092018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04102018 | 2018-04-10T13:46:23+00:00 |  | 000091835-01 | Lawrence | Fulk | KNOX COMMUNITY HOSP GRP | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04062018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410100 | R079 | Chest pain, unspecified | ICD10 | 04122018 | 04062018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04102018 | 2018-04-10T15:45:04+00:00 |  | 000078078-01 | Glenna | Brady | GREENE MEM HSP SRVS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04052018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410112 | I4891 | Unspecified atrial fibrillation | ICD10 | 04122018 | 04052018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04112018 | 2018-04-11T15:49:30+00:00 |  | 000007096-01 | BETTY | ROSSITER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04082018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411090 | I509, R0600 | Dyspnea, unspecified | ICD10 | 04122018 | 04082018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04112018 | 2018-04-11T15:54:39+00:00 |  | 000026994-01 | CAROLE | HILDERBRAND | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04092018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411094 | D6489 | Other specified anemias | ICD10 | 04122018 | 04092018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04122018 | 2018-04-12T07:51:24+00:00 |  | 000085511-01 | Anna | Cooper | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04112018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412022 | R6889 | Other general symptoms and signs | ICD10 | 04122018 | 04112018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04122018 | 2018-04-12T11:35:55+00:00 |  | 000046871-01 | ANSON | FOSTER | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04112018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412038 | R079, I219 | I219 | ICD10 | 04122018 | 04112018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04122018 | 2018-04-12T15:39:21+00:00 |  | 000054526-01 | FRANCIS | TUMEO | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04102018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412065 | R296, S8390XA | Sprain of unspecified site of unspecified knee, init encntr | ICD10 | 04122018 | 04102018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
