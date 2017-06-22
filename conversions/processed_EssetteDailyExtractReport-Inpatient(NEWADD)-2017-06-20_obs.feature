Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-20_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-20_OBS
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
| 06022017 | 2017-06-02T11:17:23+00:00 |  | 000117098-01 | Ceopha | Beach | ALLIANCE PHYSICIANS INC | 927663 | PAUL M | LEVY | 1760639884 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 06202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06012017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602047 | K8050, K819 | Cholecystitis, unspecified | ICD10 | 06202017 | 06012017 | 06032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T09:49:56+00:00 | 025721985-7155 | 000004093-01 | PHILLIP | GILLILAND | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06042017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605023 | N3001 | Acute cystitis with hematuria | ICD10 | 06202017 | 06042017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T12:47:06+00:00 |  | 000104389-01 | HOBERT | PARKER | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06052017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606060 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06202017 | 06052017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06092017 | 2017-06-09T16:30:30+00:00 |  | 000042575-01 | RALPH | COX | APOGEE MED GRP OHIO INC | 941919 | VEERABHADRA V | RAMESH METTA | 1376822395 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06082017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609075 | R55 | Syncope and collapse | ICD10 | 06202017 | 06082017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T10:46:30+00:00 |  | 000109064-01 | Bonita | Carpenter | HOSPITAL MEDICINE SERVIC | 949224 | KASHYAP B | PATEL | 1033476189 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06202017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06112017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612131 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06202017 | 06112017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06142017 | 2017-06-14T09:08:19+00:00 |  | 000031663-01 | ANNIS | MECKLEY | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06122017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614013 | E871, N390, R531, R739 | Hyperglycemia, unspecified | ICD10 | 06202017 | 06122017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06142017 | 2017-06-14T10:08:45+00:00 |  | 000116921-01 | Linda | Allen | EASTERN HILLS INTL MED I | 921533 | DAVID G | WILSON | 1750394730 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 06202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06132017 | 06172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614035 | D649 | Anemia, unspecified | ICD10 | 06202017 | 06132017 | 06172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06152017 | 2017-06-15T09:34:50+00:00 |  | 000076813-01 | Donald | Batteiger | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06152017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615041 | R531 | Weakness | ICD10 | 06202017 | 06152017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06152017 | 2017-06-15T14:39:55+00:00 |  | 000087718-01 | Theresa | Wem | MUSKINGUM VALLEY HLTH CT | 923156 | GARY J | CARVER | 1982781563 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 06202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615071 | N390, R55, R739 | Hyperglycemia, unspecified | ICD10 | 06202017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06162017 | 2017-06-16T10:15:56+00:00 | 250375037166 | 000029712-01 | DEMPSY | FRY | HMP OF OHIO PC | 942985 | BINAYA R | DAHAL | 1093067761 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06152017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616031 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06202017 | 06152017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T08:30:00+00:00 | 025915083-7169 | 000012284-01 | BARBARA | BAUR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06192017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619005 | M549 | Dorsalgia, unspecified | ICD10 | 06202017 | 06192017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T09:16:22+00:00 | 025411419-7170 | 000073816-01 | Frederick | Doak | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06202017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06192017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619017 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06202017 | 06192017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T09:22:07+00:00 |  | 000020845-01 | IRENE | RILEY | MOUNT CARMEL HLTH PRVDRS | 934916 | STEVEN | TANZER | 1578526513 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06182017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619020 | R1032 | Left lower quadrant pain | ICD10 | 06202017 | 06182017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T09:36:14+00:00 |  | 000094982-01 | James | Saylor | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06182017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619025 | R079 | Chest pain, unspecified | ICD10 | 06202017 | 06182017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T10:13:59+00:00 | 025107552-7167 | 000108361-01 | Mary | Salamay | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06202017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06162017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619037 | L03818 | Cellulitis of other sites | ICD10 | 06202017 | 06162017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06192017 | 2017-06-19T10:41:33+00:00 | 266741267169 | 000059756-01 | MARY | CROWELL | EMERGENCY SERVICES INC | 908217 | THEODORE A | SLATER | 1548239155 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06182017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619046 | R0602 | Shortness of breath | ICD10 | 06202017 | 06182017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T11:06:01+00:00 | 178354107167 | 000098786-01 | Richard | Patrick | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06202017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06172017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619055 | R509 | Fever, unspecified | ICD10 | 06202017 | 06172017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06192017 | 2017-06-19T09:27:36+00:00 |  | 000117383-01 | JOANN | BURTON | CLERMONT INTERNISTS ASSO | 921516 | CHANDRASEKAR | VAIDYANATHAN | 1659373553 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 06202017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06182017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619088 | R079 | Chest pain, unspecified | ICD10 | 06202017 | 06182017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T09:40:12+00:00 |  | 000045447-01 | FRANCES | MORAN | HMP OF FRANKLIN CTY LTD | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06162017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619089 | D72829, J209, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06202017 | 06162017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06192017 | 2017-06-19T10:11:23+00:00 |  | 000093415-01 | Jerry | Scott | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06182017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619129 | J9600, R609 | Edema, unspecified | ICD10 | 06202017 | 06182017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T10:34:58+00:00 |  | 000085355-01 | Danny | Williams | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06172017 | 06182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619131 | R1319 | Other dysphagia | ICD10 | 06202017 | 06172017 | 06182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T10:21:06+00:00 |  | 000044319-01 | CHARLOTTE | WALKER | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06172017 | 06182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619136 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 06202017 | 06172017 | 06182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T11:29:35+00:00 |  | 000092298-01 | Jennie | Gordon | COMMUNITY HSPIST LLC | 932655 | ABDULMAJID | ADAM | 1528362258 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06182017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619139 | M546, R079 | Chest pain, unspecified | ICD10 | 06202017 | 06182017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06202017 | 2017-06-20T06:52:50+00:00 |  | 000092358-01 | Roy | Jenkins | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06192017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620001 | I4891 | Unspecified atrial fibrillation | ICD10 | 06202017 | 06192017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T12:21:54+00:00 |  | 000079385-01 | Marilyn | Organ | SACRED HEART HOSP EMERALD | 939451 |  | SACRED HEART HOSP EMERALD | 1558391771 | SACRED HEART HOSP EMERALD | 939451 | 1558391771 | SACRED HEART HOSP EMERALD | 1558391771 | Observation | OBSV | Concurrent Review | CONC |  | SACRED HEART HOSP EMERALD | 06202017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 06172017 | 06182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620005 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 06202017 | 06172017 | 06182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06202017 | 2017-06-20T09:54:40+00:00 | 253971237171 | 000016018-01 | ELOISE | JORDAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06192017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620036 | R410 | Disorientation, unspecified | ICD10 | 06202017 | 06192017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T15:47:24+00:00 |  | 000086643-01 | Sylvia | Jones | SOUND INPATIENT PHYS OF | 927302 | ABIDEMI B | AKANDE | 1518281690 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06162017 | 06172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620056 | R4182 | Altered mental status, unspecified | ICD10 | 06202017 | 06162017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T16:06:14+00:00 |  | 000097605-01 | Deborah | Reeves | INTERNAL MED CARE INC | 904949 | INGRID M | BROWN | 1952309726 | GRANDVIEW HOSPITAL & SOU | 902690 | 1053339507 | SOUTHVIEW MEDICAL CENTER | 0 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHVIEW MEDICAL CENTER | 06202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06172017 | 06182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620057 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 06202017 | 06172017 | 06182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06202017 | 2017-06-20T10:46:55+00:00 |  | 000116788-01 | PATRICIA | FRAZEE | KNOX COMMUNITY HSP PHYS | 904518 | DAVID A | KITTOE | 1730149154 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 06202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06022017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620061 | K5732 | Dvtrcli of lg int w/o perforation or abscess w/o bleeding | ICD10 | 06202017 | 06022017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
