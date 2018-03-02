Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-27
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-27
	Given I save the auth class "<auth_class>" to a variable
	And I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "loaded_sidebar" image
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And the test pauses for "1" seconds
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And in the "Certification" page I save the "<service_code>" service codes
	And the test pauses for "2" seconds
	And in the "certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
	And the test pauses for "2" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter the first quantity requested "<qty_reqd>" into the "how_many_requested" image and save the variable
	And in the "authorized_services" page I enter the first quantity approved "<qty_appr>" into the "how_many_authorized" image and save the variable
	And in the "authorized_services" page I convert "<authorized_date>" into the "dates_begin_requested" image and save the variable
	And in the "authorized_services" page I convert "<expiration_date>" into the "dates_end_requested" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "4" seconds
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
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And in the "authorized_services" page I enter "$" into the "prov" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
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
	And the test pauses for "2" seconds
	And I determine whether something is PAR or NONPAR
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable

	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "3" seconds

	And in the "authorized_services" page I enter the first service code into the "proc_number" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

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

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "4" seconds
	And I press ENTER graphically
	And the test pauses for "4" seconds
	And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 02232018 | 2018-02-23T14:18:01+00:00 | Q20482695 | 000064611-01 | ROBERT | DONALDSON | FAIRFIELD HLTHCARE PROFS | 915260 | CHRISTIAN T | TENCZA | 1336292085 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02262018 | 03282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180227027 | J984 | Other disorders of lung | ICD10 | 02272018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02232018 | 2018-02-23T15:07:09+00:00 | Q20483639 | 000121733-01 | SUSAN | STEIN | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 02272018 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03012018 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180227035 | Z85038 | Personal history of malignant neoplasm of large intestine | ICD10 | 02272018 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02202018 | 2018-02-20T10:05:02+00:00 |  | 000014233-01 | LUANN | FUTRYK | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 949420 | 1659364503 | JUSTIN R HUDSON | 1487649000 | Predetermination Request | PR | Pre-Service | PRE | JUSTIN R | HUDSON | 02272018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 02272018 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180220126 | B351, E1140, L84 | Corns and callosities | ICD10 | 02272018 | 11055, 11721 | DEBRIDEMENT OF NAIL(S) BY ANY METHOD(S); SIX OR MORE | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Called Haley in regards to faxed information and told them that faxing additional information would not open this case back up. Member would have to file an a appeal with Medigold in regards to denial of services., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02232018 | 2018-02-23T13:14:09+00:00 |  | 000064501-01 | JANET | HUFFER | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Predetermination Request | PR | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 02272018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 02272018 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180223118 | B351, L84 | Corns and callosities | ICD10 | 02272018 | 11721, 11055 | TRIM SKIN LESION | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02262018 | 2018-02-26T10:07:53+00:00 |  | 000054697-01 | ROSE | MEDLEY | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03052018 | 06052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180226092 | C01 | Malignant neoplasm of base of tongue | ICD10 | 02272018 | 99201, 99202, 99203, 99204, 99205, 88305, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 02262018 | 2018-02-26T13:01:25+00:00 |  | 000114919-01 | Judith | Hill | MONROE COUNTY CARE CTR | 949769 |  | MONROE COUNTY CARE CENTER | 1023006285 | MONROE COUNTY CARE CTR | 949769 | 1023006285 | MONROE COUNTY CARE CENTER | 1023006285 | Part B Therapy | OP THER | Pre-Service | PRE |  | MONROE COUNTY CARE CENTER | 02272018 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 02272018 | 03312018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180226098 | I639 | Cerebral infarction, unspecified | ICD10 | 02272018 | 97162, 97110, 97112, 97530, 97165, 97110, 97112, 97530, 97535 | SELF CARE/HOME MANAGEMENT TRAINING (EG, ACTIVITIES OF DAILY | CPT | 1, 12, 12, 12, 1, 12, 12, 12, 12 | 1, 12, 12, 12, 1, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 33, 33, 33, 33, 33, 33, 33, 33, 33 | CPT | C4 | PC TO PROVIDER SPOKE WITH STARLA  REQUESTED CLINICAL   STARLA STATED THAT SHE WOULD FAX THEM OVER MBR WAS  DISCHARGED  FROM SKILLED THERAPY ON THE 25TH., SCA FROM COMPLETED AND FAXED TO CONTRACTING., Received clinical documentation from provider, RECEIVED PC FROM STARLA IN REGARDS TO DURATION AND FREQUENCY OF THERAPY  SHE STATED THAT SHE WANTED 20 VISITS FOR EACH DISCIPLINE   INFORMED HER THAT THE MOST WE COULD DO IS 3X/WEEK FOR 4 WEEKS PLUS EVALUATIONS   STARLA AGREED TO A TOTAL OF 26 VISITS. INFORMED STARLA THAT I WOULD FAX OVER NEW AUTH LETTER   SHE VOICED UNDERSTANDING |  |  |  |  | 0 |
| 02262018 | 2018-02-26T09:59:15+00:00 | Q20488139 | 000057548-01 | THAD | HELFER | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | ZOLL LIFECOR CORPORATION | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 02272018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02262018 | 04272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180227085 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02272018 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 02262018 | 2018-02-26T11:52:00+00:00 | Q20491796 | 000102060-01 | Bruce | Johnson | THE UROLOGY GROUP | 921282 | PHILIP J | BUFFINGTON | 1114967973 | THE UROLOGY GROUP | 947671 | 1619200664 | BENJAMIN E NIVER | 1043657067 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | BENJAMIN E | NIVER | 02272018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04012018 | 09282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180227112 | C61 | Malignant neoplasm of prostate | ICD10 | 02272018 | J0897 | Denosumab injection | HCPCS | 60 | 60 | Approved | 181 | HCPCS | HC | J0897: 60: Denosumab 60 mg  SQ  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 02262018 | 2018-02-26T10:48:55+00:00 |  | 000119336-01 | Mary | Masters | OSU INTERNAL MED LLC | 946783 | NICOLE O | WILLIAMS | 1295998979 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03132018 | 06132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180226096 | C50912 | Malignant neoplasm of unspecified site of left female breast | ICD10 | 02272018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 02262018 | 2018-02-26T13:18:55+00:00 | Q20492109 | 000035013-01 | JOHN | FOLTZ | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02272018 | 03292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180227117 | C787 | Secondary malig neoplasm of liver and intrahepatic bile duct | ICD10 | 02272018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02212018 | 2018-02-21T08:02:47+00:00 | Q20456499 | 000048475-01 | HAROLD | CLIFFORD | CANYON MEDICAL CENTER | 904476 | BEATA K | STERKOWICZ | 1477659993 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02212018 | 03232018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180227119 | R531 | Weakness | ICD10 | 02272018 | 72126 | CAT SCAN CERVICAL SPINE C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 | This request was added to X180221111 in error. Member did receive a timely call and letter that the procedures were approved. This new authorization built to reflect that there were two separate requests. |  |  |  |  | 0 |
