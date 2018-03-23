Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-20_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-20_OBS
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
| 03122018 | 2018-03-12T15:49:17+00:00 |  | 000120089-01 | Gloria | Powell | S DAYTON ACUTE CARE CNSL | 906496 | VALERIE A | ALIU | 1073692042 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03112018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312109 | R42, R55 | Syncope and collapse | ICD10 | 03192018 | 03112018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03152018 | 2018-03-15T09:35:17+00:00 |  | 000118366-01 | Robert | Thompson | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03202018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03142018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315023 | L03221, L97509 | Non-pressure chronic ulcer oth prt unsp foot w unsp severity | ICD10 | 03202018 | 03142018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03152018 | 2018-03-15T10:42:57+00:00 |  | 000113497-01 | Joyce | Thompson | KNOX COMMUNITY HOSPITAL | 905470 | KOMBIAN | GBARUK | 1235171802 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03202018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03142018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315032 | L03115 | Cellulitis of right lower limb | ICD10 | 03202018 | 03142018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03162018 | 2018-03-16T10:29:08+00:00 |  | 000080511-01 | Kathy | Wilson | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03152018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316029 | R079 | Chest pain, unspecified | ICD10 | 03202018 | 03152018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03162018 | 2018-03-16T13:59:07+00:00 |  | 000066283-01 | Patricia | Mccurdy | FAIRFIELD MEDICAL CENTER | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03162018 | 03182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316065 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 03202018 | 03162018 | 03182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03172018 | 2018-03-17T11:37:40+00:00 |  | 000021478-01 | VERNIE | SHEPHERD JR | SOUND INPATIENT PHYS OF | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03162018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319013 | D709, R5081 | Fever presenting with conditions classified elsewhere | ICD10 | 03202018 | 03162018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03092018 | 2018-03-09T09:34:16+00:00 |  | 000088907-01 | Richard | Morris | MERCY HEALTH PHYSICIANS | 921134 | RAJINDER P | SINGH | 1184758799 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 03202018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03132018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309033 | I481 | Persistent atrial fibrillation | ICD10 | 03202018 | 03132018 | 03162018 | 80299 | QUANTITATION OF DRUG, NOT ELSEWHERE SPECIFIED | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03152018 | 2018-03-15T09:22:54+00:00 |  | 000064273-01 | HELEN | STARR | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03202018 | Approved | THE TIMKEN COMPANY | Fax | Observation | Inpatient | 03142018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315003 | R0902 | Hypoxemia | ICD10 | 03202018 | 03142018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03152018 | 2018-03-15T12:20:37+00:00 |  | 000113627-01 | Michael | Perdue | S DAYTON ACUTE CARE CNSL | 913547 | SVEN E | RAYMOND | 1609830876 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 03202018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03142018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315041 | J0190, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03202018 | 03142018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03152018 | 2018-03-15T12:59:59+00:00 |  | 000089767-01 | Paul | Mulholland | MERCY HEALTH PHYSICIANS | 942580 | JAMES D | ABBOTT | 1598809519 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03202018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03152018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315047 | S76111A | Strain of right quadriceps muscle, fascia and tendon, init | ICD10 | 03202018 | 03152018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03162018 | 2018-03-16T09:37:27+00:00 |  | 000042529-01 | PATRICIA | SINES | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03152018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316009 | D649, I509, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03202018 | 03152018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03162018 | 2018-03-16T10:28:19+00:00 |  | 000065471-01 | JOHNNY | NEWTON | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03152018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316028 | R079 | Chest pain, unspecified | ICD10 | 03202018 | 03152018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03162018 | 2018-03-16T11:09:57+00:00 |  | 000015183-01 | Harley | Hanes Sr | LICKING MEM INPATIENT ME | 918520 | JAMIE A | RHODES | 1619120276 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03152018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316032 | R079 | Chest pain, unspecified | ICD10 | 03202018 | 03152018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03162018 | 2018-03-16T14:05:04+00:00 |  | 000066934-01 | ROBERT | OATNEY | FAIRFIELD MEDICAL CENTER | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03202018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03162018 | 03182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316070 | I509, R0600 | Dyspnea, unspecified | ICD10 | 03202018 | 03162018 | 03182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T10:09:29+00:00 |  | 000071787-01 | Roger | Thompson | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03202018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03172018 | 03182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319031 | E876 | Hypokalemia | ICD10 | 03202018 | 03172018 | 03182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03192018 | 2018-03-19T07:45:57+00:00 |  | 000039587-01 | RONALD | CALLISON | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03172018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319056 | J441, R0602 | Shortness of breath | ICD10 | 03202018 | 03172018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T08:54:21+00:00 |  | 000048741-01 | SALLY | MASSIE | FCMH MED & SURG ASSOC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03172018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319067 | R079 | Chest pain, unspecified | ICD10 | 03202018 | 03172018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T11:09:57+00:00 |  | 000082634-01 | Sandra | Roberts | OPPONG, BERNARD K | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Observation | OBSV | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03172018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319080 | R4182 | Altered mental status, unspecified | ICD10 | 03202018 | 03172018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T15:43:48+00:00 |  | 000094524-01 | Janet | Marcum | OHIOHEALTH PHYS GRP | 920738 | MARSHALL C | SPALDING | 1316261100 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03152018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320015 | S42002A | Fracture of unsp part of left clavicle, init for clos fx | ICD10 | 03202018 | 03152018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03202018 | 2018-03-20T07:42:40+00:00 |  | 000031425-01 | JOYCE | LUTZ | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03202018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 03162018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320021 | N179, R609 | Edema, unspecified | ICD10 | 03202018 | 03162018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03202018 | 2018-03-20T13:37:23+00:00 |  | 000057986-01 | MICHAEL | DUBOE | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03172018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320059 | R531 | Weakness | ICD10 | 03202018 | 03172018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03202018 | 2018-03-20T13:46:03+00:00 |  | 000021706-01 | WILLIAM | MOHLER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03172018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320061 | I4891, R42 | Dizziness and giddiness | ICD10 | 03202018 | 03172018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03202018 | 2018-03-20T14:13:28+00:00 |  | 000049014-01 | MARCIA | DAWSON | CEN OH PRIMARY CARE SPEC | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03152018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320067 | J209 | Acute bronchitis, unspecified | ICD10 | 03202018 | 03152018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03202018 | 2018-03-20T14:21:41+00:00 |  | 000073975-01 | Gregory | Waller | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03152018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320070 | M6281 | Muscle weakness (generalized) | ICD10 | 03202018 | 03152018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03202018 | 2018-03-20T14:21:36+00:00 |  | 000059533-01 | OSCAR | JONES JR | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03162018 | 03182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320071 | R42 | Dizziness and giddiness | ICD10 | 03202018 | 03162018 | 03182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03202018 | 2018-03-20T14:49:56+00:00 |  | 000040623-01 | RALPH | LOCKE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03172018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320077 | K122 | Cellulitis and abscess of mouth | ICD10 | 03202018 | 03172018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
