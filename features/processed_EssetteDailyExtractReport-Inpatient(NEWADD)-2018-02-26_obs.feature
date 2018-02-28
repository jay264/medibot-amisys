Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-26_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-26_OBS
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
| 02202018 | 2018-02-20T15:45:27+00:00 |  | 000053290-01 | CATHERINE | LANG | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02252018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02182018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221005 | R933 | Abnormal findings on dx imaging of prt digestive tract | ICD10 | 02252018 | 02182018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02202018 | 2018-02-20T15:59:38+00:00 |  | 000108335-01 | THOMAS | KIDD | PULMONARY MED OF DAYTON | 912107 | GNANAM | THAMBIPILLAI | 1255346730 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02192018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221056 | G959, M869 | Osteomyelitis, unspecified | ICD10 | 02262018 | 02192018 | 02222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12262017 | 2017-12-26T09:00:34+00:00 |  | 000096776-01 | Mary | Fitch | SPFLD ORTHO SPORTS MED L | 927402 | KEVIN C | ZARTMAN | 1710173885 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 02262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02222018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226049 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02262018 | 02222018 | 02242018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02082018 | 2018-02-08T09:44:53+00:00 |  | 000107548-01 | Larry | Green | OSU HLTH SYSTEM NEUROSUR | 942972 | VIBNOR | KRISHNA | 1114008364 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02202018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208038 | G250 | Essential tremor | ICD10 | 02262018 | 02202018 | 02212018 | 61867, 20660, 77002 | FLUOROSCOPIC GUIDANCE FOR NEEDLE PLACEMENT | CPT | 0, 0, 0 | 1, 1, 1 | , ,  | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02162018 | 2018-02-16T10:51:40+00:00 |  | 000065355-01 | TED | SIMMONS | GRANDVIEW HOSPITAL & SOU | 904867 | TROY A | TYNER | 1003814526 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02152018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216043 | J101, R531 | Weakness | ICD10 | 02262018 | 02152018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02192018 | 2018-02-19T16:16:03+00:00 |  | 000045672-01 | Peggy | Edwards | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 |  | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Observation | OBSV | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02182018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220051 | J189, R0902, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 02262018 | 02182018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02202018 | 2018-02-20T09:28:08+00:00 |  | 000051904-01 | FRED | MOORE | COPC CENTRAL OHIO PRIMAR | 913915 | MALVINA | KHOZINA | 1063473288 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02202018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220064 | A419 | Sepsis, unspecified organism | ICD10 | 02262018 | 02202018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02222018 | 2018-02-22T10:40:03+00:00 |  | 000107287-01 | Virginia | Hunt | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02212018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222046 | I509, N289, R001, R0600, R609, I160 | HYPERTENSIVE URGENCY | ICD10 | 02262018 | 02212018 | 02222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T10:50:34+00:00 |  | 000071346-01 | Marilyn | Oravec | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02232018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226038 | M9111 | Juvenile osteochondrosis of head of femur, right leg | ICD10 | 02262018 | 02232018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T07:53:11+00:00 |  | 000073888-01 | Barbara | Spicer | LANCASTER SURGICAL ASSOC | 936219 | TIMOTHY J | CUSTER | 1144211418 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02262018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02222018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226039 | R0602 | Shortness of breath | ICD10 | 02262018 | 02222018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02162018 | 2018-02-16T16:10:28+00:00 |  | 000099380-01 | Barbara | Oda | ALLIANCE PHYSICIANS INC | 924143 | MATTHEW D | HESS | 1407056518 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02202018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216083 | M1990, Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 02262018 | 02202018 | 02212018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02192018 | 2018-02-19T09:38:31+00:00 |  | 000107568-01 | JAMES | BOLAND | HOSPITALIST MEDICINE PHY | 948134 | DONNA R | ADAMS | 1154381994 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 02262018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02192018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219028 | N3000, R400 | Somnolence | ICD10 | 02262018 | 02192018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02212018 | 2018-02-21T09:04:54+00:00 |  | 000099388-01 | Frank | Joseph | INPATIENT SPECIALISTS PA | 920609 | MICHAEL C | MURRAY | 1972781821 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02262018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02202018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221069 | R109 | Unspecified abdominal pain | ICD10 | 02262018 | 02202018 | 02222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02222018 | 2018-02-22T08:56:25+00:00 |  | 000096026-01 | Barbara | Ault | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02212018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222057 | I4891 | Unspecified atrial fibrillation | ICD10 | 02262018 | 02212018 | 02222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02222018 | 2018-02-22T12:44:31+00:00 |  | 000053371-01 | NANCY | HALEY | MERCY HEALTH PHYSICIANS | 902845 | MARVIN M | NARCELLES | 1871583666 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02222018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222068 | R112 | Nausea with vomiting, unspecified | ICD10 | 02262018 | 02222018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02222018 | 2018-02-22T14:57:45+00:00 |  | 000034226-01 | JOAN | KRAFT | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02212018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222077 | I4891, W19XXXA | Unspecified fall, initial encounter | ICD10 | 02262018 | 02212018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02232018 | 2018-02-23T08:49:02+00:00 |  | 000002210-01 | SONYA | CHAFIN | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02222018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223013 | I214, I509, R4182 | Altered mental status, unspecified | ICD10 | 02262018 | 02222018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02232018 | 2018-02-23T09:16:55+00:00 |  | 000106640-01 | Charles | Clouser | APOGEE MED GRP OHIO INC | 943746 | JAMES | BARRON | 1295776441 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02222018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223027 | I4891 | Unspecified atrial fibrillation | ICD10 | 02262018 | 02222018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02232018 | 2018-02-23T10:18:34+00:00 |  | 000099660-01 | Charlotte | Hall | LICKING MEM HLTH PROF | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02222018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223032 | J111, R0902 | Hypoxemia | ICD10 | 02262018 | 02222018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02232018 | 2018-02-23T11:08:37+00:00 |  | 000096049-01 | Sarah | Parks | CLERMONT INTERNISTS ASSO | 921368 | ANIL K | KAKUMANU | 1922287515 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 02262018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02222018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223036 | R55 | Syncope and collapse | ICD10 | 02262018 | 02222018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02232018 | 2018-02-23T11:30:33+00:00 |  | 000092734-01 | Charlotte | Jewell | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02212018 | 02252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223041 | N3090, N390 | Urinary tract infection, site not specified | ICD10 | 02262018 | 02212018 | 02252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02232018 | 2018-02-23T14:26:41+00:00 |  | 000042446-01 | BUDDY | BOALS | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02212018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223056 | R55 | Syncope and collapse | ICD10 | 02262018 | 02212018 | 02222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02232018 | 2018-02-23T14:45:08+00:00 |  | 000046302-01 | KAREN | LUCKHAUPT | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02212018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223060 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02262018 | 02212018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02232018 | 2018-02-23T15:07:09+00:00 |  | 000085536-01 | Marilyn | Richards | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02212018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223072 | N390 | Urinary tract infection, site not specified | ICD10 | 02262018 | 02212018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02242018 | 2018-02-24T16:58:02+00:00 |  | 000087651-01 | John | Winger | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02232018 | 02252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226022 | R001 | Bradycardia, unspecified | ICD10 | 02262018 | 02232018 | 02252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02262018 | 2018-02-26T07:51:00+00:00 |  | 000048740-01 | FLOYD | CHAMBERLAIN | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02242018 | 02252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226037 | L02212 | Cutaneous abscess of back [any part, except buttock] | ICD10 | 02262018 | 02242018 | 02252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T07:55:22+00:00 |  | 000089244-01 | Joyce | Lyons | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02242018 | 02252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226041 | R079 | Chest pain, unspecified | ICD10 | 02262018 | 02242018 | 02252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T10:14:53+00:00 |  | 000120924-01 | Neal | Conaway | HIGHLAND DISTRICT HSP PR | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Observation | OBSV | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02232018 | 02252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226062 | I509, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02262018 | 02232018 | 02252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02262018 | 2018-02-26T10:29:00+00:00 |  | 000087355-01 | Thomas | Levering | KNOX COMMUNITY HOSP GRP | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02232018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226064 | R079 | Chest pain, unspecified | ICD10 | 02262018 | 02232018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T14:18:50+00:00 |  | 000087933-01 | Diane | Bereczky | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02232018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226079 | R6889 | Other general symptoms and signs | ICD10 | 02262018 | 02232018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T14:42:10+00:00 |  | 000075520-01 | Dorian | Sealock | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02262018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02222018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226089 | R079 | Chest pain, unspecified | ICD10 | 02262018 | 02222018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T13:07:38+00:00 |  | 000063860-01 | BERNICE | RIFFLE | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02232018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226099 | R079 | Chest pain, unspecified | ICD10 | 02262018 | 02232018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T14:42:10+00:00 |  | 000115075-01 | William | Hedrick | HOSPITALIST MEDICINE PHY | 928796 | KERRY A | LECKY | 1396952651 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02262018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02212018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226115 | R079, R109 | Unspecified abdominal pain | ICD10 | 02262018 | 02212018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
