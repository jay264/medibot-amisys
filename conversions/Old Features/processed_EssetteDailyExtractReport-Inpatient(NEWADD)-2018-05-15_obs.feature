Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-15_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-15_OBS
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
| 04242018 | 2018-04-24T16:25:54+00:00 |  | 000042942-01 | Lisa | Lorenz | MOUNT CARMEL HLTH PRVDRS | 908171 | SHERI L | HART | 1194809301 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05032018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425003 | G40909 | Epilepsy, unsp, not intractable, without status epilepticus | ICD10 | 05152018 | 05032018 | 05042018 | 95951 | MONITOR EEG & VIDEO C INT & RPT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05102018 | 2018-05-10T08:37:00+00:00 |  | 000105300-01 | Sarah | Stacy | S DAYTON ACUTE CARE CNSL | 932487 | SRAVAN K | METLA | 1851713879 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 05152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05092018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510027 | J189 | Pneumonia, unspecified organism | ICD10 | 05152018 | 05092018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05102018 | 2018-05-10T12:18:17+00:00 |  | 000021588-01 | RUTH | BAGLEY | HOSPITALIST MEDICINE PHY | 922163 | ADEDOYIN O | ADETORO | 1215260930 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05092018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510054 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05152018 | 05092018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05142018 | 2018-05-14T08:38:00+00:00 |  | 000100948-01 | Kenneth | Brown | TAHBAZ, MAHYAR | 925137 | MAHYAR | TAHBAZ | 1770583031 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05152018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05122018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514060 | I82411 | Acute embolism and thrombosis of right femoral vein | ICD10 | 05152018 | 05122018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05142018 | 2018-05-14T09:14:05+00:00 |  | 000098144-01 | Paul | Lambert | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05152018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05112018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514070 | J189, R0902, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 05152018 | 05112018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05142018 | 2018-05-14T10:43:49+00:00 |  | 000109725-01 | William G | Dewey | SOUND INPATIENT PHYS OF | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514086 | J939 | Pneumothorax, unspecified | ICD10 | 05152018 | 05012018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05142018 | 2018-05-14T16:14:48+00:00 |  | 000121995-01 | Donna | Knisley | PLASTIC SURG INSTITUTE O | 928243 | JASON T | HEDRICK | 1417161753 | MIAMI VALLEY HSPISTS GRP | 902399 | 1356394795 | MIAMI VALLEY HOSPITALISTS GROUP | 1356394795 | Observation | OBSV | Pre-Service | PRE |  | MIAMI VALLEY HOSPITALISTS GROUP | 05152018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Inpatient | 05222018 | 06222018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180515002 | C50212 | Malig neoplasm of upper-inner quadrant of left female breast | ICD10 | 05152018 |  |  | 19357, 15777, 19342 | DELAYED INSERT PROS. FOLLOWING SURG | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  | No child records to display. |  |
| 05152018 | 2018-05-15T13:47:08+00:00 |  | 000003189-01 | ANNALOUISEC | WOHRLE | FAIRFIELD PHYS INC | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05112018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515079 | N390 | Urinary tract infection, site not specified | ICD10 | 05152018 | 05112018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05112018 | 2018-05-11T09:50:16+00:00 |  | 000041826-01 | DELORES | SETLIFF | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05102018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511011 | S32010A | Wedge compression fracture of first lumbar vertebra, init | ICD10 | 05152018 | 05102018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05112018 | 2018-05-11T11:10:20+00:00 |  | 000064935-01 | VIRGINIA | MAYER | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05102018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511024 | E876 | Hypokalemia | ICD10 | 05152018 | 05102018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05112018 | 2018-05-11T12:27:29+00:00 |  | 000067070-01 | MARJORIE | CONSIDINE | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05102018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511046 | N390, R4182 | Altered mental status, unspecified | ICD10 | 05152018 | 05102018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05152018 | 2018-05-15T09:23:11+00:00 |  | 000048586-01 | LIONEL | LAMPRON | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05112018 | 05132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515020 | R6889 | Other general symptoms and signs | ICD10 | 05152018 | 05112018 | 05132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05142018 | 2018-05-14T14:07:25+00:00 |  | 000111344-01 | ELIZABETH | GREGORY | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05152018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05122018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515023 | R079 | Chest pain, unspecified | ICD10 | 05152018 | 05122018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05152018 | 2018-05-15T13:57:29+00:00 |  | 000090824-01 | VIRGINIA | WALTERS | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05142018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515082 | R6889 | Other general symptoms and signs | ICD10 | 05152018 | 05142018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
