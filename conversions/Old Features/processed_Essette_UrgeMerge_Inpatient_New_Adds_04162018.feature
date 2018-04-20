Feature: Process Essette Extract UrgeMerge_Inpatient_New_Adds_04162018
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: UrgeMerge_Inpatient_New_Adds_04162018
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
|03132018|2018-03-13T09:21:45+00:00||000110504-01|Deborah|Cumbow|ORTHOPEDIC ONE INC|935048      0001|MICHAEL B|WILLIARD|1184617268|MOUNT CARMEL EAST HOSPITAL|936416      0001|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|04122018|04142018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180313044|M12812|Oth specific arthropathies, NEC, left shoulder|ICD10|04162018|04122018|04142018|23472|ARTRPLASTY C GLENOID& HUM PROS REP|CPT|1|1|Approved|3|CPT|C4||||2|
|03132018|2018-03-13T10:14:16+00:00||000106654-01|Jani|Rider|ORTHOPEDIC ONE INC|935048      0001|MICHAEL B|WILLIARD|1184617268|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|04122018|04132018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180313055|M12811|Oth specific arthropathies, NEC, right shoulder|ICD10|04162018|04122018|04132018|23472|ARTRPLASTY C GLENOID& HUM PROS REP|CPT|1|1|Approved|2|CPT|C4||||1|
|03132018|2018-03-13T12:56:12+00:00||000027584-01|BETTY|HAMBY|ORTHOPEDIC ONE INC|936646      0001|STEVEN|GAINES|1235122573|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04162018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|04102018|04112018|Standard||No|||0|||||0|0|||||||||||Concurrent Review|Approved|A180313077|M1711|Unilateral primary osteoarthritis, right knee|ICD10|04162018|04102018|04112018|27447|ARTHROPLASTY KNEE(TOTAL KNEE)|CPT|1|1|Approved|2|CPT|C4||||1|
|03262018|2018-03-26T15:52:48+00:00||000038056-01|EMIL|HILES|HOSPITALIST MEDICINE PHY|952663      0001|JESSE|DION|1619383734|MOUNT CARMEL ST ANNS HOSPITAL|920157      0003|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|03232018|04152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180327045|I2129, J9601|Acute respiratory failure with hypoxia|ICD10|04162018|03232018|04152018||||0|0||0||||||23|
|03292018|2018-03-29T08:38:04+00:00||000097378-01|Edith|Dearth|MARIETTA HLTH CARE PHYS|923181      0001|TODD R|MYERS|1023011673|MARIETTA MEMORIAL HSP|936469      0003|1215936927|MARIETTA MEMORIAL HOSPITAL|1215936927|Inpatient|IP|Concurrent Review|CONC||MARIETTA MEMORIAL HOSPITAL|04162018|Approved|MediGold Southeast OH Classic Preferred|Fax|Observation|Inpatient|04112018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180329054|N393, N8111, N816|Rectocele|ICD10|04162018|04112018|04122018|57260, 57288|SLING OPERATION FOR STRESS INCONT|CPT|1|1|Approved|2|CPT|C4||||1|
|03292018|2018-03-29T14:25:14+00:00||000014316-01|EDWIN|HARPER|CEN OH UROLOGY GRP INC|916037      0005|CHRISTOPHER D|MCCLUNG|1285804252|RIVERSIDE METHODIST HSP|936400      0003|1467484972|RIVERSIDE METHODIST HOSPITAL|1467484972|Inpatient|IP|Concurrent Review|CONC||RIVERSIDE METHODIST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|03282018|04152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180330024|R310|Gross hematuria|ICD10|04162018|03282018|04152018||||0|0||0||||||2|
|04022018|2018-04-02T13:53:12+00:00||000117367-01|Kirk|Cummins|SOUND KENWOOD HSPISTS OF|925145      0001|NGOZI|NWANKWO|1477680783|WEST CHESTER MEDICAL CENTER|911775      0003|1851549273|WEST CHESTER MEDICAL CENTER|1851549273|Inpatient|IP|Concurrent Review|CONC||WEST CHESTER MEDICAL CENTER|04162018|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|03312018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180402099|I4891, R0602|Shortness of breath|ICD10|04162018|03312018|04132018||||0|0||0||||||13|
|04042018|2018-04-04T10:45:16+00:00||000099077-01|Sue|Pettit|DAYTON SURGEONS INC|901564      0001|JONATHAN E|VELASCO|1962477661|KETTERING MEDICAL CENTER|936443      0003|1043233984|KETTERING MEDICAL CENTER|1043233984|Inpatient|IP|Concurrent Review|CONC||KETTERING MEDICAL CENTER|04162018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04062018|04132018|Expedited|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180404036|I70222|Athscl native arteries of extremities w rest pain, left leg|ICD10|04162018|04062018|04132018|35556|BYPASS GR, VN, FEMORAL-POPLITEAL|CPT|1|1|Approved|8|CPT|C4||||7|
|04042018|2018-04-04T11:48:03+00:00||000096861-01|Carol|Orahood|COMMUNITY MERCY HEALTH P|906699      0003||SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|COMMUNITY MERCY HEALTH P|906699      0005|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Inpatient|IP|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04022018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180404056|J9600|Acute respiratory failure, unsp w hypoxia or hypercapnia|ICD10|04162018|04022018|04132018||||0|0||0||||||11|
|04052018|2018-04-05T10:40:39+00:00||000097635-01|Blanche|Fowler|NEUROSCIENCE CENTER|945250      0001|DEEPAK K|GULATI|1669797890|OSU HOSPITAL|936446      0003|1447359997|THE OH STATE UNIVERSITY HOSPITAL|1447359997|Inpatient|IP|Concurrent Review|CONC||THE OH STATE UNIVERSITY HOSPITAL|04162018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04042018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180405016|I639|Cerebral infarction, unspecified|ICD10|04162018|04042018|04142018||||0|0||0||||||10|
|04062018|2018-04-06T10:24:29+00:00||000061059-01|WANDA|EWELL|SOUND INPATIENT PHYS OF|911536      0001|ROBERT J|ZSOLDOS|1841416179|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04052018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180406028|E1010, G9340, N179, R6520|Severe sepsis without septic shock|ICD10|04162018|04052018|04132018||||0|0||0||||||8|
|04062018|2018-04-06T16:26:33+00:00||000087744-01|John|Gueli|MOUNT CARMEL HLTH PRVDRS|907164      0001|PATRICK R|WELLS|1013945641|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04112018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409005|I350|Nonrheumatic aortic (valve) stenosis|ICD10|04162018|04112018|04132018|33361|REPLACE AORTIC VALVE PERQ|CPT|1|1|Approved|3|CPT|C4||||2|
|04082018|2018-04-08T11:13:56+00:00||000116673-01|Wilma|Cornell|DOCTORS HOSPITAL|903408      0002||DOCTORS HOSPITAL|1972535052|DOCTORS HOSPITAL|903408      0004|1972535052|DOCTORS HOSPITAL|1972535052|Inpatient|IP|Concurrent Review|CONC||DOCTORS HOSPITAL|04162018|Approved|Flexible Choice PPO|Fax|Secondary Only|Inpatient|04042018|04152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409023|J984|Other disorders of lung|ICD10|04162018|04042018|04152018||||0|0||0||||||2|
|04082018|2018-04-08T13:31:02+00:00||000029810-01|MARY ANN|DOWNS|COLS INPATIENT CARE INC|935779      0001|JEFFREY B|THURSTON|1891773248|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04062018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409051|T8131XA|Disruption of external operation (surgical) wound, NEC, init|ICD10|04162018|04062018|04132018||||0|0||0||||||7|
|04092018|2018-04-09T07:20:32+00:00||000106309-01|Jeff|Davis|AAMIR KHAN MD INC|905477      0002|AAMIR|KHAN|1295824746|COMMUNITY MERCY HEALTH P|906699      0005|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Inpatient|IP|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|04162018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04072018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409060|E871, J90, K869, R0600, R0902, R609|Edema, unspecified|ICD10|04162018|04072018|04132018||||0|0||0||||||6|
|04092018|2018-04-09T06:56:00+00:00||000077438-01|Carol|Hatfield|ONCOLOGY HEMATOLOGY CARE|921204      0001|PATRICK J|WARD|1093709297|THE JEWISH HOSPITAL|916862      0003|1336478163|THE JEWISH HOSPITAL|1336478163|Inpatient|IP|Concurrent Review|CONC||THE JEWISH HOSPITAL|04162018|Approved|MediGold Southwest OH Classic Preferred|Fax|Inpatient|Inpatient|04082018|04112018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409066|C3490, J90, R0902, R600|Localized edema|ICD10|04162018|04082018|04112018||||0|0||0||||||3|
|04092018|2018-04-09T12:15:12+00:00||000091951-01|Jeffery|Butler|LICKING MEM HLTH PROF|900017      0018|MOHAMUD S|MOHAMED|1700869377|LICKING MEMORIAL HOSPITAL|936497      0003|1568446755|LICKING MEMORIAL HOSPITAL|1568446755|Inpatient|IP|Concurrent Review|CONC||LICKING MEMORIAL HOSPITAL|04162018|Approved|MediGold Southeast OH Classic Preferred|Fax|Inpatient|Inpatient|04072018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410029|J159|Unspecified bacterial pneumonia|ICD10|04162018|04072018|04142018||||0|0||0||||||7|
|04092018|2018-04-09T15:41:46+00:00||000016386-01|CARMEN|MARGELLO|COPC CENTRAL OHIO PRIMAR|938757      0001||CENTRAL OH PRIMARY CARE PHYS INC|1194705194|MOUNT CARMEL ST ANNS HOSPITAL|920157      0003|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04082018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410043|K922|Gastrointestinal hemorrhage, unspecified|ICD10|04162018|04082018|04142018||||0|0||0||||||3|
|04102018|2018-04-10T07:21:12+00:00||000003084-01|MARY|CARTER|OSU HOSPITAL|936446      0003||THE OH STATE UNIVERSITY HOSPITAL|1447359997|OSU HOSPITAL|936446      0003|1447359997|THE OH STATE UNIVERSITY HOSPITAL|1447359997|Inpatient|IP|Concurrent Review|CONC||THE OH STATE UNIVERSITY HOSPITAL|04162018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04092018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410055|R0602|Shortness of breath|ICD10|04162018|04092018|04142018||||0|0||0||||||5|
|04102018|2018-04-10T13:36:01+00:00||000029609-01|DORIS|GELLNER|HOSPITALIST MEDICINE PHY|920505      0004|PRASANTHI|ARETI|1255654679|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04092018|04152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410098|J159, R6521|Severe sepsis with septic shock|ICD10|04162018|04092018|04152018||||0|0||0||||||6|
|04112018|2018-04-11T10:07:26+00:00||000029655-01|CAROLYN|COOK|MOUNT CARMEL EAST HOSPITAL|936416      0001||MOUNT CARMEL EAST HOSPITAL|1982784534|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04092018|04132018|Standard|Cardiology - $11,288||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411016|I214, I2510|Athscl heart disease of native coronary artery w/o ang pctrs|ICD10|04162018|04092018|04132018||||0|0||0||||||4|
|04112018|2018-04-11T08:00:27+00:00||000121235-01|Linda|Brown|FCMH MED & SURG ASSOC|910713      0007|SANTOSH R|LIKKI|1316926934|FAYETTE COUNTY MEM HSP 1|903662      0005|1508978677|FAYETTE COUNTY MEMORIAL HOSPITAL|1508978677|Inpatient|IP|Concurrent Review|CONC||FAYETTE COUNTY MEMORIAL HOSPITAL|04162018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04102018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411025|E860, N390, R4182|Altered mental status, unspecified|ICD10|04162018|04102018|04142018||||0|0||0||||||4|
|04112018|2018-04-11T11:08:48+00:00||000003153-01|MARGARET|ERVIN|MOUNT CARMEL MEDICAL CTR|920184      0003||MOUNT CARMEL MEDICAL CENTER|1710067376|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04162018|Approved|MediGold Classic Preferred|Fax|ACO - Cardiology|Inpatient|04092018|04132018|Standard|Cardiology - $11,288||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411036|J441|Chronic obstructive pulmonary disease w (acute) exacerbation|ICD10|04162018|04092018|04132018||||0|0||0||||||4|
|04112018|2018-04-11T10:03:14+00:00||000027690-01|MABLE|TAYLOR|NEUROSCIENCE CENTER|947205      0003|VIVIEN H|LEE|1538146907|OSU HOSPITAL|936446      0003|1447359997|THE OH STATE UNIVERSITY HOSPITAL|1447359997|Inpatient|IP|Concurrent Review|CONC||THE OH STATE UNIVERSITY HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04102018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411065|I639|Cerebral infarction, unspecified|ICD10|04162018|04102018|04122018||||0|0||0||||||2|
|04112018|2018-04-11T14:39:18+00:00||000000202-01|WILLIAM|RUSHIA|HOSPITALIST MEDICINE PHY|924270      0004|SILESHI A|BELAY|1962616631|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04102018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411079|B965, N390, R531|Weakness|ICD10|04162018|04102018|04142018||||0|0||0||||||4|
|04112018|2018-04-11T14:58:22+00:00||000031902-01|AVALENE|LEE|V GEORGE ZOCHOWSKI DO IN|935100      0001|V GEORGE|ZOCHOWSKI|1912909268|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04102018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411083|N390|Urinary tract infection, site not specified|ICD10|04162018|04102018|04132018||||0|0||0||||||3|
|04122018|2018-04-12T09:29:47+00:00||000035510-01|EDWARD|BARNHART|MOUNT CARMEL EAST HOSPITAL|936416      0001||MOUNT CARMEL EAST HOSPITAL|1982784534|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|ACO - Cardiology|Inpatient|04112018|04142018|Standard|Cardiology - $11,288||||0|||||0|0|||||||||||Concurrent Review|Approved|A180412009|R079|Chest pain, unspecified|ICD10|04162018|04112018|04142018||||0|0||0||||||3|
|04122018|2018-04-12T09:34:47+00:00||000008209-01|MARY|SWARMER|OSU HOSPITAL|936446      0003||THE OH STATE UNIVERSITY HOSPITAL|1447359997|OSU HOSPITAL|936446      0003|1447359997|THE OH STATE UNIVERSITY HOSPITAL|1447359997|Inpatient|IP|Concurrent Review|CONC||THE OH STATE UNIVERSITY HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04112018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180412025|F0390|Unspecified dementia without behavioral disturbance|ICD10|04162018|04112018|04122018||||0|0||0||||||1|
|04122018|2018-04-12T09:39:21+00:00||000034462-01|SHIRLEY|MARQUARDT|OHIOHEALTH PHYS GRP|908857      0007|MITCHELL J|SILVER|1265437628|RIVERSIDE METHODIST HSP|936400      0003|1467484972|RIVERSIDE METHODIST HOSPITAL|1467484972|Inpatient|IP|Concurrent Review|CONC||RIVERSIDE METHODIST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04112018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180412026|I214|Non-ST elevation (NSTEMI) myocardial infarction|ICD10|04162018|04112018|04132018||||0|0||0||||||2|
|04122018|2018-04-12T09:53:53+00:00||000096330-01|Lois|Buker|SOUND INPATIENT PHYS OF|911533      0001||SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|ACO - Pulmonary|Inpatient|04112018|04132018|Standard|Pulmonary - $4,007||||0|||||0|0|||||||||||Concurrent Review|Approved|A180412031|J189|Pneumonia, unspecified organism|ICD10|04162018|04112018|04132018||||0|0||0||||||2|
|04122018|2018-04-12T12:58:24+00:00||000111519-01|Naomi|Stanley|GRANDVIEW HOSPITAL & SOU|903114      0008|KEVIN M|REID|1073514709|GRANDVIEW & SOUTHVIEW HO|936462      0003|1053339507|GRANDVIEW MEDICAL CENTER|1053339507|Inpatient|IP|Concurrent Review|CONC||GRANDVIEW MEDICAL CENTER|04162018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04102018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180412050|A419|Sepsis, unspecified organism|ICD10|04162018|04102018|04142018||||0|0||0||||||4|
|04122018|2018-04-12T15:56:57+00:00||000066697-01|LEE|BAJENSKI|CEN OH PRIMARY CARE SPEC|936972      0003|NISHIT G|JHAVERI|1356400659|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|ACO - CHF|Inpatient|04112018|04132018|Standard|CHF - $8,294||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413012|I4891, I5020|Unspecified systolic (congestive) heart failure|ICD10|04162018|04112018|04132018||||0|0||0||||||2|
|04132018|2018-04-13T10:59:03+00:00||000082775-01|Amy|Martin|MOUNT CARMEL EAST HOSPITAL|936416      0001||MOUNT CARMEL EAST HOSPITAL|1982784534|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Essential Care|Fax|EIS|Inpatient|04122018|04152018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180413019|K439, T819XXA|Unspecified complication of procedure, initial encounter|ICD10|04162018|04122018|04152018||||0|0||0||||||3|
|04132018|2018-04-13T09:25:36+00:00||000041831-01|EARL|ROBISON|HOSPITALIST MEDICINE PHY|947764      0001|NAMRATA|SINGHANIA|1437590916|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04102018|04152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413036|I213|ST elevation (STEMI) myocardial infarction of unsp site|ICD10|04162018|04102018|04152018||||0|0||0||||||5|
|04132018|2018-04-13T14:01:27+00:00||000071859-01|Marvin|Howard|HOSPITALIST MEDICINE PHY|947764      0001|NAMRATA|SINGHANIA|1437590916|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04122018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413054|R195|Other fecal abnormalities|ICD10|04162018|04122018|04142018||||0|0||0||||||2|
|04132018|2018-04-13T10:30:07+00:00||000079878-01|Donald|Dumm|MOUNT CARMEL MEDICAL CTR|920184      0001||MOUNT CARMEL MEDICAL CENTER|1710067376|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04162018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04122018|04152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413059|I4430, I455|Other specified heart block|ICD10|04162018|04122018|04152018||||0|0||0||||||3|
|04132018|2018-04-13T13:01:49+00:00||000079214-01|Shirley|Williams|KNOX COMMUNITY HOSP GRP|924378      0005|DAVID A|DELORENZO|1942285051|KNOX COMMUNITY HOSPITAL|936422      0003|1295761963|KNOX COMMUNITY HOSPITAL|1295761963|Inpatient|IP|Concurrent Review|CONC||KNOX COMMUNITY HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|04122018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413074|I2109, R079|Chest pain, unspecified|ICD10|04162018|04122018|04122018||||0|0||0||||||0|
|04132018|2018-04-13T14:13:39+00:00||000044745-01|PATRICIA|HAAG|BRUCE L  AUERBACH MD LLC|936633      0001|BRUCE L|AUERBACH|1235139932|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04162018|Approved|MediGold Classic Preferred|Fax|ACO - Pulmonary|Inpatient|04122018|04152018|Standard|Pulmonary - $4,007||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413080|I509, J189|Pneumonia, unspecified organism|ICD10|04162018|04122018|04152018||||0|0||0||||||0|
|04142018|2018-04-14T14:50:37+00:00||000026569-01|ALLAN|BARTHOLIC|CEN OH PRIMARY CARE SPEC|936972      0003|NISHIT G|JHAVERI|1356400659|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|ACO - Pulmonary|Inpatient|04132018|04152018|Standard|Pulmonary - $4,007||||0|||||0|0|||||||||||Concurrent Review|Approved|A180416023|J189|Pneumonia, unspecified organism|ICD10|04162018|04132018|04152018||||0|0||0||||||2|
