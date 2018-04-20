Feature: Process Essette Extract OBS_Inpatient_New_Adds_04162018
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: OBS_Inpatient_New_Adds_04162018
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
|03292018|2018-03-29T15:19:10+00:00||000088922-01|William|Graves|KHN IP MED|925014      0003|AMITH K|PAREKH|1750510715|KETTERING MEDICAL CENTER|936443      0003|1043233984|KETTERING MEDICAL CENTER|1043233984|Observation|OBSV|Concurrent Review|CONC||KETTERING MEDICAL CENTER|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|03282018|03312018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180330036|J449|Chronic obstructive pulmonary disease, unspecified|ICD10|04162018|03282018|03312018||||0|0||0||||||3|
|04062018|2018-04-06T14:43:15+00:00||000076719-01|Raymond|King|ARUNDHATI SHARMA|953515      0001|ARUNDHATI|SHARMA|1790103026|MERCY HOSPITAL FAIRFIELD|936431      0003|1467552471|MERCY HOSPITAL FAIRFIELD|1467552471|Observation|OBSV|Concurrent Review|CONC||MERCY HOSPITAL FAIRFIELD|04162018|Approved|MediGold Southwest OH Classic Preferred|Fax|Observation|Inpatient|04062018|04072018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180406041|R0789|Other chest pain|ICD10|04162018|04062018|04072018||||0|0||0||||||1|
|04092018|2018-04-09T10:31:56+00:00||000083739-01|Betty|Baxter|APOGEE MED GRP OHIO INC|948000      0001|ROHINI|CHAWLA|1679915292|ADENA REGIONAL MED CTR|936475      0003|1902839673|ADENA REGIONAL MEDICAL CENTER|1902839673|Observation|OBSV|Concurrent Review|CONC||ADENA REGIONAL MEDICAL CENTER|04162018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|04072018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410007|J441|Chronic obstructive pulmonary disease w (acute) exacerbation|ICD10|04162018|04072018|04132018||||0|0||0||||||6|
|04092018|2018-04-09T14:54:47+00:00||000083071-01|Debbie|Hutchinson|SELBY GENERAL HOSPITAL|906929      0005|FREDERIC  A|HUMPHREY|1366438848|SELBY GENERAL HOSPITAL|936486      0003|1124073465|SELBY GENERAL HOSPITAL|1124073465|Observation|OBSV|Concurrent Review|CONC||SELBY GENERAL HOSPITAL|04162018|Approved|MediGold Southeast OH Essential Care|Fax|Observation|Inpatient|04082018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410039|K529|Noninfective gastroenteritis and colitis, unspecified|ICD10|04162018|04082018|04122018||||0|0||0||||||4|
|04092018|2018-04-09T16:17:04+00:00||000089229-01|Veverly|Luckett|STEVEN R LUNZ MD INC|921394      0003|STEVEN R|LUNZ|1710981089|MERCY HOSPITAL FAIRFIELD|936431      0003|1467552471|MERCY HOSPITAL FAIRFIELD|1467552471|Observation|OBSV|Concurrent Review|CONC||MERCY HOSPITAL FAIRFIELD|04162018|Approved|MediGold Southwest OH Essential Care|Fax|Observation|Inpatient|04092018|04112018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410048|E860, E876, N179, R1084, R112, R197|Diarrhea, unspecified|ICD10|04162018|04092018|04112018||||0|0||0||||||2|
|04102018|2018-04-10T07:53:24+00:00||000100999-01|Kenneth|Kaffenbarger|COMMUNITY MERCY HEALTH P|906699      0005||SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|COMMUNITY MERCY HEALTH P|906699      0005|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Observation|OBSV|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04092018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410057|R0609, T8130XA|Disruption of wound, unspecified, initial encounter|ICD10|04162018|04092018|04132018||||0|0||0||||||4|
|04102018|2018-04-10T16:19:01+00:00||000031399-01|FREDDIE|LANE|MOUNT CARMEL HLTH PRVDRS|934996      0001|G STEPHEN|VINCENT|1043251218|MOUNT CARMEL ST ANNS HOSPITAL|920157      0003|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04092018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410117|M86171|Other acute osteomyelitis, right ankle and foot|ICD10|04162018|04092018|04132018||||0|0||0||||||4|
|04112018|2018-04-11T09:53:19+00:00||000012705-01|GAIL|BUMP|COPC CENTRAL OHIO PRIMAR|938757      0001||CENTRAL OH PRIMARY CARE PHYS INC|1194705194|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|04092018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411011|I5031, R0602|Shortness of breath|ICD10|04162018|04092018|04132018||||0|0||0||||||4|
|04112018|2018-04-11T08:46:41+00:00||000076148-01|Mary Lou|Pinkerton|MARIETTA HLTH CARE PHYS|921896      0001|KELLI A|CAWLEY|1023113727|MARIETTA MEMORIAL HSP|936469      0003|1215936927|MARIETTA MEMORIAL HOSPITAL|1215936927|Observation|OBSV|Concurrent Review|CONC||MARIETTA MEMORIAL HOSPITAL|04162018|Approved|MediGold Southeast OH Classic Preferred|Fax|Observation|Inpatient|04102018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411052|C189, D649|Anemia, unspecified|ICD10|04162018|04102018|04132018||||0|0||0||||||3|
|04112018|2018-04-11T10:20:27+00:00||000106099-01|Gary|Rohm|SOUND INPATIENT PHYS OF|931112      0001|YOGEESH H|SHIVARAMAI-PRA|1215285689|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04112018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411062|N183, R471, R531|Weakness|ICD10|04162018|04112018|04132018||||0|0||0||||||2|
|04112018|2018-04-11T15:31:22+00:00||000097611-01|Lucille|Kingsley|DAYTON FAM PRCT ASSOC IN|948036      0001|ZACHARY|DENKA|1972946242|KETTERING MEDICAL CENTER|936443      0003|1043233984|KETTERING MEDICAL CENTER|1043233984|Observation|OBSV|Concurrent Review|CONC||KETTERING MEDICAL CENTER|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04102018|04112018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411091|K602|Anal fissure, unspecified|ICD10|04162018|04102018|04112018||||0|0||0||||||0|
|04122018|2018-04-12T09:53:25+00:00||000057163-01|JAMES|YOUNG|ADENA REGIONAL MED CTR|936475      0001||ADENA REGIONAL MEDICAL CENTER|1902839673|ADENA REGIONAL MED CTR|936475      0003|1902839673|ADENA REGIONAL MEDICAL CENTER|1902839673|Observation|OBSV|Concurrent Review|CONC||ADENA REGIONAL MEDICAL CENTER|04162018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|04112018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180412028|J189|Pneumonia, unspecified organism|ICD10|04162018|04112018|04132018||||0|0||0||||||2|
|04122018|2018-04-12T09:59:38+00:00||000055752-01|JACK|CONLEY|ADENA MEDICAL GROUP LLC|923072      0009|EARL G|HALEY|1205076544|ADENA REGIONAL MED CTR|936475      0003|1902839673|ADENA REGIONAL MEDICAL CENTER|1902839673|Observation|OBSV|Concurrent Review|CONC||ADENA REGIONAL MEDICAL CENTER|04162018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|04112018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180412032|R0600|Dyspnea, unspecified|ICD10|04162018|04112018|04122018||||0|0||0||||||1|
|04122018|2018-04-12T10:33:37+00:00||000090906-01|Susan|Ream|DAVID ZAPF DO INC|902300      0001||DAVID ZAPF DO INC|1386824316|GRANDVIEW & SOUTHVIEW HO|936462      0003|1053339507|GRANDVIEW MEDICAL CENTER|1053339507|Observation|OBSV|Concurrent Review|CONC||GRANDVIEW MEDICAL CENTER|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04112018|04152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180412035|E876, I5021, R7989|Other specified abnormal findings of blood chemistry|ICD10|04162018|04112018|04152018||||0|0||0||||||4|
|04132018|2018-04-13T08:58:53+00:00||000107718-01|ROBERT|HILVERDING|MARIETTA HLTH CARE PHYS|941674      0002|SRI R|KANAGALINGAM|1720032386|MARIETTA MEMORIAL HSP|936469      0003|1215936927|MARIETTA MEMORIAL HOSPITAL|1215936927|Observation|OBSV|Concurrent Review|CONC||MARIETTA MEMORIAL HOSPITAL|04162018|Approved|MediGold Southeast OH Essential Care|Fax|Observation|Inpatient|04122018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413028|J209, J441, J9611|Chronic respiratory failure with hypoxia|ICD10|04162018|04122018|04142018||||0|0||0||||||2|
|04132018|2018-04-13T09:35:27+00:00||000089501-01|Robert|Bowman|KNOX COMMUNITY HSP PHYS|905470      0011|KOMBIAN|GBARUK|1235171802|KNOX COMMUNITY HOSPITAL|936422      0003|1295761963|KNOX COMMUNITY HOSPITAL|1295761963|Observation|OBSV|Concurrent Review|CONC||KNOX COMMUNITY HOSPITAL|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04122018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413033|A419, J189|Pneumonia, unspecified organism|ICD10|04162018|04122018|04142018||||0|0||0||||||2|
|04132018|2018-04-13T10:43:42+00:00||000119524-01|Rita|Williams|GAERKE, CYNTHIA M|915210      0001|CYNTHIA M|GAERKE|1538184437|MARIETTA MEMORIAL HSP|936469      0003|1215936927|MARIETTA MEMORIAL HOSPITAL|1215936927|Observation|OBSV|Concurrent Review|CONC||MARIETTA MEMORIAL HOSPITAL|04162018|Approved|MediGold Southeast OH Essential Care|Fax|Observation|Inpatient|04122018|04152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413040|N179, R410, R4182|Altered mental status, unspecified|ICD10|04162018|04122018|04152018||||0|0||0||||||3|
|04132018|2018-04-13T10:54:58+00:00||000090609-01|LEFTY|BEVERLY|COMMUNITY MERCY HEALTH P|906699      0005||SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|COMMUNITY MERCY HEALTH P|906699      0005|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Observation|OBSV|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04122018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413042|J441|Chronic obstructive pulmonary disease w (acute) exacerbation|ICD10|04162018|04122018|04142018||||0|0||0||||||2|
|04132018|2018-04-13T15:15:14+00:00||000023881-01|OTHO|KIDDER|FAIRFIELD INTERNAL MED|904235      0001|MICHAEL J|MURRAY|1346275104|FAIRFIELD MEDICAL CENTER|936439      0003|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|04162018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|04132018|04162018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413083|R079|Chest pain, unspecified|ICD10|04162018|04132018|04162018||||0|0||0||||||3|
|04162018|2018-04-16T09:48:42+00:00||000120136-01|Gordon|Yanke|COMMUNITY MERCY HEALTH P|906699      0003||SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|COMMUNITY MERCY HEALTH P|906699      0005|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Observation|OBSV|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04132018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180416020|R6889|Other general symptoms and signs|ICD10|04162018|04132018|04132018||||0|0||0||||||1|
|04142018|2018-04-14T18:07:08+00:00||000015729-01|CLARIBELLE|HICKMAN|MOUNT CARMEL HLTH PRVDRS|937379      0001|MARK|RICAURTE|1669442091|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04162018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|04132018|04152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180416031|I82401|Acute embolism and thombos unsp deep veins of r low extrem|ICD10|04162018|04132018|04152018||||0|0||0||||||2|
|04142018|2018-04-14T18:28:30+00:00||000097971-01|KENNETH|SMITH|HOSPITALIST MEDICINE PHY|946140      0001|MALATHY|VARATHARAJAH|1669470050|CLINTON MEMORIAL HOSPITAL|917905      0003|1063713659|CLINTON MEMORIAL HOSPITAL|1063713659|Observation|OBSV|Concurrent Review|CONC||CLINTON MEMORIAL HOSPITAL|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04132018|04162018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180416033|E860, S37009A|Unspecified injury of unspecified kidney, initial encounter|ICD10|04162018|04132018|04162018||||0|0||0||||||3|
|04162018|2018-04-16T11:19:30+00:00||000113830-01|Arlene|Hall|JOINT IMPLANT SURGEONS|904909      0001|KEITH R|BEREND|1003809484|MOUNT CARMEL NEW ALBANY SURGICAL HSP|920176      0003|1770668568|MOUNT CARMEL NEW ALBANY SURGICAL HSP|1770668568|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL NEW ALBANY SURGICAL HSP|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04162018|04162018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180416079|Z96652|Presence of left artificial knee joint|ICD10|04162018|04162018|04162018||||0|0||0||||||1|
|04162018|2018-04-16T15:25:49+00:00||000089678-01|Dixie|Rockwell|KNOX COMMUNITY HOSPITAL|936422      0001||KNOX COMMUNITY HOSPITAL|1295761963|KNOX COMMUNITY HOSPITAL|936422      0003|1295761963|KNOX COMMUNITY HOSPITAL|1295761963|Observation|OBSV|Concurrent Review|CONC||KNOX COMMUNITY HOSPITAL|04162018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04072018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180416102|J449|Chronic obstructive pulmonary disease, unspecified|ICD10|04162018|04072018|04132018||||0|0||0||||||6|
