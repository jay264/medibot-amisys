Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-08_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-08_OBS
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
| 02272018 | 2018-02-27T12:24:09+00:00 |  | 000117080-01 | Guy | Livezey | HOSPITALIST MEDICINE PHY | 952663 | JESSE | DION | 1619383734 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03072018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02242018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227065 | S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 03072018 | 02242018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02202018 | 2018-02-20T10:21:45+00:00 |  | 000120089-01 | Gloria | Powell | INDU & RAJ SOIN MEDICAL CENTER | 919117 |  | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02192018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220070 | E876, N342 | Other urethritis | ICD10 | 03082018 | 02192018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03062018 | 2018-03-06T19:14:56+00:00 |  | 000069082-01 | SHARON | MATHIAS | FAIRFIELD HLTHCARE PROFS | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307017 | R079 | Chest pain, unspecified | ICD10 | 03082018 | 03062018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02282018 | 2018-02-28T10:28:09+00:00 |  | 000090250-01 | Jim | Xarhoulacos | GRANDVIEW HOSPITAL & SOU | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02272018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228034 | D649, R531 | Weakness | ICD10 | 03082018 | 02272018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02282018 | 2018-02-28T17:20:45+00:00 |  | 000021517-01 | DOROTHY | HAYMOND | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02272018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180306159930.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228092 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03082018 | 02272018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02152018 | 2018-02-15T09:22:51+00:00 |  | 000089217-01 | John | Fisher | ADENA MEDICAL GROUP LLC | 932324 | MATTHEW W | CHRISTIAN | 1043260698 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03052018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215015 | C61 | Malignant neoplasm of prostate | ICD10 | 03082018 | 03052018 | 03062018 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02162018 | 2018-02-16T16:40:30+00:00 |  | 000091619-01 | Robert | Shuttleworth | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 03082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02162018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219001 | N189, R200, R531, R748 | Abnormal levels of other serum enzymes | ICD10 | 03082018 | 02162018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02272018 | 2018-02-27T12:51:36+00:00 |  | 000112475-01 | Joan | Wright | KHN IP MED | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02262018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227069 | R1032 | Left lower quadrant pain | ICD10 | 03082018 | 02262018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02282018 | 2018-02-28T12:28:04+00:00 |  | 000120634-01 | Sharon | Martin | BETHESDA HOSPITAL INC | 936487 |  | BETHESDA NORTH HOSPITAL | 1396714663 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Observation | OBSV | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 03082018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02272018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228047 | K810 | Acute cholecystitis | ICD10 | 03082018 | 02272018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02282018 | 2018-02-28T14:10:49+00:00 |  | 000098913-01 | Dawn | Green | S DAYTON ACUTE CARE CNSL | 907795 | MANJULA | SATYANARAYAN | 1558412866 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 03082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02272018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228068 | M549, S32000A, S32020A | Wedge compression fracture of second lumbar vertebra, init | ICD10 | 03082018 | 02272018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03052018 | 2018-03-05T10:29:13+00:00 |  | 000032610-01 | SHIRLEY | TACKETT | COPC CENTRAL OHIO PRIMAR | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03042018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305032 | A419, G9340 | Encephalopathy, unspecified | ICD10 | 03082018 | 03042018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03032018 | 2018-03-03T17:14:40+00:00 |  | 000101980-01 | Anita | Benthein | HOSPITALIST MEDICINE PHY | 948134 | DONNA R | ADAMS | 1154381994 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 03082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03022018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180306159964.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305039 | M6281 | Muscle weakness (generalized) | ICD10 | 03082018 | 03022018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03062018 | 2018-03-06T07:43:00+00:00 |  | 000041148-01 | JOHN | SLANE | COLS INPATIENT CARE INC | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03032018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306020 | T8571XA | Infect/inflm reaction due to periton dialysis catheter, init | ICD10 | 03082018 | 03032018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03052018 | 2018-03-05T15:18:24+00:00 |  | 000025159-01 | NORMA | BRICKER | COLS INPATIENT CARE INC | 935780 | DEBORAH J | WOIDTKE | 1457339806 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Observation | OBSV | Concurrent Review | CONC |  | DILEY RIDGE MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306034 | L03818 | Cellulitis of other sites | ICD10 | 03082018 | 03052018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03062018 | 2018-03-06T07:55:34+00:00 |  | 000113478-01 | Mendelynn | Fisher | COPC CENTRAL OHIO PRIMAR | 912176 | AMISH S | OZA | 1396953956 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03052018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306056 | E876, R531, R5381 | Other malaise | ICD10 | 03082018 | 03052018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03062018 | 2018-03-06T08:30:04+00:00 |  | 000092239-01 | James | Peer | APOGEE MED GRP OHIO INC | 923380 | W TRAVIS | LAWSON JR | 1134114044 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306060 | R0600, R748, Z8679 | Personal history of other diseases of the circulatory system | ICD10 | 03082018 | 03062018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03082018 | 2018-03-08T11:47:15+00:00 |  | 000049213-01 | OTHEL | GRIFFITH | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308006 | R6889 | Other general symptoms and signs | ICD10 | 03082018 | 03062018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03082018 | 2018-03-08T12:04:10+00:00 |  | 000042852-01 | SUE | BONEY | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308008 | R6889 | Other general symptoms and signs | ICD10 | 03082018 | 03062018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03052018 | 2018-03-05T10:50:38+00:00 |  | 000087452-01 | Betty | Ritchie | MARIETTA HLTH CARE PHYS | 921885 | RAJENDRA S | BHATI | 1164641759 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03082018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03032018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305086 | K561, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03082018 | 03032018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03062018 | 2018-03-06T09:59:38+00:00 |  | 000109679-01 | CINDI | PITZER | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306012 | D649 | Anemia, unspecified | ICD10 | 03082018 | 03052018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03062018 | 2018-03-06T10:02:37+00:00 |  | 000013826-01 | GEORGE | LAKE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306014 | R55 | Syncope and collapse | ICD10 | 03082018 | 03052018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03062018 | 2018-03-06T09:21:40+00:00 |  | 000069585-01 | PAUL | VITTITOW | OSU GENERAL INTL MED LLC | 926994 |  | OSU GENERAL INTERNAL MEDICINE LLC | 1689919599 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306022 | T819XXA | Unspecified complication of procedure, initial encounter | ICD10 | 03082018 | 03052018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03062018 | 2018-03-06T09:15:27+00:00 |  | 000118366-01 | Robert | Thompson | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03052018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306065 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 03082018 | 03052018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03062018 | 2018-03-06T10:19:28+00:00 |  | 000102569-01 | Karen | Neighbarger | KNOX COMMUNITY HOSP GRP | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03052018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306067 | R55, S8291XA | Unsp fracture of right lower leg, init for clos fx | ICD10 | 03082018 | 03052018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03062018 | 2018-03-06T14:43:23+00:00 |  | 000058212-01 | Clyde | Graham | MOUNT CARMEL HLTH SYS | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03052018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306079 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 03082018 | 03052018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T09:43:39+00:00 |  | 000089655-01 | Henry | Schlake | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307009 | R55 | Syncope and collapse | ICD10 | 03082018 | 03062018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03072018 | 2018-03-07T09:47:10+00:00 |  | 000112975-01 | Christina | Wilson | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307011 | G809 | Cerebral palsy, unspecified | ICD10 | 03082018 | 03062018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03072018 | 2018-03-07T16:10:57+00:00 |  | 000109141-01 | BETTY | SCANLON | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307077 | R079 | Chest pain, unspecified | ICD10 | 03082018 | 03062018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03082018 | 2018-03-08T15:00:46+00:00 |  | 000046167-01 | RALPH | BURRELL | COPC CENTRAL OHIO PRIMAR | 942960 | TAMARA J | SCOTT | 1871852863 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03082018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 12272017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308050 | I639 | Cerebral infarction, unspecified | ICD10 | 03082018 | 12272017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
