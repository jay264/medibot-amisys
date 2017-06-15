Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-13_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-13_OBS
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
| 03012017 | 2017-03-01T15:27:35+00:00 |  | 000099788-01 | Lucille | Booth | MUSKINGUM VALLEY HLTH CT | 923156 | GARY J | CARVER | 1982781563 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 06132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02282017 | 03022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170309088896.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170303066 | R112, I160 | HYPERTENSIVE URGENCY | ICD10 | 06132017 | 02282017 | 03022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082017 | 2017-03-08T13:33:36+00:00 |  | 000077902-01 | John | Armstrong | MUSKINGUM VALLEY HLTH CT | 923156 | GARY J | CARVER | 1982781563 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 06132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03072017 | 03102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170314090067.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170313001 | J9600, R0602 | Shortness of breath | ICD10 | 06132017 | 03072017 | 03102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05312017 | 2017-05-31T11:07:22+00:00 |  | 000071851-01 | Julia | Straight | ALLIANCE PHYSICIANS INC | 949770 | ASHANTICE | HIGGINS | 1558540674 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06132017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05302017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531055 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 06132017 | 05302017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06052017 | 2017-06-05T09:29:52+00:00 |  | 000066670-01 | PAUL | WAUGH | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06032017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605067 | K2901 | Acute gastritis with bleeding | ICD10 | 06132017 | 06032017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06062017 | 2017-06-06T14:46:49+00:00 |  | 000084206-01 | Susan | Gurile | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06052017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606069 | A419, R0609, R5383 | Other fatigue | ICD10 | 06132017 | 06052017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06082017 | 2017-06-08T07:46:03+00:00 |  | 000079779-01 | Gary | Hanlon | MERCY HEALTH PHYSICIANS | 921296 | PRASAD G | CHANDRA | 1063468312 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 06132017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608021 | R55 | Syncope and collapse | ICD10 | 06132017 | 06072017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06082017 | 2017-06-08T08:55:24+00:00 |  | 000112594-01 | Gary | Osborne | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06132017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06072017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608029 | K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 06132017 | 06072017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06082017 | 2017-06-08T11:48:45+00:00 |  | 000100118-01 | Winifred | Lawson | MIAMI VALLEY HSPISTS GRP | 931966 | SRAVYA S | SURAPANENI | 1932405297 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06132017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608044 | I4891 | Unspecified atrial fibrillation | ICD10 | 06132017 | 06072017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06092017 | 2017-06-09T08:31:25+00:00 |  | 000089496-01 | Nancy | Adams | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06082017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609004 | R079 | Chest pain, unspecified | ICD10 | 06132017 | 06082017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06092017 | 2017-06-09T09:34:17+00:00 |  | 000042996-01 | Charlotte | Stember | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06092017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609011 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 06132017 | 06092017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06092017 | 2017-06-09T10:50:50+00:00 |  | 000102699-01 | Elizabeth | Budich | ALLIANCE PHYSICIANS INC | 900964 | JOSEPH N | GUNASEKERA | 1346242534 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06082017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609045 | I498 | Other specified cardiac arrhythmias | ICD10 | 06132017 | 06082017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T09:19:50+00:00 | 025577556-7161 | 000053160-01 | ALLEEN | CARMACK | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06102017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612009 | I700 | Atherosclerosis of aorta | ICD10 | 06132017 | 06102017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T09:30:07+00:00 |  | 000115413-01 | Deborah | Braden | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06092017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612018 | I289 | Disease of pulmonary vessels, unspecified | ICD10 | 06132017 | 06092017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T09:34:05+00:00 | 002753667-7162 | 000097637-01 | Charles | Parker | HMP OF OHIO PC | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06102017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612019 | A419 | Sepsis, unspecified organism | ICD10 | 06132017 | 06102017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T09:38:24+00:00 | 257841107162 | 000012728-01 | DORCAS | SWANGER | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 06112017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612021 | C457 | Mesothelioma of other sites | ICD10 | 06132017 | 06112017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T10:40:44+00:00 | 255040187161 | 000046406-01 | ADAM | HIGH | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06102017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612045 | I509 | Heart failure, unspecified | ICD10 | 06132017 | 06102017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T10:51:28+00:00 | 254637637162 | 000057113-01 | LILY | SKINNER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06112017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612050 | J45909 | Unspecified asthma, uncomplicated | ICD10 | 06132017 | 06112017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T10:59:08+00:00 |  | 000039915-01 | MARVIN | VALENTINE | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06092017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612052 | C9502, D630, I5033, R0600 | Dyspnea, unspecified | ICD10 | 06132017 | 06092017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T11:15:51+00:00 |  | 000022634-01 | Carole | Patmiou | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06112017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612058 | M549 | Dorsalgia, unspecified | ICD10 | 06132017 | 06112017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T09:17:06+00:00 |  | 000080513-01 | Vivien | Johnson | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06092017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612075 | E6601 | Morbid (severe) obesity due to excess calories | ICD10 | 06132017 | 06092017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T08:07:35+00:00 |  | 000085969-01 | Brynton | Gibson | MERCY MEMORIAL HOSPITAL - CAH | 902498 |  | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 06132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06092017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612077 | I952, R531 | Weakness | ICD10 | 06132017 | 06092017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T08:13:02+00:00 |  | 000086500-01 | Ruby | Keogh | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06092017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612078 | J189 | Pneumonia, unspecified organism | ICD10 | 06132017 | 06092017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T13:47:49+00:00 | 259066107163 | 000098238-01 | Jess | Wheeler | HMP OF OHIO PC | 914611 | SOWMYA | VARRE | 1871753673 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06122017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612085 | E876 | Hypokalemia | ICD10 | 06132017 | 06122017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T13:58:41+00:00 | 251288537163 | 000051426-01 | KATHERINE | YANK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06122017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612089 | M79659 | Pain in unspecified thigh | ICD10 | 06132017 | 06122017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T08:32:44+00:00 |  | 000109073-01 | Claude | Keim Jr | HMP OF OHIO PC | 948549 | SHRAVAN | LIKKI | 1891136230 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 06132017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06112017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612091 | A419 | Sepsis, unspecified organism | ICD10 | 06132017 | 06112017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T09:16:55+00:00 |  | 000080582-01 | Margaret | Edgell | HOSPITAL MEDICINE SERVIC | 949224 | KASHYAP B | PATEL | 1033476189 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06132017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06102017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612101 | I4891 | Unspecified atrial fibrillation | ICD10 | 06132017 | 06102017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T09:17:27+00:00 |  | 000104836-01 | ROZENA | LAVY | GENESIS MEDICAL GRP LLC | 924142 | EDWARD S | UMLAUF | 1942207063 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06132017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06092017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612105 | R079 | Chest pain, unspecified | ICD10 | 06132017 | 06092017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T10:14:08+00:00 |  | 000088316-01 | Kathleen | Bradley | STEVEN R LUNZ MD INC | 921394 | STEVEN R | LUNZ | 1710981089 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06132017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06112017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612115 | A419, I480, N390 | Urinary tract infection, site not specified | ICD10 | 06132017 | 06112017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T12:35:08+00:00 |  | 000075373-01 | Raymond | Kaltenbach | ALLIANCE PHYSICIANS INC | 909445 | M NIRANJAN | REDDY | 1780640102 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06112017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612120 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 06132017 | 06112017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T10:23:28+00:00 |  | 000106212-01 | Bobby | Wilson | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06112017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612129 | R079 | Chest pain, unspecified | ICD10 | 06132017 | 06112017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T10:47:30+00:00 |  | 000098026-01 | Gary | Lustgarten | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06132017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 06092017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612140 | E876, M62838, N289 | Disorder of kidney and ureter, unspecified | ICD10 | 06132017 | 06092017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T15:09:21+00:00 |  | 000081135-01 | Sandra | Bonsall | ALLIANCE PHYSICIANS INC | 906934 | BRIAN P | SCHWARTZ | 1255315453 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06132017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06112017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613004 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06132017 | 06112017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06132017 | 2017-06-13T09:55:30+00:00 | 177170877163 | 000043374-01 | Rise | Surface-Hurley | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06122017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613023 | T8450XA | Infect/inflm reaction due to unsp int joint prosth, init | ICD10 | 06132017 | 06122017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
