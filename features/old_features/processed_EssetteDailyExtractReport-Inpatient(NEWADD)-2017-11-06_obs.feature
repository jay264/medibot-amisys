Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-06_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-06_OBS
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
| 11032017 | 2017-11-03T14:05:52+00:00 | 256454807306 | 000015550-01 | JOHN | BAUR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11022017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103075 | R079 | Chest pain, unspecified | ICD10 | 11062017 | 11022017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11022017 | 2017-11-02T09:45:02+00:00 | 259100087305 | 000082248-01 | Roger | Eden | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11012017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102018 | R4182 | Altered mental status, unspecified | ICD10 | 11062017 | 11012017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11032017 | 2017-11-03T07:48:20+00:00 | 251844937306 | 000097260-01 | Geri | Howard | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11022017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103003 | N390 | Urinary tract infection, site not specified | ICD10 | 11062017 | 11022017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11032017 | 2017-11-03T08:03:59+00:00 | 253482227307 | 000051939-01 | CHOI | KONG | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11032017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103006 | R079 | Chest pain, unspecified | ICD10 | 11062017 | 11032017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11032017 | 2017-11-03T08:20:45+00:00 | 250121827306 | 000066244-01 | JC | BRAZZELL JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11022017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103012 | I471 | Supraventricular tachycardia | ICD10 | 11062017 | 11022017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11032017 | 2017-11-03T09:29:03+00:00 | 256748377306 | 000035584-01 | Claudietta | Colliver | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11022017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103013 | N390 | Urinary tract infection, site not specified | ICD10 | 11062017 | 11022017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11032017 | 2017-11-03T14:31:10+00:00 |  | 000101939-01 | Marjorie | Shoemaker | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11032017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106001 | E871, J181, S32008A | Oth fracture of unsp lumbar vertebra, init for clos fx | ICD10 | 11062017 | 11032017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11062017 | 2017-11-06T10:09:29+00:00 |  | 000018772-01 | HELEN | HIGGINS | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 11042017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106027 | R109 | Unspecified abdominal pain | ICD10 | 11062017 | 11042017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11012017 | 2017-11-01T09:16:22+00:00 | 250497167305 | 000053072-01 | MALCOLM | HOWELL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11012017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101010 | L03113 | Cellulitis of right upper limb | ICD10 | 11062017 | 11012017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11012017 | 2017-11-01T14:34:49+00:00 |  | 000089116-01 | Mary | Reeves | MERCY HEALTH PHYSICIANS | 921313 | JEFFERSON M | BURROUGHS | 1740289453 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 11062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101056 | I255, Z95810 | Presence of automatic (implantable) cardiac defibrillator | ICD10 | 11062017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11032017 | 2017-11-03T09:43:03+00:00 | 177520007307 | 000071772-01 | James | Key | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11022017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103021 | F419 | Anxiety disorder, unspecified | ICD10 | 11062017 | 11022017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11022017 | 2017-11-02T16:59:41+00:00 |  | 000111363-01 | Sandra | Benoit | S DAYTON ACUTE CARE CNSL | 908510 | MICHAEL | TUCHFARBER | 1467422865 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 11062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103094 | R0600, R0789 | Other chest pain | ICD10 | 11062017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11022017 | 2017-11-02T10:01:07+00:00 | 252779437305 | 000110607-01 | Elsie | Shaffer | SOUND PHYSICIANS OF OHI0 | 901165 | OLGA V | PYLAEVA | 1508811811 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | Flexible Choice PPO | Reports | Observation | Inpatient | 11012017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102024 | R0609 | Other forms of dyspnea | ICD10 | 11062017 | 11012017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11032017 | 2017-11-03T10:14:22+00:00 | 256299607306 | 000032296-01 | WILLIAM | THORNTON | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11022017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103034 | J189 | Pneumonia, unspecified organism | ICD10 | 11062017 | 11022017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10312017 | 2017-10-31T11:06:39+00:00 |  | 000049692-01 | EVAN | FANNIN | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10302017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031071 | I480, I509 | Heart failure, unspecified | ICD10 | 11062017 | 10302017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11032017 | 2017-11-03T14:29:17+00:00 |  | 000071463-01 | Georgia | Bobbitt | SOUND PHYSICIANS OF OHI0 | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11022017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103089 | M6281 | Muscle weakness (generalized) | ICD10 | 11062017 | 11022017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10192017 | 2017-10-19T09:20:53+00:00 |  | 000110772-01 | Betty | Greenwood | OH HILLS HEALTH SERVICES | 926113 | PRATAP K | SOURI | 1336108216 | BARNESVILLE HOSPITAL | 904409 | 1235135450 | BARNESVILLE HOSPITAL | 1235135450 | Observation | OBSV | Concurrent Review | CONC |  | BARNESVILLE HOSPITAL | 11062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10182017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019042 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 11062017 | 10182017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10132017 | 2017-10-13T09:32:23+00:00 |  | 000048038-01 | BOYD | SHANNON | SOUND PHYSICIANS OF OHI0 | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11062017 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013035 | R079 | Chest pain, unspecified | ICD10 | 11062017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11032017 | 2017-11-03T08:37:58+00:00 |  | 000059200-01 | PATRICIA | BOND | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11022017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103062 | E162, R079 | Chest pain, unspecified | ICD10 | 11062017 | 11022017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11062017 | 2017-11-06T09:45:39+00:00 |  | 000106715-01 | Charles | Donahue | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11042017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106060 | I509 | Heart failure, unspecified | ICD10 | 11062017 | 11042017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11032017 | 2017-11-03T09:36:10+00:00 |  | 000118142-01 | CHERYL | LYONS | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11022017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103069 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 11062017 | 11022017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11012017 | 2017-11-01T15:40:54+00:00 |  | 000104266-01 | Maynard | Naylor | SOUND KENWOOD HSPISTS OF | 924460 | RAVIKANTH | CHANDA | 1609175496 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 11062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101071 | D649, I10, N189, T783XXA | Angioneurotic edema, initial encounter | ICD10 | 11062017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11062017 | 2017-11-06T09:50:04+00:00 |  | 000112763-01 | RONALD | SHENEMAN SR | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11032017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106075 | R079 | Chest pain, unspecified | ICD10 | 11062017 | 11032017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09212017 | 2017-09-21T14:23:58+00:00 |  | 000076507-01 | Harry | Pohlman | MERCY HEALTH PHYSICIANS | 927835 | BRET A | FERREE | 1548601461 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 11012017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922050 | M4806 | Spinal stenosis, lumbar region | ICD10 | 11062017 | 11012017 | 11032017 | 22612, 22614, 22840, 20936, 63047, 63048, 69990, 22830, 22852, 22842 | SEGMENTAL FIXATION (EX. LUQUE TECH.) SEE CPT FOR OTHER EXAMPLES... | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 1.0 |
| 09282017 | 2017-09-28T10:59:25+00:00 |  | 000028263-01 | ROBERT | HUPP | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09272017 | 09302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928048 | R079 | Chest pain, unspecified | ICD10 | 11062017 | 09272017 | 09302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10192017 | 2017-10-19T14:52:02+00:00 |  | 000102108-01 | Angla | Scarano | MIAMI VALLEY HSPISTS GRP | 949361 | PRIYANAINA R | KASULA | 1659649770 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 11062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10192017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106106 | R040 | Epistaxis | ICD10 | 11062017 | 10192017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11032017 | 2017-11-03T09:47:02+00:00 | 250665417306 | 000040667-01 | DANIEL | LAYCOCK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11022017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103023 | M4848XA | Fatigue fracture of vertebra, sacr/sacrocygl region, init | ICD10 | 11062017 | 11022017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11022017 | 2017-11-02T09:48:01+00:00 | 250744237305 | 000034837-01 | ERNEST | MESSER | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11012017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102019 | N390 | Urinary tract infection, site not specified | ICD10 | 11062017 | 11012017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11052017 | 2017-11-05T17:51:34+00:00 |  | 000117384-01 | Hilda | Bradley | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11032017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106131 | G510 | Bell's palsy | ICD10 | 11062017 | 11032017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
