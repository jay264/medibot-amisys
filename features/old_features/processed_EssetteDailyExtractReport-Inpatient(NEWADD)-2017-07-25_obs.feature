Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-25_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-25_OBS
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
| 06212017 | 2017-06-21T15:48:05+00:00 |  | 000090534-01 | Louise | Hartman | RAK PLASTIC & RECONSTRUC | 903751 | THOMAS P | RAK | 1124019807 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07252017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07102017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621072 | Z1501, Z9013 | Acquired absence of bilateral breasts and nipples | ICD10 | 07252017 | 07102017 | 07112017 | 19357, 15777, 19340 | IMMED. INSERT BREAST PROS.AFTR SURG | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 07032017 | 2017-07-03T11:10:14+00:00 |  | 000107274-01 | Evelyn | Stevens | MARIETTA HLTH CARE PHYS | 930519 | EMMANUEL A | AGABA | 1851698633 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07252017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07192017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703086 | K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 07252017 | 07192017 | 07212017 | 43251, 43282, 43332, 43333, 740, 43205, 43235, 43239, 43244, 43249, 43250, 43251, 43255, 43248 | UPPER GASTROINTESTINAL ENDOSCOPY INCLUDING ESOPHAGUS, STOMACH, AND | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 07172017 | 2017-07-17T08:12:56+00:00 |  | 000078724-01 | Joan | Rech | MARIETTA HLTH CARE PHYS | 932072 | BREA ABREU A | FRANCISCO | 1821382060 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07162017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717117 | D62, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07252017 | 07162017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07172017 | 2017-07-17T09:25:12+00:00 |  | 000093566-01 | Jennifer | Carter | ATRIUM HOSPITALIST GROUP | 942503 | MEGAN E | BLESSINGER | 1629484555 | ATRIUM MEDICAL CENTER | 936440 | 1700950060 | ATRIUM MEDICAL CENTER | 1700950060 | Observation | OBSV | Concurrent Review | CONC |  | ATRIUM MEDICAL CENTER | 07252017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07152017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718030 | R079 | Chest pain, unspecified | ICD10 | 07252017 | 07152017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T13:50:06+00:00 |  | 000112390-01 | Geneva | Matlock | RIVERSIDE SURG ASSOC INC | 908157 | OSCAR R | RUIZ | 1275532038 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07252017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07172017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718050 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 07252017 | 07172017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07202017 | 2017-07-20T10:37:14+00:00 |  | 000083035-01 | Marguerite | Felix | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07252017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07192017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720049 | J449, R0600 | Dyspnea, unspecified | ICD10 | 07252017 | 07192017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07202017 | 2017-07-20T10:00:50+00:00 |  | 000075146-01 | Martha | Carpenter | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07192017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720071 | R42 | Dizziness and giddiness | ICD10 | 07252017 | 07192017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07202017 | 2017-07-20T12:36:43+00:00 |  | 000114542-01 | EDWARD | WAMPLER | GENESIS MEDICAL GRP LLC | 924967 | EUCHARIA C | AKUSOBA-DAVIS | 1053545269 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07252017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07192017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720076 | I4891 | Unspecified atrial fibrillation | ICD10 | 07252017 | 07192017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07202017 | 2017-07-20T14:23:59+00:00 |  | 000031902-01 | AVALENE | LEE | OHIOHEALTH PHYS GRP | 943241 | THANH V | NGUYEN | 1073755294 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07192017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720085 | V877XXA | Person injured in collision betw oth mtr veh (traffic), init | ICD10 | 07252017 | 07192017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07202017 | 2017-07-20T14:52:46+00:00 |  | 000113186-01 | Donald | Lane | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 07252017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07202017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721022 | R0602 | Shortness of breath | ICD10 | 07252017 | 07202017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07212017 | 2017-07-21T11:21:21+00:00 |  | 000083868-01 | Stephen | Thomas | GENESIS MEDICAL GRP LLC | 942943 | PHILIP F | BONGIORNO | 1073512422 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07202017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721036 | L0390 | Cellulitis, unspecified | ICD10 | 07252017 | 07202017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07242017 | 2017-07-24T09:02:57+00:00 | 175751447203 | 000103865-01 | ROBERT | EDWARDS | COLON & RECTAL SURG INC | 937012 | KARAMJIT S | KHANDUJA | 1093707960 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07252017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07222017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724014 | Q211 | Atrial septal defect | ICD10 | 07252017 | 07222017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07242017 | 2017-07-24T10:16:52+00:00 | 252294837203 | 000070482-01 | Ginger | Shepherd | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07222017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724042 | R55 | Syncope and collapse | ICD10 | 07252017 | 07222017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07242017 | 2017-07-24T08:05:53+00:00 |  | 000076507-01 | Harry | Pohlman | SOUND KENWOOD HSPISTS OF | 924588 | JAMELLE R | BOWERS | 1275532251 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 07252017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 07242017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724078 | G459, Q046 | Congenital cerebral cysts | ICD10 | 07252017 | 07242017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T08:15:07+00:00 |  | 000118366-01 | Robert | Thompson | PICKAWAY HEALTH SERVICES | 929496 | ROBERT G | KLOOS | 1912950197 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07252017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07212017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724080 | T8132XA | Disruption of internal operation (surgical) wound, NEC, init | ICD10 | 07252017 | 07212017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07242017 | 2017-07-24T14:26:19+00:00 |  | 000084140-01 | Alfred | Perry | MED STAFF SERVICES LLC | 907315 | FARID | BOUNIF | 1053470518 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07232017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724081 | I509 | Heart failure, unspecified | ICD10 | 07252017 | 07232017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07242017 | 2017-07-24T08:17:00+00:00 |  | 000064282-01 | RENA | BOLDOSER | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07212017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724083 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 07252017 | 07212017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07242017 | 2017-07-24T08:27:52+00:00 |  | 000049327-01 | PAMELA | BOSTWICK | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07222017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724090 | R55 | Syncope and collapse | ICD10 | 07252017 | 07222017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07242017 | 2017-07-24T08:38:43+00:00 |  | 000090843-01 | Sherald | Coy | STONY BROOK INTERNISTS U | 939704 | WILLIAM E | LAWSON | 1013932250 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07252017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07222017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724095 | R079 | Chest pain, unspecified | ICD10 | 07252017 | 07222017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T08:54:05+00:00 |  | 000025200-01 | JAMES | BROWN | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06232017 | 06242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724101 | R001 | Bradycardia, unspecified | ICD10 | 07252017 | 07232017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07242017 | 2017-07-24T08:55:03+00:00 |  | 000080611-01 | Frances | Stewart | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07252017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07232017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724102 | R079 | Chest pain, unspecified | ICD10 | 07252017 | 07232017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T08:59:08+00:00 |  | 000107704-01 | Margaret | Fettrow | OSU EMERGENCY MED LLC | 907362 | CRAIG | KEY | 1710068044 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07232017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725002 | I482 | Chronic atrial fibrillation | ICD10 | 07252017 | 07232017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T11:52:07+00:00 |  | 000112171-01 | JOHN | CLOUSE | OHIOHEALTH PHYS GRP | 914379 | MARK A | RENZ | 1275773061 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07212017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725052 | I10 | Essential (primary) hypertension | ICD10 | 07252017 | 07212017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07242017 | 2017-07-24T12:34:47+00:00 |  | 000106486-01 | Marie | Mcgregor | MARIETTA HLTH CARE PHYS | 932072 | BREA ABREU A | FRANCISCO | 1821382060 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07252017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07212017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725055 | D649, N179, R1030 | Lower abdominal pain, unspecified | ICD10 | 07252017 | 07212017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
