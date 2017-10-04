Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-03_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-03_OBS
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
| 10022017 | 2017-10-02T09:57:58+00:00 | 251897787272 | 000010272-01 | ANNABELL | KAY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09292017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002024 | N390 | Urinary tract infection, site not specified | ICD10 | 10032017 | 09292017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09292017 | 2017-09-29T10:25:18+00:00 | 259646417271 | 000049418-01 | JANET | MERIDETH | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09282017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929018 | R7989, I160 | HYPERTENSIVE URGENCY | ICD10 | 10032017 | 09282017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10022017 | 2017-10-02T07:49:38+00:00 |  | 000111821-01 | Kenneth | Harris | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 10032017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09302017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002053 | K819 | Cholecystitis, unspecified | ICD10 | 10032017 | 09302017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10032017 | 2017-10-03T13:29:41+00:00 | 167412827273 | 000109887-01 | Julia | Mckinney | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10032017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 09302017 | 09302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003063 | R569 | Unspecified convulsions | ICD10 | 10032017 | 09302017 | 09302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09282017 | 2017-09-28T08:46:35+00:00 |  | 000067168-01 | ROBERT | FRANCIS | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10032017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09292017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928024 | R0602 | Shortness of breath | ICD10 | 10032017 | 09292017 | 09302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09212017 | 2017-09-21T15:20:20+00:00 |  | 000099611-01 | Ralph | Mclean | MIAMI VALLEY HSPISTS GRP | 906163 | ARSHAD A | SHAH | 1578583605 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10032017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09182017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921077 | I4891 | Unspecified atrial fibrillation | ICD10 | 10032017 | 09182017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09112017 | 2017-09-11T08:02:21+00:00 |  | 000078981-01 | Helen | Means | SOUND KENWOOD HSPISTS OF | 932748 | EVGHENII | BACANURSCHI | 1922387588 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 10032017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 09092017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911077 | M79605, R531, T7401XA | Adult neglect or abandonment, confirmed, initial encounter | ICD10 | 10032017 | 09092017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10032017 | 2017-10-03T11:03:19+00:00 |  | 000064589-01 | John | Hammond | PARIS REGIONAL MEDICAL C | 950047 |  | PARIS REGIONAL MEDICAL CENTER | 1609819515 | PARIS REGIONAL MEDICAL C | 950047 | 1609819515 | PARIS REGIONAL MEDICAL CENTER | 1609819515 | Observation | OBSV | Concurrent Review | CONC |  | PARIS REGIONAL MEDICAL CENTER | 10032017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09302017 | 09302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003047 | T424X1A | Poisoning by benzodiazepines, accidental, init | ICD10 | 10032017 | 09302017 | 09302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T09:38:58+00:00 | 252749397274 | 000081430-01 | Benny | Howell | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10012017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002022 | K5660 | Unspecified intestinal obstruction | ICD10 | 10032017 | 10012017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09292017 | 2017-09-29T09:58:33+00:00 | 250044827271 | 000065745-01 | PAUL | BICE | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10032017 | Approved | THE TIMKEN COMPANY | Reports | Observation | Inpatient | 09282017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929006 | K632, T8189XA | Oth complications of procedures, NEC, init | ICD10 | 10032017 | 09282017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10022017 | 2017-10-02T15:51:52+00:00 |  | 000036684-01 | BERTA | SKAGGS | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10012017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002151 | G459, I10 | Essential (primary) hypertension | ICD10 | 10032017 | 10012017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T10:20:31+00:00 |  | 000106899-01 | Mary | Mcartor | MOUNT CARMEL HLTH SYS | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10032017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09302017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002106 | R079 | Chest pain, unspecified | ICD10 | 10032017 | 09302017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10022017 | 2017-10-02T14:09:10+00:00 |  | 000060191-01 | EARL | WHITE | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 10032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09302017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002136 | E872 | Acidosis | ICD10 | 10032017 | 09302017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09222017 | 2017-09-22T09:59:23+00:00 |  | 000111983-01 | Curtis | Davis | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 10032017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09212017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922030 | E860, R4182 | Altered mental status, unspecified | ICD10 | 10032017 | 09212017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10022017 | 2017-10-02T11:05:58+00:00 | 263643447272 | 000039893-01 | LINDA | WEBBER | IMMEDIATE HEALTH ASSOC | 942975 | JENNIFER L | HUNNICUTT | 1184992356 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09292017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002049 | R4182 | Altered mental status, unspecified | ICD10 | 10032017 | 09292017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09192017 | 2017-09-19T14:26:01+00:00 |  | 000079231-01 | Ricky | Reed | S DAYTON ACUTE CARE CNSL | 902637 | LYNDETTA R | SCHWARTZ | 1174505465 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09172017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919090 | K047, Z789 | Other specified health status | ICD10 | 10032017 | 09172017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10022017 | 2017-10-02T11:28:51+00:00 | 256257907272 | 000094835-01 | Robert | Fischer | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10032017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 09292017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002065 | R110 | Nausea | ICD10 | 10032017 | 09292017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09182017 | 2017-09-18T14:18:53+00:00 |  | 000087250-01 | Larry | Morey | MEDICINE INPATIENT GROUP | 924498 | RAJARATNAM | PATHMARAJAH | 1891882346 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 10032017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 09182017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919080 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10032017 | 09182017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10022017 | 2017-10-02T09:32:48+00:00 | 259020687272 | 000069353-01 | JAMES | DRUMMOND | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09292017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002013 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 10032017 | 09292017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10022017 | 2017-10-02T09:14:07+00:00 | 256207997274 | 000114093-01 | Ann | Baker | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10012017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002008 | R569 | Unspecified convulsions | ICD10 | 10032017 | 10012017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T10:44:19+00:00 | 255812627273 | 000065119-01 | JOHN | MATHENY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10032017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 09302017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002050 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 10032017 | 09302017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10032017 | 2017-10-03T13:26:45+00:00 | 262138557272 | 000094205-01 | Sylvia | Justice | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09292017 | 10012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003062 | D500 | Iron deficiency anemia secondary to blood loss (chronic) | ICD10 | 10032017 | 09292017 | 10012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10032017 | 2017-10-03T09:19:16+00:00 | 261703937275 | 000059583-01 | CHARLES | OTIS | COLS INPATIENT CARE INC | 942957 | CHARLES F | WARE III | 1528355922 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10022017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003015 | J159 | Unspecified bacterial pneumonia | ICD10 | 10032017 | 10022017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T11:27:49+00:00 | 252307457273 | 000005444-01 | KATHRYN | SCOTT | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09302017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002064 | R42 | Dizziness and giddiness | ICD10 | 10032017 | 09302017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09262017 | 2017-09-26T08:41:51+00:00 |  | 000043840-01 | MABEL | CLAFFEY | J SCOTT DELONG DO INC | 949088 | EMILY E | BURNETTE | 1588927834 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09252017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926013 | N812 | Incomplete uterovaginal prolapse | ICD10 | 10032017 | 09252017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
