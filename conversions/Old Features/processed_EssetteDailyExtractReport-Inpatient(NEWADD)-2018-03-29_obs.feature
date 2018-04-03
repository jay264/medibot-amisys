Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-29_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-29_OBS
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
| 03262018 | 2018-03-26T09:47:28+00:00 |  | 000089113-01 | John | Morgan Sr. | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03292018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03242018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326084 | R092 | Respiratory arrest | ICD10 | 03292018 | 03242018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02202018 | 2018-02-20T11:51:24+00:00 |  | 000078389-01 | Viola | Strait | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02162018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220072 | N179 | Acute kidney failure, unspecified | ICD10 | 03292018 | 02162018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T09:43:44+00:00 |  | 000076428-01 | Geraldine | Burnworth | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326081 | J181, N390, R509 | Fever, unspecified | ICD10 | 03292018 | 03242018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T09:48:42+00:00 |  | 000072825-01 | Margaret | Lemaster | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326086 | I509 | Heart failure, unspecified | ICD10 | 03292018 | 03242018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T09:57:24+00:00 |  | 000031680-01 | ROBERT | MIESSE | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326092 | G9340 | Encephalopathy, unspecified | ICD10 | 03292018 | 03242018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T15:29:15+00:00 |  | 000094806-01 | Jerry | Hollingshead | ORTHOPEDIC & NEUROLOGICA | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03292018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327039 | G8918 | Other acute postprocedural pain | ICD10 | 03292018 | 03262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T09:30:28+00:00 |  | 000015003-01 | WILDA | RITCHEY | HOSPITALIST MEDICINE PHY | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03252018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328017 | E875, N179 | Acute kidney failure, unspecified | ICD10 | 03292018 | 03252018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T10:37:41+00:00 |  | 000106622-01 | Joanne | Harkless | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03262018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328037 | R079 | Chest pain, unspecified | ICD10 | 03292018 | 03262018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03262018 | 2018-03-26T09:17:17+00:00 |  | 000075935-01 | Barbara | Primmer | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03252018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326069 | R0789 | Other chest pain | ICD10 | 03292018 | 03252018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T15:41:08+00:00 |  | 000069079-01 | Carol | Ketzell | KNOX COMMUNITY HSP PHYS | 935489 | STEVEN E | CLUTTER | 1992845895 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03292018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327040 | R55, S0510XA | Contusion of eyeball and orbital tissues, unsp eye, init | ICD10 | 03292018 | 03262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03272018 | 2018-03-27T09:47:53+00:00 |  | 000026449-01 | JOSIE | CLAY | CMH CARDIOLOGY SERVICES | 914228 | JOHN T | HOLLON | 1124092846 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327079 | E162, I959 | Hypotension, unspecified | ICD10 | 03292018 | 03262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T13:21:17+00:00 |  | 000045839-01 | MARY | WHYTE | KNOX COMMUNITY HSP PHYS | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03292018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03272018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329035 | R079, R0902 | Hypoxemia | ICD10 | 03292018 | 03272018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03292018 | 2018-03-29T08:38:34+00:00 |  | 000091094-01 | Patricia | Garber | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03292018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329044 | R6889 | Other general symptoms and signs | ICD10 | 03292018 | 03262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
