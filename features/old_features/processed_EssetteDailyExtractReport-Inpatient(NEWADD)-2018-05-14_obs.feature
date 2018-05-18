Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-14_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-14_OBS
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
| 05072018 | 2018-05-07T07:20:59+00:00 |  | 000102957-01 | Arlene | Hilling | MIAMI VALLEY HSPISTS GRP | 947756 | NIKHIL | PRASAD | 1114364460 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05142018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05012018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507069 | K567, R1084 | Generalized abdominal pain | ICD10 | 05142018 | 05012018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04272018 | 2018-04-27T14:24:04+00:00 |  | 000113617-01 | Jane | Shuff | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05072018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427065 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 05142018 | 05072018 | 05092018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05072018 | 2018-05-07T11:38:33+00:00 |  | 000030679-01 | SALLY | REES | OPPONG, BERNARD K | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Observation | OBSV | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05052018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508004 | L0390 | Cellulitis, unspecified | ICD10 | 05142018 | 05052018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05092018 | 2018-05-09T08:45:01+00:00 |  | 000042275-01 | JUDY | STEVENS | SOUND INPATIENT PHYS OF | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509028 | I509 | Heart failure, unspecified | ICD10 | 05142018 | 05092018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092018 | 2018-05-09T11:58:46+00:00 |  | 000098276-01 | GERTRUDE | HERB | MEDICINE INPATIENT GROUP | 925155 | FADI | BAILONY | 1003965385 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 05142018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05082018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510012 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 05142018 | 05082018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05102018 | 2018-05-10T09:01:00+00:00 |  | 000055206-01 | Mary | Harbaugh | FAIRFIELD HLTHCARE PROFS | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05142018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05092018 | 05122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510014 | I5021 | Acute systolic (congestive) heart failure | ICD10 | 05142018 | 05092018 | 05122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05102018 | 2018-05-10T08:29:50+00:00 |  | 000107292-01 | TIMOTHY | UHRIG | GRANDVIEW & SOUTHVIEW HO | 936462 |  | GRANDVIEW MEDICAL CENTER | 1053339507 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05142018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05092018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510025 | E860, K5660 | Unspecified intestinal obstruction | ICD10 | 05142018 | 05092018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05102018 | 2018-05-10T16:04:24+00:00 |  | 000085879-01 | Jewel | Sparks | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05142018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 05092018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511010 | R531 | Weakness | ICD10 | 05142018 | 05092018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03262018 | 2018-03-26T15:00:08+00:00 |  | 000108407-01 | GARY | ARNETT | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05072018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326099 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05142018 | 05072018 | 05082018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04202018 | 2018-04-20T09:12:41+00:00 |  | 000070726-01 | Verla | Martin | LICKING MEM OTOLARYNGOLO | 903845 | KENNETH C | PARKER | 1841256765 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420025 | E041, E042 | Nontoxic multinodular goiter | ICD10 | 05142018 | 05092018 | 05102018 | 60240 | THYROIDECTOMY-TOTAL OR COMPLETE | CPT | 1 | 1 | Approved Observation | 2 | CPT | C4 |  |  |  | 1.0 |
| 05042018 | 2018-05-04T10:11:03+00:00 |  | 000099607-01 | M Oravell | Mclean | KHN IP MED | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05142018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05032018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504016 | R296, R531 | Weakness | ICD10 | 05142018 | 05032018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05072018 | 2018-05-07T11:42:16+00:00 |  | 000072148-01 | THOMAS | CROAK | LICKING MEM HLTH PROF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05042018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508008 | R1901 | Right upper quadrant abdominal swelling, mass and lump | ICD10 | 05142018 | 05042018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05082018 | 2018-05-08T11:04:40+00:00 |  | 000088306-01 | Okareta | Henry | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05062018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508039 | R6889 | Other general symptoms and signs | ICD10 | 05142018 | 05062018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05082018 | 2018-05-08T08:00:39+00:00 |  | 000087408-01 | Loraine | Wissing | SOUND INPATIENT PHYS OF | 927326 | UMASANKAR | KAKUMANU | 1699068312 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05142018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05072018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508046 | R001, R55, R9431, S022XXA, S0990XA, S12200A, S12400A, S52601A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 05142018 | 05072018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05082018 | 2018-05-08T08:21:49+00:00 |  | 000048835-01 | LINDA | JENSEN | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05072018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508059 | I209, R079 | Chest pain, unspecified | ICD10 | 05142018 | 05072018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05082018 | 2018-05-08T08:26:51+00:00 |  | 000019583-01 | WILLIAM | FRICKER | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05072018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508061 | I2510, R079, R600 | Localized edema | ICD10 | 05142018 | 05072018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05082018 | 2018-05-08T14:30:02+00:00 |  | 000067137-01 | Bennie | Fitzpatrick | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05062018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508091 | R0602 | Shortness of breath | ICD10 | 05142018 | 05062018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05092018 | 2018-05-09T13:26:02+00:00 |  | 000043029-01 | WILLIAM | MCADAMS | ADENA MEDICAL GROUP LLC | 935741 | ALAN T | MONG | 1013935311 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509069 | J449, K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 05142018 | 05092018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05102018 | 2018-05-10T11:40:48+00:00 |  | 000003896-01 | EDWIN | BRAMER | SOUND INPATIENT PHYS OF | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510047 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 05142018 | 05092018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05102018 | 2018-05-10T12:08:38+00:00 |  | 000057962-01 | VERNON | BROWN | SOUND INPATIENT PHYS OF | 941188 | ABDAL R | ALHYARI | 1205051570 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Observation | OBSV | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510049 | J189 | Pneumonia, unspecified organism | ICD10 | 05142018 | 05092018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05102018 | 2018-05-10T18:06:20+00:00 |  | 000013923-01 | Mabel | Bowden | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05102018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511035 | R270, R42 | Dizziness and giddiness | ICD10 | 05132018 | 05102018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05122018 | 2018-05-12T09:46:27+00:00 |  | 000035397-01 | MARJORIE | BALDWIN | MERCY HEALTH PHYSICIANS | 902874 | STEPHEN J | OEHLERS | 1609866490 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05112018 | 05132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514029 | R4689 | Other symptoms and signs involving appearance and behavior | ICD10 | 05142018 | 05112018 | 05132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092018 | 2018-05-09T08:24:50+00:00 |  | 000102049-01 | Georgean | Johnson | CLERMONT INTERNISTS ASSO | 921351 | PARAMESWARAN | HARIHARAN | 1720084460 | MERCY HOSPITAL CLERMONT | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 05142018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05082018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509023 | E875, N179, R42, R609 | Edema, unspecified | ICD10 | 05142018 | 05082018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05092018 | 2018-05-09T08:33:31+00:00 |  | 000107656-01 | Carleen | Henthorn | KNOX COMMUNITY HOSP GRP | 912844 | OSHANA | ALAHAKOON | 1285793745 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05142018 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 05072018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509025 | R079 | Chest pain, unspecified | ICD10 | 05142018 | 05072018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05092018 | 2018-05-09T08:52:53+00:00 |  | 000121483-01 | JUANITA | SOUMMERS | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05082018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509034 | I509, R0600 | Dyspnea, unspecified | ICD10 | 05142018 | 05082018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05092018 | 2018-05-09T15:41:18+00:00 |  | 000063931-01 | BEVERLY | EISEL | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05072018 | 05122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509076 | R55 | Syncope and collapse | ICD10 | 05142018 | 05072018 | 05122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05092018 | 2018-05-09T11:07:00+00:00 |  | 000091696-01 | Vicki | Vigiris | HOSPITALIST MEDICINE PHY | 932748 | EVGHENII | BACANURSCHI | 1922387588 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05142018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05092018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510005 | G8918, G8929, M545, R935 | Abn findings on dx imaging of abd regions, inc retroperiton | ICD10 | 05142018 | 05092018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05092018 | 2018-05-09T15:29:20+00:00 |  | 000074544-01 | Robert | Forsee | CLERMONT INTERNISTS ASSO | 921516 | CHANDRASEKAR | VAIDYANATHAN | 1659373553 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 05142018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05092018 | 05132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510016 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05142018 | 05092018 | 05132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092018 | 2018-05-09T13:31:27+00:00 |  | 000098421-01 | CAROL | WILSON | SPFLD ORTHO SPORTS MED L | 918581 | NOSHIR E | DEBOO | 1164609814 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 05142018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05092018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510018 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05142018 | 05092018 | 05112018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved Observation | 3 | CPT | C4 |  |  |  | 2.0 |
| 05092018 | 2018-05-09T16:33:57+00:00 |  | 000066498-01 | MARY | DAY | MADISON COUNTY HOSPITAL | 936491 |  | MADISON COUNTY HOSPITAL | 1982710703 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Observation | OBSV | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05082018 | 05122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510021 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05142018 | 05082018 | 05122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05102018 | 2018-05-10T08:50:43+00:00 |  | 000054199-01 | Madelyn | Hunter | OSU INTERNAL MED LLC | 928059 | DAVID A | LIEBNER | 1174753537 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Observation | OBSV | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 05142018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05092018 | 05132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510034 | N179 | Acute kidney failure, unspecified | ICD10 | 05142018 | 05092018 | 05132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05102018 | 2018-05-10T10:35:15+00:00 |  | 000081835-01 | William | Wright | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510038 | E860, N179 | Acute kidney failure, unspecified | ICD10 | 05142018 | 05092018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05102018 | 2018-05-10T11:25:07+00:00 |  | 000078536-01 | Ruby | Litton | S DAYTON ACUTE CARE CNSL | 912896 | RICHARD J | SAXEN | 1790847226 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092018 | 05122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510045 | M79604, M79605, R609 | Edema, unspecified | ICD10 | 05142018 | 05092018 | 05122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05102018 | 2018-05-10T13:39:55+00:00 |  | 000066745-01 | ROBERT | PETTIT | SOUND KENWOOD HSPISTS OF | 925740 | WAQAS | AHMED | 1700065091 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 05142018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05092018 | 05122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510057 | E860, R531 | Weakness | ICD10 | 05142018 | 05092018 | 05122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05112018 | 2018-05-11T15:17:01+00:00 |  | 000103105-01 | DARRELL | SICKLES | FAIRFIELD PHYS INC | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05112018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514016 | J189, J90 | Pleural effusion, not elsewhere classified | ICD10 | 05142018 | 05112018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |