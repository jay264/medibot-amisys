Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-23_thru_2018-02-25_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-23_thru_2018-02-25_URGEMERG
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
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

	And in the "hospital_services" page I enter "$" into the "facility_number" image
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
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
	And I press ENTER graphically
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I determine whether something is PAR or NONPAR
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<practice_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
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

	#And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And in the "authorized_services" page I enter "21" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

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
|12282017|2017-12-28T15:29:17+00:00||000068099-01|SALLY|BREITENBACH|MOUNT CARMEL WEST PHYS|935048|MICHAEL B|WILLIARD|1184617268|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|02192018|02222018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A171229002|M75122|Complete rotatr-cuff tear/ruptr of left shoulder, not trauma|ICD10|02232018|02192018|02222018|23472|ARTRPLASTY C GLENOID& HUM PROS REP|CPT|1|1|Approved|4|CPT|C4||||3|
|01172018|2018-01-17T15:56:39+00:00||000071067-01|Phyllis|Beavers|MOUNT CARMEL EAST PHYS|935984      0009|MARCUS R|MILLER|1518965474|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|02212018|02222018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180117067|E6601, I10, M1990|Unspecified osteoarthritis, unspecified site|ICD10|02232018|02212018|02222018|43644|LAP GASTRIC BYPASS/ROUX-EN-Y|CPT|1|1|Approved|2|CPT|C4||||1|
|02052018|2018-02-05T14:49:13+00:00||000036889-01|MARVIN|WISECUP|APOGEE MED GRP OHIO INC|944565      0001|AJIT|LALE|1275855207|ADENA REGIONAL MED CTR|936475      0003|1902839673|ADENA REGIONAL MEDICAL CENTER|1902839673|Inpatient|IP|Concurrent Review|CONC||ADENA REGIONAL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02022018|02192018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180205120|D6489, J441, K5660, K922|Gastrointestinal hemorrhage, unspecified|ICD10|02232018|02022018|02192018||||0|0||0||||||5|
|02112018|2018-02-11T12:50:56+00:00||000007905-01|JOYCE|JONES|CEN OH PRIMARY CARE SPEC|904883      0004|NILESH V|VARMA|1558303545|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02102018|02222018|Standard|CHF - $8,294||||0|||||0|0|||||||||||Concurrent Review|Approved|A180212055|I509, J811|Chronic pulmonary edema|ICD10|02232018|02102018|02222018||||0|0||0||||||12|
|02122018|2018-02-12T12:03:56+00:00||000084473-01|Donald|Evans|FAIRFIELD MEDICAL CENTER|936439      0002||FAIRFIELD MEDICAL CENTER|1467433763|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Inpatient|IP|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02092018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180212089|H8149, M87059, R42|Dizziness and giddiness|ICD10|02232018|02092018|02222018||||0|0||0||||||13|
|02122018|2018-02-12T18:49:41+00:00||000031220-01|STUART|WALKER|MOUNT CARMEL HLTH SYS|927568      0005|KARTHIK S|MULKANOOR|1720390859|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|02232018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|02122018|02222018|Standard|CHF - $8,294||||0|||||0|0|||||||||||Concurrent Review|Approved|A180213039|G8918, I509, J90|Pleural effusion, not elsewhere classified|ICD10|02232018|02122018|02222018||||0|0||0||||||10|
|02132018|2018-02-13T14:41:07+00:00||000087527-01|Betty|Winger|GENERAL SURG ASSOC INC|900848      0002|DAVID J|ROBERTSON|1811983067|FAIRFIELD MEDICAL CENTER|936439      0003|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Inpatient|IP|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02122018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180213102|K631|Perforation of intestine (nontraumatic)|ICD10|02232018|02122018|02222018||||0|0||0||||||10|
|02132018|2018-02-13T16:30:06+00:00||000081229-01|JOHN|MILLER|MOUNT CARMEL HLTH SYS|902935      0006|LOWELL W|CHAMBERS|1801835400|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02232018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|02122018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180214006|K651, R109|Unspecified abdominal pain|ICD10|02232018|02122018|02222018||||0|0||0||||||10|
|02162018|2018-02-16T10:19:52+00:00||000079565-01|Marvin|Ropp|OSU INTERNAL MED LLC|909117      0001|MATTHEW C|EXLINE|1518918283|OSU HOSPITAL|936446      0004|1447359997|THE OH STATE UNIVERSITY HOSPITAL|1447359997|Inpatient|IP|Concurrent Review|CONC||THE OH STATE UNIVERSITY HOSPITAL|02232018|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|02152018|02202018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180216031|K920|Hematemesis|ICD10|02232018|02152018|02202018||||0|0||0||||||1|
|02162018|2018-02-16T12:35:12+00:00||000031880-01|WARREN|PURTEE|COLS INPATIENT CARE INC|952413      0002|ARAM|GABRIELYAN|1770901985|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02152018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180216056|G7000|Myasthenia gravis without (acute) exacerbation|ICD10|02232018|02152018|02222018||||0|0||0||||||7|
|02192018|2018-02-19T08:40:00+00:00||000092298-01|Jennie|Gordon|AAMIR KHAN MD INC|908411      0002||AAMIR KHAN MD INC|1265621296|COMMUNITY MERCY HEALTH P|906699      0006|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Inpatient|IP|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02162018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180219019|S72001A, W010XXA|Fall same lev from slip/trip w/o strike against object, init|ICD10|02232018|02162018|02222018||||0|0||0||||||6|
|02192018|2018-02-19T10:14:17+00:00||000084951-01|Rebecca|Fuhrman|CLERMONT INTERNISTS ASSO|924704      0001|SUSHEELA|RAJAN|1144273673|MERCY HEALTH CLERMONT HO|917916      0007|1568562551|MERCY HOSPITAL CLERMONT|1568562551|Inpatient|IP|Concurrent Review|CONC||MERCY HOSPITAL CLERMONT|02232018|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|02182018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180219036|A419, J181, R410, R911|Solitary pulmonary nodule|ICD10|02232018|02182018|02222018||||0|0||0||||||2|
|02192018|2018-02-19T10:51:09+00:00||000108972-01|William|Wolfskill|FAIRFIELD PHYS INC|937254      0004|RICHARD D|OBERLANDER|1477581189|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|02232018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|02162018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180219042|R0600|Dyspnea, unspecified|ICD10|02232018|02162018|02222018||||0|0||0||||||6|
|02192018|2018-02-19T11:51:35+00:00||000016620-01|ROBERT|LOONEY|MOUNT CARMEL EAST HOSPITAL|936416      0003||MOUNT CARMEL EAST HOSPITAL|1982784534|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02182018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180219046|R42|Dizziness and giddiness|ICD10|02232018|02182018|02222018||||0|0||0||||||4|
|02192018|2018-02-19T12:13:25+00:00||000105369-01|Harold|Farris|WRIGHT STATE PHYSICIANS|903649      0001|AKPOFURE P|EKEH|1063478022|MIAMI VALLEY HOSPITAL|936428      0004|1073688354|MIAMI VALLEY HOSPITAL|1073688354|Inpatient|IP|Concurrent Review|CONC||MIAMI VALLEY HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02172018|02212018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180219048|J942, S8291XA, W19XXXA|Unspecified fall, initial encounter|ICD10|02232018|02172018|02212018||||0|0||0||||||5|
|02192018|2018-02-19T08:58:37+00:00||000020142-01|PATRICIA|CONRAD|AMERICAN HLTH NETWORK OF|905559      0004|MEGAN E|FRANK|1821290313|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02182018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180219053|S72009A|Fracture of unsp part of neck of unsp femur, init|ICD10|02232018|02182018|02222018||||0|0||0||||||4|
|02192018|2018-02-19T11:08:04+00:00||000110918-01|Linda|Haynes|GENESIS MEDICAL GRP LLC|932652      0001|ANNABA|MOHAMMAD|1962481168|LICKING MEMORIAL HOSPITAL|936497      0003|1568446755|LICKING MEMORIAL HOSPITAL|1568446755|Inpatient|IP|Concurrent Review|CONC||LICKING MEMORIAL HOSPITAL|02232018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|02172018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180219056|K5792|Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed|ICD10|02232018|02172018|02222018||||0|0||0||||||5|
|02192018|2018-02-19T12:39:54+00:00||000056803-01|EDWARD|JOHNSON|COPC CENTRAL OHIO PRIMAR|938757      0001||CENTRAL OH PRIMARY CARE PHYS INC|1194705194|MOUNT CARMEL ST ANNS HOSPITAL|920157      0003|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02182018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180219063|I509|Heart failure, unspecified|ICD10|02232018|02182018|02222018||||0|0||0||||||4|
|02192018|2018-02-19T13:23:27+00:00||000105805-01|Emma|Hunt|LICKING MEM HLTH PROF|947717      0002|JESSE M|EWALD|1104196591|LICKING MEMORIAL HOSPITAL|936497      0004|1568446755|LICKING MEMORIAL HOSPITAL|1568446755|Inpatient|IP|Concurrent Review|CONC||LICKING MEMORIAL HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02172018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180220022|R4182|Altered mental status, unspecified|ICD10|02232018|02172018|02222018||||0|0||0||||||5|
|02192018|2018-02-19T14:33:53+00:00||000115828-01|Joanne|Smith|OHIOHEALTH PHYS GRP|911344      0004|STEVEN A|SANTANELLO|1316936263|KETTERING MEDICAL CENTER|936443      0003|1043233984|KETTERING MEDICAL CENTER|1043233984|Inpatient|IP|Concurrent Review|CONC||KETTERING MEDICAL CENTER|02232018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|02182018|02192018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180220043|S42022A|Disp fx of shaft of left clavicle, init for clos fx|ICD10|02232018|02182018|02192018||||0|0||0||||||1|
|02192018|2018-02-19T15:45:44+00:00||000081741-01|Mitchell|Daniels|ALAMANCE RGNL MED CTR IN|918759      0004||ALAMANCE REGIONAL MEDICAL CENTER INC|1326010273|ALAMANCE RGNL MED CTR IN|918759      0004|1326010273|ALAMANCE REGIONAL MEDICAL CENTER INC|1326010273|Inpatient|IP|Concurrent Review|CONC||ALAMANCE REGIONAL MEDICAL CENTER INC|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02162018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180220048|A419|Sepsis, unspecified organism|ICD10|02232018|02162018|02222018||||0|0||0||||||6|
|02202018|2018-02-20T10:17:24+00:00||000114043-01|Beverly|Renfro|SOUND KENWOOD HSPISTS OF|925740      0001|WAQAS|AHMED|1700065091|INDU & RAJ SOIN MEDICAL CENTER|919117      0004|1760764849|INDU & RAJ SOIN MEDICAL CENTER|1760764849|Inpatient|IP|Concurrent Review|CONC||INDU & RAJ SOIN MEDICAL CENTER|02232018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|02192018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180220069|N12, N1330|Unspecified hydronephrosis|ICD10|02232018|02192018|02222018||||0|0||0||||||3|
|02212018|2018-02-21T10:47:21+00:00||000078824-01|Franklin|Alford|HOSPITALIST MEDICINE PHY|947194      0002|KENNETH H|SURKIN|1295050227|THE JEWISH HOSPITAL|916862      0004|1336478163|THE JEWISH HOSPITAL|1336478163|Inpatient|IP|Concurrent Review|CONC||THE JEWISH HOSPITAL|02232018|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|02202018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221080|S22000A|Wedge compression fracture of unsp thoracic vertebra, init|ICD10|02232018|02202018|02222018||||0|0||0||||||2|
|02212018|2018-02-21T11:55:31+00:00||000041142-01|BEVERLY|YOUNKIN|INDEPENDENT INPATIENT PH|907729      0002|MARK|DELLINGER|1710924410|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02202018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221091|S37009A|Unspecified injury of unspecified kidney, initial encounter|ICD10|02232018|02202018|02222018||||0|0||0||||||2|
|02222018|2018-02-22T08:01:34+00:00||000040387-01|FREDRIC|SHIRLEY|SOUND INPATIENT PHYS OF|911533      0002||SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|MOUNT CARMEL ST ANNS HOSPITAL|920157      0003|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|ACO - Atrial Fib|Inpatient|02182018|02212018|Standard|Atrial Fib - $6,140||||0|||||0|0|||||||||||Concurrent Review|Approved|A180222026|I472, I4891, R079|Chest pain, unspecified|ICD10|02232018|02182018|02212018||||0|0||0||||||3|
|02222018|2018-02-22T11:08:07+00:00||000080519-01|Robert|Thompson|HOSPITALIST MEDICINE PHY|924270      0003|SILESHI A|BELAY|1962616631|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02202018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180222028|K659, R509|Fever, unspecified|ICD10|02232018|02202018|02222018||||0|0||0||||||2|
|02212018|2018-02-21T16:42:46+00:00||000098951-01|Joseph|Thomas|COLS INPATIENT CARE INC|952223      0001|SCOTT A|STILES|1770995672|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|ACO - Atrial Fib|Inpatient|02212018|02222018|Standard|Atrial Fib - $6,140||||0|||||0|0|||||||||||Concurrent Review|Approved|A180222039|I471, I4891|Unspecified atrial fibrillation|ICD10|02232018|02212018|02222018||||0|0||0||||||1|
|02232018|2018-02-23T09:32:22+00:00||000023132-01|Charlene|Lieb|OSCEOLA REGIONAL HOSPITAL INC|913102      0003||OSCEOLA REGIONAL HOSPITAL INC|1689621450|OSCEOLA REGIONAL HOSPITAL INC|913102      0003|1689621450|OSCEOLA REGIONAL HOSPITAL INC|1689621450|Inpatient|IP|Concurrent Review|CONC||OSCEOLA REGIONAL HOSPITAL INC|02232018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02092018|02162018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180223031|K5190|Ulcerative colitis, unspecified, without complications|ICD10|02232018|02092018|02162018||||0|0||0||||||7|
|02122018|2018-02-12T12:36:08+00:00||000059558-01|ROY|COFFEY|COLS INPATIENT CARE INC|935779      0001|JEFFREY B|THURSTON|1891773248|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02252018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|02102018|02232018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180212093|J189|Pneumonia, unspecified organism|ICD10|02252018|02102018|02232018||||0|0||0||||||13|
|02122018|2018-02-12T11:07:03+00:00||000107553-01|Tammy|Patterson|MOUNT CARMEL HLTH PRVDRS|904976      0002|WILLIAM R|ZERICK|1568469609|MOUNT CARMEL ST ANNS HOSPITAL|920157      0003|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|02252018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|02102018|02242018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180212094|T8189XA|Oth complications of procedures, NEC, init|ICD10|02252018|02102018|02242018||||0|0||0||||||14|
|02132018|2018-02-13T10:03:39+00:00||000053038-01|MARY|JACKSON|MOUNT CARMEL HLTH PRVDRS|936924      0002|CHARLES R|HOLDEN|1093713133|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02252018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|02192018|02232018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180213061|T827XXD|Infect/inflm react d/t oth cardi/vasc dev/implnt/grft, subs|ICD10|02252018|02192018|02232018|35903|EXCISION OF INFECTED GRAFT;|CPT|1|1|Approved|5|CPT|C4||||4|
|02202018|2018-02-20T16:09:27+00:00||000056675-01|George|Pilkington|COLS INPATIENT CARE INC|914484      0001|KANAN AKHIL|PATEL|1205096195|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02252018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|02192018|02232018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221061|E871, E876, R55|Syncope and collapse|ICD10|02252018|02192018|02232018||||0|0||0||||||4|
|02212018|2018-02-21T14:35:14+00:00||000093478-01|Ronald|Coleman|HOSPITALIST MEDICINE PHY|947310      0001|KARIM T|ATTIA|1801139217|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02252018|Approved|MediGold Classic Preferred|Fax|ACO - Pulmonary|Inpatient|02202018|02232018|Standard|Pulmonary - $4,007||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221074|J441|Chronic obstructive pulmonary disease w (acute) exacerbation|ICD10|02252018|02202018|02232018||||0|0||0||||||3|
