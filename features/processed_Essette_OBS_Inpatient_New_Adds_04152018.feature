Feature: Process Essette Extract OBS_Inpatient_New_Adds_04152018
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: OBS_Inpatient_New_Adds_04152018
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
|03232018|2018-03-23T13:02:23+00:00||000070641-01|Thelma|Derefield|ORTHOPEDIC ONE INC|917927      0001|TERRY T|FOWLER|1447474705|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04152018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|04132018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180323046|M1611|Unilateral primary osteoarthritis, right hip|ICD10|04152018|04132018|04132018|27130|CHARN MILLER TTL HIP ARTHROPLASTY|CPT|1|1|Approved|1|CPT|C4||||1|
|04082018|2018-04-08T09:59:36+00:00||000081512-01|Robert|Strutton|S DAYTON ACUTE CARE CNSL|947057      0001|ELLEN S|KIM|1912249400|KETTERING MEDICAL CENTER SYCAMORE|905903      0003|1316966518|KETTERING MEDICAL CENTER SYCAMORE|1316966518|Observation|OBSV|Concurrent Review|CONC||KETTERING MEDICAL CENTER SYCAMORE|04152018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|04072018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409039|J441|Chronic obstructive pulmonary disease w (acute) exacerbation|ICD10|04152018|04072018|04122018||||0|0||0||||||5|
|04092018|2018-04-09T07:22:42+00:00||000091751-01|Ronnie|Smith|SOUND KENWOOD HSPISTS OF|925440      0001|KAVERI|SIVARUBAN|1801846258|MERCY HOSPITAL ANDERSON|939409      0003|1235239211|MERCY HOSPITAL ANDERSON|1235239211|Observation|OBSV|Concurrent Review|CONC||MERCY HOSPITAL ANDERSON|04152018|Approved|MediGold Southwest OH Classic Preferred|Fax|Observation|Inpatient|04082018|04112018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409064|J441, R509, R748|Abnormal levels of other serum enzymes|ICD10|04152018|04082018|04112018||||0|0||0||||||3|
|04092018|2018-04-09T08:33:06+00:00||000119179-01|Barbara|Taulbee|SOUND KENWOOD HSPISTS OF|925740      0001|WAQAS|AHMED|1700065091|KETTERING MEDICAL CENTER|936443      0003|1043233984|KETTERING MEDICAL CENTER|1043233984|Observation|OBSV|Concurrent Review|CONC||KETTERING MEDICAL CENTER|04152018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04082018|04102018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409081|K439, K922, R1900|Intra-abd and pelvic swelling, mass and lump, unsp site|ICD10|04152018|04082018|04102018||||0|0||0||||||2|
|04102018|2018-04-10T14:22:46+00:00||000113700-01|Rosie|Glass|S DAYTON ACUTE CARE CNSL|932325      0001|SIVAPRASAD|NALLURI|1558619668|GREENE MEMORIAL HOSPITAL|939279      0003|1255317848|GREENE MEMORIAL HOSPITAL|1255317848|Observation|OBSV|Concurrent Review|CONC||GREENE MEMORIAL HOSPITAL|04152018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04092018|04112018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410104|J441, J9690|Respiratory failure, unsp, unsp w hypoxia or hypercapnia|ICD10|04152018|04092018|04112018||||0|0||0||||||2|
|04112018|2018-04-11T08:46:27+00:00||000116854-01|Joan|Lemaster|MAYFIELD CLINIC|920903      0001|GEORGE T|MANDYBUR|1437188596|THE JEWISH HOSPITAL|916862      0003|1336478163|THE JEWISH HOSPITAL|1336478163|Observation|OBSV|Concurrent Review|CONC||THE JEWISH HOSPITAL|04152018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04092018|04112018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411055|G8929|Other chronic pain|ICD10|04152018|04092018|04112018||||0|0||0||||||0|
|04122018|2018-04-12T15:08:56+00:00||000105296-01|Linda|Wolfe|COLS INPATIENT CARE INC|941835      0002|SHAVON|FRANKHOUSER|1629395512|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04152018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|04122018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180412066|J9859|OTHER DISEASES OF MEDIASTINUM, NOT ELSEWHERE CLASSIFIED|ICD10|04152018|04122018|04132018||||0|0||0||||||1|
|04132018|2018-04-13T08:29:20+00:00||000099239-01|Linda|Thorne|MOUNT CARMEL HLTH SYS|907180      0001|GREGORY S|MANGEN|1386856581|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04152018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04122018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413007|R0600|Dyspnea, unspecified|ICD10|04152018|04122018|04132018||||0|0||0||||||1|
|04132018|2018-04-13T14:19:25+00:00||000081229-01|JOHN|MILLER|MOUNT CARMEL HLTH SYS|902935      0005|LOWELL W|CHAMBERS|1801835400|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04152018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|04122018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180413082|T8189XA|Oth complications of procedures, NEC, init|ICD10|04152018|04122018|04142018||||0|0||0||||||2|
