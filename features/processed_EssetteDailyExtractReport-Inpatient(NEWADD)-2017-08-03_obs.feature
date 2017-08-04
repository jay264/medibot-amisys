Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-03_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-03_OBS
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
| 08022017 | 2017-08-02T09:49:07+00:00 | 017102321-7213 | 000087830-01 | John | Rich Jr | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08032017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802022 | R079 | Chest pain, unspecified | ICD10 | 08032017 | 08012017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08012017 | 2017-08-01T09:05:15+00:00 | 025851225-7214 | 000040387-01 | FREDRIC | SHIRLEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801016 | R0602 | Shortness of breath | ICD10 | 08032017 | 08012017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08022017 | 2017-08-02T09:53:27+00:00 | 252575657213 | 000032665-01 | BRUCE | WREN | EMERGENCY SERVICES INC | 933623 | CECIL V | THOMAS | 1326276833 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802025 | H532 | Diplopia | ICD10 | 08032017 | 08012017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08022017 | 2017-08-02T10:28:22+00:00 |  | 000089910-01 | James | Maddox | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 08032017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802075 | I5021 | Acute systolic (congestive) heart failure | ICD10 | 08032017 | 08012017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07292017 | 2017-07-29T17:09:05+00:00 |  | 000076221-01 | Gary | Hillyard | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07282017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731013 | I10, R51 | Headache | ICD10 | 08032017 | 07282017 | 07302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07082017 | 2017-07-08T19:20:26+00:00 |  | 000011912-01 | CLARENCE | RAVER | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07072017 | 07092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170712115624.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710005 | I509 | Heart failure, unspecified | ICD10 | 08032017 | 07072017 | 07092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T10:48:42+00:00 |  | 000040702-01 | Boyd | Johnson | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07292017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731082 | E871, I509 | Heart failure, unspecified | ICD10 | 08032017 | 07292017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08012017 | 2017-08-01T08:25:44+00:00 |  | 000014171-01 | MARTHA | JOHNSON | SOUND PHYSICIANS OF OHI | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801105 | R0600 | Dyspnea, unspecified | ICD10 | 08032017 | 08012017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07312017 | 2017-07-31T08:22:10+00:00 |  | 000099940-01 | KATHLEEN | DURHAM | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08032017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07302017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801002 | G9340, N3000, R748 | Abnormal levels of other serum enzymes | ICD10 | 08032017 | 07302017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08032017 | 2017-08-03T14:25:40+00:00 | 025064359-7205 | 000052072-01 | John | Kerwood | KNOX COMMUNITY HSP PHYS | 920513 | JASMINE D | USHER-LEDET | 1376794263 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Essential Care | EMR | Observation | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803062 | I259 | Chronic ischemic heart disease, unspecified | ICD10 | 08032017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T08:19:21+00:00 |  | 000037991-01 | JAMES | HINDEL | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07262017 | 07292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731105 | I5031, N189 | Chronic kidney disease, unspecified | ICD10 | 08032017 | 07262017 | 07292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07282017 | 2017-07-28T10:40:08+00:00 |  | 000116777-01 | Ann | Stone | RECONSTRUCTIVE ORTHOS & | 921081 | VINCENT J | SAMMARCO | 1174593479 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 08032017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728031 | S8262XA | Disp fx of lateral malleolus of left fibula, init | ICD10 | 08032017 | 07272017 | 07292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08022017 | 2017-08-02T10:06:56+00:00 | 025457201-7213 | 000105879-01 | Sherryl | Taylor | SOUND PHYSICIANS OF OHI | 942960 | TAMARA J | SCOTT | 1871852863 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802027 | R55 | Syncope and collapse | ICD10 | 08032017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07262017 | 2017-07-26T14:57:43+00:00 |  | 000088586-01 | Clarence | Cottrill | ADENA HEALTH SYSTEMS | 939543 | DANIEL J | IANNI | 1295816288 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07282017 | 07292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726075 | M25561 | Pain in right knee | ICD10 | 08032017 | 07282017 | 07292017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08022017 | 2017-08-02T09:35:07+00:00 | 255536477213 | 000105401-01 | Darlene | Mcdowell | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802015 | R079 | Chest pain, unspecified | ICD10 | 08032017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08022017 | 2017-08-02T10:06:28+00:00 | 255751337213 | 000010863-01 | Bonnie | Colvin | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802028 | L03818 | Cellulitis of other sites | ICD10 | 08032017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08032017 | 2017-08-03T11:47:29+00:00 |  | 000027301-01 | EARL | HANEY | BRUCE L AUERBACH MD LLC | 902501 |  | BRUCE L AUERBACH MD LLC | 1770787723 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08022017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803042 | R0602 | Shortness of breath | ICD10 | 08032017 | 08022017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08022017 | 2017-08-02T10:24:43+00:00 | 253273327213 | 000007104-01 | BARBARA | KOCH | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802032 | M79661 | Pain in right lower leg | ICD10 | 08032017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07272017 | 2017-07-27T09:58:28+00:00 | 252350737207 | 000098183-01 | Robert | Sells Sr | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Medical Only | Reports | Observation | Inpatient | 07262017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727019 | I4891 | Unspecified atrial fibrillation | ICD10 | 08032017 | 07262017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
