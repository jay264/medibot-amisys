Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-23_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-23_OBS
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
  And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image

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
| 03272017 | 2017-03-27T08:14:00+00:00 |  | 000084594-01 | Dona | Frazier | HMP OF OHIO PC | 946140 | MALATHY | VARATHARAJAH | 1669470050 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05232017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03262017 | 07292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170405093631.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170327130 | A419, I4892, J189, R509 | Fever, unspecified | ICD10 | 05232017 | 03262017 | 03292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042017 | 2017-05-04T15:18:21+00:00 |  | 000075441-01 | Ronald | Hardy | GENESIS MEDICAL GRP LLC | 912779 | EDUARDO | JORGE | 1689675134 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05232017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05192017 | 05212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505003 | I6522, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 05232017 | 05192017 | 05212017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05152017 | 2017-05-15T09:47:48+00:00 |  | 000101022-01 | Joan | George | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05232017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05132017 | 05142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515042 | I10, R079 | Chest pain, unspecified | ICD10 | 05232017 | 05132017 | 05142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T15:58:23+00:00 |  | 000083257-01 | Heidi | Wooten | ADENA MEDICAL GROUP LLC | 927071 | MAYSA | EL-SAYYID | 1962638122 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05232017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517001 | R112 | Nausea with vomiting, unspecified | ICD10 | 05232017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05172017 | 2017-05-17T09:53:43+00:00 |  | 000051477-01 | JUDY | ZIMMERMAN | HMP OF OHIO PC | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05162017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517020 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05232017 | 05162017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05172017 | 2017-05-17T14:20:27+00:00 |  | 000066818-01 | JOHN | PETTIGREW | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05172017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517061 | J189 | Pneumonia, unspecified organism | ICD10 | 05232017 | 05172017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05172017 | 2017-05-17T15:11:12+00:00 |  | 000005853-01 | HERMAN | MUNCY | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05162017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517067 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05232017 | 05162017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05182017 | 2017-05-18T07:41:22+00:00 |  | 000083955-01 | Joyce | Stevens | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518009 | R0602 | Shortness of breath | ICD10 | 05232017 | 05172017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05182017 | 2017-05-18T07:42:27+00:00 |  | 000099447-01 | William | Oelker Jr | CHASE, DANIEL W | 935922 | DANIEL W | CHASE | 1063483857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05232017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 05172017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518010 | E041 | Nontoxic single thyroid nodule | ICD10 | 05232017 | 05172017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05182017 | 2017-05-18T07:43:32+00:00 |  | 000102070-01 | Darwin | Howdyshell | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518012 | R079 | Chest pain, unspecified | ICD10 | 05232017 | 05172017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05192017 | 2017-05-19T10:23:38+00:00 | 025804599-7139 | 000100878-01 | Thomas | Rothe | KIDNEY SPECIALISTS INC | 910748 | JOSHUA E | BITTER | 1619093655 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05182017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519022 | R079 | Chest pain, unspecified | ICD10 | 05232017 | 05182017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05192017 | 2017-05-19T12:26:39+00:00 |  | 000046755-01 | JANET | WARD | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05182017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519050 | R079 | Chest pain, unspecified | ICD10 | 05232017 | 05182017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05192017 | 2017-05-19T13:27:51+00:00 | 025125388-7139 | 000070879-01 | Charles | Walters | MOUNT CARMEL HLTH PRVDRS | 935073 | FRED W | WORLEY | 1003814633 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05232017 | Approved | MediGold Essential Care | EMR | Observation | Inpatient | 05192017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519059 | I639 | Cerebral infarction, unspecified | ICD10 | 05232017 | 05192017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05192017 | 2017-05-19T14:53:18+00:00 |  | 000079396-01 | Sharon | Teal | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05232017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05192017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519072 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 05232017 | 05192017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05192017 | 2017-05-19T14:16:16+00:00 |  | 000013974-01 | ROBERT | WILSON | S DAYTON ACUTE CARE CNSL | 923833 | MUHAMMAD | AKBAR | 1295062099 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05192017 | 05212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519076 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05232017 | 05192017 | 05212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05212017 | 2017-05-21T11:28:31+00:00 |  | 000037463-01 | ERMALEE | SHUMATE | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05202017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522062 | R4182 | Altered mental status, unspecified | ICD10 | 05232017 | 05202017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T11:54:38+00:00 |  | 000106657-01 | Patricia Ann | Ferrell | COPC CENTRAL OHIO PRIMAR | 924517 | JULIE A | COLELLA | 1396073292 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 05212017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522066 | R109 | Unspecified abdominal pain | ICD10 | 05232017 | 05212017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T11:13:31+00:00 |  | 000087725-01 | Roberta | Welch | GENESIS MEDICAL GRP LLC | 924971 | NATALIYA | LIBER | 1295003721 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05232017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05192017 | 05212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522068 | R531 | Weakness | ICD10 | 05232017 | 05192017 | 05212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T12:33:12+00:00 |  | 000045550-01 | DORIS | KITZMILLER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522076 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 05232017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05222017 | 2017-05-22T14:03:30+00:00 | 025524493-7141 | 000002896-01 | LAWRENCE | SHOCKLEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05212017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522101 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 05232017 | 05212017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T14:22:47+00:00 |  | 000088584-01 | Roger | Boles | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | BEAVERCREEK MEDICAL CENTER | 05232017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05192017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522105 | E630, E876 | Hypokalemia | ICD10 | 05232017 | 05192017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05222017 | 2017-05-22T16:12:20+00:00 |  | 000030522-01 | HELEN | PUCKETT | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522125 | I4891 | Unspecified atrial fibrillation | ICD10 | 05232017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05222017 | 2017-05-22T16:20:18+00:00 |  | 000042902-01 | DAVID | SMITH | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522129 | I4891 | Unspecified atrial fibrillation | ICD10 | 05232017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05222017 | 2017-05-22T16:19:51+00:00 |  | 000083845-01 | Norman | Brooks | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05232017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05222017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523010 | R0602 | Shortness of breath | ICD10 | 05232017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05222017 | 2017-05-22T16:34:31+00:00 |  | 000104868-01 | MAMIE | PORTER | S DAYTON ACUTE CARE CNSL | 912896 | RICHARD J | SAXEN | 1790847226 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05232017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05202017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523015 | M6281 | Muscle weakness (generalized) | ICD10 | 05232017 | 05202017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T08:34:00+00:00 |  | 000095108-01 | Edward | Tolley | SUPERIOR MED LLC | 921916 | COREY | JACKSON | 1669693032 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 05232017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523020 | M12811, M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 05232017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T15:42:24+00:00 |  | 000028205-01 | ANN | CARPENTER | HMP OF OHIO PC | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05202017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523081 | S32010A | Wedge compression fracture of first lumbar vertebra, init | ICD10 | 05232017 | 05202017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05232017 | 2017-05-23T16:09:03+00:00 |  | 000092379-01 | Robert | Green | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523084 | K8010 | Calculus of gallbladder w chronic cholecyst w/o obstruction | ICD10 | 05232017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
