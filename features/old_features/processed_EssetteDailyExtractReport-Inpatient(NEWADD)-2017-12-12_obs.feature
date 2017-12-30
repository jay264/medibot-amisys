Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-12_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-12_OBS
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
| 12112017 | 2017-12-11T10:26:13+00:00 | 250362097344 | 000050908-01 | JANET | FLOOD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12102017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211047 | R0602 | Shortness of breath | ICD10 | 12122017 | 12102017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11172017 | 2017-11-17T12:15:07+00:00 |  | 000075849-01 | Richard | Sharp | MERCY HEALTH PHYSICIANS | 927835 | BRET A | FERREE | 1548601461 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12122017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12012017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117063 | M5116 | Intervertebral disc disorders w radiculopathy, lumbar region | ICD10 | 12122017 | 12012017 | 12012017 | 63030 | LAMINOTOMY(HEMILAMINECTOMY)DECOMPRESS NRV ROOTS,1 INTRSPACE; LUMBER | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  | No child records to display. |  |
| 12112017 | 2017-12-11T10:38:20+00:00 | 259140527344 | 000073165-01 | Gordon | Platt | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12122017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 12112017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211058 | J8410 | Pulmonary fibrosis, unspecified | ICD10 | 12122017 | 12112017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12112017 | 2017-12-11T11:00:10+00:00 | 257487447344 | 000101930-01 | Claudia | Yates | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12102017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211079 | R509 | Fever, unspecified | ICD10 | 12122017 | 12102017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12012017 | 2017-12-01T08:32:17+00:00 |  | 000108853-01 | Mary | Cronin | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11302017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201035 | M4856XA, R0602 | Shortness of breath | ICD10 | 12122017 | 11302017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12072017 | 2017-12-07T10:22:59+00:00 | 264848817340 | 000033403-01 | MARION | PURDY | COLS INPATIENT CARE INC | 942957 | CHARLES F | WARE III | 1528355922 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12062017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207034 | E860 | Dehydration | ICD10 | 12122017 | 12062017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12052017 | 2017-12-05T09:08:59+00:00 |  | 000105674-01 | Jean | Kaser | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12122017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12042017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205035 | I4891 | Unspecified atrial fibrillation | ICD10 | 12122017 | 12042017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12052017 | 2017-12-05T09:08:59+00:00 |  | 000075974-01 | Gloria | Keylor | MID STATE PHYSICIANS LLP | 922998 | IFIOK A | IDEM | 1427288174 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12122017 | Approved | MediGold Southeast OH Essential Care | Reports | Observation | Inpatient | 12052017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205037 | J441, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 12122017 | 12052017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12062017 | 2017-12-06T11:55:59+00:00 |  | 000079368-01 | Robert | McPherson | HOSPITALIST MEDICINE PHY | 926900 | ANIRBAN | BISWAS | 1871891614 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12052017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206054 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 12122017 | 12052017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12082017 | 2017-12-08T16:07:00+00:00 |  | 000093734-01 | Michael | Bland | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12082017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211028 | C259, E872 | Acidosis | ICD10 | 12122017 | 12082017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12082017 | 2017-12-08T15:59:33+00:00 |  | 000082375-01 | Carolyn | Hill | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12072017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211019 | N179, R531 | Weakness | ICD10 | 12122017 | 12072017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12092017 | 2017-12-09T08:39:20+00:00 |  | 000084465-01 | Armps | Drew | HOSPITALIST MEDICINE PHY | 949490 | AMY R | HURST | 1326487885 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 12122017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12092017 | 12102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211018 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12122017 | 12092017 | 12102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12082017 | 2017-12-08T08:16:07+00:00 |  | 000028754-01 | JAMES | HAMILTON | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12072017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208011 | A419 | Sepsis, unspecified organism | ICD10 | 12122017 | 12072017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12112017 | 2017-12-11T10:39:16+00:00 |  | 000116649-01 | Therese | Hollingshead | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12122017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Observation | Inpatient | 12082017 | 12102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211089 | N390 | Urinary tract infection, site not specified | ICD10 | 12122017 | 12082017 | 12102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12042017 | 2017-12-04T17:28:36+00:00 |  | 000083834-01 | John | Boone | S DAYTON ACUTE CARE CNSL | 932325 | SIVAPRASAD | NALLURI | 1558619668 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12012017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205004 | R0902, R42 | Dizziness and giddiness | ICD10 | 12122017 | 12012017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11242017 | 2017-11-24T07:01:24+00:00 |  | 000041765-01 | CLAUDE | ELKINS | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12122017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 11222017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127010 | R197 | Diarrhea, unspecified | ICD10 | 12122017 | 11222017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11082017 | 2017-11-08T10:42:20+00:00 |  | 000080703-01 | Virginia | McMillen | SOUTHEASTERN OHIO REGION | 920580 |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 12122017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11072017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108036 | E271, R112 | Nausea with vomiting, unspecified | ICD10 | 12122017 | 11072017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12062017 | 2017-12-06T08:29:08+00:00 |  | 000075935-01 | Barbara | Primmer | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12052017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206026 | I501 | Left ventricular failure | ICD10 | 12122017 | 12052017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12112017 | 2017-12-11T15:25:41+00:00 |  | 000088929-01 | Judith | Black | INDU & RAJ SOIN MEDICAL CENTER | 919117 |  | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 12122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12082017 | 12102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211154 | I4891 | Unspecified atrial fibrillation | ICD10 | 12122017 | 12082017 | 12102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T14:15:17+00:00 |  | 000099068-01 | Karen | Couch | KETTERING MEDICAL CENTER SYCAMORE | 905903 |  | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12082017 | 12102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211138 | J101, R531 | Weakness | ICD10 | 12122017 | 12082017 | 12102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12122017 | 2017-12-12T12:59:44+00:00 | 025494211-7346 | 000052587-01 | LUCILLE | FARMER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 12122017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212059 | I4891 | Unspecified atrial fibrillation | ICD10 | 12122017 | 12122017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12112017 | 2017-12-11T07:46:35+00:00 |  | 000097440-01 | James | Wilt | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12092017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211033 | R079, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 12122017 | 12092017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10312017 | 2017-10-31T09:23:54+00:00 |  | 000074715-01 | Adeline | Ball | HOSPITALIST MEDICINE PHY | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 12122017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10302017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031061 | C189, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 12122017 | 10302017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T07:54:26+00:00 |  | 000056792-01 | JAMES | MCLAUGHLIN | SUMMA PHYSICIANS INC | 949978 | ANTHONY K | LEUNG | 1245252667 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10272017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030074 | E7800 | PURE HYPERCHOLESTEROLEMIA, UNSPECIFIED | ICD10 | 12122017 | 10272017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11172017 | 2017-11-17T08:45:26+00:00 |  | 000003780-01 | Mary Jo | Agosta | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11162017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117050 | R079 | Chest pain, unspecified | ICD10 | 12122017 | 11162017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T08:55:47+00:00 |  | 000043189-01 | BRUCE | MCKENZIE | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10292017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030096 | R42, R51 | Headache | ICD10 | 12122017 | 10292017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11292017 | 2017-11-29T13:18:27+00:00 |  | 000014015-01 | BRIAN | HEMBREE | GRANT MEDICAL CENTER | 936409 |  | GRANT MEDICAL CENTER | 1255377149 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11282017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129110 | R739 | Hyperglycemia, unspecified | ICD10 | 12122017 | 11282017 | 11292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11122017 | 2017-11-12T12:16:31+00:00 |  | 000009877-01 | BEULAH | DAVIS | OHIOHEALTH PHYS GRP | 909580 | MATTHEW | JONES | 1598971665 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11112017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113073 | R079 | Chest pain, unspecified | ICD10 | 12122017 | 11112017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11012017 | 2017-11-01T15:22:57+00:00 |  | 000030582-01 | ANNABELLE | ROMINE | RIVERSIDE TRAUMA SURGEON | 909726 | LANCE | SHOEMAKER | 1679558332 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101067 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 12122017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11022017 | 2017-11-02T11:27:56+00:00 |  | 000105291-01 | Marlin | Mcdaniel | COPC CENTRAL OHIO PRIMAR | 906381 | SHUNAID M | PATHAN | 1477726743 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11012017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102042 | R4182 | Altered mental status, unspecified | ICD10 | 12122017 | 11012017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11032017 | 2017-11-03T12:28:31+00:00 |  | 000116089-01 | MARYELLEN | KELLEY | COPC CENTRAL OHIO PRIMAR | 948062 | AARON M | WHIPP | 1861835688 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11022017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103083 | R51 | Headache | ICD10 | 12122017 | 11022017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12092017 | 2017-12-09T06:57:38+00:00 |  | 000099635-01 | Larry | Doles | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12122017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 12082017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211001 | R188 | Other ascites | ICD10 | 12122017 | 12082017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12112017 | 2017-12-11T07:58:50+00:00 |  | 000029785-01 | WANDA | BEAVERS | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12112017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211014 | R0602 | Shortness of breath | ICD10 | 12122017 | 12112017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11202017 | 2017-11-20T10:55:39+00:00 |  | 000084485-01 | Barbara | Tollison | GENESIS MEDICAL GRP LLC | 912844 | OSHANA | ALAHAKOON | 1285793745 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11192017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120102 | G459, R4182 | Altered mental status, unspecified | ICD10 | 12122017 | 11192017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T09:28:12+00:00 |  | 000110520-01 | RONALD | JONES | MERCY HEALTH PHYSICIANS | 902874 | STEPHEN J | OEHLERS | 1609866490 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11172017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120076 | I959, R531 | Weakness | ICD10 | 12122017 | 11172017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T09:43:42+00:00 |  | 000099620-01 | Emma | Werneske | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11172017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120078 | S2242XA | Multiple fractures of ribs, left side, init for clos fx | ICD10 | 12122017 | 11172017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11272017 | 2017-11-27T09:10:24+00:00 |  | 000034457-01 | LEOTA | BANFIELD GEYER | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11262017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127146 | R0602 | Shortness of breath | ICD10 | 12122017 | 11262017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11272017 | 2017-11-27T09:08:13+00:00 |  | 000047559-01 | ALEATHEA | JONES | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12122017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 11242017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127144 | R0600 | Dyspnea, unspecified | ICD10 | 12122017 | 11242017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T11:19:12+00:00 |  | 000079515-01 | Thomas | Dodd | OSU SURGERY LLC | 943637 | MARY E | DILLHOFF | 1518174739 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Observation | OBSV | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 12122017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12102017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211116 | K8592 | ACUTE PANCREATITIS WITH INFECTED NECROSIS, UNSPECIFIED | ICD10 | 12122017 | 12102017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T09:23:23+00:00 | 258531197343 | 000004381-01 | BARBARA | BROCKMAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12092017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211026 | N3000 | Acute cystitis without hematuria | ICD10 | 12122017 | 12092017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |