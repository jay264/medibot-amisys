Feature: Test One Obs
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: Test One Obs NEW EXTRACT
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
And the test pauses for "3" seconds
And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
And the test pauses for "4" seconds
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
|requested_date|military_date|other_reference_#|member_id|member_first_name|member_last_name|practice_name|requesting_provider_id|requesting_provider_first_name|requesting_provider_last_name|requesting_provider_npi_#|facility_name|servicing_provider_id|provider_facility_npi|servicing_provider_name|servicing_provider_npi_#|sub_class|sub_class_code|type|type_code|servicing_provider_first_name|servicing_provider_last_name|status_date|status|health_plan|source|status_reason|auth_class|authorid_date|expiration_date|priority|aco_type_and_payment|eis_aa|adm|auth_for_payment|days_used_prior|dc|denc_date|mds_date|nomnc_date|total_da|total_skilled_days|final_reimb_amt|amisys_auth_number|add_drug_doses|add_drug_reimb|dischrg_date|final_reimb_amt_2|per_diem_lvl_1|per_diem_lvl_2|total_days1|total_per_diem|auth_type|auth_status|auth_number|diagnosis_code|diagnosis|diagnosis_type|auth_modified_date|auth_admission_date|auth_discharge_date|service_code|service_description|service_type|qty_appr|qty_reqd|determination|auth_approval_days|service_type1|service_type_code1|notes|blank_01|blank_02|qty|
|11162017|2017-11-16T08:07:21+00:00||000100885-01|Charles|Fannin|MERCY HEALTH CLERMONT HO|917916||MERCY HOSPITAL CLERMONT|1568562551|MERCY HEALTH CLERMONT HO|917916|1568562551|MERCY HOSPITAL CLERMONT|1568562551|Observation|OBSV|Concurrent Review|CONC||MERCY HOSPITAL CLERMONT|11292017|Approved|MediGold Essential Care|Reports|Observation|Inpatient|11152017|11162017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171116046|R0603|R0603|ICD10|11292017|11152017|11162017||||0|0||0||||||1|
|11172017|2017-11-17T14:12:56+00:00||000096283-01|Harden|Blevins Jr|APOGEE MED GRP OHIO INC|946158|ZHINENG J|YANG|1285920694|COMMUNITY MERCY HEALTH P|906699|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Observation|OBSV|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|11292017|Approved|MediGold Essential Care|Fax|Observation|Inpatient|11162017|11202017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171117076|R0602, R079, K8590|ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP|ICD10|11292017|11162017|11202017||||0|0||0||||||4|
|11222017|2017-11-22T12:48:03+00:00||000103642-01|James|Price Jr|SOUND KENWOOD HSPISTS OF|941846|SIDDHARTH K|MUSHRIF|1447455159|MERCY HOSPITAL FAIRFIELD|936431|1467552471|MERCY HOSPITAL FAIRFIELD|1467552471|Observation|OBSV|Concurrent Review|CONC||MERCY HOSPITAL FAIRFIELD|11292017|Approved|MediGold Southwest OH Essential Care|Fax|Observation|Inpatient|11222017|11262017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171122061|A419, R404|Transient alteration of awareness|ICD10|11292017|11222017|11262017||||0|0||0||||||2|
|11262017|2017-11-26T16:45:22+00:00||000054091-01|SHAREN|ALEXANDER|COLS INPATIENT CARE INC|937585||COLS INPATIENT CARE INC|1467430801|MOUNT CARMEL MEDICAL CTR|920184|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|11292017|Approved|MediGold Classic Preferred|Reports|Observation|Inpatient|11262017|11292017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171126016|R319|Hematuria, unspecified|ICD10|11292017|11262017|11292017||||0|0||0||||||3|
|11242017|2017-11-24T12:36:14+00:00||000032861-01|CONNIE|SMITH|HOSPITAL MEDICINE SERVIC|923072|EARL G|HALEY|1205076544|ADENA REGIONAL MED CTR|936475|1902839673|ADENA REGIONAL MEDICAL CENTER|1902839673|Observation|OBSV|Concurrent Review|CONC||ADENA REGIONAL MEDICAL CENTER|11292017|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|11232017|11252017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171127042|N390, S72001A, W19XXXA|Unspecified fall, initial encounter|ICD10|11292017|11232017|11252017||||0|0||0||||||2|
|11242017|2017-11-24T12:40:52+00:00||000076878-01|Eleanor|Lawhorn|SOUND KENWOOD HSPISTS OF|924227|BRIAN|WEBSTER|1366567372|MERCY WEST HOSPITAL|927002|1912007931|MERCY WEST HOSPITAL|1912007931|Observation|OBSV|Concurrent Review|CONC||MERCY WEST HOSPITAL|11292017|Approved|MediGold Southwest OH Essential Care|Fax|Observation|Inpatient|11232017|11262017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171127047|I214|Non-ST elevation (NSTEMI) myocardial infarction|ICD10|11292017|11232017|11262017||||0|0||0||||||3|
|11242017|2017-11-24T12:42:36+00:00||000012356-01|BARBARA|BRADBURY|ADENA MEDICAL GROUP LLC|902458|WILBUR E|SEVER III|1780603282|ADENA REGIONAL MED CTR|936475|1902839673|ADENA REGIONAL MEDICAL CENTER|1902839673|Observation|OBSV|Concurrent Review|CONC||ADENA REGIONAL MEDICAL CENTER|11292017|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|11222017|11232017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171127050|K5732|Dvtrcli of lg int w/o perforation or abscess w/o bleeding|ICD10|11292017|11222017|11232017||||0|0||0||||||1|
|11242017|2017-11-24T12:45:46+00:00||000117914-01|Gene|Sharp|SOUND PHYSICIANS OF OHI0|949490|AMY R|HURST|1326487885|MERCY WEST HOSPITAL|927002|1912007931|MERCY WEST HOSPITAL|1912007931|Observation|OBSV|Concurrent Review|CONC||MERCY WEST HOSPITAL|11292017|Approved|MediGold Southwest OH Classic Preferred|Fax|Observation|Inpatient|11232017|11252017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171127063|Z8719|Personal history of other diseases of the digestive system|ICD10|11292017|11232017|11252017||||0|0||0||||||2|
|11272017|2017-11-27T11:27:41+00:00|0266380437330|000075721-01|Edmund|Swisher|SOUND INPATIENT PHYS OF|911533||SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|MOUNT CARMEL EAST HOSPITAL|936416|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|11292017|Approved|MediGold Essential Care|Reports|Observation|Inpatient|11252017|11292017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171127075|E230|Hypopituitarism|ICD10|11292017|11252017|11292017||||0|0||0||||||4|
|11272017|2017-11-27T09:09:19+00:00||000020744-01|MARY ALICE|MYERS|COMMUNITY HSPIST LLC|947378|MATTHEW D|CAMPOS|1366785503|FAIRFIELD MEDICAL CENTER|936439|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|11292017|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|11242017|11252017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171127145|R079|Chest pain, unspecified|ICD10|11292017|11242017|11252017||||0|0||0||||||1|
|11252017|2017-11-25T16:33:09+00:00||000083326-01|Sherry|Vandyke|FAIRFIELD HLTHCARE PROFS|947951|JOSHUA R|THOMAS|1366769879|FAIRFIELD MEDICAL CENTER|936439|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|11292017|Approved|MediGold Essential Care|Fax|Observation|Inpatient|11242017|11272017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171127152|N390, R0609, R079, R509, R5383|Other fatigue|ICD10|11292017|11242017|11272017||||0|0||0||||||3|
|11252017|2017-11-25T19:40:18+00:00||000020344-01|MARTHA|LAMBERT|HILLSBOROUGH COUNTY HLTH|909306|DOUGLAS A|HOLT|1952341083|FAIRFIELD MEDICAL CENTER|936439|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|11292017|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|11242017|11262017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171127155|K921|Melena|ICD10|11292017|11242017|11262017||||0|0||0||||||2|
|11272017|2017-11-27T18:55:20+00:00||000041148-01|JOHN|SLANE|COLS INPATIENT CARE INC|937585||COLS INPATIENT CARE INC|1467430801|MOUNT CARMEL MEDICAL CTR|920184|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|11292017|Approved|MediGold Classic Preferred|Reports|Observation|Inpatient|11272017|11292017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171127158|R079|Chest pain, unspecified|ICD10|11292017|11272017|11292017||||0|0||0||||||2|
|11272017|2017-11-27T11:09:38+00:00||000074843-01|Julie|Hinds|GENESIS MEDICAL GRP LLC|907832|PHILIP L|GARBER|1730131921|GENESIS HLTHCARE SYSTEM|936421|1598868655|GENESIS HEALTHCARE SYSTEM|1598868655|Observation|OBSV|Concurrent Review|CONC||GENESIS HEALTHCARE SYSTEM|11292017|Approved|MediGold Southeast OH Classic Preferred|Fax|Observation|Inpatient|11272017|11272017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171128045|R42|Dizziness and giddiness|ICD10|11292017|11272017|11272017||||0|0||0||||||1|
|11272017|2017-11-27T13:12:37+00:00||000105000-01|Judith|Moser|PULMONARY MED OF DAYTON|922847|ASHLEE R|AMES|1962655142|KETTERING MEDICAL CENTER|936443|1043233984|KETTERING MEDICAL CENTER|1043233984|Observation|OBSV|Concurrent Review|CONC||KETTERING MEDICAL CENTER|11292017|Approved|MediGold Essential Care|Fax|Observation|Inpatient|11262017|11282017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171128072|R002|Palpitations|ICD10|11292017|11262017|11282017||||0|0||0||||||2|
|11272017|2017-11-27T14:03:12+00:00||000110532-01|Lawrence|Hayes|SOUND PHYSICIANS OF OHI0|909497|REAGAN|NORGAN|1487877999|SOUTHEASTERN OHIO REGION|920580|1346247350|SOUTHEASTERN OH REGIONAL MEDICAL CTR|1346247350|Observation|OBSV|Concurrent Review|CONC||SOUTHEASTERN OH REGIONAL MEDICAL CTR|11292017|Approved|MediGold Southeast OH Essential Care|Fax|Observation|Inpatient|11262017|11272017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171128081|I480|Paroxysmal atrial fibrillation|ICD10|11292017|11262017|11272017||||0|0||0||||||1|
|11272017|2017-11-27T14:48:50+00:00||000097326-01|Fannie|Langley|MADISON ER PHYS INC|909542|NATHALIE|SZILAGYI|1417020686|FAYETTE COUNTY MEM HSP 1|903662|1508978677|FAYETTE COUNTY MEMORIAL HOSPITAL|1508978677|Observation|OBSV|Concurrent Review|CONC||FAYETTE COUNTY MEMORIAL HOSPITAL|11292017|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|11262017|11272017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171128084|R627|Adult failure to thrive|ICD10|11292017|11262017|11272017||||0|0||0||||||1|
|11282017|2017-11-28T17:07:41+00:00||000016327-01|ROBERT|DUNCAN|MOUNT CARMEL HLTH PRVDRS|936795|F KEVIN|HACKETT|1215990726|MOUNT CARMEL MEDICAL CTR|920184|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|11292017|Approved|MediGold Classic Preferred|Reports|Observation|Inpatient|11282017|11292017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171128096|I4891|Unspecified atrial fibrillation|ICD10|11292017|11282017|11292017||||0|0||0||||||1|
|11282017|2017-11-28T12:58:18+00:00||000117936-01|Nancy|Tapocsi|CLUTTER, STEVEN E|935489|STEVEN E|CLUTTER|1992845895|KNOX COMMUNITY HOSPITAL|936422|1295761963|KNOX COMMUNITY HOSPITAL|1295761963|Observation|OBSV|Concurrent Review|CONC||KNOX COMMUNITY HOSPITAL|11292017|Approved|MediGold Essential Care|Fax|Observation|Inpatient|11272017|11282017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171129069|R0602, R079|Chest pain, unspecified|ICD10|11292017|11272017|11282017||||0|0||0||||||1|
|11292017|2017-11-29T11:31:09+00:00||000081960-01|John|Moore|KNOX COMMUNITY HOSP GRP|924378|DAVID A|DELORENZO|1942285051|KNOX COMMUNITY HOSPITAL|936422|1295761963|KNOX COMMUNITY HOSPITAL|1295761963|Observation|OBSV|Concurrent Review|CONC||KNOX COMMUNITY HOSPITAL|11292017|Approved|MediGold Essential Care|Fax|Observation|Inpatient|11252017|11262017|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A171129108|R079|Chest pain, unspecified|ICD10|11292017|11252017|11262017||||0|0||0||||||1|
