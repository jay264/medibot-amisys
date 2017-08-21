Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-18_thru_2017-08-20_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-18_thru_2017-08-20_OBS
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
| 08102017 | 2017-08-10T08:42:49+00:00 |  | 000074313-01 | ALICE | HENDERLY | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08102017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810038 | R079 | Chest pain, unspecified | ICD10 | 08182017 | 08092017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07252017 | 2017-07-25T08:42:02+00:00 |  | 000111455-01 | Barbara | Butcher | MARIETTA MEM HSP | 927682 | ADEKUNLE G | KUKU | 1033225248 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07252017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170728118929.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725076 | I472, N390, R0902 | Hypoxemia | ICD10 | 08182017 | 07252017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08132017 | 2017-08-13T14:41:36+00:00 |  | 000116247-01 | W | Cunningham | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08122017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814077 | W3400XA | Accidental discharge from unsp firearms or gun, init encntr | ICD10 | 08182017 | 08122017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08162017 | 2017-08-16T15:31:08+00:00 | 250187227228 | 000051478-01 | KAREN | CIULA | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08182017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08162017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816075 | F419 | Anxiety disorder, unspecified | ICD10 | 08182017 | 08162017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07242017 | 2017-07-24T14:26:19+00:00 |  | 000084140-01 | Alfred | Perry | MED STAFF SERVICES LLC | 907315 | FARID | BOUNIF | 1053470518 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07232017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170726118396.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724081 | I509 | Heart failure, unspecified | ICD10 | 08182017 | 07232017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08132017 | 2017-08-13T14:45:07+00:00 |  | 000088069-01 | Katherine | Davis | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08112017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814048 | R0602, R4182 | Altered mental status, unspecified | ICD10 | 08182017 | 08112017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08172017 | 2017-08-17T15:46:48+00:00 |  | 000013206-01 | GUY | HITCHCOCK JR | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08162017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818042 | R079 | Chest pain, unspecified | ICD10 | 08182017 | 08162017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08092017 | 2017-08-09T14:59:02+00:00 |  | 000088157-01 | Herschel | Haulman | SOUND KENWOOD HSPISTS OF | 925740 | WAQAS | AHMED | 1700065091 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 08202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08082017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809076 | G20, R441 | Visual hallucinations | ICD10 | 08202017 | 08082017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08172017 | 2017-08-17T09:19:19+00:00 | 250239747229 | 000066425-01 | ADENA | CHRISTIAN | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08162017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817008 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 08182017 | 08162017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T08:53:07+00:00 |  | 000108897-01 | Nita | Snider | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07162017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718024 | M549 | Dorsalgia, unspecified | ICD10 | 08182017 | 07162017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08152017 | 2017-08-15T12:14:56+00:00 |  | 000100399-01 | Donald | Blizzard | KNOX COMMUNITY HOSPITAL | 931029 | MARCUS | TOPINKA | 1790842870 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08142017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815050 | I509, J189 | Pneumonia, unspecified organism | ICD10 | 08182017 | 08142017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08152017 | 2017-08-15T10:50:00+00:00 | 259623387227 | 000020392-01 | BECKY | HADEN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08152017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815033 | R55 | Syncope and collapse | ICD10 | 08182017 | 08152017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08152017 | 2017-08-15T08:27:12+00:00 |  | 000072321-01 | Sandra | Robertson | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08142017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815090 | R079 | Chest pain, unspecified | ICD10 | 08182017 | 08142017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08162017 | 2017-08-16T10:18:05+00:00 | 263687217227 | 000022846-01 | ELOISE | DENNY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08152017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816026 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08182017 | 08152017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08172017 | 2017-08-17T09:23:27+00:00 | 250336017228 | 000044942-01 | JAN | ELZEY | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08162017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817009 | R002 | Palpitations | ICD10 | 08182017 | 08162017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T10:35:49+00:00 |  | 000098153-01 | Lila | Nesselroad | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08182017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08222017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817048 | R109 | Unspecified abdominal pain | ICD10 | 08182017 | 07222017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08172017 | 2017-08-17T15:53:13+00:00 |  | 000104972-01 | Delores | Ellison | APOGEE MED GRP OHIO INC | 943792 | PRATIVA | RAJBHANDARI | 1659628667 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818043 | R0602, R4182 | Altered mental status, unspecified | ICD10 | 08182017 | 08142017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08172017 | 2017-08-17T09:08:56+00:00 | 254601927228 | 000094193-01 | Victor | Love | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08162017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817005 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08182017 | 08162017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08172017 | 2017-08-17T12:53:46+00:00 |  | 000097637-01 | Charles | Parker | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08172017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818055 | G20 | Parkinson's disease | ICD10 | 08182017 | 08172017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08172017 | 2017-08-17T09:40:20+00:00 | 260498177229 | 000047423-01 | LINDA | KNOX | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08172017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817014 | R55 | Syncope and collapse | ICD10 | 08182017 | 08172017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08162017 | 2017-08-16T10:21:11+00:00 | 252268327228 | 000095538-01 | Nancy | Kalb | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08162017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816029 | B179 | Acute viral hepatitis, unspecified | ICD10 | 08182017 | 08162017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08152017 | 2017-08-15T13:14:02+00:00 |  | 000116886-01 | Carol | Harris | CLERMONT INTERNISTS ASSO | 921351 | PARAMESWARAN | HARIHARAN | 1720084460 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 08182017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08142017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815069 | D6489, K922, R55 | Syncope and collapse | ICD10 | 08182017 | 08142017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08142017 | 2017-08-14T09:53:07+00:00 |  | 000105527-01 | Earl | Morris | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 08112017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814105 | I10 | Essential (primary) hypertension | ICD10 | 08182017 | 08112017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08142017 | 2017-08-14T08:33:03+00:00 |  | 000075000-01 | Bonnie | Bean | MERCY MEMORIAL HOSPITAL - CAH | 902498 |  | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 08182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 08122017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814093 | I509, R0902 | Hypoxemia | ICD10 | 08182017 | 08122017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08102017 | 2017-08-10T11:18:22+00:00 |  | 000099224-01 | GAIL | RUSSACK | GRANDVIEW HOSPITAL & SOU | 911335 | JOSEPH D | DICICCO | 1871595868 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08092017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810052 | L089 | Local infection of the skin and subcutaneous tissue, unsp | ICD10 | 08182017 | 08092017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08172017 | 2017-08-17T09:09:28+00:00 |  | 000051359-01 | LINDA | KILBARGER | SOUND PHYSICIANS OF OHI | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08162017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817043 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 08182017 | 08162017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07172017 | 2017-07-17T08:50:02+00:00 |  | 000109134-01 | Ronald | Gibson | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07162017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717085 | R079 | Chest pain, unspecified | ICD10 | 08182017 | 07162017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08102017 | 2017-08-10T08:43:46+00:00 |  | 000051987-01 | PATRICIA | STREBER | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08102017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810039 | N390 | Urinary tract infection, site not specified | ICD10 | 08182017 | 08102017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03132017 | 2017-03-13T09:45:43+00:00 |  | 000084931-01 | Arthur | Byrd Jr | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03112017 | 03142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170317090786.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170315012 | J159 | Unspecified bacterial pneumonia | ICD10 | 08182017 | 03112017 | 03142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07202017 | 2017-07-20T07:31:41+00:00 |  | 000112254-01 | WILLIAM | PRICE | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07202017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720003 | J189, R1111 | Vomiting without nausea | ICD10 | 08182017 | 07182017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
