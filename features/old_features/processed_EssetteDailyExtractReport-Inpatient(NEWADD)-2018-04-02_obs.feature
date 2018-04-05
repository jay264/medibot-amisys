Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-02_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-02_OBS
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
| 03292018 | 2018-03-29T15:25:18+00:00 |  | 000119186-01 | Teresa | Wilson | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03282018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330045 | L0390, S8010XA | Contusion of unspecified lower leg, initial encounter | ICD10 | 04012018 | 03282018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03292018 | 2018-03-29T10:15:30+00:00 |  | 000044460-01 | RUTH | DOLAN | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03282018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329070 | R296 | Repeated falls | ICD10 | 04012018 | 03282018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03302018 | 2018-03-30T10:05:14+00:00 |  | 000068517-01 | JEFFREY | BABIONE SR | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 03292018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330067 | T07 | Unspecified multiple injuries | ICD10 | 04012018 | 03292018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03162018 | 2018-03-16T08:19:10+00:00 |  | 000119676-01 | MARY | RODGERS | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03152018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316020 | R0602 | Shortness of breath | ICD10 | 04022018 | 03152018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03232018 | 2018-03-23T14:49:29+00:00 |  | 000120638-01 | SHARON | SALLY | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03222018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326001 | K5660 | Unspecified intestinal obstruction | ICD10 | 04022018 | 03222018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03252018 | 2018-03-25T12:12:33+00:00 |  | 000031682-01 | WILLIAM | BOWLING | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326037 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 04022018 | 03242018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03272018 | 2018-03-27T13:21:05+00:00 |  | 000100182-01 | BENNETT | WISE | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03272018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328063 | I951 | Orthostatic hypotension | ICD10 | 04012018 | 03272018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03222018 | 2018-03-22T16:25:58+00:00 |  | 000113974-01 | Merrill | Raver | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03212018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322069 | I8291 | Chronic embolism and thrombosis of unspecified vein | ICD10 | 04022018 | 03212018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03282018 | 2018-03-28T10:28:45+00:00 |  | 000046021-01 | ROBERT | HASBROOK | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03262018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328035 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 04022018 | 03262018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03292018 | 2018-03-29T09:15:24+00:00 |  | 000078389-01 | Viola | Strait | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03272018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329012 | R112 | Nausea with vomiting, unspecified | ICD10 | 04022018 | 03272018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03292018 | 2018-03-29T09:30:19+00:00 |  | 000028393-01 | SAMMY | JUNK | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03272018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329019 | M6281 | Muscle weakness (generalized) | ICD10 | 04022018 | 03272018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03282018 | 2018-03-28T14:40:09+00:00 |  | 000099902-01 | Robert | Bible | HOSPITAL MEDICINE SERVIC | 941188 | ABDAL R | ALHYARI | 1205051570 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Observation | OBSV | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 04022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03272018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329042 | A020, N179 | Acute kidney failure, unspecified | ICD10 | 04022018 | 03272018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03302018 | 2018-03-30T08:22:26+00:00 |  | 000025000-01 | JACQUELINE | CHRISTY | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03282018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330003 | E785, N390 | Urinary tract infection, site not specified | ICD10 | 04022018 | 03282018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03302018 | 2018-03-30T09:24:56+00:00 |  | 000115139-01 | Sushma | Pandey | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03282018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330005 | C801 | Malignant (primary) neoplasm, unspecified | ICD10 | 04022018 | 03282018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03302018 | 2018-03-30T10:54:00+00:00 |  | 000049516-01 | ROSE | ABRAMS | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330019 | R079 | Chest pain, unspecified | ICD10 | 04022018 | 03292018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03302018 | 2018-03-30T15:59:47+00:00 |  | 000072716-01 | John | Stemen | MOUNT CARMEL HLTH SYS | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330077 | R1111 | Vomiting without nausea | ICD10 | 04022018 | 03292018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03302018 | 2018-03-30T16:09:21+00:00 |  | 000032296-01 | WILLIAM | THORNTON | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330081 | R42 | Dizziness and giddiness | ICD10 | 04022018 | 03292018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03302018 | 2018-03-30T12:17:51+00:00 |  | 000086218-01 | Mary | Nangle | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03292018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330084 | R079 | Chest pain, unspecified | ICD10 | 04022018 | 03292018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T08:30:18+00:00 |  | 000079050-01 | Peggy | Bowles | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402039 | R6889 | Other general symptoms and signs | ICD10 | 04022018 | 03292018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T12:21:18+00:00 |  | 000028862-01 | VIOLA | MESSINA | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402043 | R6889 | Other general symptoms and signs | ICD10 | 04022018 | 03292018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T13:51:57+00:00 |  | 000031139-01 | STEVEN | ATHEY | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03312018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402096 | R6889 | Other general symptoms and signs | ICD10 | 04022018 | 03312018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T15:14:38+00:00 |  | 000077910-01 | GLADYS | COLLINS | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03302018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402098 | R6889 | Other general symptoms and signs | ICD10 | 04022018 | 03302018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T15:20:38+00:00 |  | 000032947-01 | AUGUST | SIMMONS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03302018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402102 | R079 | Chest pain, unspecified | ICD10 | 04022018 | 03302018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T15:18:34+00:00 |  | 000097718-01 | THOMAS | MEYERS | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03312018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402105 | R6889 | Other general symptoms and signs | ICD10 | 04022018 | 03312018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T15:25:46+00:00 |  | 000015265-01 | VIRGINIA | COOK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03302018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402106 | I4891 | Unspecified atrial fibrillation | ICD10 | 04022018 | 03302018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T15:28:52+00:00 |  | 000052906-01 | CLAYTON | TRAGER | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03312018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402107 | R6889 | Other general symptoms and signs | ICD10 | 04022018 | 03312018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
