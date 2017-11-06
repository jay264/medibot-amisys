Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-02_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-02_OBS
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
| 09272017 | 2017-09-27T09:56:10+00:00 |  | 000100708-01 | Carolyn | Reynolds | MAYFIELD CLINIC | 921087 | ROBERT J | BOHINSKI | 1306876172 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 11012017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10112017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927066 | M4807, M5117 | Intvrt disc disorders w radiculopathy, lumbosacral region | ICD10 | 11012017 | 10112017 | 10142017 | 22633, 63047, 22840, 22853, 20930, 20936 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 11012017 | 2017-11-01T09:33:33+00:00 | 258020787304 | 000027395-01 | GARY | ELLIOTT | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101015 | I4891 | Unspecified atrial fibrillation | ICD10 | 11022017 | 10312017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T10:37:20+00:00 | 259456257301 | 000070896-01 | Sandra | Shough | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11022017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10292017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030048 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 11022017 | 10292017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11012017 | 2017-11-01T08:19:58+00:00 | 250093597304 | 000074935-01 | Margaret | Boehm | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101005 | I471 | Supraventricular tachycardia | ICD10 | 11022017 | 10312017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11012017 | 2017-11-01T08:39:29+00:00 | 174488237303 | 000113229-01 | Mary | Obrien | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101002 | I509 | Heart failure, unspecified | ICD10 | 11022017 | 10312017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T16:26:18+00:00 |  | 000044852-01 | MARY | BOWERS | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10302017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031005 | I4891, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 11022017 | 10302017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11012017 | 2017-11-01T09:20:02+00:00 | 255866437305 | 000038820-01 | RICHARD | MANN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11022017 | Approved | MediGold Medical Only | Reports | Observation | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101011 | I309, R079 | Chest pain, unspecified | ICD10 | 11022017 | 10312017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09142017 | 2017-09-14T11:42:40+00:00 |  | 000075878-01 | Sondra | Daugherty | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11022017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09132017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914104 | R0789 | Other chest pain | ICD10 | 11022017 | 09132017 | 09152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10252017 | 2017-10-25T13:26:03+00:00 |  | 000079963-01 | Gene | Stotridge | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10242017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025056 | E875, R4182 | Altered mental status, unspecified | ICD10 | 11022017 | 10242017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10272017 | 2017-10-27T08:52:39+00:00 |  | 000039721-01 | REBECCA | POSTON | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10262017 | 10292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027022 | K625 | Hemorrhage of anus and rectum | ICD10 | 11022017 | 10262017 | 10292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10272017 | 2017-10-27T09:02:49+00:00 |  | 000073143-01 | Geraldine | Forrest | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10262017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027027 | L03116 | Cellulitis of left lower limb | ICD10 | 11022017 | 10262017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T13:09:20+00:00 |  | 000099240-01 | Monda | Smart | SOUND INPATIENT PHYS OF | 932251 | SUBBARAJU | BUDHARAJU | 1184915050 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11022017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06282017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170719116915.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629062 | R188 | Other ascites | ICD10 | 11022017 | 06282017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11022017 | 2017-11-02T13:04:40+00:00 |  | 000034098-01 | SYLVIA | ISAACS | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102039 | I4891 | Unspecified atrial fibrillation | ICD10 | 11022017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T10:18:28+00:00 | 251690047301 | 000088143-01 | Reta | Friend | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10292017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030039 | I700 | Atherosclerosis of aorta | ICD10 | 11022017 | 10292017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10312017 | 2017-10-31T11:03:36+00:00 |  | 000053685-01 | DONALD | CRABTREE | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10302017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031070 | L03818 | Cellulitis of other sites | ICD10 | 11022017 | 10302017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T06:57:34+00:00 |  | 000097434-01 | Colin | Hamilton | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030003 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 11022017 | 11012017 | 11022017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06262017 | 2017-06-26T14:49:15+00:00 |  | 000079919-01 | William | Day | MEDICINE INPATIENT GROUP | 924498 | RAJARATNAM | PATHMARAJAH | 1891882346 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 11022017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 06252017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627013 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11022017 | 06252017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11012017 | 2017-11-01T09:40:29+00:00 | 257580347304 | 000068860-01 | JOHN | MURRAY JR | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10312017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101018 | R109 | Unspecified abdominal pain | ICD10 | 11022017 | 10312017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T11:22:29+00:00 |  | 000088620-01 | Frank | Wolfe | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11022017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10282017 | 10292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030122 | A419, N390, R531, W19XXXA | Unspecified fall, initial encounter | ICD10 | 11022017 | 10282017 | 10292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T14:39:45+00:00 |  | 000089132-01 | Edith | Hoertt | S DAYTON ACUTE CARE CNSL | 907795 | MANJULA | SATYANARAYAN | 1558412866 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 11022017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06282017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170711115347.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629079 | A419, K5150, L03119, R109 | Unspecified abdominal pain | ICD10 | 11022017 | 06282017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11022017 | 2017-11-02T09:29:07+00:00 |  | 000097715-01 | Russell | Snyder | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11022017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102028 | R079 | Chest pain, unspecified | ICD10 | 11022017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10312017 | 2017-10-31T11:45:58+00:00 |  | 000057292-01 | ELSIE | PICKELL | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10302017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031075 | R109 | Unspecified abdominal pain | ICD10 | 11022017 | 10302017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10262017 | 2017-10-26T15:56:10+00:00 |  | 000106640-01 | Charles | Clouser | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10252017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027003 | I429, R55, R748 | Abnormal levels of other serum enzymes | ICD10 | 11022017 | 10252017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10192017 | 2017-10-19T11:35:51+00:00 |  | 000042035-01 | LYNN | MINER | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10182017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019057 | E2740, R109 | Unspecified abdominal pain | ICD10 | 11022017 | 10182017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10252017 | 2017-10-25T09:15:36+00:00 |  | 000058020-01 | RICHARD | SEELING | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10242017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025029 | I10, R200 | Anesthesia of skin | ICD10 | 11022017 | 10242017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10252017 | 2017-10-25T13:27:28+00:00 |  | 000100910-01 | David | Swafford | ALLIANCE PHYSICIANS INC | 928657 | RYAN S | CLARK | 1396049011 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 11022017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10242017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025060 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 11022017 | 10242017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10272017 | 2017-10-27T15:26:48+00:00 |  | 000035563-01 | LYNN | TRACY | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10252017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030002 | R079 | Chest pain, unspecified | ICD10 | 11022017 | 10252017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10312017 | 2017-10-31T13:48:52+00:00 |  | 000037547-01 | LUCY | VALENTINE | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10292017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031084 | J189 | Pneumonia, unspecified organism | ICD10 | 11022017 | 10292017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11012017 | 2017-11-01T15:50:14+00:00 |  | 000109708-01 | Ada | Bowman | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101072 | K5790, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11022017 | 10312017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10312017 | 2017-10-31T11:44:47+00:00 |  | 000097431-01 | Bonnie | Dunn | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10282017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031074 | R4182 | Altered mental status, unspecified | ICD10 | 11022017 | 10282017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
