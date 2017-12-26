Feature: Process Essette Extract UrgeMerge_Inpatient_New_Adds_12212017
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: UrgeMerge_Inpatient_New_Adds_12212017
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
|requested_date|military_date|other_reference_#|member_id|member_first_name|member_last_name|practice_name|requesting_provider_id|requesting_provider_first_name|requesting_provider_last_name|requesting_provider_npi_#|facility_name|servicing_provider_id|provider_facility_npi|servicing_provider_name|servicing_provider_npi_#|sub_class|sub_class_code|type|type_code|servicing_provider_first_name|servicing_provider_last_name|status_date|status|health_plan|source|status_reason|auth_class|authorized_date|expiration_date|priority|aco_type_and_payment|eis_aa|adm|auth_for_payment|days_used_prior|dc|denc_date|mds_date|nomnc_date|total_days|total_skilled_days|final_reimb_amt|amisys_auth_number|add_drug_doses|add_drug_reimb|dischrg_date|final_reimb_amt_2|per_diem_lvl_1|per_diem_lvl_2|total_days1|total_per_diem|auth_type|auth_status|auth_number|diagnosis_code|diagnosis|diagnosis_type|auth_modified_date|auth_admission_date|auth_discharge_date|service_code|service_description|service_type|qty_appr|qty_reqd|determination|auth_approval_days|service_type1|service_type_code1|notes|blank_01|blank_02|qty|
|11232017|2017-11-23T04:32:43+00:00||000066189-01|STEVEN|DICK|RESILIENCY & WELLNESS CO|946613|DELANEY|SMITH|1942324728|DUBLIN SPRINGS LLC|923693|1164798708|COLUMBUS SPRINGS DUBLIN|1164798708|IP Behavioral Health|IP BH|Concurrent Review|CONC||COLUMBUS SPRINGS DUBLIN|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|11222017|12182017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171127003|F250|Schizoaffective disorder, bipolar type|ICD10|12212017|11222017|12182017||||0|0||0||||||6|
|11272017|2017-11-27T10:58:32+00:00|025073981-7312|000090137-01|Roger|Mcentire|ORTHOPEDIC ONE INC|934876|ROBERT N|STEENSEN|1487647665|MOUNT CARMEL MEDICAL CTR|920184|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|12212017|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|12202017|12212017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171128034|M1712|Unilateral primary osteoarthritis, left knee|ICD10|12212017|12202017|12212017|27447|ARTHROPLASTY KNEE(TOTAL KNEE)|CPT|1|1|Approved|2|CPT|C4||||1|
|11282017|2017-11-28T08:25:47+00:00||000090874-01|Ruth|Przyborowski|ALLIANCE PHYSICIANS INC|914727|GURPAL S|AHLUWALIA|1740314954|KETTERING MEDICAL CENTER SYCAMORE|905903|1316966518|KETTERING MEDICAL CENTER SYCAMORE|1316966518|Inpatient|IP|Concurrent Review|CONC||KETTERING MEDICAL CENTER SYCAMORE|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12122017|12142017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171128063|M1711|Unilateral primary osteoarthritis, right knee|ICD10|12212017|12122017|12142017|27447|ARTHROPLASTY KNEE(TOTAL KNEE)|CPT|1|1|Approved|3|CPT|C4||||2|
|11282017|2017-11-28T14:04:07+00:00|025985064-7331|000000068-01|SHIRLEY|FARMER|OH ONCOLOGY & HEMATOLOGY|934970|LUIS|VACCARELLO|1225034622|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|12182017|12202017|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A171129016|C541|Malignant neoplasm of endometrium|ICD10|12212017|12182017|12202017|38571, 58571|TLH W/T/O 250 G OR LESS,26.32,26.32|CPT|1|1|Approved|3|CPT|C4||||2|
|09122017|2017-09-12T11:37:04+00:00|025416446-7249|000101056-01|Linda|Long|ORTHOPEDIC ONE INC|937143|ROBERT|MARTIN|1174516371|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12192017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A170913033|M1711|Unilateral primary osteoarthritis, right knee|ICD10|12212017|12192017|12202017|27447|ARTHROPLASTY KNEE(TOTAL KNEE)|CPT|0|1||2|CPT|C4||||1|
|11082017|2017-11-08T16:36:14+00:00||000040192-01|JUANITA|FERGUSON|ALLIANCE PHYSICIANS INC|901965|WAYNE C|WOODARD|1053310706|GREENE MEMORIAL HOSPITAL|939279|1255317848|GREENE MEMORIAL HOSPITAL|1255317848|Inpatient|IP|Concurrent Review|CONC||GREENE MEMORIAL HOSPITAL|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12182017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171109013|M1711|Unilateral primary osteoarthritis, right knee|ICD10|12212017|12182017|12202017|27447|ARTHROPLASTY KNEE(TOTAL KNEE)|CPT|1|1|Approved|3|CPT|C4||||2|
|11132017|2017-11-13T17:23:36+00:00|025040319-7318|000094305-01|Karen|Geisler|ORTHOPEDIC ONE INC|936949|DAVID F|HUBER|1518950740|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|TRINITY HEALTH|Fax|Inpatient|Inpatient|12182017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171114046|M1611|Unilateral primary osteoarthritis, right hip|ICD10|12212017|12182017|12202017|27130|CHARN MILLER TTL HIP ARTHROPLASTY|CPT|1|1|Approved|3|CPT|C4||||2|
|11162017|2017-11-16T12:02:26+00:00||000114769-01|John|Lewis|COLON & RECTAL SURG INC|937012|KARAMJIT S|KHANDUJA|1093707960|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|12192017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171116091|C20|Malignant neoplasm of rectum|ICD10|12212017|12192017|12202017|44625|CLSR ENTEROSTOMY C RSCTN & ANAST.|CPT|1|1|Approved|2|CPT|C4||||1|
|11302017|2017-11-30T13:53:57+00:00||000073678-01|Jane|Young|NEEL RAYA MD INC|937361|NEELKANT|RAYA|1760468953|FAIRFIELD MEDICAL CENTER|936439|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Inpatient|IP|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|11292017|12152017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171130108|E876, K631, K6819, R112, R197|Diarrhea, unspecified|ICD10|12212017|11292017|12152017||||0|0||0||||||16|
|12012017|2017-12-01T09:32:02+00:00|0267255677334|000026614-01|BEVERLY|PURDIN|HOSPITALIST MEDICINE PHY|917840|JIGNA N|JANANI|1023278413|MOUNT CARMEL ST ANNS HOSPITAL|920157|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|12212017|Approved|MediGold Classic Preferred|Reports|Inpatient|Inpatient|11302017|12212017|Standard|Cardiology - $11,288||||0|||||0|0|||||||||||Concurrent Review|Approved|A171201016|I214|Non-ST elevation (NSTEMI) myocardial infarction|ICD10|12212017|11302017|12212017||||0|0||0||||||21|
|12012017|2017-12-01T16:00:14+00:00||000085218-01|Ronald|Talbot|APOGEE MED GRP OHIO INC|948317|MANJINDER|PANNU|1396091062|COMMUNITY MERCY HEALTH P|906699|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Inpatient|IP|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|12212017|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|11302017|12192017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171201075|R109|Unspecified abdominal pain|ICD10|12212017|11302017|12192017||||0|0||0||||||19|
|12012017|2017-12-01T17:48:54+00:00||000001189-01|RICHARD|LANGWASSER|HAQUE, MAX M|904471|MAX M|HAQUE|1700884111|HOCKING VALLEY COMMUNITY|906222|1295840007|HOCKING VALLEY COMMUNITY HOSP BEHAVI|1801903109|IP Behavioral Health|IP BH|Concurrent Review|CONC||HOCKING VALLEY COMMUNITY HOSP BEHAVI|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12012017|12112017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171204003|F29|Unsp psychosis not due to a substance or known physiol cond|ICD10|12212017|12012017|12112017||||0|0||0||||||10|
|12012017|2017-12-01T23:45:40+00:00||000111983-01|Curtis|Davis|GRANDVIEW & SOUTHVIEW HO|936462||GRANDVIEW MEDICAL CENTER|1053339507|GRANDVIEW & SOUTHVIEW HO|936462|1053339507|GRANDVIEW MEDICAL CENTER|1053339507|IP Behavioral Health|IP BH|Concurrent Review|CONC||GRANDVIEW MEDICAL CENTER|12212017|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|12012017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171204005|R6889|Other general symptoms and signs|ICD10|12212017|12012017|12202017||||0|0||0||||||19|
|12042017|2017-12-04T11:09:08+00:00|0250955187335|000063745-01|HOWARD|ROZUM|SOUND INPATIENT PHYS OF|911533||SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Classic Preferred|Reports|Secondary Only|Inpatient|12012017|12182017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171204094|I509, J9600, R0600|Dyspnea, unspecified|ICD10|12212017|12012017|12182017||||0|0||0||||||17|
|12042017|2017-12-04T13:50:39+00:00|017972751-7325|000083569-01|Thomas|Holmes|ORTHO & NEURO CONSULTS I|935727|MICHAEL B|CANNONE|1275517328|MOUNT CARMEL NEW ALBANY SURGICAL HSP|920176|1770668568|MOUNT CARMEL NEW ALBANY SURGICAL HSP|1770668568|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL NEW ALBANY SURGICAL HSP|12212017|Approved|MediGold Southeast OH Essential Care|Fax|Inpatient|Inpatient|12202017|12212017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171204121|M1712|Unilateral primary osteoarthritis, left knee|ICD10|12212017|12202017|12212017|27447|ARTHROPLASTY KNEE(TOTAL KNEE)|CPT|1|1|Approved|2|CPT|C4||||1|
|12052017|2017-12-05T08:11:26+00:00||000051541-01|GARY|SHUE|ARBOR VIEW FAM MED INC|934801|RICHARD B|SIELSKI|1023080298|FAIRFIELD MEDICAL CENTER|936439|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Inpatient|IP|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12012017|12052017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171205015|I4892|Unspecified atrial flutter|ICD10|12212017|12012017|12052017||||0|0||0||||||4|
|12052017|2017-12-05T08:13:53+00:00||000070980-01|Della|Ballinger|FAIRFIELD INTERNAL MED|934614|JOHNNY J|ABIDIN|1902885403|FAIRFIELD MEDICAL CENTER|936439|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Inpatient|IP|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12022017|02052018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171205019|I313|Pericardial effusion (noninflammatory)|ICD10|12212017|12022017|12052017||||0|0||0||||||3|
|12052017|2017-12-05T11:25:06+00:00||000116115-01|Geraldine|Neer|S DAYTON ACUTE CARE CNSL|901325|SHAILENDRA|SAWH|1518952605|KETTERING MEDICAL CENTER|936443|1043233984|KETTERING MEDICAL CENTER|1043233984|Inpatient|IP|Concurrent Review|CONC||KETTERING MEDICAL CENTER|12212017|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|12042017|12132017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171205061|I619|Nontraumatic intracerebral hemorrhage, unspecified|ICD10|12212017|12042017|12132017||||0|0||0||||||9|
|12062017|2017-12-06T14:58:14+00:00||000103084-01|Deborah|Griggs|COMMUNITY HSPIST LLC|905161|LEON D|HUGHES|1083696207|FAIRFIELD MEDICAL CENTER|936439|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Inpatient|IP|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|12212017|Approved|MediGold Southeast OH Essential Care|Fax|Inpatient|Inpatient|12052017|12092017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171206079|J189|Pneumonia, unspecified organism|ICD10|12212017|12052017|12092017||||0|0||0||||||4|
|12072017|2017-12-07T10:17:07+00:00||000109766-01|Lilly|Arkenberg|BULLMASTER, JOHN|905350|JOHN|BULLMASTER|1356327266|KETTERING MEDICAL CENTER SYCAMORE|905903|1316966518|KETTERING MEDICAL CENTER SYCAMORE|1316966518|Inpatient|IP|Concurrent Review|CONC||KETTERING MEDICAL CENTER SYCAMORE|12212017|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|12062017|12142017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171207037|K259|Gastric ulcer, unsp as acute or chronic, w/o hemor or perf|ICD10|12212017|12062017|12142017||||0|0||0||||||1|
|12072017|2017-12-07T12:31:11+00:00||000084337-01|Larry|Ruh|FAIRFIELD HLTHCARE PROFS|905153|P ARYEH|COHEN|1306063656|FAIRFIELD MEDICAL CENTER|936439|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Inpatient|IP|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|12212017|Approved|MediGold Southeast OH Essential Care|Fax|Inpatient|Inpatient|12062017|12162017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171207046|I469|Cardiac arrest, cause unspecified|ICD10|12212017|12062017|12162017||||0|0||0||||||10|
|12092017|2017-12-09T22:17:48+00:00||000102427-01|Jackie|Prosser|KEYSTONE MENTAL HEALTH|950087|IVANA|BALIC|1386824167|DUBLIN SPRINGS LLC|923693|1164798708|COLUMBUS SPRINGS DUBLIN|1164798708|IP Behavioral Health|IP BH|Concurrent Review|CONC||COLUMBUS SPRINGS DUBLIN|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12092017|12182017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171211020|F332, F419|Anxiety disorder, unspecified|ICD10|12212017|12092017|12182017||||0|0||0||||||4|
|12112017|2017-12-11T06:04:00+00:00||000003352-01|JAMES|LOCKARD|OH HSP FOR PSYCHIATRY|906239||OHIO HOSPITAL FOR PSYCHIATRY|1821186271|OH HSP FOR PSYCHIATRY|906239|1821186271|OHIO HOSPITAL FOR PSYCHIATRY|1821186271|IP Behavioral Health|IP BH|Concurrent Review|CONC||OHIO HOSPITAL FOR PSYCHIATRY|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12112017|12222017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171211025|F29|Unsp psychosis not due to a substance or known physiol cond|ICD10|12212017|12112017|12222017||||0|0||0||||||11|
|12112017|2017-12-11T14:15:54+00:00||000109099-01|Carl|Pearson|ALLIANCE PHYSICIANS INC|947302|MIGUEL M|GAETA|1336306141|KETTERING MEDICAL CENTER|936443|1043233984|KETTERING MEDICAL CENTER|1043233984|Inpatient|IP|Concurrent Review|CONC||KETTERING MEDICAL CENTER|12212017|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|12092017|12142017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171211139|S22008A|Oth fracture of unsp thoracic vertebra, init for clos fx|ICD10|12212017|12092017|12142017||||0|0||0||||||6|
|12112017|2017-12-11T14:56:49+00:00||000105756-01|Ronald|Barber|ORTHO & SPORTS MED CTR I|937082|MICHAEL S|LEFKOWITZ|1932280906|BERGER HOSPITAL|936479|1326020447|BERGER HOSPITAL|1326020447|Inpatient|IP|Concurrent Review|CONC||BERGER HOSPITAL|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12182017|12212017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171211162|M1990|Unspecified osteoarthritis, unspecified site|ICD10|12212017|12182017|12212017|27447|ARTHROPLASTY KNEE(TOTAL KNEE)|CPT|1|1|Approved|4|CPT|C4||||3|
|12112017|2017-12-11T15:58:38+00:00||000051581-01|KANWARD|FAULK|HMP OF FRANKLIN CTY LTD|909975|SARAH|BONZA|1487694709|FAIRFIELD MEDICAL CENTER|936439|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Inpatient|IP|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12092017|12142017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171212002|A419, I214, J189, N390|Urinary tract infection, site not specified|ICD10|12212017|12092017|12142017||||0|0||0||||||5|
|12122017|2017-12-12T09:32:47+00:00|0250044827346|000065745-01|PAUL|BICE|CENTRAL OHIO SURG ASSOC|936068|ADAM M|ZOCHOWSKI|1427056399|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|THE TIMKEN COMPANY|Reports|Inpatient|Inpatient|12112017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171212015|E440, K632|Fistula of intestine|ICD10|12212017|12112017|12202017||||0|0||0||||||9|
|12112017|2017-12-11T15:42:30+00:00|025511627-7286|000083228-01|Harold|Burns|ORTHOPEDIC ONE INC|925995|JEFFREY R|BACKES|1457689101|MOUNT CARMEL ST ANNS HOSPITAL|920157|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|12212017|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|12202017|12212017|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A171212025|M19011|Primary osteoarthritis, right shoulder|ICD10|12212017|12202017|12212017|23472|ARTRPLASTY C GLENOID& HUM PROS REP|CPT|1|1|Approved|2|CPT|C4||||1|
|12122017|2017-12-12T11:39:47+00:00||000066498-01|MARY|DAY|MADISON COUNTY COMMU ER|900949|BERNARD K|OPPONG|1184619041|MADISON COUNTY HOSPITAL|936491|1982710703|MADISON COUNTY HOSPITAL|1982710703|Inpatient|IP|Concurrent Review|CONC||MADISON COUNTY HOSPITAL|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12112017|12142017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171212070|J441|Chronic obstructive pulmonary disease w (acute) exacerbation|ICD10|12212017|12112017|12142017||||0|0||0||||||3|
|12132017|2017-12-13T08:27:14+00:00||000020194-01|WILLARD|CLARK|OHIOHEALTH PHYS GRP|908037|JEREMY|DAUGHERTY|1548481799|GRANT MEDICAL CENTER|936409|1255377149|GRANT MEDICAL CENTER|1255377149|Inpatient|IP|Concurrent Review|CONC||GRANT MEDICAL CENTER|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12122017|12182017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171213029|R42|Dizziness and giddiness|ICD10|12212017|12122017|12182017||||0|0||0||||||4|
|12142017|2017-12-14T09:23:11+00:00|0250437777350|000051412-01|GLENDA|GARRISON|COLS INPATIENT CARE INC|937585||COLS INPATIENT CARE INC|1467430801|MOUNT CARMEL MEDICAL CTR|920184|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|12212017|Approved|MediGold Classic Preferred|Reports|Inpatient|Inpatient|12142017|12202017|Standard|Pulmonary - $4,007||||0|||||0|0|||||||||||Concurrent Review|Approved|A171214011|J159|Unspecified bacterial pneumonia|ICD10|12212017|12142017|12202017||||0|0||0||||||6|
|12142017|2017-12-14T09:02:56+00:00||000097532-01|Gilbert|Breitenbach|MOUNT CARMEL HLTH PRVDRS|942780|MICHAEL P|GIBSON|1821055732|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12192017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171214028|I350|Nonrheumatic aortic (valve) stenosis|ICD10|12212017|12192017|12202017|33361|REPLACE AORTIC VALVE PERQ|CPT|1|1|Approved|2|CPT|C4||||1|
|12142017|2017-12-14T09:46:19+00:00||000022259-01|FRANCIS|ALLOWAY|MOUNT CARMEL HLTH PRVDRS|942780|MICHAEL P|GIBSON|1821055732|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12192017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171214029|I350|Nonrheumatic aortic (valve) stenosis|ICD10|12212017|12192017|12202017|33364|REPLACE AORTIC VALVE OPEN|CPT|1|1|Approved|2|CPT|C4||||1|
|12142017|2017-12-14T13:03:15+00:00||000081323-01|Ruth|Cashdollar|LICKING MEM HLTH PROF|947795|MARUF A|ALI|1104258979|LICKING MEMORIAL HOSPITAL|936497|1568446755|LICKING MEMORIAL HOSPITAL|1568446755|Inpatient|IP|Concurrent Review|CONC||LICKING MEMORIAL HOSPITAL|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12132017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171214043|J441|Chronic obstructive pulmonary disease w (acute) exacerbation|ICD10|12212017|12132017|12202017||||0|0||0||||||7|
|12152017|2017-12-15T08:15:56+00:00|0259436287348|000006280-01|WAITMAN|OSBORNE|MOUNT CARMEL HLTH SYS|917573|STEVEN C|REITZ|1417116880|MOUNT CARMEL MEDICAL CTR|920184|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|12212017|Approved|MediGold Classic Preferred|Reports|Inpatient|Inpatient|12142017|12212017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171215003|J159|Unspecified bacterial pneumonia|ICD10|12212017|12142017|12212017||||0|0||0||||||7|
|12152017|2017-12-15T08:25:40+00:00|0252530617348|000005269-01|EMERSON|WILLIAMS|COLS INPATIENT CARE INC|937585||COLS INPATIENT CARE INC|1467430801|MOUNT CARMEL MEDICAL CTR|920184|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|12212017|Approved|MediGold Classic Preferred|Reports|Inpatient|Inpatient|12142017|12212017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171215010|R296|Repeated falls|ICD10|12212017|12142017|12212017||||0|0||0||||||7|
|12182017|2017-12-18T10:05:26+00:00|0262569307351|000066715-01|GRACE|BAILEY|CENTRAL OHIO SURG ASSOC|934949|JEFFREY L|TURNER|1831131077|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Classic Preferred|Reports|EIS|Inpatient|12172017|12202017|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A171218030|K439|Ventral hernia without obstruction or gangrene|ICD10|12212017|12172017|12202017||||0|0||0||||||3|
|12162017|2017-12-16T14:52:24+00:00||000079565-01|Marvin|Ropp|APOGEE MED GRP OHIO INC|952313|VALERIE M|DRABINA DOMBRO|1982982955|COMMUNITY MERCY HEALTH P|906699|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Inpatient|IP|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|12212017|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|12152017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171218039|I5023, K922|Gastrointestinal hemorrhage, unspecified|ICD10|12212017|12152017|12202017||||0|0||0||||||5|
|12182017|2017-12-18T10:36:42+00:00|0250282527349|000015372-01|DOROTHY|DECARLO|SOUND INPATIENT PHYS OF|911533||SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Classic Preferred|Reports|Inpatient|Inpatient|12152017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171218050|I4891|Unspecified atrial fibrillation|ICD10|12212017|12152017|12202017||||0|0||0||||||5|
|12182017|2017-12-18T10:42:21+00:00|0262214287351|000116186-01|CARY|GILPEN|HOSPITALIST MEDICINE PHY|939956|AMY|WANG|1992949150|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Essential Care|Reports|Inpatient|Inpatient|12172017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171218054|I469|Cardiac arrest, cause unspecified|ICD10|12212017|12172017|12202017||||0|0||0||||||3|
|12182017|2017-12-18T10:53:47+00:00||000108511-01|John|Gallagher|COLS INPATIENT CARE INC|937585||COLS INPATIENT CARE INC|1467430801|MOUNT CARMEL MEDICAL CTR|920184|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|12212017|Approved|MediGold Essential Care|Reports|Inpatient|Inpatient|12172017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171218060|R4182|Altered mental status, unspecified|ICD10|12212017|12172017|12202017||||0|0||0||||||3|
|12182017|2017-12-18T12:59:20+00:00|0252608177349|000083212-01|Michael|Palacky|COPC CENTRAL OHIO PRIMAR|938757||CENTRAL OH PRIMARY CARE PHYS INC|1194705194|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Classic Preferred|Reports|Inpatient|Inpatient|12152017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171218103|J189, J441|Chronic obstructive pulmonary disease w (acute) exacerbation|ICD10|12212017|12152017|12202017||||0|0||0||||||5|
|12182017|2017-12-18T13:13:56+00:00|0256512077351|000070962-01|Linda|Bregach|SOUND INPATIENT PHYS OF|911533||SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|MOUNT CARMEL ST ANNS HOSPITAL|920157|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|12212017|Approved|MediGold Essential Care|Reports|Inpatient|Inpatient|12172017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171218112|I214|Non-ST elevation (NSTEMI) myocardial infarction|ICD10|12212017|12172017|12202017||||0|0||0||||||3|
|12182017|2017-12-18T09:36:47+00:00||000076603-01|ROGER|HARPER JR|VENICE REGIONAL MEDICAL CENTER|901708||VENICE REGIONAL MEDICAL CENTER|1760427157|VENICE REGIONAL MEDICAL CENTER|901708|1760427157|VENICE REGIONAL MEDICAL CENTER|1760427157|Inpatient|IP|Concurrent Review|CONC||VENICE REGIONAL MEDICAL CENTER|12212017|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|12142017|12152017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171218122|J40, R0602|Shortness of breath|ICD10|12212017|12142017|12152017||||0|0||0||||||1|
|12182017|2017-12-18T12:18:13+00:00||000040099-01|JOAN|GRAY|DAYTON SPRINGFIELD CARDI|926167|CHUKWUEMEKE O|NKADI|1598760845|ADENA REGIONAL MED CTR|936475|1902839673|ADENA REGIONAL MEDICAL CENTER|1902839673|Inpatient|IP|Concurrent Review|CONC||ADENA REGIONAL MEDICAL CENTER|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12162017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171219049|K5669|Other intestinal obstruction|ICD10|12212017|12162017|12202017||||0|0||0||||||4|
|12192017|2017-12-19T15:27:34+00:00|0258879437353|000058260-01|JANET|UPP|COLS INPATIENT CARE INC|927568|KARTHIK S|MULKANOOR|1720390859|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Classic Preferred|Reports|ACO - Atrial Fib|Inpatient|12192017|12202017|Standard|Atrial Fib - $6,140||||0|||||0|0|||||||||||Concurrent Review|Approved|A171219111|I4891|Unspecified atrial fibrillation|ICD10|12212017|12192017|12202017||||0|0||0||||||1|
|12202017|2017-12-20T10:23:09+00:00|0251625297353|000060251-01|GARNET|ESTEPP|COLS INPATIENT CARE INC|952223|SCOTT A|STILES|1770995672|MOUNT CARMEL MEDICAL CTR|920184|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|12212017|Approved|MediGold Classic Preferred|Reports|ACO - CHF|Inpatient|12192017|12212017|Standard|CHF - $8,294||||0|||||0|0|||||||||||Concurrent Review|Approved|A171220035|R079|Chest pain, unspecified|ICD10|12212017|12192017|12212017||||0|0||0||||||2|
|12202017|2017-12-20T10:24:21+00:00||000113220-01|Michael|Stacey|MOUNT CARMEL REHABILITAT|951409||MOUNT CARMEL REHABILITATION HOSPITAL|1497202485|MOUNT CARMEL REHABILITAT|951409|1497202485|MOUNT CARMEL REHABILITATION HOSPITAL|1497202485|Inpatient Rehabilitation|IP REHAB|Pre-Service|PRE||MOUNT CARMEL REHABILITATION HOSPITAL|12212017|Denied|MediGold Essential Care|Fax|Criteria Not Met|Inpatient|||Standard|||||0|||||0|0|||||||||||Pre-Service|Denied|A171220047|I639|Cerebral infarction, unspecified|ICD10|12212017||||||0|0||0||||||0|
|12202017|2017-12-20T16:02:24+00:00||000043913-01|ALICE|DENNIS|NEUROSCIENCE CENTER|919466|CHAD M|MILLER|1467477901|RIVERSIDE METHODIST HSP|936400|1467484972|RIVERSIDE METHODIST HOSPITAL|1467484972|Inpatient|IP|Concurrent Review|CONC||RIVERSIDE METHODIST HOSPITAL|12212017|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|12192017|12202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171220079|I6200|Nontraumatic subdural hemorrhage, unspecified|ICD10|12212017|12192017|12202017||||0|0||0||||||1|
|12212017|2017-12-21T08:52:08+00:00|0250466277354|000103869-01|HELEN|HICKEY|COPC CENTRAL OHIO PRIMAR|938757||CENTRAL OH PRIMARY CARE PHYS INC|1194705194|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|12212017|Approved|MediGold Essential Care|Reports|ACO - Pulmonary|Inpatient|12202017|12212017|Standard|Pulmonary - $4,007||||0|||||0|0|||||||||||Concurrent Review|Approved|A171221005|J159|Unspecified bacterial pneumonia|ICD10|12212017|12202017|12212017||||0|0||0||||||1|
