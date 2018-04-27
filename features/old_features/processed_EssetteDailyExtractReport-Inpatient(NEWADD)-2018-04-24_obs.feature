Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-24_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-24_OBS
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
| 04202018 | 2018-04-20T08:20:34+00:00 |  | 000061291-01 | SHIRLEY | PAYNE | SOUND INPATIENT PHYS OF | 905477 | AAMIR | KHAN | 1295824746 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04192018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420022 | R0602 | Shortness of breath | ICD10 | 04242018 | 04192018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03262018 | 2018-03-26T11:08:44+00:00 |  | 000095328-01 | Judy | Dunseith | MERCY HEALTH PHYSICIANS | 920930 | CHARLES | MILLER | 1417956202 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 04242018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04162018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326032 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04242018 | 04162018 | 04182018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 1.0 |
| 01202018 | 2018-01-20T11:45:13+00:00 |  | 000020733-01 | Walter | Harris | MOUNT CARMEL HLTH SYS | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01182018 | 01212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180124152427.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122015 | K5660 | Unspecified intestinal obstruction | ICD10 | 04242018 | 01182018 | 01212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T08:33:33+00:00 |  | 000038870-01 | JUDY | GROVES | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04082018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409078 | E860, R112 | Nausea with vomiting, unspecified | ICD10 | 04242018 | 04082018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03122018 | 2018-03-12T14:53:24+00:00 |  | 000101700-01 | Adelene | Wells | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04242018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04162018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313036 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04242018 | 04162018 | 04192018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04192018 | 2018-04-19T07:53:12+00:00 |  | 000064469-01 | ARMITA | RICHARDSON | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04182018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419015 | E860, R079, R112, R531 | Weakness | ICD10 | 04242018 | 04182018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04192018 | 2018-04-19T16:22:21+00:00 |  | 000011863-01 | LESLIE | GATWOOD | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04182018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420002 | R0602, R079 | Chest pain, unspecified | ICD10 | 04242018 | 04182018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04202018 | 2018-04-20T13:24:23+00:00 |  | 000100714-01 | Jennifer | Davidson | ALLIANCE PHYSICIANS INC | 947302 | MIGUEL M | GAETA | 1336306141 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04242018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04192018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423005 | S20212A | Contusion of left front wall of thorax, initial encounter | ICD10 | 04242018 | 04192018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T13:08:31+00:00 |  | 000034793-01 | FRANCES | RAVER | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04192018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423089 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 04242018 | 04192018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04232018 | 2018-04-23T12:32:10+00:00 |  | 000113544-01 | Margaret | French | MEADOWVIEW REGIONAL MEDICAL CENTER | 931045 |  | MEADOWVIEW REGIONAL MEDICAL CENTER | 1881785863 | MEADOWVIEW REGIONAL MEDICAL CENTER | 931045 | 1881785863 | MEADOWVIEW REGIONAL MEDICAL CENTER | 1881785863 | Observation | OBSV | Concurrent Review | CONC |  | MEADOWVIEW REGIONAL MEDICAL CENTER | 04242018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 04202018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424005 | N390, R55 | Syncope and collapse | ICD10 | 04242018 | 04202018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182018 | 2018-04-18T11:57:17+00:00 |  | 000100362-01 | George | Maurer | S DAYTON ACUTE CARE CNSL | 947012 | KATHERINE E | HOUSE | 1184966293 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04162018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418058 | R509 | Fever, unspecified | ICD10 | 04242018 | 04162018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04202018 | 2018-04-20T11:41:13+00:00 |  | 000111857-01 | Constance R | Sullivan | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04242018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04192018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420057 | R0602 | Shortness of breath | ICD10 | 04242018 | 04192018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04202018 | 2018-04-20T13:20:23+00:00 |  | 000065221-01 | CURTIS | COOK | KHN IP MED | 914307 | PARASRAM | RAMDEO | 1821246125 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04192018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423004 | J101, R05 | Cough | ICD10 | 04242018 | 04192018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04232018 | 2018-04-23T11:02:49+00:00 |  | 000106409-01 | Charles | Harrison | CLERMONT INTERNISTS ASSO | 924704 | SUSHEELA | RAJAN | 1144273673 | MERCY HOSPITAL CLERMONT | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 04242018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04192018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423077 | J189 | Pneumonia, unspecified organism | ICD10 | 04242018 | 04192018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T08:58:04+00:00 |  | 000059919-01 | DONALD | CHRISTOPHER | S DAYTON ACUTE CARE CNSL | 932707 | VINAY K | LINGABATHULA | 1578812129 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04212018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423084 | A419, I4891, N390 | Urinary tract infection, site not specified | ICD10 | 04242018 | 04212018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04242018 | 2018-04-24T11:16:47+00:00 |  | 000070473-01 | Sandra | Powell | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04222018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424064 | K5780, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04242018 | 04222018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T12:27:47+00:00 |  | 000093742-01 | Ronda | Bishop | OHIOHEALTH PHYS GRP | 910835 | PAUL R | BEERY | 1508918319 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04212018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424083 | V877XXA | Person injured in collision betw oth mtr veh (traffic), init | ICD10 | 04242018 | 04212018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
