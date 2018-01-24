Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-22_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-22_OBS
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
| 01112018 | 2018-01-11T16:47:53+00:00 |  | 000043408-01 | GERDA | WINKLER | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01092018 | 01142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112010 | N390, R531 | Weakness | ICD10 | 01222018 | 01092018 | 01142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01152018 | 2018-01-15T07:00:21+00:00 |  | 000086016-01 | Eunice | Crawford | HOSPITAL MEDICINE SERVIC | 912176 | AMISH S | OZA | 1396953956 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01122018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115023 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 01222018 | 01122018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01152018 | 2018-01-15T07:07:32+00:00 |  | 000088075-01 | Mary | Wilkerson | MIAMI VALLEY HSPISTS GRP | 947756 | NIKHIL | PRASAD | 1114364460 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01142018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115025 | R42 | Dizziness and giddiness | ICD10 | 01222018 | 01142018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01152018 | 2018-01-15T14:35:43+00:00 |  | 000114046-01 | JO | MCMACKIN | TRAUMA & CRITICAL CARE S | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01122018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115144 | I6200, R4182 | Altered mental status, unspecified | ICD10 | 01222018 | 01122018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01172018 | 2018-01-17T16:57:50+00:00 |  | 000072555-01 | Charlene | Kennedy | UMERANI, AJAZ | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01172018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118010 | R05, R5383, R739, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 01222018 | 01172018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01092018 | 2018-01-09T13:06:27+00:00 |  | 000116089-01 | MARYELLEN | KELLEY | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01092018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109111 | R55 | Syncope and collapse | ICD10 | 01222018 | 01092018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01112018 | 2018-01-11T09:15:46+00:00 |  | 000005948-01 | RALPH | RISTER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01102018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111022 | E860 | Dehydration | ICD10 | 01222018 | 01102018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01122018 | 2018-01-12T12:11:52+00:00 |  | 000044040-01 | LINDA | JOHNSON | ADENA MEDICAL GROUP LLC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01112018 | 01152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112064 | R079 | Chest pain, unspecified | ICD10 | 01222018 | 01112018 | 01152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01152018 | 2018-01-15T09:42:26+00:00 |  | 000044382-01 | DOROTHY | STYERS | MOUNT CARMEL HLTH SYS | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01142018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115051 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 01222018 | 01142018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01182018 | 2018-01-18T09:18:18+00:00 |  | 000030221-01 | IRENE | ZORZI | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01172018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118023 | M79604 | Pain in right leg | ICD10 | 01222018 | 01172018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01182018 | 2018-01-18T16:50:49+00:00 |  | 000118447-01 | Robin | Taylor | BIG RUN URGENT CARE LLC | 917248 | NATHANIEL D | RUSSELL | 1740401470 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01172018 | 01202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119004 | M549 | Dorsalgia, unspecified | ICD10 | 01222018 | 01172018 | 01202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01192018 | 2018-01-19T12:56:34+00:00 |  | 000066074-01 | TERRI LYNN | TROTT | SOUND INPATIENT PHYS OF | 942957 | CHARLES F | WARE III | 1528355922 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01182018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119048 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01222018 | 01182018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01192018 | 2018-01-19T14:07:17+00:00 |  | 000042357-01 | LORETTA | CASTLE | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01172018 | 01202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119061 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01222018 | 01172018 | 01202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01192018 | 2018-01-19T15:33:10+00:00 |  | 000105772-01 | Franklin | Whitt | APOGEE MED GRP OHIO INC | 947678 | MICHELLE N | AKIKO | 1114285624 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01192018 | 01202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119076 | R079 | Chest pain, unspecified | ICD10 | 01222018 | 01192018 | 01202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01202018 | 2018-01-20T11:45:13+00:00 |  | 000020733-01 | Walter | Harris | MOUNT CARMEL HLTH SYS | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01182018 | 01212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122015 | K5660 | Unspecified intestinal obstruction | ICD10 | 01222018 | 01182018 | 01212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01022018 | 2018-01-02T14:17:28+00:00 |  | 000070660-01 | William | Monroe | SPRINGFIELD HEART SURGEO | 948857 | SOUMYA | NERAVETLA | 1558511865 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01192018 | 01202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102104 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 01222018 | 01192018 | 01202018 | 34804 | ENDOVASC ABDO REPR W/DEVICE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01082018 | 2018-01-08T08:26:15+00:00 |  | 000055923-01 | Viola | Mccallister | FCMH MED & SURG ASSOC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01072018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108028 | J42 | Unspecified chronic bronchitis | ICD10 | 01222018 | 01072018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01152018 | 2018-01-15T16:26:21+00:00 |  | 000086360-01 | Ronnie | Holmes | ORTHO INSTITUTE OF DAYTO | 902051 | RICHARD W | FORSTER | 1518962141 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01112018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116002 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01222018 | 01112018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01162018 | 2018-01-16T14:53:46+00:00 |  | 000108361-01 | Mary | Salamay | MOUNT CARMEL HLTH SYS | 920281 | JOHN M | JONESCO III | 1255395505 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01112018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116080 | M549, R109 | Unspecified abdominal pain | ICD10 | 01222018 | 01112018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01182018 | 2018-01-18T11:38:11+00:00 |  | 000095539-01 | Sharon | Thabat Mohamed | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 01222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01172018 | 01202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118050 | N179, N390 | Urinary tract infection, site not specified | ICD10 | 01222018 | 01172018 | 01202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01192018 | 2018-01-19T13:38:52+00:00 |  | 000044711-01 | JULIE | SMITH | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01182018 | 01212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119054 | N390 | Urinary tract infection, site not specified | ICD10 | 01222018 | 01182018 | 01212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01212018 | 2018-01-21T11:37:10+00:00 |  | 000093701-01 | Tina | Horsley | MOUNT CARMEL HLTH PRVDRS | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01192018 | 01202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122035 | R079, R42 | Dizziness and giddiness | ICD10 | 01222018 | 01192018 | 01202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01222018 | 2018-01-22T14:54:19+00:00 |  | 000029287-01 | SHERRYL | CALLANDER | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01202018 | 01212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122121 | R6889 | Other general symptoms and signs | ICD10 | 01222018 | 01202018 | 01212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01222018 | 2018-01-22T14:57:44+00:00 |  | 000042818-01 | LOIS | MCDERMOTT | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01202018 | 01212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122123 | R6889 | Other general symptoms and signs | ICD10 | 01222018 | 01202018 | 01212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
